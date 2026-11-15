/* LGPL container libraries only. No decoding, encoding, networking or shell.
   Input is confined to integrity-checked resources from one local VOD manifest.
   A complete MP4 is flushed and atomically published; failures retain the cache. */
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <bcrypt.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <wchar.h>
#include "remux.h"
#include <libavformat/avformat.h>
#include <libavcodec/avcodec.h>
#include <libavcodec/bsf.h>
#include <libavutil/avutil.h>
#include <libavutil/mem.h>

#define JP_MAX_RESOURCES 20000
#define JP_MAX_SEGMENT (32u * 1024u * 1024u)
typedef struct { DWORD magic, status, body_length, header_bytes; unsigned char digest[32]; } JpRecord;
typedef struct { char id[65]; int opened; } JpResource;
typedef struct {
    JpRemux *job;
    JpResource *resources;
    unsigned count;
    char prefix[JP_REMUX_PATH * 4];
    const char *manifest;
    size_t manifest_size, manifest_position;
    double duration, longest;
    int io_failed;
} JpInput;
typedef struct { HANDLE file; JpRemux *job; } JpOutput;
typedef struct {
    const char *begin, *end, *key, *map;
    size_t key_length, map_length;
    int64_t sequence;
    double start, duration;
    unsigned segments;
} JpPeriod;
typedef struct {
    AVFormatContext *format;
    AVIOContext *io;
    char *manifest;
    AVPacket *prefetched[512];
    unsigned count, position;
} JpDemux;

static int jp_hex(const char *id) {
    for (int i = 0; i < 64; ++i)
        if (!((id[i] >= 'a' && id[i] <= 'f') || (id[i] >= '0' && id[i] <= '9'))) return 0;
    return 1;
}
BOOL jp_remux_name(const wchar_t *title, const wchar_t *id, wchar_t filename[192]) {
    if (wcslen(id) != 64) return FALSE;
    for (int i = 0; i < 64; ++i)
        if (!((id[i] >= L'a' && id[i] <= L'f') || (id[i] >= L'0' && id[i] <= L'9'))) return FALSE;
    wchar_t clean[128];
    size_t used = 0;
    for (; *title && used < 100; ++title) {
        wchar_t c = *title;
        if (c >= 32 && !wcschr(L"<>:\"/\\|?*", c)) clean[used++] = c;
        else if (used && clean[used-1] != L'_') clean[used++] = L'_';
    }
    /* Do not split a UTF-16 surrogate pair at the filename limit. */
    if (used && clean[used-1] >= 0xd800 && clean[used-1] <= 0xdbff) --used;
    while (used && (clean[used-1] == L' ' || clean[used-1] == L'.')) --used;
    clean[used] = 0;
    /* The prefix also makes reserved Windows device names harmless. */
    _snwprintf(filename, 192, L"荐片-%ls-%.12ls.mp4", used ? clean : L"影片", id);
    return TRUE;
}
static int jp_compare(const void *a, const void *b) {
    return memcmp(((const JpResource *)a)->id, ((const JpResource *)b)->id, 64);
}
static int jp_reference(JpInput *input, const char *text, size_t size) {
    if (size != 73 || memcmp(text, "media/", 6) || memcmp(text+70, ".ts", 3) ||
        !jp_hex(text+6) || input->count >= JP_MAX_RESOURCES) return 0;
    JpResource *ref = &input->resources[input->count++];
    memcpy(ref->id, text+6, 64); ref->id[64] = 0;
    return 1;
}
static int jp_manifest(JpInput *input, char *body, size_t length) {
    if (length < 20 || memcmp(body, "#EXTM3U\n", 8) || memchr(body, 0, length) ||
        !strstr(body, "#EXT-X-ENDLIST") || strstr(body, "#EXT-X-BYTERANGE") ||
        strstr(body, "BYTERANGE=") || strstr(body, "#EXT-X-STREAM-INF") ||
        strstr(body, "#EXT-X-MEDIA:")) return 0;
    unsigned segments = 0;
    for (char *line = body; *line;) {
        char *end = strchr(line, '\n');
        if (!end) end = line + strlen(line);
        char saved = *end; *end = 0;
        int valid = 1;
        if (*line && *line != '#') {
            valid = jp_reference(input, line, strlen(line));
            ++segments;
        } else if (!strncmp(line, "#EXTINF:", 8)) {
            char *tail;
            double duration = strtod(line+8, &tail);
            valid = *tail == ',' && isfinite(duration) && duration > 0 && duration <= 3600;
            if (valid) {
                input->duration += duration;
                if (duration > input->longest) input->longest = duration;
            }
        } else if (*line == '#') {
            char *uri = line;
            while (valid && (uri = strstr(uri, "URI="))) {
                if (uri[4] != '"') { valid = 0; break; }
                uri += 5;
                char *quote = strchr(uri, '"');
                valid = quote && jp_reference(input, uri, (size_t)(quote-uri));
                if (!quote) break;
                uri = quote+1;
            }
        }
        *end = saved;
        if (!valid) return 0;
        line = saved ? end+1 : end;
    }
    if (!segments || input->duration <= 0 || input->duration > 7 * 24 * 3600) return 0;
    qsort(input->resources, input->count, sizeof(JpResource), jp_compare);
    unsigned count = 0;
    for (unsigned i = 0; i < input->count; ++i)
        if (!count || jp_compare(&input->resources[i], &input->resources[count-1]))
            input->resources[count++] = input->resources[i];
    input->count = count;
    return count != 0;
}
/* HLS permits both transport counters and timestamps to restart at an
   EXT-X-DISCONTINUITY. The HLS demuxer joins TS bytes without resetting its TS
   demuxer, so open each declared period independently. Keep the effective key,
   initialization section and original media sequence (including implicit IVs).
   No input bytes, cached records or corrupt-packet flags are changed. */
