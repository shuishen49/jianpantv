/* Production cleanup, cache I/O and manifest publication under real file locks. */
#define wWinMain unused_gui_entry
#include "main.c"
#undef wWinMain
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s\n",__LINE__,#x); return 1; } } while(0)
static const unsigned char fixture[] = "media-cache-cleanup-fixture";
static const wchar_t fixture_headers[] = L"Content-Type: video/mp2t\r\n";
static BOOL exists(const wchar_t *directory, const wchar_t *key, const wchar_t *suffix) {
    wchar_t path[PATH_CAP];
    _snwprintf(path, PATH_CAP, L"%ls\\%ls%ls", directory, key, suffix);
    return GetFileAttributesW(path) != INVALID_FILE_ATTRIBUTES;
}
static BOOL media_exists(const wchar_t *directory, const wchar_t *key) {
    wchar_t media[PATH_CAP];
    _snwprintf(media, PATH_CAP, L"%ls\\media", directory);
    return exists(media, key, L".ts") || exists(media, key, L".info");
}
static BOOL put(const wchar_t *directory, const wchar_t *key) {
    return cache_write(directory, key, 200, fixture, sizeof(fixture), fixture_headers);
}
static DWORD make_manifest(char text[1024], const wchar_t *a, const wchar_t *b) {
    char first[65], second[65];
    WideCharToMultiByte(CP_UTF8, 0, a, -1, first, 65, NULL, NULL);
    WideCharToMultiByte(CP_UTF8, 0, b ? b : a, -1, second, 65, NULL, NULL);
    return (DWORD)snprintf(text, 1024,
        "#EXTM3U\n#EXT-X-KEY:METHOD=AES-128,URI=\"media/%s.ts\"\n"
        "#EXTINF:1,\nmedia/%s.ts\n#EXT-X-ENDLIST\n", first, second);
}
static BOOL prepare(JpRemux *job, const wchar_t *directory, const wchar_t *id,
        const char *text, DWORD length) {
    memset(job, 0, sizeof(*job)); wcscpy(job->directory, directory); wcscpy(job->id, id);
    wchar_t name[80], path[PATH_CAP];
    _snwprintf(name, 80, L"%ls.m3u8", id);
    _snwprintf(job->title, 256, L"清理测试-%.12ls", id);
    jp_remux_name(job->title, L"", 1080, L"国语", job->filename);
    if (!save_playlist(directory, name, (const unsigned char *)text, length)) return FALSE;
    _snwprintf(path, PATH_CAP, L"%ls\\%ls", directory, job->filename);
    job->bytes = sizeof(fixture);
    return cache_atomic(path, fixture, sizeof(fixture));
}
static void forget_episodes(void) {
    while (cache_episodes) {
        CacheEpisode *next = cache_episodes->next;
        deallocate(cache_episodes->keys); deallocate(cache_episodes); cache_episodes = next;
    }
}
typedef struct { const wchar_t *directory, *key; volatile LONG errors; } Concurrent;
static DWORD WINAPI concurrent_io(void *context) {
    Concurrent *io = context;
    for (int i = 0; i < 100; ++i) {
        if (!put(io->directory, io->key)) InterlockedIncrement(&io->errors);
        DWORD status = 0, length = 0; unsigned char *body = NULL; wchar_t *headers = NULL;
        if (cache_read(io->directory, io->key, &status, &body, &length, &headers)) {
            if (length != sizeof(fixture) || memcmp(body, fixture, sizeof(fixture))) InterlockedIncrement(&io->errors);
            deallocate(body); deallocate(headers);
        }
    }
    return 0;
}
int wmain(int argc, wchar_t **argv) {
    CHECK(argc == 2);
    wchar_t directory[PATH_CAP], a[65], b[65], c[65], id1[65], id2[65], path[PATH_CAP];
    _snwprintf(directory, PATH_CAP, L"%ls\\cleanup-%lu-%llu", argv[1], GetCurrentProcessId(), GetTickCount64());
    CHECK(cache_set_directory(directory));
    CHECK(cache_key(L"https://example.com/key", L"", a));
    CHECK(cache_key(L"https://example.com/segment", L"", b));
    CHECK(cache_key(L"https://example.com/unrelated", L"", c));
    CHECK(cache_key(L"https://example.com/episode1", L"", id1));
    CHECK(cache_key(L"https://example.com/episode2", L"", id2));
    char text[1024]; DWORD length = make_manifest(text, a, b);
    JpRemux first, second;
    CHECK(put(directory, a) && put(directory, b) && put(directory, c));
    _snwprintf(path, PATH_CAP, L"%ls\\keep.txt", directory);
    CHECK(cache_atomic(path, fixture, sizeof(fixture)));
    CHECK(prepare(&first, directory, id1, text, length));
    DWORD status = 0, bytes = 0; unsigned char *buffer = NULL; wchar_t *headers = NULL;
    CHECK(cache_read(directory, a, &status, &buffer, &bytes, &headers));
    Concurrent io = {directory, a, 0};
    HANDLE thread = CreateThread(NULL, 0, concurrent_io, &io, 0, NULL);
    CHECK(thread != NULL);
    cache_complete(&first, (unsigned char *)text, length);
    CHECK(WaitForSingleObject(thread, 10000) == WAIT_OBJECT_0);
    CloseHandle(thread);
    CHECK(io.errors == 0 && !first.cleanup_pending);
    CHECK(!media_exists(directory, a) && !media_exists(directory, b));
    CHECK(media_exists(directory, c) && PathFileExistsW(path));
    CHECK(!exists(directory, id1, L".m3u8") && !exists(directory, id1, L".jp-cleanup"));
    CHECK(bytes == sizeof(fixture) && !memcmp(buffer, fixture, bytes)); /* In-flight response survives. */
    deallocate(buffer); deallocate(headers);
    CHECK(put(directory, a) && !media_exists(directory, a)); /* Late response cannot reappear. */
    CHECK(cache_download_begin(directory, id1, (unsigned char *)text, length));
    CHECK(put(directory, a) && put(directory, b) && media_exists(directory, a)); /* Explicit retry. */
    CHECK(prepare(&first, directory, id1, text, length));
    CHECK(!exists(directory, id1, L".jp-download"));
    char shared[1024]; DWORD shared_length = make_manifest(shared, a, c);
    CHECK(cache_download_begin(directory, id2, (unsigned char *)shared, shared_length));
    cache_complete(&first, (unsigned char *)text, length);
    CHECK(first.cleanup_pending && media_exists(directory, a) && !media_exists(directory, b));
    CHECK(exists(directory, id1, L".jp-cleanup") && exists(directory, id2, L".jp-download"));
    CHECK(prepare(&second, directory, id2, shared, shared_length));
    cache_complete(&second, (unsigned char *)shared, shared_length);
    cache_cleanup_retry(directory);
    CHECK(!media_exists(directory, a) && !media_exists(directory, c));
    CHECK(!exists(directory, id1, L".jp-cleanup") && !exists(directory, id2, L".jp-cleanup"));
    CHECK(PathFileExistsW(path)); /* Unrelated user data remains. */
    CHECK(cache_download_begin(directory, id1, (unsigned char *)text, length));
    CHECK(put(directory, a) && put(directory, b) && prepare(&first, directory, id1, text, length));
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, a);
    HANDLE locked = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    CHECK(locked != INVALID_HANDLE_VALUE);
    cache_complete(&first, (unsigned char *)text, length);
    CHECK(first.cleanup_pending && media_exists(directory, a) && !media_exists(directory, b));
    CHECK(exists(directory, id1, L".jp-cleanup"));
    CloseHandle(locked);
    forget_episodes(); /* Simulate the next process recovering its on-disk ticket. */
    cache_cleanup_recover(directory);
    CHECK(!media_exists(directory, a) && !exists(directory, id1, L".jp-cleanup"));
    CHECK(put(directory, a) && !media_exists(directory, a));
    CHECK(cache_download_begin(directory, id1, (unsigned char *)text, length));
    CHECK(put(directory, a) && put(directory, b) && prepare(&first, directory, id1, text, length));
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, a);
    locked = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    CHECK(locked != INVALID_HANDLE_VALUE);
    cache_complete(&first, (unsigned char *)text, length);
    CHECK(first.cleanup_pending);
    CloseHandle(locked);
    wchar_t final[PATH_CAP], moved[PATH_CAP];
    _snwprintf(final, PATH_CAP, L"%ls\\%ls", directory, first.filename);
    _snwprintf(moved, PATH_CAP, L"%ls\\moved.mp4", directory);
    CHECK(MoveFileExW(final, moved, MOVEFILE_REPLACE_EXISTING));
    forget_episodes(); cache_cleanup_recover(directory);
    CHECK(media_exists(directory, a)); /* No verified final file: keep recovery cache. */
    CHECK(MoveFileExW(moved, final, MOVEFILE_REPLACE_EXISTING));
    cache_cleanup_recover(directory);
    CHECK(!media_exists(directory, a) && !exists(directory, id1, L".jp-cleanup"));
    CHECK(exists(directory, L"keep", L".txt"));
    CHECK(!cache_download_begin(directory, L"..\\outside", (unsigned char *)text, length));
    CHECK(exists(directory, id2, L".mp4") == FALSE);
    CHECK(PathFileExistsW(final)); /* Completed MP4 is never a cleanup target. */
    /* Legacy tickets remain recoverable after the naming format changes. */
    CHECK(cache_download_begin(directory, id1, (unsigned char *)text, length));
    CHECK(put(directory, a) && put(directory, b) && prepare(&first, directory, id1, text, length));
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, a);
    locked = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    CHECK(locked != INVALID_HANDLE_VALUE);
    cache_complete(&first, (unsigned char *)text, length);
    CHECK(first.cleanup_pending);
    CloseHandle(locked);
    _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-cleanup", directory, id1);
    DWORD ticket_length = 0;
    unsigned char *ticket = cache_small_file(path, &ticket_length);
    CHECK(ticket && cache_ticket_valid(directory, id1, ticket, ticket_length));
    CacheCleanupRecord *record = (CacheCleanupRecord *)ticket;
    record->filename[0] = L'.';
    CHECK(!cache_ticket_valid(directory, id1, ticket, ticket_length));
    wcscpy(record->filename, first.filename);
    record->bytes++;
    CHECK(!cache_ticket_valid(directory, id1, ticket, ticket_length));
    record->bytes--;
    _snwprintf(final, PATH_CAP, L"%ls\\%ls", directory, first.filename);
    _snwprintf(record->filename, 192, L"荐片-旧清理测试-%.12ls.mp4", id1);
    _snwprintf(moved, PATH_CAP, L"%ls\\%ls", directory, record->filename);
    CHECK(MoveFileExW(final, moved, 0));
    record->magic = CACHE_CLEAN_LEGACY_MAGIC;
    CHECK(cache_ticket_valid(directory, id1, ticket, ticket_length));
    CHECK(!cache_ticket_valid(directory, id2, ticket, ticket_length));
    CHECK(cache_atomic(path, ticket, ticket_length));
    deallocate(ticket); forget_episodes(); cache_cleanup_recover(directory);
    CHECK(!media_exists(directory, a) && !exists(directory, id1, L".jp-cleanup") && PathFileExistsW(moved));
    printf("{\"passed\":%d,\"concurrent_io\":true,\"late_writes_suppressed\":true,"
        "\"explicit_retry\":true,\"shared_download_retained\":true,\"locked_file_retry\":true,"
        "\"restart_recovery\":true,\"missing_final_retains_cache\":true,\"unrelated_files_preserved\":true,"
        "\"new_and_legacy_filename_recovery\":true,\"invalid_ticket_retains_cache\":true,"
        "\"reclaimed_bytes\":%lld}\n", checks, cache_reclaimed_bytes);
    return 0;
}
