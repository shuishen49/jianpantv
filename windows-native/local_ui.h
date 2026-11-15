#include "local_media.h"
#define WM_LOCAL_OPEN (WM_APP + 5)

static BOOL local_quote(wchar_t *out, size_t cap, size_t *used, const wchar_t *text) {
    if (*used+3 >= cap) return FALSE;
    out[(*used)++] = L'"';
    for (; *text; ++text) {
        if (*used+7 >= cap) return FALSE;
        if (*text < 32) {
            _snwprintf(out+*used, cap-*used, L"\\u%04x", (unsigned)*text); *used += 6;
        } else {
            if (*text == L'"' || *text == L'\\') out[(*used)++] = L'\\';
            out[(*used)++] = *text;
        }
    }
    out[(*used)++] = L'"'; out[*used] = 0; return TRUE;
}
static void local_json(ICoreWebView2WebResourceRequestedEventArgs *args, const wchar_t *text) {
    int n = WideCharToMultiByte(CP_UTF8, 0, text, -1, NULL, 0, NULL, NULL);
    char *utf8 = allocate((size_t)n);
    if (utf8 && n > 0) {
        WideCharToMultiByte(CP_UTF8, 0, text, -1, utf8, n, NULL, NULL);
        respond(args, utf8, (DWORD)n-1, 200, L"Content-Type: application/json\r\nCache-Control: no-store\r\n");
    } else reject_request(args, 503);
    deallocate(utf8);
}
static void local_notify(void) {
    local_visible = TRUE; ++local_revision;
    if (core) ICoreWebView2_ExecuteScript(core,
        L"window.__jpLocal&&window.__jpLocal.sync()", NULL);
}
static void local_open_path(const wchar_t *path) {
    int index = local_register(path);
    if (index < 0) {
        MessageBoxW(window, L"无法读取这个视频文件。请选择已保存的 MP4、M4V、MOV、WebM 或 MKV 文件。",
            L"打开视频", MB_OK | MB_ICONINFORMATION);
        return;
    }
    local_current = index; local_notify();
}
static void local_choose(void) {
    wchar_t path[PATH_CAP] = {0}, base[PATH_CAP];
    cache_snapshot(base);
    OPENFILENAMEW dialog = { .lStructSize = sizeof(dialog), .hwndOwner = window,
        .lpstrFilter = L"视频文件\0*.mp4;*.m4v;*.mov;*.webm;*.mkv\0所有文件\0*.*\0",
        .lpstrFile = path, .nMaxFile = PATH_CAP, .lpstrInitialDir = base[0] ? base : NULL,
        .lpstrTitle = L"打开本地视频", .Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_NOCHANGEDIR | OFN_EXPLORER };
    if (GetOpenFileNameW(&dialog)) local_open_path(path);
}
static void local_library(ICoreWebView2WebResourceRequestedEventArgs *args, const wchar_t *base) {
    const size_t cap = 512u*1024u;
    wchar_t *json = allocate(cap*sizeof(wchar_t));
    if (!json) { reject_request(args, 503); return; }
    wcscpy(json, L"{\"directory\":"); size_t used = wcslen(json);
    local_quote(json, cap, &used, base);
    wcscpy(json+used, L",\"files\":["); used += wcslen(json+used);
    unsigned count = 0; BOOL truncated = FALSE, failed = FALSE;
    if (base[0]) {
        wchar_t pattern[PATH_CAP];
        _snwprintf(pattern, PATH_CAP, L"%ls\\*", base);
        WIN32_FIND_DATAW data;
        HANDLE search = FindFirstFileW(pattern, &data);
        if (search != INVALID_HANDLE_VALUE) {
            do {
                if ((data.dwFileAttributes & (FILE_ATTRIBUTE_DIRECTORY | FILE_ATTRIBUTE_REPARSE_POINT)) ||
                    !local_extension(data.cFileName) || !(data.nFileSizeHigh || data.nFileSizeLow)) continue;
                if (count == 512) { truncated = TRUE; break; }
                wchar_t path[PATH_CAP];
                _snwprintf(path, PATH_CAP, L"%ls\\%ls", base, data.cFileName);
                int index = local_register(path);
                if (index < 0) continue;
                int n = _snwprintf(json+used, cap-used, L"%ls{\"id\":\"%ls\",\"bytes\":%llu,\"name\":",
                    count ? L"," : L"", local_entries[index].id,
                    ((ULONGLONG)data.nFileSizeHigh << 32) | data.nFileSizeLow);
                if (n < 0) { failed = TRUE; break; }
                used += (size_t)n;
                if (!local_quote(json, cap, &used, data.cFileName)) { failed = TRUE; break; }
                json[used++] = L'}'; json[used] = 0; ++count;
            } while (FindNextFileW(search, &data));
            FindClose(search);
        }
    }
    if (failed) reject_request(args, 503);
    else {
        _snwprintf(json+used, cap-used, L"],\"truncated\":%ls}", truncated ? L"true" : L"false");
        local_json(args, json);
    }
    deallocate(json);
}
static void local_current_json(ICoreWebView2WebResourceRequestedEventArgs *args) {
    wchar_t json[PATH_CAP*2+256];
    _snwprintf(json, ARRAY_COUNT(json), L"{\"visible\":%ls,\"revision\":%u,\"id\":\"%ls\",\"name\":",
        local_visible ? L"true" : L"false", local_revision,
        local_current >= 0 ? local_entries[local_current].id : L"");
    size_t used = wcslen(json);
    local_quote(json, ARRAY_COUNT(json), &used, local_current >= 0 ?
        PathFindFileNameW(local_entries[local_current].path) : L"");
    wcscpy(json+used, L"}"); local_json(args, json);
}
static void local_serve(ICoreWebView2WebResourceRequestedEventArgs *args,
        ICoreWebView2WebResourceRequest *source, const wchar_t *id, const wchar_t *method) {
    if (wcscmp(method, L"GET") && wcscmp(method, L"HEAD")) { reject_request(args, 405); return; }
    int index = local_lookup(id);
    if (index < 0) { reject_request(args, 404); return; }
    ULONGLONG size, start, length;
    HANDLE file = local_file(local_entries[index].path, &size);
    if (file == INVALID_HANDLE_VALUE) { reject_request(args, 404); return; }
    ICoreWebView2HttpRequestHeaders *headers = NULL;
    LPWSTR range = NULL;
    if (SUCCEEDED(ICoreWebView2WebResourceRequest_get_Headers(source, &headers))) {
        ICoreWebView2HttpRequestHeaders_GetHeader(headers, L"Range", &range);
        ICoreWebView2HttpRequestHeaders_Release(headers);
    }
    /* RFC 9110: Range applies to GET; HEAD reports the full representation. */
    int status = local_range(!wcscmp(method, L"HEAD") ? NULL : range, size, &start, &length);
    CoTaskMemFree(range);
    wchar_t response_headers[1024];
    const wchar_t *ext = PathFindExtensionW(local_entries[index].path);
    const wchar_t *type = !_wcsicmp(ext, L".webm") ? L"video/webm" :
        !_wcsicmp(ext, L".mkv") ? L"video/x-matroska" : L"video/mp4";
    _snwprintf(response_headers, ARRAY_COUNT(response_headers),
        L"Content-Type: %ls\r\nAccept-Ranges: bytes\r\nCache-Control: no-store\r\n"
        L"X-Content-Type-Options: nosniff\r\nContent-Length: %llu\r\n",
        type, status == 416 ? 0 : length);
    size_t used = wcslen(response_headers);
    if (status == 206) _snwprintf(response_headers+used, ARRAY_COUNT(response_headers)-used,
        L"Content-Range: bytes %llu-%llu/%llu\r\n", start, start+length-1, size);
    else if (status == 416) _snwprintf(response_headers+used, ARRAY_COUNT(response_headers)-used,
        L"Content-Range: bytes */%llu\r\n", size);
    if (status == 416 || !wcscmp(method, L"HEAD")) {
        CloseHandle(file); respond(args, "", 0, (DWORD)status, response_headers); return;
    }
    IStream *stream = NULL;
    if (FAILED(local_stream_create(file, start, length, &stream))) { reject_request(args, 503); return; }
    ICoreWebView2WebResourceResponse *response = NULL;
    if (SUCCEEDED(ICoreWebView2Environment_CreateWebResourceResponse(environment, stream, status,
            status == 206 ? L"Partial Content" : L"OK", response_headers, &response))) {
        ICoreWebView2WebResourceRequestedEventArgs_put_Response(args, response);
        ICoreWebView2WebResourceResponse_Release(response);
    }
    IStream_Release(stream);
}
static void local_request(ICoreWebView2WebResourceRequestedEventArgs *args,
        ICoreWebView2WebResourceRequest *source, const wchar_t *path, const wchar_t *method, const wchar_t *base) {
    if (!wcscmp(path, L"/desktop/local/library") && !wcscmp(method, L"GET")) local_library(args, base);
    else if (!wcscmp(path, L"/desktop/local/current") && !wcscmp(method, L"GET")) local_current_json(args);
    else if (prefix(path, L"/desktop/local/file/")) local_serve(args, source, path+20, method);
    else if (prefix(path, L"/desktop/local/select/") && !wcscmp(method, L"POST")) {
        int index = local_lookup(path+22);
        if (index < 0) { reject_request(args, 404); return; }
        local_current = index; local_visible = TRUE; ++local_revision; local_current_json(args);
    } else if (!wcscmp(path, L"/desktop/local/open") && !wcscmp(method, L"POST")) {
        PostMessageW(window, WM_LOCAL_OPEN, 0, 0); local_current_json(args);
    } else if (!wcscmp(path, L"/desktop/local/show") && !wcscmp(method, L"POST")) {
        local_visible = TRUE; local_current_json(args);
    } else if (!wcscmp(path, L"/desktop/local/drop") && !wcscmp(method, L"POST")) {
        local_visible = TRUE; local_current = -1; ++local_revision; local_current_json(args);
    } else if (!wcscmp(path, L"/desktop/local/close") && !wcscmp(method, L"POST")) {
        local_visible = FALSE; local_current_json(args);
    } else reject_request(args, 404);
}
