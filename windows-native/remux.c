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
DWORD WINAPI jp_remux_run(void *context) {
    JpRemux *job = context;
    JpInput input = {.job = job};
    JpOutput output = {.file = INVALID_HANDLE_VALUE, .job = job};
    wchar_t manifest[JP_REMUX_PATH], temporary[JP_REMUX_PATH] = {0}, final[JP_REMUX_PATH];
    AVFormatContext *source = NULL, *destination = NULL;
    AVPacket *packet = NULL;
    AVIOContext *in_io = NULL, *out_io = NULL;
    AVDictionary *options = NULL;
    char *body = NULL, *source_url = NULL;
    int result = AVERROR_INVALIDDATA, mapping[32];
    int64_t last[32], offsets[32] = {0}, durations[32] = {0}, first[32], ends[32];
    unsigned packets[32] = {0}, video_count = 0, audio_count = 0;
    AVPacket *prefetched[512] = {0};
    unsigned prefetch_count = 0, prefetch_position = 0;
    size_t prefetch_bytes = 0;
    double actual_duration = 0;
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
    wchar_t base[JP_REMUX_PATH];
    _snwprintf(base, JP_REMUX_PATH, L"%ls\\media\\", job->directory);
    char *prefix = jp_utf8(base);
    source_url = jp_utf8(manifest);
    if (!prefix || !source_url) { av_free(prefix); goto done; }
    for (char *p = prefix; *p; ++p) if (*p == '\\') *p = '/';
    for (char *p = source_url; *p; ++p) if (*p == '\\') *p = '/';
    snprintf(input.prefix, sizeof(input.prefix), "%s", prefix); av_free(prefix);
    source = avformat_alloc_context();
    if (!source) goto done;
    source->opaque = &input;
    source->io_open = jp_open;
    source->interrupt_callback = (AVIOInterruptCB){jp_interrupted, &input};
    input.manifest = body; input.manifest_size = received;
    unsigned char *input_buffer = av_malloc(4096);
    if (!input_buffer) { result = AVERROR(ENOMEM); goto done; }
    in_io = avio_alloc_context(input_buffer, 4096, 0, &input, jp_read_manifest, NULL, jp_seek_manifest);
    if (!in_io) { av_free(input_buffer); result = AVERROR(ENOMEM); goto done; }
    source->pb = in_io;
    source->flags |= AVFMT_FLAG_CUSTOM_IO;
    av_dict_set(&options, "protocol_whitelist", "file,crypto", 0);
    av_dict_set(&options, "allowed_extensions", "ts,m3u8", 0);
    av_dict_set(&options, "extension_picky", "0", 0);
    result = avformat_open_input(&source, source_url, av_find_input_format("hls"), &options);
    av_dict_free(&options);
    if (result < 0 || (result = avformat_find_stream_info(source, NULL)) < 0) goto done;
    if (input.io_failed) { result = AVERROR_INVALIDDATA; goto done; }
    if (source->nb_streams > 32) { result = AVERROR_INVALIDDATA; goto done; }
    while (!jp_parameters_ready(source)) {
        if (prefetch_count >= 512 || prefetch_bytes > 8u*1024u*1024u) { result = AVERROR_INVALIDDATA; goto done; }
        AVPacket *next = prefetched[prefetch_count++] = av_packet_alloc();
        if (!next) { result = AVERROR(ENOMEM); goto done; }
        if ((result = av_read_frame(source, next)) < 0) goto done;
        if (next->stream_index < 0 || (unsigned)next->stream_index >= source->nb_streams) {
            result = AVERROR_INVALIDDATA; goto done;
        }
        prefetch_bytes += (size_t)next->size;
        jp_parse_parameters(source, next);
    }
    result = avformat_alloc_output_context2(&destination, NULL, "mp4", NULL);
    if (result < 0 || !destination) goto done;
    for (unsigned i = 0; i < source->nb_streams; ++i) {
        mapping[i] = -1; last[i] = first[i] = AV_NOPTS_VALUE; ends[i] = 0;
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
    int64_t start_us = source->start_time == AV_NOPTS_VALUE ? 0 : source->start_time;
    while (!jp_interrupted(&input)) {
        if (prefetch_position < prefetch_count) {
            av_packet_move_ref(packet, prefetched[prefetch_position++]);
            result = 0;
        } else result = av_read_frame(source, packet);
        if (result < 0) break;
        int index = packet->stream_index;
        if (index < 0 || (unsigned)index >= source->nb_streams) { result = AVERROR_INVALIDDATA; goto done; }
        if (mapping[index] < 0) { av_packet_unref(packet); continue; }
        AVStream *in_stream = source->streams[index], *out_stream = destination->streams[mapping[index]];
        int64_t origin = av_rescale_q(start_us, AV_TIME_BASE_Q, in_stream->time_base);
        if (in_stream->codecpar->codec_id == AV_CODEC_ID_AAC && packet->duration <= 0 &&
            packet->size >= 7 && packet->data[0] == 0xff && (packet->data[1] & 0xf6) == 0xf0) {
            packet->duration = av_rescale_q(1024 * ((packet->data[6] & 3) + 1),
                (AVRational){1, in_stream->codecpar->sample_rate}, in_stream->time_base);
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
        if (first[index] == AV_NOPTS_VALUE) first[index] = packet->pts;
        int64_t end = packet->pts + packet->duration;
        if (end > ends[index]) ends[index] = end;
        ++packets[index];
        double seconds = (ends[index] - first[index]) * av_q2d(in_stream->time_base);
        if (seconds > actual_duration) actual_duration = seconds;
        LONG progress = (LONG)fmin(990, actual_duration * 1000 / input.duration);
        InterlockedExchange(&job->progress, progress);
        packet->stream_index = mapping[index];
        av_packet_rescale_ts(packet, in_stream->time_base, out_stream->time_base);
        packet->pos = -1;
        if ((result = av_interleaved_write_frame(destination, packet)) < 0) goto done;
        InterlockedExchange64(&job->bytes, avio_tell(out_io));
    }
    if (jp_interrupted(&input)) { result = AVERROR_EXIT; goto done; }
    if (result != AVERROR_EOF || input.io_failed) { if (result >= 0) result = AVERROR_INVALIDDATA; goto done; }
    for (unsigned i = 0; i < input.count; ++i)
        if (!input.resources[i].opened) { result = AVERROR_INVALIDDATA; goto done; }
    for (unsigned i = 0; i < source->nb_streams; ++i)
        if (mapping[i] >= 0 && !packets[i]) { result = AVERROR_INVALIDDATA; goto done; }
    /* Do not publish a success if HLS silently skipped unusable media. */
    if (fabs(actual_duration - input.duration) > fmax(1.0, fmin(2.0, input.longest * 0.2))) {
        result = AVERROR_INVALIDDATA; goto done;
    }
    (void)audio_count;
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
    for (unsigned i = 0; i < prefetch_count; ++i) av_packet_free(&prefetched[i]);
    av_packet_free(&packet);
    if (source) avformat_close_input(&source);
    if (in_io) { av_freep(&in_io->buffer); avio_context_free(&in_io); }
    if (destination) { destination->pb = NULL; avformat_free_context(destination); }
    if (out_io) { av_freep(&out_io->buffer); avio_context_free(&out_io); }
    if (output.file != INVALID_HANDLE_VALUE) CloseHandle(output.file);
    if (temporary[0]) DeleteFileW(temporary);
    av_dict_free(&options); av_free(body); av_free(source_url); av_free(input.resources);
    if (!result) {
        InterlockedExchange(&job->progress, 1000);
        InterlockedExchange(&job->phase, 2);
    } else if (jp_interrupted(&input)) {
        InterlockedExchange(&job->phase, 3);
    } else {
        _snwprintf(job->error, 256, L"MP4 合并失败（代码 %d）；完整分片已保留，可重试或更换线路", result);
        InterlockedExchange(&job->phase, 4);
    }
    return result ? 1 : 0;
}
