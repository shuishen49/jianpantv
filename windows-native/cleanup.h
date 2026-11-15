/* Included by cache.h. Only completed, atomically published MP4s retire cache.
   The cache lock serializes deletion with readers and late network writers.
   Small recovery tickets exist only while files are locked or still shared. */
#define CACHE_CLEAN_LEGACY_MAGIC 0x314c434a
#define CACHE_CLEAN_MAGIC 0x324c434a
typedef struct {
    DWORD magic, length;
    LONG64 bytes;
    wchar_t filename[192];
} CacheCleanupRecord;
typedef struct CacheEpisode {
    struct CacheEpisode *next;
    wchar_t directory[PATH_CAP], id[65];
    char (*keys)[65];
    DWORD count;
    BOOL completed, pending;
} CacheEpisode;
static CacheEpisode *cache_episodes;
static LONG64 cache_reclaimed_bytes;
static LONG cache_reclaimed_files;

static BOOL cache_hex(const wchar_t *text, size_t length) {
    if (length != 64) return FALSE;
    for (size_t i = 0; i < length; ++i)
        if (!((text[i] >= L'0' && text[i] <= L'9') || (text[i] >= L'a' && text[i] <= L'f'))) return FALSE;
    return TRUE;
}
static int cache_key_compare(const void *a, const void *b) { return memcmp(a, b, 64); }
static BOOL cache_parse_keys(const unsigned char *body, DWORD length, char (**keys)[65], DWORD *count) {
    if (length < 20 || length > 1024*1024 || memcmp(body, "#EXTM3U\n", 8) || memchr(body, 0, length)) return FALSE;
    char (*items)[65] = allocate(20000 * 65);
    if (!items) return FALSE;
    DWORD used = 0;
    for (DWORD i = 0; i + 73 <= length; ++i) {
        if (memcmp(body+i, "media/", 6)) continue;
        if (memcmp(body+i+70, ".ts", 3) || used == 20000) { deallocate(items); return FALSE; }
        for (DWORD j = 0; j < 64; ++j) {
            char c = body[i+6+j];
            if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f'))) { deallocate(items); return FALSE; }
        }
        memcpy(items[used], body+i+6, 64); items[used++][64] = 0;
        i += 72;
    }
    if (!used) { deallocate(items); return FALSE; }
    qsort(items, used, 65, cache_key_compare);
    DWORD unique = 0;
    for (DWORD i = 0; i < used; ++i)
        if (!unique || memcmp(items[i], items[unique-1], 64)) memcpy(items[unique++], items[i], 65);
    *keys = items; *count = unique;
    return TRUE;
}
static unsigned char *cache_small_file(const wchar_t *path, DWORD *length) {
    DWORD attributes = GetFileAttributesW(path);
    if (attributes == INVALID_FILE_ATTRIBUTES || attributes & (FILE_ATTRIBUTE_DIRECTORY | FILE_ATTRIBUTE_REPARSE_POINT))
        return NULL;
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    LARGE_INTEGER size; DWORD received = 0;
    unsigned char *body = NULL;
    if (file != INVALID_HANDLE_VALUE && GetFileSizeEx(file, &size) && size.QuadPart > 0 &&
        size.QuadPart <= (LONG64)(1024*1024 + sizeof(CacheCleanupRecord))) {
        body = allocate((size_t)size.QuadPart + 1);
        if (body && (!ReadFile(file, body, (DWORD)size.QuadPart, &received, NULL) || received != size.QuadPart)) {
            deallocate(body); body = NULL;
        }
        if (body) *length = received;
    }
    if (file != INVALID_HANDLE_VALUE) CloseHandle(file);
    return body;
}
static CacheEpisode *cache_episode(const wchar_t *directory, const wchar_t *id) {
    for (CacheEpisode *item = cache_episodes; item; item = item->next)
        if (!_wcsicmp(item->directory, directory) && !wcscmp(item->id, id)) return item;
    return NULL;
}
static BOOL cache_contains(const CacheEpisode *item, const wchar_t *key) {
    char narrow[65];
    for (int i = 0; i < 64; ++i) narrow[i] = (char)key[i];
    narrow[64] = 0;
    return bsearch(narrow, item->keys, item->count, 65, cache_key_compare) != NULL;
}
static BOOL cache_retired(const wchar_t *directory, const wchar_t *key) {
    BOOL retired = FALSE;
    for (CacheEpisode *item = cache_episodes; item; item = item->next) {
        if (_wcsicmp(item->directory, directory) || !cache_contains(item, key)) continue;
        if (!item->completed) return FALSE; /* An explicit retry owns its resources. */
        retired = TRUE;
    }
    return retired;
}
/* Caller holds the exclusive cache lock. A fresh download registers all its
   resources before fetching the first one, including keys and init segments. */
