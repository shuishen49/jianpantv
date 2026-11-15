/* Read-only, bounded file streams. No movie-sized memory buffers or disk copies.
   All registry operations run on the UI thread; streams are thread safe. */
#define JP_LOCAL_LIMIT 1024
typedef struct { wchar_t *path; wchar_t id[33]; } LocalEntry;
static LocalEntry local_entries[JP_LOCAL_LIMIT];
static unsigned local_count, local_next, local_revision;
static int local_current = -1;
static BOOL local_visible;

static BOOL local_extension(const wchar_t *path) {
    const wchar_t *ext = PathFindExtensionW(path);
    return !_wcsicmp(ext, L".mp4") || !_wcsicmp(ext, L".m4v") ||
        !_wcsicmp(ext, L".webm") || !_wcsicmp(ext, L".mov") || !_wcsicmp(ext, L".mkv");
}
static HANDLE local_file(const wchar_t *path, ULONGLONG *length) {
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_DELETE,
        NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) return file;
    LARGE_INTEGER size;
    BY_HANDLE_FILE_INFORMATION info;
    if (GetFileType(file) != FILE_TYPE_DISK || !GetFileInformationByHandle(file, &info) ||
        (info.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) || !GetFileSizeEx(file, &size) ||
        size.QuadPart <= 0) {
        CloseHandle(file); return INVALID_HANDLE_VALUE;
    }
    *length = (ULONGLONG)size.QuadPart;
    return file;
}
static int local_register(const wchar_t *path) {
    wchar_t full[PATH_CAP];
    DWORD n = GetFullPathNameW(path, PATH_CAP, full, NULL);
    if (!n || n >= PATH_CAP || !local_extension(full) || wcschr(full+2, L':') ||
        prefix(full, L"\\\\.\\") || prefix(full, L"\\\\?\\")) return -1;
    ULONGLONG length;
    HANDLE file = local_file(full, &length);
    if (file == INVALID_HANDLE_VALUE) return -1;
    CloseHandle(file);
    for (unsigned i = 0; i < local_count; ++i)
        if (!_wcsicmp(full, local_entries[i].path)) return (int)i;
    unsigned char random[16];
    if (BCryptGenRandom(NULL, random, sizeof(random), BCRYPT_USE_SYSTEM_PREFERRED_RNG) < 0) return -1;
    wchar_t *copy = duplicate(full);
    if (!copy) return -1;
    unsigned index;
    if (local_count < JP_LOCAL_LIMIT) index = local_count++;
    else {
        index = local_next++ % JP_LOCAL_LIMIT;
        if ((int)index == local_current) index = local_next++ % JP_LOCAL_LIMIT;
        deallocate(local_entries[index].path);
    }
    LocalEntry *entry = &local_entries[index];
    entry->path = copy;
    for (unsigned i = 0; i < 16; ++i) {
        entry->id[i*2] = L"0123456789abcdef"[random[i] >> 4];
        entry->id[i*2+1] = L"0123456789abcdef"[random[i] & 15];
    }
    entry->id[32] = 0;
    return (int)index;
}
static int local_lookup(const wchar_t *id) {
    if (wcslen(id) != 32) return -1;
    for (unsigned i = 0; i < local_count; ++i)
        if (!wcscmp(id, local_entries[i].id)) return (int)i;
    return -1;
}
/* Return 200/206, or 416 for malformed/unsatisfiable ranges. One range per
   request; a movie can be larger than 4 GiB. Suffix and open-ended ranges work. */