static JpPeriod *jp_periods(const char *body, unsigned *count) {
    JpPeriod *periods = av_calloc(JP_MAX_RESOURCES, sizeof(*periods));
    if (!periods) return NULL;
    unsigned current = 0;
    int64_t sequence = 0;
    const char *key = NULL, *map = NULL;
    size_t key_length = 0, map_length = 0;
    periods[0].begin = body;
    for (const char *line = body; *line;) {
        const char *end = strchr(line, '\n');
        if (!end) end = line + strlen(line);
        size_t length = (size_t)(end-line);
        JpPeriod *period = &periods[current];
        if (length == 20 && !memcmp(line, "#EXT-X-DISCONTINUITY", 20) && period->segments) {
            if (current+1 >= JP_MAX_RESOURCES) goto invalid;
            period->end = line;
            JpPeriod *next = &periods[++current];
            next->begin = *end ? end+1 : end;
            next->sequence = sequence;
            next->start = period->start + period->duration;
            next->key = key; next->key_length = key_length;
            next->map = map; next->map_length = map_length;
            period = next;
        } else if (length >= 22 && !memcmp(line, "#EXT-X-MEDIA-SEQUENCE:", 22)) {
            char *tail;
            sequence = strtoll(line+22, &tail, 10);
            if (tail != end || sequence < 0 || sequence > INT64_MAX-JP_MAX_RESOURCES) goto invalid;
            period->sequence = sequence;
        } else if (length >= 11 && !memcmp(line, "#EXT-X-KEY:", 11)) {
            key = line; key_length = length;
        } else if (length >= 11 && !memcmp(line, "#EXT-X-MAP:", 11)) {
            map = line; map_length = length;
        } else if (length >= 8 && !memcmp(line, "#EXTINF:", 8)) {
            period->duration += strtod(line+8, NULL);
        } else if (length && *line != '#') {
            ++period->segments; ++sequence;
        }
        line = *end ? end+1 : end;
    }
    periods[current].end = body + strlen(body);
    if (!periods[current].segments) goto invalid;
    *count = current+1;
    return periods;
invalid:
    av_free(periods);
    return NULL;
}
static char *jp_period_manifest(const JpPeriod *period, double longest) {
    size_t capacity = (size_t)(period->end-period->begin) +
        period->key_length + period->map_length + 256;
    char *body = av_malloc(capacity);
    if (!body) return NULL;
    size_t used = (size_t)snprintf(body, capacity,
        "#EXTM3U\n#EXT-X-VERSION:7\n#EXT-X-PLAYLIST-TYPE:VOD\n"
        "#EXT-X-TARGETDURATION:%u\n#EXT-X-MEDIA-SEQUENCE:%lld\n",
        (unsigned)ceil(longest), (long long)period->sequence);
    if (period->key) {
        memcpy(body+used, period->key, period->key_length); used += period->key_length;
        body[used++] = '\n';
    }
    if (period->map) {
        memcpy(body+used, period->map, period->map_length); used += period->map_length;
        body[used++] = '\n';
    }
    for (const char *line = period->begin; line < period->end;) {
        const char *end = memchr(line, '\n', (size_t)(period->end-line));
        if (!end) end = period->end;
        size_t length = (size_t)(end-line);
        if (strncmp(line, "#EXTM3U", 7) && strncmp(line, "#EXT-X-VERSION:", 15) &&
            strncmp(line, "#EXT-X-PLAYLIST-TYPE:", 21) && strncmp(line, "#EXT-X-TARGETDURATION:", 22) &&
            strncmp(line, "#EXT-X-MEDIA-SEQUENCE:", 22) && strncmp(line, "#EXT-X-ENDLIST", 14) &&
            strncmp(line, "#EXT-X-DISCONTINUITY", 20)) {
            memcpy(body+used, line, length); used += length; body[used++] = '\n';
        }
        line = end < period->end ? end+1 : end;
    }
    memcpy(body+used, "#EXT-X-ENDLIST\n", 16);
    return body;
}
static int jp_interrupted(void *opaque) {
    JpInput *input = opaque;
    return InterlockedCompareExchange(&input->job->cancel, 0, 0) != 0;
}
static int jp_read_manifest(void *opaque, uint8_t *buffer, int length) {
    JpInput *input = opaque;
    if (jp_interrupted(input)) return AVERROR_EXIT;
    size_t available = input->manifest_size - input->manifest_position;
    if (!available) return AVERROR_EOF;
    if ((size_t)length > available) length = (int)available;
    memcpy(buffer, input->manifest + input->manifest_position, (size_t)length);
    input->manifest_position += (size_t)length;
    return length;
}
static int64_t jp_seek_manifest(void *opaque, int64_t offset, int whence) {
    JpInput *input = opaque;
    if (whence == AVSEEK_SIZE) return (int64_t)input->manifest_size;
    if (whence == SEEK_CUR) offset += (int64_t)input->manifest_position;
    else if (whence == SEEK_END) offset += (int64_t)input->manifest_size;
    else if (whence != SEEK_SET) return AVERROR(EINVAL);
    if (offset < 0 || offset > (int64_t)input->manifest_size) return AVERROR(EINVAL);
    input->manifest_position = (size_t)offset;
    return offset;
}
static HANDLE jp_verified_file(JpInput *input, const char *id) {
    wchar_t path[JP_REMUX_PATH], key[65];
    for (int i = 0; i < 64; ++i) key[i] = (unsigned char)id[i];
    key[64] = 0;
    _snwprintf(path, JP_REMUX_PATH, L"%ls\\media\\%ls.info", input->job->directory, key);
    HANDLE info = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    JpRecord record;
    LARGE_INTEGER size;
    DWORD received;
    int valid = info != INVALID_HANDLE_VALUE && GetFileSizeEx(info, &size) &&
        ReadFile(info, &record, sizeof(record), &received, NULL) && received == sizeof(record) &&
        record.magic == 0x3243504a && record.status == 200 &&
        record.body_length > 0 && record.body_length <= JP_MAX_SEGMENT &&
        record.header_bytes >= sizeof(wchar_t) && record.header_bytes <= 131072 &&
        size.QuadPart == sizeof(record) + record.header_bytes;
    if (info != INVALID_HANDLE_VALUE) CloseHandle(info);
    if (!valid) return INVALID_HANDLE_VALUE;
    _snwprintf(path, JP_REMUX_PATH, L"%ls\\media\\%ls.ts", input->job->directory, key);
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
                              FILE_FLAG_SEQUENTIAL_SCAN, NULL);
    if (file == INVALID_HANDLE_VALUE) return file;
    valid = GetFileSizeEx(file, &size) && size.QuadPart == record.body_length;
    BCRYPT_ALG_HANDLE algorithm = NULL;
    BCRYPT_HASH_HANDLE hash = NULL;
    valid = valid && BCryptOpenAlgorithmProvider(&algorithm, BCRYPT_SHA256_ALGORITHM, NULL, 0) >= 0 &&
        BCryptCreateHash(algorithm, &hash, NULL, 0, NULL, 0, 0) >= 0;
    unsigned char buffer[65536], digest[32];
    DWORD total = 0;
    while (valid && total < record.body_length) {
        valid = !jp_interrupted(input) && ReadFile(file, buffer, sizeof(buffer), &received, NULL) && received &&
            BCryptHashData(hash, buffer, received, 0) >= 0;
        total += valid ? received : 0;
    }
    valid = valid && total == record.body_length && BCryptFinishHash(hash, digest, 32, 0) >= 0 &&
        !memcmp(digest, record.digest, 32);
    if (hash) BCryptDestroyHash(hash);
    if (algorithm) BCryptCloseAlgorithmProvider(algorithm, 0);
    if (!valid) { CloseHandle(file); return INVALID_HANDLE_VALUE; }
    return file;
}
static int jp_open(AVFormatContext *format, AVIOContext **io, const char *url, int flags,
                   AVDictionary **options) {
    JpInput *input = format->opaque;
    const char *name = url;
    if (!strncmp(name, "crypto:", 7) || !strncmp(name, "crypto+", 7)) name += 7;
    if (!strncmp(name, "file:", 5)) name += 5;
    size_t prefix = strlen(input->prefix);
    int valid = flags == AVIO_FLAG_READ && !strncmp(name, input->prefix, prefix) &&
        strlen(name+prefix) == 67 && jp_hex(name+prefix) && !strcmp(name+prefix+64, ".ts");
    JpResource needle = {0}, *ref = NULL;
    if (valid) {
        memcpy(needle.id, name+prefix, 64);
        ref = bsearch(&needle, input->resources, input->count, sizeof(JpResource), jp_compare);
    }
    HANDLE verified = ref ? jp_verified_file(input, ref->id) : INVALID_HANDLE_VALUE;
    int result = AVERROR_INVALIDDATA;
    if (verified != INVALID_HANDLE_VALUE) {
        AVDictionary *local = NULL;
        av_dict_copy(&local, options ? *options : NULL, 0);
        av_dict_set(&local, "protocol_whitelist", "file,crypto", 0);
        result = avio_open2(io, url, flags, &format->interrupt_callback, &local);
        av_dict_free(&local);
        CloseHandle(verified);
        if (result >= 0) ref->opened = 1;
    }
    if (result < 0) input->io_failed = 1;
    return result;
}
static int jp_write(void *opaque, const uint8_t *bytes, int count) {
    JpOutput *output = opaque;
    DWORD written;
    if (InterlockedCompareExchange(&output->job->cancel, 0, 0)) return AVERROR_EXIT;
    if (!WriteFile(output->file, bytes, (DWORD)count, &written, NULL) || written != (DWORD)count)
        return AVERROR(EIO);
    return count;
}
static int64_t jp_seek(void *opaque, int64_t offset, int whence) {
    JpOutput *output = opaque;
    LARGE_INTEGER position = {.QuadPart = offset}, result;
    if (whence == AVSEEK_SIZE) return GetFileSizeEx(output->file, &result) ? result.QuadPart : AVERROR(EIO);
    if (whence < SEEK_SET || whence > SEEK_END) return AVERROR(EINVAL);
    return SetFilePointerEx(output->file, position, &result, (DWORD)whence) ? result.QuadPart : AVERROR(EIO);
}
static char *jp_utf8(const wchar_t *text) {
    int count = WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, text, -1, NULL, 0, NULL, NULL);
    char *bytes = count > 0 ? av_malloc((size_t)count) : NULL;
    if (bytes) WideCharToMultiByte(CP_UTF8, 0, text, -1, bytes, count, NULL, NULL);
    return bytes;
}
static int jp_parameters_ready(AVFormatContext *source) {
    for (unsigned i = 0; i < source->nb_streams; ++i) {
        AVCodecParameters *codec = source->streams[i]->codecpar;
        if (codec->codec_type == AVMEDIA_TYPE_VIDEO && (!codec->width || !codec->height)) return 0;
        if (codec->codec_type == AVMEDIA_TYPE_AUDIO && (!codec->sample_rate || !codec->ch_layout.nb_channels)) return 0;
    }
    return 1;
}
static void jp_parse_parameters(AVFormatContext *source, const AVPacket *packet) {
    AVCodecParameters *codec = source->streams[packet->stream_index]->codecpar;
    /* HLS's outer streams do not request header parsing. Read the original
       compressed headers without including video or audio decoders. */
    if (codec->codec_id == AV_CODEC_ID_AAC && (!codec->sample_rate || !codec->ch_layout.nb_channels)) {
        static const int rates[] = {96000,88200,64000,48000,44100,32000,24000,22050,16000,12000,11025,8000,7350};
        const uint8_t *p = packet->data;
        if (packet->size >= 7 && p[0] == 0xff && (p[1] & 0xf6) == 0xf0) {
            unsigned rate = (p[2] >> 2) & 15, channels = ((p[2] & 1) << 2) | (p[3] >> 6);
            if (rate < sizeof(rates)/sizeof(rates[0]) && channels) {
                codec->sample_rate = rates[rate];
                codec->profile = p[2] >> 6;
                av_channel_layout_uninit(&codec->ch_layout);
                av_channel_layout_default(&codec->ch_layout, channels == 7 ? 8 : (int)channels);
            }
        }
    } else if (codec->codec_type == AVMEDIA_TYPE_VIDEO && (!codec->width || !codec->height)) {
        AVCodecParserContext *parser = av_parser_init(codec->codec_id);
        AVCodecContext *context = avcodec_alloc_context3(NULL);
        if (parser && context && avcodec_parameters_to_context(context, codec) >= 0) {
            uint8_t *parsed = NULL;
            int length = 0;
            parser->flags |= PARSER_FLAG_COMPLETE_FRAMES;
            av_parser_parse2(parser, context, &parsed, &length, packet->data, packet->size,
                             packet->pts, packet->dts, packet->pos);
            codec->width = parser->width; codec->height = parser->height;
            codec->profile = context->profile; codec->level = context->level;
        }
        av_parser_close(parser); avcodec_free_context(&context);
    }
}
static void jp_close_period(JpDemux *demux) {
    for (unsigned i = 0; i < demux->count; ++i) av_packet_free(&demux->prefetched[i]);
    if (demux->format) avformat_close_input(&demux->format);
    if (demux->io) { av_freep(&demux->io->buffer); avio_context_free(&demux->io); }
    av_freep(&demux->manifest);
    demux->count = demux->position = 0;
}
static int jp_open_period(JpInput *input, const JpPeriod *period, const char *url, JpDemux *demux) {
    demux->manifest = jp_period_manifest(period, input->longest);
    demux->format = avformat_alloc_context();
    if (!demux->manifest || !demux->format) return AVERROR(ENOMEM);
    AVFormatContext *source = demux->format;
    source->opaque = input;
    source->io_open = jp_open;
    source->interrupt_callback = (AVIOInterruptCB){jp_interrupted, input};
    input->manifest = demux->manifest;
    input->manifest_size = strlen(demux->manifest);
    input->manifest_position = 0;
    unsigned char *buffer = av_malloc(4096);
    if (!buffer) return AVERROR(ENOMEM);
    demux->io = avio_alloc_context(buffer, 4096, 0, input, jp_read_manifest, NULL, jp_seek_manifest);
    if (!demux->io) { av_free(buffer); return AVERROR(ENOMEM); }
    source->pb = demux->io;
    source->flags |= AVFMT_FLAG_CUSTOM_IO;
    AVDictionary *options = NULL;
    av_dict_set(&options, "protocol_whitelist", "file,crypto", 0);
    av_dict_set(&options, "allowed_extensions", "ts,m3u8", 0);
    av_dict_set(&options, "extension_picky", "0", 0);
    int result = avformat_open_input(&demux->format, url, av_find_input_format("hls"), &options);
    av_dict_free(&options);
    source = demux->format;
    if (result < 0 || (result = avformat_find_stream_info(source, NULL)) < 0) return result;
    if (input->io_failed || source->nb_streams > 32) return AVERROR_INVALIDDATA;
    size_t bytes = 0;
    while (!jp_parameters_ready(source)) {
        if (demux->count >= 512 || bytes > 8u*1024u*1024u) return AVERROR_INVALIDDATA;
        AVPacket *next = demux->prefetched[demux->count++] = av_packet_alloc();
        if (!next) return AVERROR(ENOMEM);
        if ((result = av_read_frame(source, next)) < 0) return result;
        if (next->stream_index < 0 || (unsigned)next->stream_index >= source->nb_streams)
            return AVERROR_INVALIDDATA;
        bytes += (size_t)next->size;
        jp_parse_parameters(source, next);
    }
    return 0;
}
DWORD WINAPI jp_remux_run(void *context) {
    JpRemux *job = context;
    JpInput input = {.job = job};
    JpOutput output = {.file = INVALID_HANDLE_VALUE, .job = job};
    wchar_t manifest[JP_REMUX_PATH], temporary[JP_REMUX_PATH] = {0}, final[JP_REMUX_PATH];
    AVFormatContext *source = NULL, *destination = NULL;
    AVPacket *packet = NULL;
    AVIOContext *out_io = NULL;
    AVDictionary *options = NULL;
    char *body = NULL, *source_url = NULL;
    JpDemux demux = {0};
    JpPeriod *periods = NULL;
    unsigned period_count = 0;
    int result = AVERROR_INVALIDDATA, mapping[32];
    int64_t last[32], offsets[32] = {0}, durations[32] = {0}, first[32], ends[32];
    int64_t last_output[32];
    unsigned packets[32] = {0}, video_count = 0, audio_count = 0;
    unsigned char audio_config[32][2] = {{0}};
    double actual_duration = 0;
    const wchar_t *stage = L"读取分片清单";
    wchar_t detail[160] = {0};
    av_log_set_level(AV_LOG_ERROR);
    _snwprintf(manifest, JP_REMUX_PATH, L"%ls\\%ls.m3u8", job->directory, job->id);
    _snwprintf(final, JP_REMUX_PATH, L"%ls\\%ls", job->directory, job->filename);
    HANDLE file = CreateFileW(manifest, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    LARGE_INTEGER size;
    DWORD received;
    if (file != INVALID_HANDLE_VALUE) {
        if (GetFileSizeEx(file, &size) && size.QuadPart >= 20 && size.QuadPart <= 1024*1024) {
            body = av_mallocz((size_t)size.QuadPart + 1);
            if (!body || !ReadFile(file, body, (DWORD)size.QuadPart, &received, NULL) ||
                received != (DWORD)size.QuadPart) { av_freep(&body); }
        }
        CloseHandle(file);
    }
    input.resources = av_calloc(JP_MAX_RESOURCES, sizeof(JpResource));
    if (!body || !input.resources || !jp_manifest(&input, body, received)) goto done;
    periods = jp_periods(body, &period_count);
    if (!periods) goto done;
    stage = L"读取和校验媒体分片";
    wchar_t base[JP_REMUX_PATH];
    _snwprintf(base, JP_REMUX_PATH, L"%ls\\media\\", job->directory);
    char *prefix = jp_utf8(base);
    source_url = jp_utf8(manifest);
    if (!prefix || !source_url) { av_free(prefix); goto done; }
    for (char *p = prefix; *p; ++p) if (*p == '\\') *p = '/';
    for (char *p = source_url; *p; ++p) if (*p == '\\') *p = '/';
    snprintf(input.prefix, sizeof(input.prefix), "%s", prefix); av_free(prefix);
    stage = L"解析音视频参数";
    if ((result = jp_open_period(&input, &periods[0], source_url, &demux)) < 0) goto done;
    source = demux.format;
    result = avformat_alloc_output_context2(&destination, NULL, "mp4", NULL);
    if (result < 0 || !destination) goto done;
    for (unsigned i = 0; i < source->nb_streams; ++i) {
        mapping[i] = -1; last[i] = first[i] = last_output[i] = AV_NOPTS_VALUE; ends[i] = 0;
        AVCodecParameters *codec = source->streams[i]->codecpar;
        if (codec->codec_type != AVMEDIA_TYPE_VIDEO && codec->codec_type != AVMEDIA_TYPE_AUDIO) continue;
        if (avformat_query_codec(destination->oformat, codec->codec_id, FF_COMPLIANCE_NORMAL) <= 0) {
            result = AVERROR(EINVAL); goto done;
        }
        AVStream *stream = avformat_new_stream(destination, NULL);
        if (!stream) { result = AVERROR(ENOMEM); goto done; }
        mapping[i] = stream->index;
        if ((result = avcodec_parameters_copy(stream->codecpar, codec)) < 0) goto done;
        stream->codecpar->codec_tag = 0;
        stream->time_base = source->streams[i]->time_base;
        stream->avg_frame_rate = source->streams[i]->avg_frame_rate;
        if (codec->codec_type == AVMEDIA_TYPE_VIDEO) ++video_count;
        else ++audio_count;
    }
    if (!video_count) { result = AVERROR_INVALIDDATA; goto done; }
    stage = L"创建 MP4 文件（请检查磁盘空间和写入权限）";
    unsigned char nonce[12];
    if (BCryptGenRandom(NULL, nonce, sizeof(nonce), BCRYPT_USE_SYSTEM_PREFERRED_RNG) < 0) {
        result = AVERROR(EIO); goto done;
    }
    wchar_t hex[25];
    for (int i = 0; i < 12; ++i) swprintf(hex+i*2, 3, L"%02x", nonce[i]);
    _snwprintf(temporary, JP_REMUX_PATH, L"%ls\\.jp-%ls-%ls.partial", job->directory, job->id, hex);
    output.file = CreateFileW(temporary, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_NEW,
                              FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN, NULL);
    if (output.file == INVALID_HANDLE_VALUE) { result = AVERROR(EIO); goto done; }
    unsigned char *buffer = av_malloc(65536);
    if (!buffer) { result = AVERROR(ENOMEM); goto done; }
    out_io = avio_alloc_context(buffer, 65536, 1, &output, NULL, jp_write, jp_seek);
    if (!out_io) { av_free(buffer); result = AVERROR(ENOMEM); goto done; }
    destination->pb = out_io;
    destination->flags |= AVFMT_FLAG_CUSTOM_IO;
    destination->avoid_negative_ts = AVFMT_AVOID_NEG_TS_MAKE_ZERO;
    if ((result = avformat_write_header(destination, NULL)) < 0) goto done;
    packet = av_packet_alloc();
    if (!packet) { result = AVERROR(ENOMEM); goto done; }
    stage = L"写入音视频数据";
    for (unsigned period_index = 0; period_index < period_count; ++period_index) {
    if (period_index) {
        jp_close_period(&demux);
        if ((result = jp_open_period(&input, &periods[period_index], source_url, &demux)) < 0) goto done;
        source = demux.format;
        unsigned used = 0;
        for (unsigned i = 0; i < source->nb_streams; ++i) {
            AVCodecParameters *codec = source->streams[i]->codecpar;
            mapping[i] = -1;
            last[i] = AV_NOPTS_VALUE; offsets[i] = durations[i] = 0;
            if (codec->codec_type != AVMEDIA_TYPE_VIDEO && codec->codec_type != AVMEDIA_TYPE_AUDIO) continue;
            if (used >= destination->nb_streams ||
                codec->codec_type != destination->streams[used]->codecpar->codec_type ||
                codec->codec_id != destination->streams[used]->codecpar->codec_id) {
                _snwprintf(detail, 160, L"第 %u 段切换了不兼容的音视频编码", period_index+1);
                result = AVERROR_INVALIDDATA; goto done;
            }
            mapping[i] = (int)used++;
        }
        if (used != destination->nb_streams) {
            _snwprintf(detail, 160, L"第 %u 段的音视频轨不完整", period_index+1);
            result = AVERROR_INVALIDDATA; goto done;
        }
    }
    int64_t start_us = source->start_time == AV_NOPTS_VALUE ? 0 : source->start_time;
    int64_t timeline_us = (int64_t)llround(periods[period_index].start * AV_TIME_BASE);
    double period_duration = 0;
    unsigned period_packets = 0;
    while (!jp_interrupted(&input)) {
        if (demux.position < demux.count) {
            av_packet_move_ref(packet, demux.prefetched[demux.position++]);
            result = 0;
        } else result = av_read_frame(source, packet);
        if (result < 0) break;
        int index = packet->stream_index;
        if (index < 0 || (unsigned)index >= source->nb_streams) { result = AVERROR_INVALIDDATA; goto done; }
        if (mapping[index] < 0) { av_packet_unref(packet); continue; }
        int output_index = mapping[index];
        AVStream *in_stream = source->streams[index], *out_stream = destination->streams[output_index];
        int64_t origin = av_rescale_q(start_us, AV_TIME_BASE_Q, in_stream->time_base);
        if (in_stream->codecpar->codec_id == AV_CODEC_ID_AAC && packet->duration <= 0 &&
            packet->size >= 7 && packet->data[0] == 0xff && (packet->data[1] & 0xf6) == 0xf0) {
            packet->duration = av_rescale_q(1024 * ((packet->data[6] & 3) + 1),
                (AVRational){1, in_stream->codecpar->sample_rate}, in_stream->time_base);
        }
        /* Preserve AAC configuration changes at a splice. The MP4 muxer writes
           a sample description for each distinct AudioSpecificConfig. Its
           automatic ADTS filter otherwise reports only the first config. */
        if (in_stream->codecpar->codec_id == AV_CODEC_ID_AAC && packet->size >= 7 &&
            packet->data[0] == 0xff && (packet->data[1] & 0xf6) == 0xf0) {
            const uint8_t *p = packet->data;
            unsigned object = (p[2] >> 6) + 1, rate = (p[2] >> 2) & 15;
            unsigned channels = ((p[2] & 1) << 2) | (p[3] >> 6);
            unsigned char config[2] = {(unsigned char)((object << 3) | (rate >> 1)),
                                       (unsigned char)((rate << 7) | (channels << 3))};
            if (channels && memcmp(audio_config[output_index], config, 2)) {
                unsigned char *side = av_packet_new_side_data(packet, AV_PKT_DATA_NEW_EXTRADATA, 2);
                if (!side) { result = AVERROR(ENOMEM); goto done; }
                memcpy(side, config, 2); memcpy(audio_config[output_index], config, 2);
            }
        }
        if (in_stream->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            if (packet->dts == AV_NOPTS_VALUE && last[index] != AV_NOPTS_VALUE)
                packet->dts = last[index] + durations[index] - offsets[index] + origin;
            if (packet->pts == AV_NOPTS_VALUE) packet->pts = packet->dts;
        }
        if (packet->flags & AV_PKT_FLAG_CORRUPT || packet->dts == AV_NOPTS_VALUE ||
            packet->pts == AV_NOPTS_VALUE) {
            av_log(NULL, AV_LOG_ERROR, "Incomplete packet metadata in stream %d (flags=%d, pts=%lld, dts=%lld)\n",
                   index, packet->flags, (long long)packet->pts, (long long)packet->dts);
            _snwprintf(detail, 160, L"第 %u 个媒体包%ls（音轨/视频轨 %d）",
                       packets[output_index]+1, packet->flags & AV_PKT_FLAG_CORRUPT ?
                       L"存在分片衔接或数据异常" : L"缺少时间戳", index+1);
            result = AVERROR_INVALIDDATA; goto done;
        }
        packet->dts -= origin; packet->pts -= origin;
        /* HLS discontinuities can reset PTS. Keep each track monotonic while
           retaining its original PTS-DTS offset (including B frames). */
        if (last[index] != AV_NOPTS_VALUE && packet->dts + offsets[index] < last[index]) {
            offsets[index] = last[index] + (durations[index] > 0 ? durations[index] : 1) - packet->dts;
        }
        packet->dts += offsets[index]; packet->pts += offsets[index];
        last[index] = packet->dts; durations[index] = packet->duration;
        double local_end = (packet->pts + packet->duration) * av_q2d(in_stream->time_base);
        if (local_end > period_duration) period_duration = local_end;
        ++packets[output_index]; ++period_packets;
        int64_t shift = av_rescale_q(timeline_us, AV_TIME_BASE_Q, in_stream->time_base);
        packet->dts += shift; packet->pts += shift;
        packet->stream_index = output_index;
        av_packet_rescale_ts(packet, in_stream->time_base, out_stream->time_base);
        /* Adjacent HLS periods can overlap by a fraction of one audio frame.
           Retain every packet and its PTS-DTS difference. Large overlaps fail. */
        if (last_output[output_index] != AV_NOPTS_VALUE && packet->dts <= last_output[output_index]) {
            int64_t overlap = last_output[output_index] + 1 - packet->dts;
            if (overlap * av_q2d(out_stream->time_base) > 0.25) {
                _snwprintf(detail, 160, L"第 %u 段时间戳重叠过大", period_index+1);
                result = AVERROR_INVALIDDATA; goto done;
            }
            packet->dts += overlap; packet->pts += overlap;
        }
        last_output[output_index] = packet->dts;
        if (first[output_index] == AV_NOPTS_VALUE) first[output_index] = packet->pts;
        int64_t end = packet->pts + packet->duration;
        if (end > ends[output_index]) ends[output_index] = end;
        double seconds = (ends[output_index] - first[output_index]) * av_q2d(out_stream->time_base);
        if (seconds > actual_duration) actual_duration = seconds;
        LONG progress = (LONG)fmin(990, actual_duration * 1000 / input.duration);
        InterlockedExchange(&job->progress, progress);
        packet->pos = -1;
        if ((result = av_interleaved_write_frame(destination, packet)) < 0) goto done;
        InterlockedExchange64(&job->bytes, avio_tell(out_io));
    }
    if (jp_interrupted(&input)) { result = AVERROR_EXIT; goto done; }
    if (result != AVERROR_EOF || input.io_failed) { if (result >= 0) result = AVERROR_INVALIDDATA; goto done; }
    if (!period_packets ||
        fabs(period_duration - periods[period_index].duration) > fmax(1.0, fmin(2.0, input.longest * 0.2))) {
        av_log(NULL, AV_LOG_ERROR, "Period %u duration mismatch: media=%.6f, manifest=%.6f\n",
               period_index+1, period_duration, periods[period_index].duration);
        _snwprintf(detail, 160, L"第 %u 段时长 %.1f 秒与清单 %.1f 秒不符",
                   period_index+1, period_duration, periods[period_index].duration);
        result = AVERROR_INVALIDDATA; goto done;
    }
    }
    for (unsigned i = 0; i < input.count; ++i)
        if (!input.resources[i].opened) { result = AVERROR_INVALIDDATA; goto done; }
    for (unsigned i = 0; i < destination->nb_streams; ++i)
        if (!packets[i]) { result = AVERROR_INVALIDDATA; goto done; }
    /* Do not publish a success if HLS silently skipped unusable media. */
    if (fabs(actual_duration - input.duration) > fmax(1.0, fmin(2.0, input.longest * 0.2))) {
        av_log(NULL, AV_LOG_ERROR, "Duration mismatch: media=%.6f, manifest=%.6f\n",
               actual_duration, input.duration);
        for (unsigned i = 0; i < destination->nb_streams; ++i)
            av_log(NULL, AV_LOG_ERROR, "Stream %u: packets=%u, first=%lld, end=%lld, seconds=%.6f\n",
                   i, packets[i], (long long)first[i], (long long)ends[i],
                   (ends[i]-first[i])*av_q2d(destination->streams[i]->time_base));
        _snwprintf(detail, 160, L"媒体时长 %.1f 秒与清单 %.1f 秒不符，未发布不完整 MP4",
                   actual_duration, input.duration);
        result = AVERROR_INVALIDDATA; goto done;
    }
    (void)audio_count;
    stage = L"完成并保存 MP4（请检查磁盘空间和写入权限）";
    if ((result = av_write_trailer(destination)) < 0) goto done;
    avio_flush(out_io);
    if (out_io->error < 0 || !FlushFileBuffers(output.file) || !GetFileSizeEx(output.file, &size)) {
        result = AVERROR(EIO); goto done;
    }
    InterlockedExchange64(&job->bytes, size.QuadPart);
    CloseHandle(output.file); output.file = INVALID_HANDLE_VALUE;
    if (jp_interrupted(&input)) { result = AVERROR_EXIT; goto done; }
    if (!MoveFileExW(temporary, final, MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH)) {
        result = AVERROR(EIO); goto done;
    }
    temporary[0] = 0;
    DeleteFileW(manifest);
    result = 0;
done:
    av_packet_free(&packet);
    jp_close_period(&demux);
    if (destination) { destination->pb = NULL; avformat_free_context(destination); }
    if (out_io) { av_freep(&out_io->buffer); avio_context_free(&out_io); }
    if (output.file != INVALID_HANDLE_VALUE) CloseHandle(output.file);
    if (temporary[0]) DeleteFileW(temporary);
    av_dict_free(&options); av_free(body); av_free(source_url); av_free(input.resources); av_free(periods);
    if (!result) {
        InterlockedExchange(&job->progress, 1000);
        InterlockedExchange(&job->phase, 2);
    } else if (jp_interrupted(&input)) {
        InterlockedExchange(&job->phase, 3);
    } else {
        _snwprintf(job->error, 256, L"MP4 合并失败：%ls（代码 %d）；已下载分片已保留",
                   detail[0] ? detail : stage, result);
        InterlockedExchange(&job->phase, 4);
    }
    return result ? 1 : 0;
}
