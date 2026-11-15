/* Test driver only; not linked into the desktop application. */
#define WIN32_LEAN_AND_MEAN
#define COBJMACROS
#include <windows.h>
#include <mfapi.h>
#include <mfidl.h>
#include <mfreadwrite.h>
#include <stdio.h>
#include <wchar.h>
#include "remux.h"
#include <libavformat/avformat.h>
#include <libavcodec/avcodec.h>

static int decoded(const wchar_t *path, double seek_seconds) {
    IMFSourceReader *reader = NULL;
    IMFMediaType *type = NULL;
    IMFSample *sample = NULL;
    DWORD stream = 0, flags = 0, video_bytes = 0, audio_bytes = 0, seek_video = 0, seek_audio = 0;
    LONGLONG timestamp = 0;
    HRESULT result = CoInitializeEx(NULL, COINIT_MULTITHREADED);
    if (FAILED(result)) return 1;
    result = MFStartup(MF_VERSION, MFSTARTUP_FULL);
    if (FAILED(result)) goto done;
    result = MFCreateSourceReaderFromURL(path, NULL, &reader);
    if (FAILED(result)) goto done;
    IMFSourceReader_SetStreamSelection(reader, MF_SOURCE_READER_ALL_STREAMS, TRUE);
    result = MFCreateMediaType(&type);
    if (FAILED(result)) goto done;
    IMFMediaType_SetGUID(type, &MF_MT_MAJOR_TYPE, &MFMediaType_Video);
    IMFMediaType_SetGUID(type, &MF_MT_SUBTYPE, &MFVideoFormat_NV12);
    result = IMFSourceReader_SetCurrentMediaType(reader, MF_SOURCE_READER_FIRST_VIDEO_STREAM, NULL, type);
    IMFMediaType_Release(type); type = NULL;
    if (FAILED(result)) goto done;
    IMFSourceReader_SetStreamSelection(reader, MF_SOURCE_READER_FIRST_VIDEO_STREAM, TRUE);
    result = IMFSourceReader_ReadSample(reader, MF_SOURCE_READER_FIRST_VIDEO_STREAM, 0,
                                        &stream, &flags, &timestamp, &sample);
    if (FAILED(result) || !sample) { result = E_FAIL; goto done; }
    IMFSample_GetTotalLength(sample, &video_bytes);
    IMFSample_Release(sample); sample = NULL;
    result = MFCreateMediaType(&type);
    if (FAILED(result)) goto done;
    IMFMediaType_SetGUID(type, &MF_MT_MAJOR_TYPE, &MFMediaType_Audio);
    IMFMediaType_SetGUID(type, &MF_MT_SUBTYPE, &MFAudioFormat_PCM);
    result = IMFSourceReader_SetCurrentMediaType(reader, MF_SOURCE_READER_FIRST_AUDIO_STREAM, NULL, type);
    IMFMediaType_Release(type); type = NULL;
    if (FAILED(result)) goto done;
    IMFSourceReader_SetStreamSelection(reader, MF_SOURCE_READER_FIRST_AUDIO_STREAM, TRUE);
    for (int i = 0; i < 10 && !sample; ++i) {
        result = IMFSourceReader_ReadSample(reader, MF_SOURCE_READER_FIRST_AUDIO_STREAM, 0,
                                            &stream, &flags, &timestamp, &sample);
        if (FAILED(result) || flags & MF_SOURCE_READERF_ENDOFSTREAM) break;
    }
    if (FAILED(result) || !sample) { result = E_FAIL; goto done; }
    IMFSample_GetTotalLength(sample, &audio_bytes);
    IMFSample_Release(sample); sample = NULL;
    PROPVARIANT position = {.vt = VT_I8};
    position.hVal.QuadPart = (LONGLONG)(seek_seconds * 10000000);
    result = IMFSourceReader_SetCurrentPosition(reader, &GUID_NULL, &position);
    if (FAILED(result)) goto done;
    for (int i = 0; i < 100; ++i) {
        result = IMFSourceReader_ReadSample(reader, MF_SOURCE_READER_FIRST_VIDEO_STREAM, 0,
                                            &stream, &flags, &timestamp, &sample);
        if (sample) {
            IMFSample_GetTotalLength(sample, &seek_video);
            IMFSample_Release(sample); sample = NULL;
        }
        if (FAILED(result) || (seek_video && timestamp >= position.hVal.QuadPart) ||
            flags & MF_SOURCE_READERF_ENDOFSTREAM) break;
    }
    LONGLONG video_timestamp = timestamp;
    for (int i = 0; i < 100; ++i) {
        result = IMFSourceReader_ReadSample(reader, MF_SOURCE_READER_FIRST_AUDIO_STREAM, 0,
                                            &stream, &flags, &timestamp, &sample);
        if (sample) {
            IMFSample_GetTotalLength(sample, &seek_audio);
            IMFSample_Release(sample); sample = NULL;
        }
        if (FAILED(result) || (seek_audio && timestamp >= position.hVal.QuadPart) ||
            flags & MF_SOURCE_READERF_ENDOFSTREAM) break;
    }
    if (!video_bytes || !audio_bytes || !seek_video || !seek_audio ||
        video_timestamp < position.hVal.QuadPart || timestamp < position.hVal.QuadPart) result = E_FAIL;
    timestamp = video_timestamp;
done:
    if (sample) IMFSample_Release(sample);
    if (type) IMFMediaType_Release(type);
    if (reader) IMFSourceReader_Release(reader);
    MFShutdown(); CoUninitialize();
    printf("{\"decoded\":%s,\"video_bytes\":%lu,\"pcm_audio_bytes\":%lu,\"seek_time_100ns\":%lld,"
           "\"seek_video_bytes\":%lu,\"seek_audio_bytes\":%lu,\"seek_seconds\":%.3f,\"hresult\":%ld}\n",
           SUCCEEDED(result) ? "true" : "false", video_bytes, audio_bytes,
           timestamp, seek_video, seek_audio, seek_seconds, (long)result);
    return FAILED(result) ? 1 : 0;
}
static int fragmented(const wchar_t *from, const wchar_t *to) {
    char source[16384], target[16384];
    WideCharToMultiByte(CP_UTF8, 0, from, -1, source, sizeof(source), NULL, NULL);
    WideCharToMultiByte(CP_UTF8, 0, to, -1, target, sizeof(target), NULL, NULL);
    AVFormatContext *input = NULL, *output = NULL;
    AVPacket *packet = NULL;
    AVDictionary *options = NULL;
    int result = avformat_open_input(&input, source, NULL, NULL);
    if (result < 0 || (result = avformat_find_stream_info(input, NULL)) < 0) goto done;
    if ((result = avformat_alloc_output_context2(&output, NULL, "mp4", target)) < 0) goto done;
    for (unsigned i = 0; i < input->nb_streams; ++i) {
        AVStream *stream = avformat_new_stream(output, NULL);
        if (!stream) { result = -1; goto done; }
        avcodec_parameters_copy(stream->codecpar, input->streams[i]->codecpar);
        stream->codecpar->codec_tag = 0;
        stream->time_base = input->streams[i]->time_base;
    }
    if ((result = avio_open(&output->pb, target, AVIO_FLAG_WRITE)) < 0) goto done;
    av_dict_set(&options, "movflags", "empty_moov+frag_keyframe+default_base_moof", 0);
    if ((result = avformat_write_header(output, &options)) < 0) goto done;
    packet = av_packet_alloc();
    if (!packet) { result = -1; goto done; }
    while ((result = av_read_frame(input, packet)) >= 0) {
        av_packet_rescale_ts(packet, input->streams[packet->stream_index]->time_base,
                            output->streams[packet->stream_index]->time_base);
        packet->pos = -1;
        if ((result = av_interleaved_write_frame(output, packet)) < 0) goto done;
    }
    if (result == AVERROR_EOF) result = av_write_trailer(output);
done:
    av_packet_free(&packet); avformat_close_input(&input);
    if (output) { avio_closep(&output->pb); avformat_free_context(output); }
    av_dict_free(&options);
    return result < 0 ? 1 : 0;
}
int wmain(int argc, wchar_t **argv) {
    av_log_set_level(AV_LOG_QUIET);
    if ((argc == 3 || argc == 4) && !wcscmp(argv[1], L"decode"))
        return decoded(argv[2], argc == 4 ? wcstod(argv[3], NULL) : 1.0);
    if (argc == 4 && !wcscmp(argv[1], L"fragment")) return fragmented(argv[2], argv[3]);
    if (argc != 5) return 2;
    JpRemux job = {0};
    if (wcslen(argv[2]) >= JP_REMUX_PATH || wcslen(argv[3]) != 64) return 2;
    wcscpy(job.directory, argv[2]); wcscpy(job.id, argv[3]);
    if (!jp_remux_name(argv[4], job.id, job.filename)) return 2;
    job.phase = 1;
    BOOL mid = !wcscmp(argv[1], L"cancel-mid");
    if (!wcscmp(argv[1], L"cancel")) job.cancel = 1;
    if (mid) {
        HANDLE thread = CreateThread(NULL, 0, jp_remux_run, &job, 0, NULL);
        if (!thread) return 2;
        ULONGLONG deadline = GetTickCount64() + 10000;
        while (WaitForSingleObject(thread, 1) == WAIT_TIMEOUT && GetTickCount64() < deadline) {
            if (InterlockedCompareExchange64(&job.bytes, 0, 0) > 65536) {
                InterlockedExchange(&job.cancel, 1); break;
            }
        }
        WaitForSingleObject(thread, 30000); CloseHandle(thread);
    } else jp_remux_run(&job);
    char filename[1024], error[1024];
    WideCharToMultiByte(CP_UTF8, 0, job.filename, -1, filename, sizeof(filename), NULL, NULL);
    WideCharToMultiByte(CP_UTF8, 0, job.error, -1, error, sizeof(error), NULL, NULL);
    printf("{\"phase\":%ld,\"progress\":%ld,\"bytes\":%lld,\"file\":\"%s\",\"error\":\"%s\"}\n",
           job.phase, job.progress, job.bytes, filename, error);
    return job.phase == 2 ? 0 : 1;
}