static BOOL local_number(const wchar_t **cursor, ULONGLONG *value) {
    const wchar_t *p = *cursor;
    ULONGLONG n = 0;
    if (*p < L'0' || *p > L'9') return FALSE;
    do {
        unsigned digit = (unsigned)(*p++ - L'0');
        if (n > ((ULONGLONG)INT64_MAX - digit) / 10) return FALSE;
        n = n*10 + digit;
    } while (*p >= L'0' && *p <= L'9');
    *cursor = p; *value = n; return TRUE;
}
static int local_range(const wchar_t *text, ULONGLONG size, ULONGLONG *start, ULONGLONG *length) {
    *start = 0; *length = size;
    if (!text || !text[0]) return 200;
    if (!size || !prefix(text, L"bytes=")) return 416;
    const wchar_t *p = text+6;
    ULONGLONG a = 0, b = 0;
    if (*p == L'-') {
        ++p;
        if (!local_number(&p, &b) || *p || !b) return 416;
        *length = b < size ? b : size; *start = size - *length;
    } else {
        if (!local_number(&p, &a) || *p++ != L'-' || a >= size) return 416;
        if (*p) {
            if (!local_number(&p, &b) || *p || b < a) return 416;
            if (b >= size) b = size-1;
        } else b = size-1;
        *start = a; *length = b-a+1;
    }
    return 206;
}
typedef struct {
    IStream iface;
    LONG refs;
    HANDLE file;
    ULONGLONG start, length, position;
    CRITICAL_SECTION lock;
} LocalStream;
static HRESULT local_stream_create(HANDLE file, ULONGLONG start, ULONGLONG length, IStream **out);
static HRESULT STDMETHODCALLTYPE ls_query(IStream *self, REFIID iid, void **out) {
    if (!out) return E_POINTER;
    *out = NULL;
    if (!IsEqualIID(iid, &IID_IUnknown) && !IsEqualIID(iid, &IID_IStream) &&
        !IsEqualIID(iid, &IID_ISequentialStream) && !IsEqualIID(iid, &IID_IAgileObject)) return E_NOINTERFACE;
    *out = self; InterlockedIncrement(&((LocalStream *)self)->refs); return S_OK;
}
static ULONG STDMETHODCALLTYPE ls_add(IStream *self) { return (ULONG)InterlockedIncrement(&((LocalStream *)self)->refs); }
static ULONG STDMETHODCALLTYPE ls_release(IStream *self) {
    LocalStream *s = (LocalStream *)self;
    LONG refs = InterlockedDecrement(&s->refs);
    if (!refs) { CloseHandle(s->file); DeleteCriticalSection(&s->lock); deallocate(s); }
    return (ULONG)refs;
}
static HRESULT STDMETHODCALLTYPE ls_read(IStream *self, void *buffer, ULONG count, ULONG *read) {
    LocalStream *s = (LocalStream *)self;
    if (read) *read = 0;
    if (!buffer && count) return STG_E_INVALIDPOINTER;
    EnterCriticalSection(&s->lock);
    ULONGLONG available = s->position < s->length ? s->length-s->position : 0;
    DWORD wanted = available < count ? (DWORD)available : count, got = 0;
    LARGE_INTEGER offset; offset.QuadPart = (LONGLONG)(s->start+s->position);
    BOOL ok = !wanted || (SetFilePointerEx(s->file, offset, NULL, FILE_BEGIN) &&
        ReadFile(s->file, buffer, wanted, &got, NULL));
    s->position += got;
    LeaveCriticalSection(&s->lock);
    if (read) *read = got;
    return !ok ? STG_E_READFAULT : got == count ? S_OK : S_FALSE;
}
static HRESULT STDMETHODCALLTYPE ls_write(IStream *s, const void *p, ULONG n, ULONG *done) {
    if (done) *done = 0;
    return STG_E_ACCESSDENIED;
}
static HRESULT STDMETHODCALLTYPE ls_seek(IStream *self, LARGE_INTEGER move, DWORD origin, ULARGE_INTEGER *out) {
    LocalStream *s = (LocalStream *)self;
    EnterCriticalSection(&s->lock);
    ULONGLONG base = origin == STREAM_SEEK_SET ? 0 : origin == STREAM_SEEK_CUR ? s->position : s->length;
    HRESULT result = STG_E_INVALIDFUNCTION;
    if (origin <= STREAM_SEEK_END &&
        (move.QuadPart < 0 ? (ULONGLONG)(-(move.QuadPart+1))+1 <= base :
            (ULONGLONG)move.QuadPart <= (ULONGLONG)INT64_MAX-base)) {
        s->position = base + (ULONGLONG)move.QuadPart;
        if (out) out->QuadPart = s->position;
        result = S_OK;
    }
    LeaveCriticalSection(&s->lock); return result;
}
static HRESULT STDMETHODCALLTYPE ls_resize(IStream *s, ULARGE_INTEGER n) { return STG_E_ACCESSDENIED; }
static HRESULT STDMETHODCALLTYPE ls_copy(IStream *self, IStream *target, ULARGE_INTEGER count,
        ULARGE_INTEGER *read, ULARGE_INTEGER *written) {
    unsigned char buffer[65536];
    ULONGLONG total = 0, output = 0;
    HRESULT result = S_OK;
    while (total < count.QuadPart) {
        ULONG got = 0, sent = 0;
        ULONG n = count.QuadPart-total < sizeof(buffer) ? (ULONG)(count.QuadPart-total) : sizeof(buffer);
        result = ls_read(self, buffer, n, &got);
        if (FAILED(result)) break;
        total += got;
        if (got) {
            result = IStream_Write(target, buffer, got, &sent); output += sent;
            if (FAILED(result) || sent != got) { if (SUCCEEDED(result)) result = STG_E_WRITEFAULT; break; }
        }
        if (got < n) { result = S_FALSE; break; }
    }
    if (read) read->QuadPart = total;
    if (written) written->QuadPart = output;
    return result;
}
static HRESULT STDMETHODCALLTYPE ls_commit(IStream *s, DWORD flags) { return S_OK; }
static HRESULT STDMETHODCALLTYPE ls_revert(IStream *s) { return STG_E_INVALIDFUNCTION; }
static HRESULT STDMETHODCALLTYPE ls_region(IStream *s, ULARGE_INTEGER a, ULARGE_INTEGER b, DWORD flags) {
    return STG_E_INVALIDFUNCTION;
}
static HRESULT STDMETHODCALLTYPE ls_stat(IStream *self, STATSTG *stat, DWORD flags) {
    if (!stat) return E_POINTER;
    memset(stat, 0, sizeof(*stat)); stat->type = STGTY_STREAM;
    stat->cbSize.QuadPart = ((LocalStream *)self)->length; stat->grfMode = STGM_READ;
    return S_OK;
}
static HRESULT STDMETHODCALLTYPE ls_clone(IStream *self, IStream **out) {
    if (!out) return E_POINTER;
    *out = NULL;
    LocalStream *s = (LocalStream *)self;
    HANDLE copy;
    if (!DuplicateHandle(GetCurrentProcess(), s->file, GetCurrentProcess(), &copy, 0, FALSE, DUPLICATE_SAME_ACCESS))
        return STG_E_READFAULT;
    /* DuplicateHandle shares the OS file pointer. ReOpenFile provides an
       independent pointer for concurrent clones. */
    HANDLE independent = ReOpenFile(copy, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_DELETE, 0);
    CloseHandle(copy);
    if (independent == INVALID_HANDLE_VALUE) return STG_E_READFAULT;
    HRESULT result = local_stream_create(independent, s->start, s->length, out);
    if (SUCCEEDED(result)) {
        EnterCriticalSection(&s->lock); ((LocalStream *)*out)->position = s->position; LeaveCriticalSection(&s->lock);
    }
    return result;
}
static IStreamVtbl local_stream_vtable = {
    ls_query, ls_add, ls_release, ls_read, ls_write, ls_seek, ls_resize, ls_copy,
    ls_commit, ls_revert, ls_region, ls_region, ls_stat, ls_clone
};
static HRESULT local_stream_create(HANDLE file, ULONGLONG start, ULONGLONG length, IStream **out) {
    *out = NULL;
    LocalStream *s = allocate(sizeof(*s));
    if (!s) { CloseHandle(file); return E_OUTOFMEMORY; }
    s->iface.lpVtbl = &local_stream_vtable; s->refs = 1; s->file = file; s->start = start; s->length = length;
    InitializeCriticalSection(&s->lock); *out = &s->iface; return S_OK;
}
