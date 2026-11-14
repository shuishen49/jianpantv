/* Persistent HTTP media cache. API responses and playlists never enter it.
   Only complete, validated entries are published; interrupted writes are ignored. */
typedef struct {
    DWORD magic, status, body_length, header_bytes;
    unsigned char digest[32];
} CacheRecord;
static SRWLOCK cache_lock = SRWLOCK_INIT;
static wchar_t cache_directory[PATH_CAP];
static LONG cache_hits, cache_writes, cache_errors;
static LONG64 cache_saved_bytes;

static BOOL cache_digest(const void *data, DWORD length, unsigned char digest[32]) {
    BCRYPT_ALG_HANDLE algorithm = NULL;
    BCRYPT_HASH_HANDLE hash = NULL;
    BOOL ok = BCryptOpenAlgorithmProvider(&algorithm, BCRYPT_SHA256_ALGORITHM, NULL, 0) >= 0 &&
        BCryptCreateHash(algorithm, &hash, NULL, 0, NULL, 0, 0) >= 0 &&
        BCryptHashData(hash, (PUCHAR)data, length, 0) >= 0 &&
        BCryptFinishHash(hash, digest, 32, 0) >= 0;
    if (hash) BCryptDestroyHash(hash);
    if (algorithm) BCryptCloseAlgorithmProvider(algorithm, 0);
    return ok;
}
static BOOL cache_key(const wchar_t *uri, const wchar_t *range, wchar_t key[65]) {
    int url_bytes = WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, uri, -1, NULL, 0, NULL, NULL);
    int range_bytes = WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, range, -1, NULL, 0, NULL, NULL);
    if (!url_bytes || !range_bytes || url_bytes > 65536 || range_bytes > 1024) return FALSE;
    char *text = allocate((size_t)url_bytes + range_bytes);
    if (!text) return FALSE;
    WideCharToMultiByte(CP_UTF8, 0, uri, -1, text, url_bytes, NULL, NULL);
    text[url_bytes - 1] = '\n';
    WideCharToMultiByte(CP_UTF8, 0, range, -1, text + url_bytes, range_bytes, NULL, NULL);
    unsigned char digest[32];
    BOOL ok = cache_digest(text, (DWORD)(url_bytes + range_bytes - 1), digest);
    deallocate(text);
    if (ok) {
        static const wchar_t hex[] = L"0123456789abcdef";
        for (int i = 0; i < 32; ++i) { key[i*2] = hex[digest[i] >> 4]; key[i*2+1] = hex[digest[i] & 15]; }
        key[64] = 0;
    }
    return ok;
}
static void cache_snapshot(wchar_t *path) {
    AcquireSRWLockShared(&cache_lock);
    wcscpy(path, cache_directory);
    ReleaseSRWLockShared(&cache_lock);
}
static BOOL cache_resolve_directory(const wchar_t *selected, wchar_t absolute[PATH_CAP]) {
    wchar_t input[PATH_CAP];
    size_t length = wcslen(selected);
    while (length && (selected[0] == L' ' || selected[0] == L'\t')) { ++selected; --length; }
    while (length && (selected[length-1] == L' ' || selected[length-1] == L'\t')) --length;
    if (!length || length > PATH_CAP - 150) { SetLastError(ERROR_BAD_PATHNAME); return FALSE; }
    memcpy(input, selected, length*sizeof(wchar_t));
    input[length] = 0;
    for (size_t i = 0; i < length; ++i) if (input[i] == L'/') input[i] = L'\\';
    BOOL drive = length >= 3 && ((input[0] >= L'A' && input[0] <= L'Z') ||
        (input[0] >= L'a' && input[0] <= L'z')) && input[1] == L':' && input[2] == L'\\';
    BOOL network = length > 4 && input[0] == L'\\' && input[1] == L'\\' &&
        input[2] != L'?' && input[2] != L'.' && wcschr(input+2, L'\\');
    if (!drive && !network) { SetLastError(ERROR_BAD_PATHNAME); return FALSE; }
    for (size_t i = 0; i < length; ++i) {
        if (input[i] < 32 || wcschr(L"<>\"|?*", input[i]) || (input[i] == L':' && (!drive || i != 1))) {
            SetLastError(ERROR_BAD_PATHNAME); return FALSE;
        }
        if ((input[i] == L' ' || input[i] == L'.') && (input[i+1] == L'\\' || !input[i+1])) {
            SetLastError(ERROR_BAD_PATHNAME); return FALSE;
        }
    }
    DWORD count = GetFullPathNameW(input, PATH_CAP, absolute, NULL);
    if (!count || count > PATH_CAP - 150) { SetLastError(ERROR_BAD_PATHNAME); return FALSE; }
    return TRUE;
}
static BOOL cache_set_directory(const wchar_t *selected) {
    wchar_t absolute[PATH_CAP], media[PATH_CAP], probe[PATH_CAP];
    if (!cache_resolve_directory(selected, absolute)) return FALSE;
    _snwprintf(media, PATH_CAP, L"%ls\\media", absolute);
    int result = SHCreateDirectoryExW(NULL, media, NULL);
    if (result != ERROR_SUCCESS && result != ERROR_ALREADY_EXISTS) { SetLastError((DWORD)result); return FALSE; }
    _snwprintf(probe, PATH_CAP, L"%ls\\write-test-%lu.tmp", media, GetCurrentProcessId());
    HANDLE file = CreateFileW(probe, GENERIC_WRITE, 0, NULL, CREATE_NEW,
        FILE_ATTRIBUTE_TEMPORARY | FILE_FLAG_DELETE_ON_CLOSE, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    CloseHandle(file);
    AcquireSRWLockExclusive(&cache_lock);
    wcscpy(cache_directory, absolute);
    ReleaseSRWLockExclusive(&cache_lock);
    return TRUE;
}
static BOOL cache_file(const wchar_t *path, void *data, DWORD length) {
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    LARGE_INTEGER size;
    DWORD received = 0;
    BOOL ok = GetFileSizeEx(file, &size) && size.QuadPart == length &&
        ReadFile(file, data, length, &received, NULL) && received == length;
    CloseHandle(file);
    return ok;
}
static BOOL cache_read(const wchar_t *directory, const wchar_t *key, DWORD *status,
        unsigned char **body, DWORD *length, wchar_t **headers) {
    if (!directory[0]) return FALSE;
    wchar_t path[PATH_CAP];
    CacheRecord record;
    BOOL ok = FALSE;
    AcquireSRWLockShared(&cache_lock);
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.info", directory, key);
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (file == INVALID_HANDLE_VALUE) goto finish;
    DWORD received = 0;
    LARGE_INTEGER size;
    BOOL valid = GetFileSizeEx(file, &size) &&
        ReadFile(file, &record, sizeof(record), &received, NULL) && received == sizeof(record) &&
        record.magic == 0x3243504a && (record.status == 200 || record.status == 206) &&
        record.body_length > 0 && record.body_length <= MAX_MEDIA_BODY &&
        record.header_bytes >= sizeof(wchar_t) && record.header_bytes <= 131072 &&
        record.header_bytes % sizeof(wchar_t) == 0 &&
        size.QuadPart == sizeof(record) + record.header_bytes;
    wchar_t *header = valid ? allocate(record.header_bytes) : NULL;
    if (header) valid = ReadFile(file, header, record.header_bytes, &received, NULL) &&
        received == record.header_bytes && header[record.header_bytes / sizeof(wchar_t) - 1] == 0;
    else valid = FALSE;
    CloseHandle(file);
    if (!valid) { deallocate(header); goto finish; }
    unsigned char *bytes = allocate(record.body_length), digest[32];
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, key);
    if (bytes && cache_file(path, bytes, record.body_length) &&
        cache_digest(bytes, record.body_length, digest) && !memcmp(digest, record.digest, 32)) {
        *status = record.status; *body = bytes; *length = record.body_length; *headers = header;
        InterlockedIncrement(&cache_hits); ok = TRUE;
    } else { deallocate(bytes); deallocate(header); }
finish:
    ReleaseSRWLockShared(&cache_lock);
    return ok;
}
static BOOL cache_atomic(const wchar_t *path, const void *bytes, DWORD length) {
    wchar_t temporary[PATH_CAP];
    _snwprintf(temporary, PATH_CAP, L"%ls.part-%lu-%lu", path, GetCurrentProcessId(), GetCurrentThreadId());
    HANDLE file = CreateFileW(temporary, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    DWORD written = 0;
    BOOL ok = WriteFile(file, bytes, length, &written, NULL) && written == length && FlushFileBuffers(file);
    CloseHandle(file);
    if (ok) ok = MoveFileExW(temporary, path, MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH);
    if (!ok) DeleteFileW(temporary);
    return ok;
}
static BOOL cache_write(const wchar_t *directory, const wchar_t *key, DWORD status,
        const unsigned char *body, DWORD length, const wchar_t *headers) {
    if (!directory[0] || !length || length > MAX_MEDIA_BODY || (status != 200 && status != 206)) return FALSE;
    /* Revalidate live manifests on every load. They may contain expiring URLs. */
    if ((length >= 7 && !memcmp(body, "#EXTM3U", 7)) ||
        StrStrIW(headers, L"mpegurl") || StrStrIW(headers, L"application/json") ||
        StrStrIW(headers, L"text/html")) return FALSE;
    CacheRecord record = { .magic = 0x3243504a, .status = status, .body_length = length,
        .header_bytes = (DWORD)((wcslen(headers) + 1) * sizeof(wchar_t)) };
    if (record.header_bytes > 131072 || !cache_digest(body, length, record.digest)) return FALSE;
    DWORD metadata_length = sizeof(record) + record.header_bytes;
    unsigned char *metadata = allocate(metadata_length);
    if (!metadata) return FALSE;
    memcpy(metadata, &record, sizeof(record));
    memcpy(metadata + sizeof(record), headers, record.header_bytes);
    wchar_t path[PATH_CAP];
    AcquireSRWLockExclusive(&cache_lock);
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, key);
    BOOL ok = cache_atomic(path, body, length);
    if (ok) {
        _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.info", directory, key);
        ok = cache_atomic(path, metadata, metadata_length);
    }
    ReleaseSRWLockExclusive(&cache_lock);
    deallocate(metadata);
    if (ok) { InterlockedIncrement(&cache_writes); InterlockedAdd64(&cache_saved_bytes, length); }
    else InterlockedIncrement(&cache_errors);
    return ok;
}