static BOOL cache_download_begin_locked(const wchar_t *directory, const wchar_t *id,
        const unsigned char *body, DWORD length) {
    char (*keys)[65] = NULL; DWORD count = 0;
    if (!directory[0] || !cache_hex(id, wcslen(id)) || !cache_parse_keys(body, length, &keys, &count)) return FALSE;
    CacheEpisode *item = cache_episode(directory, id), *created = NULL;
    if (!item) item = created = allocate(sizeof(*item));
    wchar_t path[PATH_CAP];
    _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-download", directory, id);
    if (!item || !cache_atomic(path, body, length)) { deallocate(created); deallocate(keys); return FALSE; }
    if (created) {
        wcscpy(item->directory, directory); wcscpy(item->id, id);
        item->next = cache_episodes; cache_episodes = item;
    }
    deallocate(item->keys); item->keys = keys; item->count = count;
    item->completed = item->pending = FALSE;
    /* Replacing this episode's recovery ticket must not revive its old cleanup. */
    _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-cleanup", directory, id);
    DeleteFileW(path);
    return TRUE;
}
static BOOL cache_download_begin(const wchar_t *directory, const wchar_t *id,
        const unsigned char *body, DWORD length) {
    AcquireSRWLockExclusive(&cache_lock);
    BOOL ok = cache_download_begin_locked(directory, id, body, length);
    ReleaseSRWLockExclusive(&cache_lock);
    return ok;
}
/* Unknown/unreadable manifests conservatively postpone deletion. */
static BOOL cache_protect_keys(const wchar_t *directory, const CacheEpisode *item, BOOL *protected) {
    wchar_t pattern[PATH_CAP], path[PATH_CAP];
    _snwprintf(pattern, PATH_CAP, L"%ls\\*", directory);
    WIN32_FIND_DATAW data;
    HANDLE find = FindFirstFileW(pattern, &data);
    if (find == INVALID_HANDLE_VALUE) return FALSE;
    BOOL ok = TRUE;
    do {
        const wchar_t *extension = wcsrchr(data.cFileName, L'.');
        if (!extension || (_wcsicmp(extension, L".m3u8") && _wcsicmp(extension, L".jp-download"))) continue;
        _snwprintf(path, PATH_CAP, L"%ls\\%ls", directory, data.cFileName);
        DWORD length = 0;
        unsigned char *body = cache_small_file(path, &length);
        if (!body || length < 7 || memcmp(body, "#EXTM3U", 7)) ok = FALSE;
        else {
            for (DWORD i = 0; i+73 <= length; ++i) {
                if (memcmp(body+i, "media/", 6) || memcmp(body+i+70, ".ts", 3)) continue;
                char key[65]; memcpy(key, body+i+6, 64); key[64] = 0;
                char (*found)[65] = bsearch(key, item->keys, item->count, 65, cache_key_compare);
                if (found) protected[found-item->keys] = TRUE;
                i += 72;
            }
        }
        deallocate(body);
        if (!ok) break;
    } while (FindNextFileW(find, &data));
    if (ok && GetLastError() != ERROR_NO_MORE_FILES) ok = FALSE;
    FindClose(find);
    return ok;
}
static BOOL cache_remove_file(const wchar_t *path) {
    WIN32_FILE_ATTRIBUTE_DATA data;
    if (!GetFileAttributesExW(path, GetFileExInfoStandard, &data))
        return GetLastError() == ERROR_FILE_NOT_FOUND || GetLastError() == ERROR_PATH_NOT_FOUND;
    if (data.dwFileAttributes & (FILE_ATTRIBUTE_DIRECTORY | FILE_ATTRIBUTE_REPARSE_POINT)) return FALSE;
    if (!DeleteFileW(path)) return FALSE;
    InterlockedAdd64(&cache_reclaimed_bytes, ((LONG64)data.nFileSizeHigh << 32) | data.nFileSizeLow);
    InterlockedIncrement(&cache_reclaimed_files);
    return TRUE;
}
static BOOL cache_remove_pair(const wchar_t *directory, const char *key) {
    wchar_t info[PATH_CAP], body[PATH_CAP];
    _snwprintf(info, PATH_CAP, L"%ls\\media\\%.64hs.info", directory, key);
    _snwprintf(body, PATH_CAP, L"%ls\\media\\%.64hs.ts", directory, key);
    DWORD attributes = GetFileAttributesW(info);
    if (attributes == INVALID_FILE_ATTRIBUTES)
        return GetFileAttributesW(body) == INVALID_FILE_ATTRIBUTES && GetLastError() == ERROR_FILE_NOT_FOUND;
    if (attributes & (FILE_ATTRIBUTE_REPARSE_POINT | FILE_ATTRIBUTE_DIRECTORY)) return FALSE;
    DWORD length = 0; unsigned char *metadata = cache_small_file(info, &length);
    BOOL valid = metadata && length >= sizeof(CacheRecord) &&
        ((CacheRecord *)metadata)->magic == 0x3243504a &&
        ((CacheRecord *)metadata)->header_bytes == length - sizeof(CacheRecord);
    deallocate(metadata);
    return valid && cache_remove_file(body) && cache_remove_file(info);
}
static BOOL cache_ticket_valid(const wchar_t *directory, const wchar_t *id,
        const unsigned char *body, DWORD length) {
    if (length <= sizeof(CacheCleanupRecord)) return FALSE;
    const CacheCleanupRecord *record = (const CacheCleanupRecord *)body;
    if ((record->magic != CACHE_CLEAN_MAGIC && record->magic != CACHE_CLEAN_LEGACY_MAGIC) ||
        record->length != length-sizeof(*record) ||
        record->bytes <= 0 || record->filename[191] ||
        wcspbrk(record->filename, L"<>:\"/\\|?*")) return FALSE;
    wchar_t suffix[32], path[PATH_CAP];
    size_t used = wcslen(record->filename);
    for (size_t i = 0; i < used; ++i) if (record->filename[i] < 32 || record->filename[i] == 127) return FALSE;
    if (record->magic == CACHE_CLEAN_LEGACY_MAGIC) {
        _snwprintf(suffix, 32, L"-%.12ls.mp4", id);
        size_t tail = wcslen(suffix);
        if (wcsncmp(record->filename, L"荐片-", 3) || used < tail ||
            wcscmp(record->filename+used-tail, suffix)) return FALSE;
    } else if (used < 7 || record->filename[0] != L'《' || !wcschr(record->filename, L'》') ||
               wcscmp(record->filename+used-4, L".mp4")) return FALSE;
    _snwprintf(path, PATH_CAP, L"%ls\\%ls", directory, record->filename);
    WIN32_FILE_ATTRIBUTE_DATA attributes;
    return GetFileAttributesExW(path, GetFileExInfoStandard, &attributes) &&
        !(attributes.dwFileAttributes & (FILE_ATTRIBUTE_DIRECTORY | FILE_ATTRIBUTE_REPARSE_POINT)) &&
        (((LONG64)attributes.nFileSizeHigh << 32) | attributes.nFileSizeLow) == record->bytes;
}
static void cache_cleanup_locked(const wchar_t *directory) {
    wchar_t media[PATH_CAP], path[PATH_CAP];
    _snwprintf(media, PATH_CAP, L"%ls\\media", directory);
    DWORD attributes = GetFileAttributesW(media);
    if (attributes == INVALID_FILE_ATTRIBUTES || attributes & FILE_ATTRIBUTE_REPARSE_POINT) return;
    BOOL processed = FALSE;
    for (CacheEpisode *item = cache_episodes; item; item = item->next) {
        if (!item->completed || !item->pending || _wcsicmp(item->directory, directory)) continue;
        _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-cleanup", directory, item->id);
        DWORD length = 0; unsigned char *ticket = cache_small_file(path, &length);
        BOOL valid = ticket && cache_ticket_valid(directory, item->id, ticket, length);
        if (!valid) { deallocate(ticket); continue; }
        wchar_t manifest[PATH_CAP];
        _snwprintf(manifest, PATH_CAP, L"%ls\\%ls.m3u8", directory, item->id);
        DWORD original_length = 0; unsigned char *original = cache_small_file(manifest, &original_length);
        const CacheCleanupRecord *record = (const CacheCleanupRecord *)ticket;
        if (original && original_length == record->length &&
            !memcmp(original, ticket+sizeof(*record), original_length)) cache_remove_file(manifest);
        deallocate(original); deallocate(ticket);
        BOOL *protected = allocate(item->count * sizeof(BOOL));
        if (!protected || !cache_protect_keys(directory, item, protected)) { deallocate(protected); continue; }
        processed = TRUE;
        BOOL complete = TRUE;
        for (DWORD i = 0; i < item->count; ++i) {
            if (protected[i] || !cache_remove_pair(directory, item->keys[i])) complete = FALSE;
        }
        deallocate(protected);
        if (complete && cache_remove_file(path)) item->pending = FALSE;
    }
    /* Remove only an empty directory; never recurse through user data. */
    if (processed) RemoveDirectoryW(media);
}
static void cache_cleanup_retry(const wchar_t *directory) {
    AcquireSRWLockExclusive(&cache_lock);
    cache_cleanup_locked(directory);
    ReleaseSRWLockExclusive(&cache_lock);
}
static void cache_cleanup_recover(const wchar_t *directory) {
    wchar_t pattern[PATH_CAP], path[PATH_CAP];
    _snwprintf(pattern, PATH_CAP, L"%ls\\*.jp-cleanup", directory);
    AcquireSRWLockExclusive(&cache_lock);
    WIN32_FIND_DATAW data;
    HANDLE find = FindFirstFileW(pattern, &data);
    if (find != INVALID_HANDLE_VALUE) {
        do {
            if (wcslen(data.cFileName) != 75 || !cache_hex(data.cFileName, 64)) continue;
            wchar_t id[65]; memcpy(id, data.cFileName, 64*sizeof(wchar_t)); id[64] = 0;
            if (cache_episode(directory, id)) continue;
            _snwprintf(path, PATH_CAP, L"%ls\\%ls", directory, data.cFileName);
            DWORD length = 0, count = 0; char (*keys)[65] = NULL;
            unsigned char *ticket = cache_small_file(path, &length);
            if (ticket && cache_ticket_valid(directory, id, ticket, length) &&
                cache_parse_keys(ticket+sizeof(CacheCleanupRecord), length-sizeof(CacheCleanupRecord), &keys, &count)) {
                CacheEpisode *item = allocate(sizeof(*item));
                if (item) {
                    wcscpy(item->directory, directory); wcscpy(item->id, id);
                    item->keys = keys; item->count = count; item->completed = item->pending = TRUE;
                    item->next = cache_episodes; cache_episodes = item; keys = NULL;
                }
                deallocate(keys);
            }
            deallocate(ticket);
        } while (FindNextFileW(find, &data));
        FindClose(find);
    }
    cache_cleanup_locked(directory);
    ReleaseSRWLockExclusive(&cache_lock);
}
static void cache_complete(JpRemux *job, const unsigned char *body, DWORD length) {
    InterlockedExchange(&job->cleanup_pending, 2);
    char (*keys)[65] = NULL; DWORD count = 0;
    if (!cache_parse_keys(body, length, &keys, &count)) return;
    DWORD bytes = sizeof(CacheCleanupRecord) + length;
    unsigned char *ticket = allocate(bytes);
    if (!ticket) { deallocate(keys); return; }
    CacheCleanupRecord *record = (CacheCleanupRecord *)ticket;
    record->magic = CACHE_CLEAN_MAGIC; record->length = length; record->bytes = job->bytes;
    wcscpy(record->filename, job->filename); memcpy(ticket+sizeof(*record), body, length);
    wchar_t path[PATH_CAP];
    AcquireSRWLockExclusive(&cache_lock);
    CacheEpisode *item = cache_episode(job->directory, job->id), *created = NULL;
    if (!item) item = created = allocate(sizeof(*item));
    _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-cleanup", job->directory, job->id);
    if (item && cache_atomic(path, ticket, bytes)) {
        if (created) {
            wcscpy(item->directory, job->directory); wcscpy(item->id, job->id);
            item->next = cache_episodes; cache_episodes = item; created = NULL;
        }
        deallocate(item->keys); item->keys = keys; keys = NULL; item->count = count;
        item->completed = item->pending = TRUE;
        _snwprintf(path, PATH_CAP, L"%ls\\%ls.m3u8", job->directory, job->id);
        /* Do not delete a manifest replaced by a different download. */
        DWORD original_length = 0; unsigned char *original = cache_small_file(path, &original_length);
        if (original && original_length == length && !memcmp(original, body, length)) cache_remove_file(path);
        deallocate(original);
        _snwprintf(path, PATH_CAP, L"%ls\\%ls.jp-download", job->directory, job->id);
        cache_remove_file(path);
        cache_cleanup_locked(job->directory);
        InterlockedExchange(&job->cleanup_pending, item->pending);
    } else InterlockedExchange(&job->cleanup_pending, 2);
    ReleaseSRWLockExclusive(&cache_lock);
    deallocate(created); deallocate(keys); deallocate(ticket);
}
