/* Standalone Windows host. All WebView COM objects stay on the UI thread;
   network workers exchange bounded byte buffers through WM_NETWORK_DONE. */
#define COBJMACROS
#define WIN32_LEAN_AND_MEAN
#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
#include <windowsx.h>
#include <winhttp.h>
#include <bcrypt.h>
#include <compressapi.h>
#include <shlwapi.h>
#include <shlobj.h>
#include <shellapi.h>
#include <psapi.h>
#include <dwmapi.h>
#include <tlhelp32.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include "WebView2.h"
#include "policy.h"
#include "integrity.h"

#define APP_ORIGIN L"https://jianpian.desktop.local"
#define APP_URL APP_ORIGIN L"/runtime/index.html"
#define ARRAY_COUNT(a) (sizeof(a)/sizeof((a)[0]))
#define WM_NETWORK_DONE (WM_APP + 1)
#define WM_TOGGLE_FULLSCREEN (WM_APP + 2)
#define MAX_API_BODY (8u * 1024u * 1024u)
#define MAX_MEDIA_BODY (32u * 1024u * 1024u)
#define PATH_CAP 4096

typedef struct {
    const void *vtbl;
    LONG references;
    const IID *iid;
} Callback;
static HRESULT STDMETHODCALLTYPE callback_query(void *self, REFIID iid, void **result) {
    Callback *cb = self;
    if (!result) return E_POINTER;
    *result = NULL;
    if (!IsEqualIID(iid, &IID_IUnknown) && !IsEqualIID(iid, cb->iid)) return E_NOINTERFACE;
    *result = self;
    InterlockedIncrement(&cb->references);
    return S_OK;
}
static ULONG STDMETHODCALLTYPE callback_addref(void *self) {
    return (ULONG)InterlockedIncrement(&((Callback *)self)->references);
}
static ULONG STDMETHODCALLTYPE callback_release(void *self) {
    /* Callback objects are static and outlive their COM registrations. */
    return (ULONG)InterlockedDecrement(&((Callback *)self)->references);
}
#define HANDLER(type, name, invoke) \
    static const type##Vtbl name##_vtbl = { \
        (HRESULT (STDMETHODCALLTYPE *)(type *, REFIID, void **))callback_query, \
        (ULONG (STDMETHODCALLTYPE *)(type *))callback_addref, \
        (ULONG (STDMETHODCALLTYPE *)(type *))callback_release, invoke }; \
    static Callback name = { &name##_vtbl, 1, &IID_##type }

typedef struct Request {
    ICoreWebView2WebResourceRequestedEventArgs *args;
    ICoreWebView2Deferral *deferral;
    PTP_WORK work;
    wchar_t *uri, *method, *request_headers, *response_headers;
    unsigned char *request_body, *response_body;
    DWORD request_length, response_length, status, error;
    BOOL api;
    wchar_t *range;
    wchar_t cache_base[PATH_CAP], cache_id[65];
} Request;
static HWND window, label, buttons[5];
static HINSTANCE instance;
static HFONT font;
static HBRUSH background;
static ICoreWebView2Environment *environment;
static ICoreWebView2Controller *controller;
static ICoreWebView2 *core;
static HMODULE loader_module;
static HINTERNET http_session;
static PTP_POOL worker_pool;
static TP_CALLBACK_ENVIRON worker_environment;
static SRWLOCK origin_lock = SRWLOCK_INIT;
static wchar_t api_host[256];
static const unsigned char *asset_data;
static DWORD asset_size;
static LONG pending_requests;
static DWORD api_success, api_failure, media_success, media_failure, last_network_error;
static DWORD blocked_media;
static BOOL fullscreen, closing, smoke;
static LONG saved_style;
static WINDOWPLACEMENT saved_placement = { .length = sizeof(WINDOWPLACEMENT) };
static wchar_t diagnostic_dir[PATH_CAP];
static int diagnostic_stage;
static unsigned diagnostic_playback_waits;
static IStream *preview_stream;
static BOOL diagnostic_busy;
static void set_fullscreen(BOOL value);

static void *allocate(size_t size) { return HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size ? size : 1); }
static void deallocate(void *value) { if (value) HeapFree(GetProcessHeap(), 0, value); }
static wchar_t *duplicate(const wchar_t *text) {
    size_t bytes = (wcslen(text) + 1) * sizeof(wchar_t);
    wchar_t *result = allocate(bytes);
    if (result) memcpy(result, text, bytes);
    return result;
}
static BOOL prefix(const wchar_t *text, const wchar_t *start) {
    return wcsncmp(text, start, wcslen(start)) == 0;
}
static BOOL local_uri(const wchar_t *uri) {
    size_t length = wcslen(APP_ORIGIN);
    return prefix(uri, APP_ORIGIN) && (uri[length] == 0 || uri[length] == L'/');
}
static void set_status(const wchar_t *text) { if (!closing) SetWindowTextW(label, text); }
static void show_failure(const wchar_t *message) {
    set_status(message);
    MessageBoxW(window, message, L"荐片 Windows", MB_OK | MB_ICONERROR);
}
static BOOL write_bytes(const wchar_t *path, const void *bytes, DWORD length) {
    HANDLE file = CreateFileW(path, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    DWORD written = 0;
    BOOL result = WriteFile(file, bytes, length, &written, NULL) && written == length;
    CloseHandle(file);
    return result;
}
static void write_json(const wchar_t *path, const wchar_t *text) {
    int length = WideCharToMultiByte(CP_UTF8, 0, text, -1, NULL, 0, NULL, NULL);
    char *bytes = allocate((size_t)length);
    if (bytes && length > 0) {
        WideCharToMultiByte(CP_UTF8, 0, text, -1, bytes, length, NULL, NULL);
        write_bytes(path, bytes, (DWORD)length - 1);
    }
    deallocate(bytes);
}
#include "cache.h"

static void storage_setting(wchar_t *path) {
    DWORD count = GetEnvironmentVariableW(L"LOCALAPPDATA", path, PATH_CAP);
    if (!count || count > PATH_CAP - 100) { path[0] = 0; return; }
    wcscat(path, L"\\JianpianDesktop");
    SHCreateDirectoryExW(NULL, path, NULL);
    wcscat(path, L"\\video-directory-v2.txt");
}
typedef struct { wchar_t config[PATH_CAP], path[PATH_CAP]; } StorageSettings;
static BOOL read_storage_path(const wchar_t *file_path, wchar_t *path) {
    HANDLE file = CreateFileW(file_path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    DWORD received = 0;
    LARGE_INTEGER size;
    BOOL ok = GetFileSizeEx(file, &size) && size.QuadPart > 0 &&
        size.QuadPart < PATH_CAP*(LONGLONG)sizeof(wchar_t) && size.QuadPart % sizeof(wchar_t) == 0 &&
        ReadFile(file, path, (DWORD)size.QuadPart, &received, NULL) && received == size.QuadPart;
    if (ok) path[received / sizeof(wchar_t)] = 0;
    else path[0] = 0;
    CloseHandle(file);
    return ok && path[0];
}
static INT_PTR CALLBACK storage_dialog(HWND dialog, UINT message, WPARAM wparam, LPARAM lparam) {
    StorageSettings *settings = (StorageSettings *)GetWindowLongPtrW(dialog, DWLP_USER);
    switch (message) {
    case WM_INITDIALOG:
        settings = (StorageSettings *)lparam;
        SetWindowLongPtrW(dialog, DWLP_USER, lparam);
        SendDlgItemMessageW(dialog, 1001, EM_SETLIMITTEXT, PATH_CAP-151, 0);
        SetDlgItemTextW(dialog, 1001, settings->path);
        SendDlgItemMessageW(dialog, 1001, EM_SETSEL, 0, -1);
        return TRUE;
    case WM_CTLCOLORDLG: return (INT_PTR)background;
    case WM_CTLCOLOREDIT:
    case WM_CTLCOLORSTATIC:
        SetTextColor((HDC)wparam, GetDlgCtrlID((HWND)lparam) == 1002 ? RGB(255,164,148) : RGB(222,226,232));
        SetBkColor((HDC)wparam, RGB(25,28,34));
        return (INT_PTR)background;
    case WM_COMMAND:
        if (LOWORD(wparam) == IDOK && settings) {
            wchar_t entered[PATH_CAP], resolved[PATH_CAP], old[PATH_CAP];
            GetDlgItemTextW(dialog, 1001, entered, PATH_CAP);
            cache_snapshot(old);
            if (!cache_resolve_directory(entered, resolved)) {
                SetDlgItemTextW(dialog, 1002, L"请输入完整目录，例如 D:\\jianpandownload；不要包含引号或 * ? 等字符。");
                return TRUE;
            }
            if (!cache_set_directory(resolved)) {
                wchar_t error[512], reason[256] = {0};
                DWORD code = GetLastError();
                FormatMessageW(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                    NULL, code, 0, reason, ARRAY_COUNT(reason), NULL);
                _snwprintf(error, ARRAY_COUNT(error), L"无法创建或写入目录，请检查盘符、权限和剩余空间。%ls", reason);
                SetDlgItemTextW(dialog, 1002, error);
                return TRUE;
            }
            if (!settings->config[0] || !cache_atomic(settings->config, resolved,
                    (DWORD)((wcslen(resolved)+1)*sizeof(wchar_t)))) {
                AcquireSRWLockExclusive(&cache_lock);
                wcscpy(cache_directory, old);
                ReleaseSRWLockExclusive(&cache_lock);
                SetDlgItemTextW(dialog, 1002, L"保存设置失败。请确认用户设置目录可写，然后重新保存。");
                return TRUE;
            }
            wcscpy(settings->path, resolved);
            set_status(L"视频保存目录已设置 · 播放时自动缓存");
            EndDialog(dialog, IDOK);
            return TRUE;
        }
        if (LOWORD(wparam) == IDCANCEL) { EndDialog(dialog, IDCANCEL); return TRUE; }
        if (LOWORD(wparam) == 1001 && HIWORD(wparam) == EN_CHANGE)
            SetDlgItemTextW(dialog, 1002, L"");
        break;
    case WM_CLOSE: EndDialog(dialog, IDCANCEL); return TRUE;
    }
    return FALSE;
}
static void choose_storage(void) {
    StorageSettings settings = {0};
    storage_setting(settings.config);
    cache_snapshot(settings.path);
    if (!settings.path[0] && settings.config[0] && !read_storage_path(settings.config, settings.path)) {
        /* 0.2.0 stored a parent directory; preserve its existing cache without moving files. */
        wchar_t legacy[PATH_CAP], parent[PATH_CAP];
        wcscpy(legacy, settings.config);
        PathRemoveFileSpecW(legacy);
        wcscat(legacy, L"\\video-directory.txt");
        if (read_storage_path(legacy, parent) && wcslen(parent) < PATH_CAP - 150) {
            _snwprintf(settings.path, PATH_CAP, L"%ls\\JianpianCache", parent);
            if (!PathIsDirectoryW(settings.path)) settings.path[0] = 0;
        }
    }
    wchar_t previous[PATH_CAP];
    wcscpy(previous, settings.path);
    if (!settings.path[0]) {
        if (PathIsDirectoryW(L"D:\\")) wcscpy(settings.path, L"D:\\jianpandownload");
        else {
            PWSTR videos = NULL;
            if (SUCCEEDED(SHGetKnownFolderPath(&FOLDERID_Videos, 0, NULL, &videos)) && wcslen(videos) < PATH_CAP-150)
                _snwprintf(settings.path, PATH_CAP, L"%ls\\jianpandownload", videos);
            CoTaskMemFree(videos);
        }
    }
    INT_PTR result = DialogBoxParamW(instance, MAKEINTRESOURCEW(102), window, storage_dialog, (LPARAM)&settings);
    if (result == -1) show_failure(L"无法打开视频保存设置。");
    if (result != IDOK && !cache_directory[0] && previous[0] && PathIsDirectoryW(previous))
        cache_set_directory(previous);
    if (!cache_directory[0]) set_status(L"未选择视频目录 · 本次只在线播放");
}
static const wchar_t *mime(const wchar_t *path) {
    const wchar_t *extension = PathFindExtensionW(path);
    if (!_wcsicmp(extension, L".html")) return L"text/html; charset=utf-8";
    if (!_wcsicmp(extension, L".js")) return L"text/javascript; charset=utf-8";
    if (!_wcsicmp(extension, L".css")) return L"text/css; charset=utf-8";
    if (!_wcsicmp(extension, L".json")) return L"application/json; charset=utf-8";
    if (!_wcsicmp(extension, L".png")) return L"image/png";
    if (!_wcsicmp(extension, L".svg")) return L"image/svg+xml";
    return L"application/octet-stream";
}
static BOOL find_asset(const wchar_t *path, unsigned char **bytes, DWORD *length) {
    if (asset_size < 8 || memcmp(asset_data, "JPW1", 4)) return FALSE;
    DWORD count;
    memcpy(&count, asset_data + 4, 4);
    if (count > 512) return FALSE;
    const unsigned char *current = asset_data + 8, *end = asset_data + asset_size;
    char target[1024];
    if (!WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, path, -1, target, sizeof(target), NULL, NULL))
        return FALSE;
    size_t target_length = strlen(target);
    for (DWORD i = 0; i < count; ++i) {
        DWORD name_length, original_length, compressed_length;
        if ((size_t)(end - current) < 12) return FALSE;
        memcpy(&name_length, current, 4);
        memcpy(&original_length, current + 4, 4);
        memcpy(&compressed_length, current + 8, 4);
        current += 12;
        if (!name_length || name_length > 1023 || original_length > MAX_API_BODY ||
            (uint64_t)name_length + compressed_length > (uint64_t)(end - current)) return FALSE;
        BOOL matches = target_length == name_length && memcmp(current, target, name_length) == 0;
        current += name_length;
        if (matches) {
            DECOMPRESSOR_HANDLE decompressor;
            if (!CreateDecompressor(COMPRESS_ALGORITHM_MSZIP, NULL, &decompressor)) return FALSE;
            unsigned char *output = allocate(original_length);
            SIZE_T decoded = 0;
            BOOL result = output && Decompress(decompressor, (void *)current, compressed_length,
                                               output, original_length, &decoded) && decoded == original_length;
            CloseDecompressor(decompressor);
            if (!result) { deallocate(output); return FALSE; }
            *bytes = output; *length = original_length;
            return TRUE;
        }
        current += compressed_length;
    }
    return FALSE;
}
static void respond(ICoreWebView2WebResourceRequestedEventArgs *args, const void *data,
                    DWORD length, DWORD status, const wchar_t *headers) {
    IStream *stream = SHCreateMemStream(data, length);
    ICoreWebView2WebResourceResponse *response = NULL;
    if (stream && SUCCEEDED(ICoreWebView2Environment_CreateWebResourceResponse(
            environment, stream, (int)status, status < 400 ? L"OK" : L"Request failed",
            headers, &response))) {
        ICoreWebView2WebResourceRequestedEventArgs_put_Response(args, response);
        ICoreWebView2WebResourceResponse_Release(response);
    }
    if (stream) IStream_Release(stream);
}
static void reject_request(ICoreWebView2WebResourceRequestedEventArgs *args, DWORD status) {
    respond(args, "", 0, status, L"Content-Type: text/plain\r\nCache-Control: no-store\r\n");
}
static void release_request(Request *request) {
    if (!request) return;
    if (request->deferral) {
        ICoreWebView2Deferral_Complete(request->deferral);
        ICoreWebView2Deferral_Release(request->deferral);
    }
    if (request->args) ICoreWebView2WebResourceRequestedEventArgs_Release(request->args);
    if (request->work) CloseThreadpoolWork(request->work);
    deallocate(request->uri); deallocate(request->method); deallocate(request->request_headers);
    deallocate(request->response_headers); deallocate(request->request_body); deallocate(request->range);
    deallocate(request->response_body); deallocate(request);
    InterlockedDecrement(&pending_requests);
}
static BOOL append_header(wchar_t *destination, size_t capacity, const wchar_t *name, const wchar_t *value) {
    if (wcschr(value, L'\r') || wcschr(value, L'\n')) return FALSE;
    size_t used = wcslen(destination), needed = wcslen(name) + wcslen(value) + 4;
    if (used + needed >= capacity) return FALSE;
    _snwprintf(destination + used, capacity - used, L"%ls: %ls\r\n", name, value);
    return TRUE;
}
static BOOL read_request(ICoreWebView2WebResourceRequest *source, Request *request) {
    ICoreWebView2HttpRequestHeaders *headers = NULL;
    ICoreWebView2HttpHeadersCollectionIterator *iterator = NULL;
    request->request_headers = allocate(32768 * sizeof(wchar_t));
    if (!request->request_headers) return FALSE;
    if (SUCCEEDED(ICoreWebView2WebResourceRequest_get_Headers(source, &headers)) &&
        SUCCEEDED(ICoreWebView2HttpRequestHeaders_GetIterator(headers, &iterator))) {
        BOOL current = FALSE;
        ICoreWebView2HttpHeadersCollectionIterator_get_HasCurrentHeader(iterator, &current);
        while (current) {
            LPWSTR name = NULL, value = NULL;
            if (FAILED(ICoreWebView2HttpHeadersCollectionIterator_GetCurrentHeader(iterator, &name, &value))) break;
            BOOL allowed = !_wcsicmp(name, L"Accept") || !_wcsicmp(name, L"Range") ||
                (request->api && (!_wcsicmp(name, L"Authorization") || !_wcsicmp(name, L"Content-Type") ||
                  !_wcsicmp(name, L"Accept-Language") || !_wcsnicmp(name, L"X-", 2)));
            BOOL ok = !allowed || append_header(request->request_headers, 32768, name, value);
            if (!_wcsicmp(name, L"Range") && !request->range) request->range = duplicate(value);
            CoTaskMemFree(name); CoTaskMemFree(value);
            if (!ok) {
                ICoreWebView2HttpHeadersCollectionIterator_Release(iterator);
                ICoreWebView2HttpRequestHeaders_Release(headers);
                return FALSE;
            }
            ICoreWebView2HttpHeadersCollectionIterator_MoveNext(iterator, &current);
        }
    }
    if (iterator) ICoreWebView2HttpHeadersCollectionIterator_Release(iterator);
    if (headers) ICoreWebView2HttpRequestHeaders_Release(headers);
    IStream *body = NULL;
    if (FAILED(ICoreWebView2WebResourceRequest_get_Content(source, &body)) || !body) return TRUE;
    DWORD capacity = 8192;
    request->request_body = allocate(capacity);
    if (!request->request_body) { IStream_Release(body); return FALSE; }
    for (;;) {
        if (request->request_length == capacity) {
            if (capacity == 4u * 1024u * 1024u) { IStream_Release(body); return FALSE; }
            capacity *= 2;
            void *grown = HeapReAlloc(GetProcessHeap(), 0, request->request_body, capacity);
            if (!grown) { IStream_Release(body); return FALSE; }
            request->request_body = grown;
        }
        ULONG received = 0;
        HRESULT result = IStream_Read(body, request->request_body + request->request_length,
                                     capacity - request->request_length, &received);
        request->request_length += received;
        if (FAILED(result)) { IStream_Release(body); return FALSE; }
        if (!received || result == S_FALSE) break;
    }
    IStream_Release(body);
    return TRUE;
}
static BOOL cache_reference(const wchar_t *base, const char *text, size_t length) {
    if (length != 73 || memcmp(text, "media/", 6) || memcmp(text + 70, ".ts", 3)) return FALSE;
    wchar_t key[65], path[PATH_CAP];
    for (int i = 0; i < 64; ++i) {
        char c = text[i+6];
        if (!((c >= '0' && c <= '9') || (c >= 'a' && c <= 'f'))) return FALSE;
        key[i] = c;
    }
    key[64] = 0;
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.info", base, key);
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    CacheRecord record;
    DWORD received = 0;
    LARGE_INTEGER size;
    BOOL ok = file != INVALID_HANDLE_VALUE && GetFileSizeEx(file, &size) &&
        ReadFile(file, &record, sizeof(record), &received, NULL) &&
        received == sizeof(record) && record.magic == 0x3243504a && record.status == 200 &&
        record.body_length > 0 && record.body_length <= MAX_MEDIA_BODY &&
        record.header_bytes >= sizeof(wchar_t) && record.header_bytes <= 131072 &&
        size.QuadPart == sizeof(record) + record.header_bytes;
    if (file != INVALID_HANDLE_VALUE) CloseHandle(file);
    if (!ok) return FALSE;
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", base, key);
    WIN32_FILE_ATTRIBUTE_DATA attributes;
    return GetFileAttributesExW(path, GetFileExInfoStandard, &attributes) &&
        !attributes.nFileSizeHigh && attributes.nFileSizeLow == record.body_length;
}
static BOOL save_playlist(const wchar_t *base, const wchar_t *name, const unsigned char *body, DWORD length) {
    if (!base[0] || wcslen(name) != 69 || wcscmp(name+64, L".m3u8") ||
        length < 20 || length > 1024*1024 || memcmp(body, "#EXTM3U\n", 8)) return FALSE;
    for (int i = 0; i < 64; ++i)
        if (!((name[i] >= L'0' && name[i] <= L'9') || (name[i] >= L'a' && name[i] <= L'f'))) return FALSE;
    char *text = allocate((size_t)length + 1);
    if (!text) return FALSE;
    memcpy(text, body, length);
    BOOL valid = !memchr(body, 0, length) && strstr(text, "#EXT-X-ENDLIST") != NULL &&
        !strstr(text, "#EXT-X-BYTERANGE") && !strstr(text, "#EXT-X-STREAM-INF");
    DWORD references = 0;
    AcquireSRWLockShared(&cache_lock);
    char *line = text;
    while (valid && *line) {
        char *end = strchr(line, '\n');
        if (!end) end = line + strlen(line);
        char saved = *end; *end = 0;
        if (*line && *line != '#') {
            valid = cache_reference(base, line, strlen(line));
            ++references;
        } else if (*line == '#') {
            char *uri = line;
            while (valid && (uri = strstr(uri, "URI="))) {
                if (uri[4] != '"') { valid = FALSE; break; }
                uri += 5;
                char *quote = strchr(uri, '"');
                valid = quote && cache_reference(base, uri, (size_t)(quote-uri));
                if (!quote) break;
                uri = quote+1;
            }
        }
        *end = saved;
        line = saved ? end+1 : end;
    }
    ReleaseSRWLockShared(&cache_lock);
    wchar_t path[PATH_CAP];
    _snwprintf(path, PATH_CAP, L"%ls\\%ls", base, name);
    BOOL ok = valid && references && cache_atomic(path, body, length);
    deallocate(text);
    return ok;
}
static void desktop_request(ICoreWebView2WebResourceRequestedEventArgs *args,
        ICoreWebView2WebResourceRequest *source, const wchar_t *path, const wchar_t *method) {
    wchar_t base[PATH_CAP];
    cache_snapshot(base);
    if ((!wcscmp(path, L"/desktop/fullscreen/enter") || !wcscmp(path, L"/desktop/fullscreen/exit")) &&
            !wcscmp(method, L"POST")) {
        set_fullscreen(!wcscmp(path, L"/desktop/fullscreen/enter"));
        const char *json = fullscreen ? "{\"fullscreen\":true}" : "{\"fullscreen\":false}";
        respond(args, json, (DWORD)strlen(json), 200,
            L"Content-Type: application/json\r\nCache-Control: no-store\r\n");
    } else if (!wcscmp(path, L"/desktop/cache-status") && !wcscmp(method, L"GET")) {
        wchar_t escaped[PATH_CAP*2], json[PATH_CAP*2+512];
        size_t used = 0;
        for (size_t i = 0; base[i]; ++i) {
            if (base[i] == L'\\' || base[i] == L'"') escaped[used++] = L'\\';
            escaped[used++] = base[i] < 32 ? L' ' : base[i];
        }
        escaped[used] = 0;
        _snwprintf(json, ARRAY_COUNT(json), L"{\"directory\":\"%ls\",\"hits\":%ld,\"writes\":%ld,"
            L"\"bytes\":%lld,\"errors\":%ld}", escaped, cache_hits, cache_writes, cache_saved_bytes, cache_errors);
        int length = WideCharToMultiByte(CP_UTF8, 0, json, -1, NULL, 0, NULL, NULL);
        char *bytes = allocate((size_t)length);
        if (bytes) {
            WideCharToMultiByte(CP_UTF8, 0, json, -1, bytes, length, NULL, NULL);
            respond(args, bytes, (DWORD)length-1, 200, L"Content-Type: application/json\r\nCache-Control: no-store\r\n");
            deallocate(bytes);
        } else reject_request(args, 503);
    } else if (prefix(path, L"/desktop/playlist/") && !wcscmp(method, L"POST")) {
        Request request = {0};
        BOOL ok = read_request(source, &request) &&
            save_playlist(base, path+wcslen(L"/desktop/playlist/"), request.request_body, request.request_length);
        respond(args, ok ? "{\"saved\":true}" : "{\"saved\":false}", ok ? 14 : 15, ok ? 200 : 409,
            L"Content-Type: application/json\r\nCache-Control: no-store\r\n");
        deallocate(request.request_body); deallocate(request.request_headers); deallocate(request.range);
    } else reject_request(args, 404);
}
static wchar_t *response_headers(HINTERNET handle) {
    DWORD bytes = 0;
    WinHttpQueryHeaders(handle, WINHTTP_QUERY_RAW_HEADERS_CRLF, NULL, NULL, &bytes, NULL);
    if (!bytes || bytes > 65536) return NULL;
    wchar_t *raw = allocate(bytes + sizeof(wchar_t));
    wchar_t *output = allocate(131072);
    if (!raw || !output || !WinHttpQueryHeaders(handle, WINHTTP_QUERY_RAW_HEADERS_CRLF,
                                               NULL, raw, &bytes, NULL)) {
        deallocate(raw); deallocate(output); return NULL;
    }
    wchar_t *line = wcsstr(raw, L"\r\n");
    if (line) line += 2;
    while (line && *line) {
        wchar_t *next = wcsstr(line, L"\r\n");
        if (!next) break;
        *next = 0;
        wchar_t *colon = wcschr(line, L':');
        if (colon) {
            *colon = 0;
            const wchar_t *value = colon + 1;
            while (*value == L' ') ++value;
            BOOL excluded = !_wcsicmp(line, L"Content-Length") || !_wcsicmp(line, L"Content-Encoding") ||
                !_wcsicmp(line, L"Transfer-Encoding") || !_wcsicmp(line, L"Connection") ||
                !_wcsicmp(line, L"Access-Control-Allow-Origin") ||
                !_wcsicmp(line, L"Access-Control-Allow-Credentials") ||
                !_wcsicmp(line, L"Set-Cookie") || !_wcsicmp(line, L"Cache-Control");
            if (!excluded && !append_header(output, 65536, line, value)) {
                deallocate(raw); deallocate(output); return NULL;
            }
        }
        line = next + 2;
    }
    append_header(output, 65536, L"Access-Control-Allow-Origin", APP_ORIGIN);
    append_header(output, 65536, L"Cache-Control", L"no-store");
    append_header(output, 65536, L"X-Content-Type-Options", L"nosniff");
    deallocate(raw);
    return output;
}
static BOOL download(Request *request, const wchar_t *host, const wchar_t *path) {
    ULONGLONG started = GetTickCount64();
    HINTERNET connection = WinHttpConnect(http_session, host, 443, 0);
    HINTERNET handle = connection ? WinHttpOpenRequest(connection, request->method, path, NULL,
        WINHTTP_NO_REFERER, WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_SECURE) : NULL;
    BOOL ok = FALSE;
    if (!handle) goto finish;
    DWORD disabled = WINHTTP_DISABLE_COOKIES | WINHTTP_DISABLE_AUTHENTICATION | WINHTTP_DISABLE_REDIRECTS;
    WinHttpSetOption(handle, WINHTTP_OPTION_DISABLE_FEATURE, &disabled, sizeof(disabled));
    DWORD decompress = WINHTTP_DECOMPRESSION_FLAG_GZIP | WINHTTP_DECOMPRESSION_FLAG_DEFLATE;
    WinHttpSetOption(handle, WINHTTP_OPTION_DECOMPRESSION, &decompress, sizeof(decompress));
    if (!WinHttpSendRequest(handle, request->request_headers, (DWORD)-1L, request->request_body,
                           request->request_length, request->request_length, 0) ||
        !WinHttpReceiveResponse(handle, NULL)) goto finish;
    DWORD size = sizeof(request->status);
    if (!WinHttpQueryHeaders(handle, WINHTTP_QUERY_STATUS_CODE | WINHTTP_QUERY_FLAG_NUMBER,
                            NULL, &request->status, &size, NULL)) goto finish;
    request->response_headers = response_headers(handle);
    if (!request->response_headers) goto finish;
    DWORD limit = request->api ? MAX_API_BODY : MAX_MEDIA_BODY;
    ULONGLONG advertised = 0;
    size = sizeof(advertised);
    if (WinHttpQueryHeaders(handle, WINHTTP_QUERY_CONTENT_LENGTH | WINHTTP_QUERY_FLAG_NUMBER64,
                            NULL, &advertised, &size, NULL) && advertised > limit) {
        SetLastError(ERROR_FILE_TOO_LARGE); goto finish;
    }
    DWORD capacity = 65536;
    request->response_body = allocate(capacity);
    if (!request->response_body) goto finish;
    for (;;) {
        if (GetTickCount64() - started > 25000) { SetLastError(ERROR_TIMEOUT); goto finish; }
        if (request->response_length == capacity) {
            if (capacity >= limit) { SetLastError(ERROR_FILE_TOO_LARGE); goto finish; }
            capacity = capacity > limit / 2 ? limit : capacity * 2;
            void *grown = HeapReAlloc(GetProcessHeap(), 0, request->response_body, capacity);
            if (!grown) { SetLastError(ERROR_NOT_ENOUGH_MEMORY); goto finish; }
            request->response_body = grown;
        }
        DWORD received = 0;
        if (!WinHttpReadData(handle, request->response_body + request->response_length,
                            capacity - request->response_length, &received)) goto finish;
        request->response_length += received;
        if (!received) { ok = TRUE; break; }
    }
    if (ok && !request->api && advertised) {
        wchar_t encoding[256];
        DWORD encoding_bytes = sizeof(encoding);
        BOOL encoded = WinHttpQueryHeaders(handle, WINHTTP_QUERY_CONTENT_ENCODING, NULL,
                                            encoding, &encoding_bytes, NULL);
        if (!encoded && request->response_length != advertised) {
            SetLastError(ERROR_HANDLE_EOF); ok = FALSE;
        }
    }
finish:
    if (!ok) request->error = GetLastError() ? GetLastError() : ERROR_GEN_FAILURE;
    if (handle) WinHttpCloseHandle(handle);
    if (connection) WinHttpCloseHandle(connection);
    return ok;
}
static BOOL select_origin(void) {
    AcquireSRWLockExclusive(&origin_lock);
    if (api_host[0]) { ReleaseSRWLockExclusive(&origin_lock); return TRUE; }
    static const wchar_t *families[] = { L"bdgnbrws.com", L"fvevfbr.com", L"swgsdfew.com" };
    for (size_t i = 0; i < ARRAY_COUNT(families); ++i) {
        unsigned char random[4];
        if (BCryptGenRandom(NULL, random, sizeof(random), BCRYPT_USE_SYSTEM_PREFERRED_RNG) < 0) break;
        wchar_t host[256];
        _snwprintf(host, ARRAY_COUNT(host), L"w%02x%02x%02x%02x.%ls",
                   random[0], random[1], random[2], random[3], families[i]);
        Request probe = {0};
        probe.method = L"GET"; probe.request_headers = L""; probe.api = TRUE;
        BOOL verified = download(&probe, host, L"/api/v1/status") && probe.status == 200 &&
            probe.response_length >= 12 &&
            /* The buffer is bounded and explicitly terminated for this status check. */
            probe.response_length < MAX_API_BODY;
        if (verified) {
            char *text = allocate((size_t)probe.response_length + 1);
            if (text) {
                memcpy(text, probe.response_body, probe.response_length);
                verified = strstr(text, "\"jp-app-api\"") != NULL;
                deallocate(text);
            } else verified = FALSE;
        }
        deallocate(probe.response_body); deallocate(probe.response_headers);
        if (verified) { wcscpy(api_host, host); break; }
    }
    BOOL result = api_host[0] != 0;
    ReleaseSRWLockExclusive(&origin_lock);
    return result;
}
static VOID CALLBACK network_worker(PTP_CALLBACK_INSTANCE callback_instance, PVOID context, PTP_WORK work) {
    Request *request = context;
    wchar_t host[256];
    const wchar_t *path = NULL;
    if (request->api) {
        if (select_origin()) {
            AcquireSRWLockShared(&origin_lock);
            wcscpy(host, api_host);
            ReleaseSRWLockShared(&origin_lock);
            path = request->uri + wcslen(APP_ORIGIN);
        } else request->error = ERROR_WINHTTP_CANNOT_CONNECT;
    } else if (!split_https(request->uri, host, ARRAY_COUNT(host), &path) ||
               !public_hostname(host, TRUE)) request->error = ERROR_ACCESS_DENIED;
    BOOL cacheable = !request->api && !wcscmp(request->method, L"GET") &&
        cache_key(request->uri, request->range ? request->range : L"", request->cache_id);
    if (cacheable) cache_snapshot(request->cache_base);
    BOOL hit = !request->error && cacheable && cache_read(request->cache_base, request->cache_id,
        &request->status, &request->response_body, &request->response_length, &request->response_headers);
    if (!hit && !request->error && path && download(request, host, path) && cacheable)
        cache_write(request->cache_base, request->cache_id, request->status,
            request->response_body, request->response_length, request->response_headers);
    PostMessageW(window, WM_NETWORK_DONE, 0, (LPARAM)request);
}
static HRESULT STDMETHODCALLTYPE resources(ICoreWebView2WebResourceRequestedEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2WebResourceRequestedEventArgs *args) {
    ICoreWebView2WebResourceRequest *source = NULL;
    LPWSTR uri = NULL, method = NULL;
    COREWEBVIEW2_WEB_RESOURCE_CONTEXT context;
    if (closing || FAILED(ICoreWebView2WebResourceRequestedEventArgs_get_Request(args, &source))) return S_OK;
    ICoreWebView2WebResourceRequest_get_Uri(source, &uri);
    ICoreWebView2WebResourceRequest_get_Method(source, &method);
    ICoreWebView2WebResourceRequestedEventArgs_get_ResourceContext(args, &context);
    if (!uri || !method) goto done;
    BOOL local = local_uri(uri);
    const wchar_t *path = local ? uri + wcslen(APP_ORIGIN) : NULL;
    BOOL api = local && prefix(path, L"/api/v1/");
    if (local && prefix(path, L"/desktop/")) {
        desktop_request(args, source, path, method);
        goto done;
    }
    if (local && !api) {
        unsigned char *bytes = NULL;
        DWORD length = 0;
        if (wcscmp(method, L"GET") && wcscmp(method, L"HEAD")) reject_request(args, 405);
        else if (find_asset(path, &bytes, &length)) {
            wchar_t headers[512];
            _snwprintf(headers, ARRAY_COUNT(headers),
                L"Content-Type: %ls\r\nCache-Control: no-store\r\nX-Content-Type-Options: nosniff\r\n", mime(path));
            respond(args, bytes, !wcscmp(method, L"HEAD") ? 0 : length, 200, headers);
            deallocate(bytes);
        } else reject_request(args, 404);
        goto done;
    }
    if (api && (context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SCRIPT ||
                context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_DOCUMENT)) {
        reject_request(args, 403); goto done;
    }
    BOOL media = !local && prefix(uri, L"https://") &&
        (context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_XML_HTTP_REQUEST ||
         context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_FETCH) &&
        (!wcscmp(method, L"GET") || !wcscmp(method, L"HEAD"));
    if (!api && !media) {
        BOOL inline_asset = (prefix(uri, L"blob:") || prefix(uri, L"data:")) &&
            (context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_IMAGE ||
             context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MEDIA ||
             context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_SCRIPT);
        BOOL direct_media = prefix(uri, L"https://") &&
            (context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_IMAGE ||
             context == COREWEBVIEW2_WEB_RESOURCE_CONTEXT_MEDIA);
        if (direct_media) {
            wchar_t host[256]; const wchar_t *remote_path;
            direct_media = split_https(uri, host, ARRAY_COUNT(host), &remote_path) && public_hostname(host, FALSE);
        }
        if (!inline_asset && !direct_media) reject_request(args, 403);
        goto done;
    }
    if (api && (wcsstr(path, L"/diagnostics") || wcsstr(path, L"/ads/"))) {
        respond(args, "{}", 2, 200, L"Content-Type: application/json\r\nCache-Control: no-store\r\n");
        goto done;
    }
    if (InterlockedIncrement(&pending_requests) > 64) {
        InterlockedDecrement(&pending_requests);
        reject_request(args, 503); goto done;
    }
    Request *request = allocate(sizeof(Request));
    if (!request) {
        InterlockedDecrement(&pending_requests);
        reject_request(args, 503); goto done;
    }
    request->api = api;
    request->uri = duplicate(uri); request->method = duplicate(method);
    if (!request->uri || !request->method || !read_request(source, request) ||
        FAILED(ICoreWebView2WebResourceRequestedEventArgs_GetDeferral(args, &request->deferral))) {
        reject_request(args, 413); release_request(request); goto done;
    }
    request->args = args;
    ICoreWebView2WebResourceRequestedEventArgs_AddRef(args);
    request->work = CreateThreadpoolWork(network_worker, request, &worker_environment);
    if (!request->work) { reject_request(args, 503); release_request(request); goto done; }
    SubmitThreadpoolWork(request->work);
done:
    CoTaskMemFree(uri); CoTaskMemFree(method);
    ICoreWebView2WebResourceRequest_Release(source);
    return S_OK;
}
HANDLER(ICoreWebView2WebResourceRequestedEventHandler, resource_handler, resources);

static void layout(void) {
    RECT bounds;
    GetClientRect(window, &bounds);
    int toolbar = fullscreen ? 0 : 42;
    for (int i = 0; i < 5; ++i) {
        ShowWindow(buttons[i], fullscreen ? SW_HIDE : SW_SHOW);
        MoveWindow(buttons[i], 8 + 88 * i, 7, 80, 29, TRUE);
    }
    ShowWindow(label, fullscreen ? SW_HIDE : SW_SHOW);
    MoveWindow(label, 454, 12, bounds.right > 466 ? bounds.right - 466 : 0, 23, TRUE);
    bounds.top = toolbar;
    if (controller) ICoreWebView2Controller_put_Bounds(controller, bounds);
}
static void set_fullscreen(BOOL value) {
    if (fullscreen == value || closing) return;
    fullscreen = value;
    if (value) {
        GetWindowPlacement(window, &saved_placement);
        saved_style = GetWindowLongW(window, GWL_STYLE);
        MONITORINFO monitor = { .cbSize = sizeof(MONITORINFO) };
        GetMonitorInfoW(MonitorFromWindow(window, MONITOR_DEFAULTTONEAREST), &monitor);
        SetWindowLongW(window, GWL_STYLE, saved_style & ~(LONG)(WS_OVERLAPPEDWINDOW | WS_MAXIMIZE | WS_MINIMIZE));
        SetWindowPos(window, NULL, monitor.rcMonitor.left, monitor.rcMonitor.top,
            monitor.rcMonitor.right - monitor.rcMonitor.left, monitor.rcMonitor.bottom - monitor.rcMonitor.top,
            SWP_NOZORDER | SWP_FRAMECHANGED);
    } else {
        SetWindowLongW(window, GWL_STYLE, saved_style);
        SetWindowPlacement(window, &saved_placement);
        SetWindowPos(window, NULL, 0, 0, 0, 0, SWP_NOZORDER | SWP_NOMOVE | SWP_NOSIZE | SWP_FRAMECHANGED);
    }
    layout();
    if (core) ICoreWebView2_ExecuteScript(core, value ?
        L"window.__jpDesktopFullscreen&&window.__jpDesktopFullscreen.setNative(true)" :
        L"window.__jpDesktopFullscreen&&window.__jpDesktopFullscreen.setNative(false)", NULL);
}
static void toggle_fullscreen(void) {
    BOOL element = FALSE;
    if (core) ICoreWebView2_get_ContainsFullScreenElement(core, &element);
    if (fullscreen && element) ICoreWebView2_ExecuteScript(core, L"document.exitFullscreen().catch(function(){})", NULL);
    else set_fullscreen(!fullscreen);
}
static HRESULT STDMETHODCALLTYPE fullscreen_changed(ICoreWebView2ContainsFullScreenElementChangedEventHandler *self,
        ICoreWebView2 *sender, IUnknown *args) {
    BOOL element = FALSE;
    ICoreWebView2_get_ContainsFullScreenElement(sender, &element);
    set_fullscreen(element);
    return S_OK;
}
HANDLER(ICoreWebView2ContainsFullScreenElementChangedEventHandler, fullscreen_handler, fullscreen_changed);
static HRESULT STDMETHODCALLTYPE accelerator(ICoreWebView2AcceleratorKeyPressedEventHandler *self,
        ICoreWebView2Controller *sender, ICoreWebView2AcceleratorKeyPressedEventArgs *args) {
    COREWEBVIEW2_KEY_EVENT_KIND kind;
    UINT key = 0;
    ICoreWebView2AcceleratorKeyPressedEventArgs_get_KeyEventKind(args, &kind);
    ICoreWebView2AcceleratorKeyPressedEventArgs_get_VirtualKey(args, &key);
    if ((kind == COREWEBVIEW2_KEY_EVENT_KIND_KEY_DOWN || kind == COREWEBVIEW2_KEY_EVENT_KIND_SYSTEM_KEY_DOWN) &&
        (key == VK_F11 || (key == VK_ESCAPE && fullscreen))) {
        BOOL element = FALSE;
        ICoreWebView2_get_ContainsFullScreenElement(core, &element);
        if (key == VK_F11 || !element) {
            ICoreWebView2AcceleratorKeyPressedEventArgs_put_Handled(args, TRUE);
            PostMessageW(window, WM_TOGGLE_FULLSCREEN, 0, 0);
        }
    }
    return S_OK;
}
HANDLER(ICoreWebView2AcceleratorKeyPressedEventHandler, accelerator_handler, accelerator);
static HRESULT STDMETHODCALLTYPE navigation(ICoreWebView2NavigationStartingEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2NavigationStartingEventArgs *args) {
    LPWSTR uri = NULL;
    ICoreWebView2NavigationStartingEventArgs_get_Uri(args, &uri);
    if (!uri || !local_uri(uri)) {
        ICoreWebView2NavigationStartingEventArgs_put_Cancel(args, TRUE);
        set_status(L"已阻止打开外部页面。");
    }
    CoTaskMemFree(uri);
    return S_OK;
}
HANDLER(ICoreWebView2NavigationStartingEventHandler, navigation_handler, navigation);
static HRESULT STDMETHODCALLTYPE frame_navigation(ICoreWebView2NavigationStartingEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2NavigationStartingEventArgs *args) {
    ICoreWebView2NavigationStartingEventArgs_put_Cancel(args, TRUE);
    return S_OK;
}
HANDLER(ICoreWebView2NavigationStartingEventHandler, frame_handler, frame_navigation);
static HRESULT STDMETHODCALLTYPE popup(ICoreWebView2NewWindowRequestedEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2NewWindowRequestedEventArgs *args) {
    ICoreWebView2NewWindowRequestedEventArgs_put_Handled(args, TRUE);
    return S_OK;
}
HANDLER(ICoreWebView2NewWindowRequestedEventHandler, popup_handler, popup);
static HRESULT STDMETHODCALLTYPE permission(ICoreWebView2PermissionRequestedEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2PermissionRequestedEventArgs *args) {
    ICoreWebView2PermissionRequestedEventArgs_put_State(args, COREWEBVIEW2_PERMISSION_STATE_DENY);
    return S_OK;
}
HANDLER(ICoreWebView2PermissionRequestedEventHandler, permission_handler, permission);
static HRESULT STDMETHODCALLTYPE download_starting(ICoreWebView2DownloadStartingEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2DownloadStartingEventArgs *args) {
    ICoreWebView2DownloadStartingEventArgs_put_Cancel(args, TRUE);
    return S_OK;
}
HANDLER(ICoreWebView2DownloadStartingEventHandler, download_handler, download_starting);
static HRESULT STDMETHODCALLTYPE external_scheme(ICoreWebView2LaunchingExternalUriSchemeEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2LaunchingExternalUriSchemeEventArgs *args) {
    ICoreWebView2LaunchingExternalUriSchemeEventArgs_put_Cancel(args, TRUE);
    return S_OK;
}
HANDLER(ICoreWebView2LaunchingExternalUriSchemeEventHandler, scheme_handler, external_scheme);
static HRESULT STDMETHODCALLTYPE navigated(ICoreWebView2NavigationCompletedEventHandler *self,
        ICoreWebView2 *sender, ICoreWebView2NavigationCompletedEventArgs *args) {
    BOOL success = FALSE;
    ICoreWebView2NavigationCompletedEventArgs_get_IsSuccess(args, &success);
    set_status(success ? L"鼠标与键盘操作 · F11 全屏" : L"页面未成功加载，请刷新后重试。");
    if (success && diagnostic_dir[0] && !diagnostic_stage) SetTimer(window, 1, 10000, NULL);
    return S_OK;
}
HANDLER(ICoreWebView2NavigationCompletedEventHandler, navigation_complete_handler, navigated);

static void diagnostic_path(wchar_t *path, const wchar_t *name) {
    _snwprintf(path, PATH_CAP, L"%ls\\%ls", diagnostic_dir, name);
}
static void capture_memory(void) {
    DWORD ids[64] = { GetCurrentProcessId() }, count = 1;
    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    if (snapshot != INVALID_HANDLE_VALUE) {
        BOOL changed = TRUE;
        while (changed && count < ARRAY_COUNT(ids)) {
            changed = FALSE;
            PROCESSENTRY32W entry = { .dwSize = sizeof(PROCESSENTRY32W) };
            if (Process32FirstW(snapshot, &entry)) do {
                BOOL parent = FALSE, known = FALSE;
                for (DWORD i = 0; i < count; ++i) {
                    if (entry.th32ParentProcessID == ids[i]) parent = TRUE;
                    if (entry.th32ProcessID == ids[i]) known = TRUE;
                }
                if (parent && !known && count < ARRAY_COUNT(ids)) {
                    ids[count++] = entry.th32ProcessID; changed = TRUE;
                }
            } while (Process32NextW(snapshot, &entry));
        }
        CloseHandle(snapshot);
    }
    wchar_t result[16384] = L"{\"processes\":[";
    size_t used = wcslen(result);
    SIZE_T total_working = 0, total_private = 0;
    DWORD measured = 0;
    for (DWORD i = 0; i < count; ++i) {
        HANDLE process = OpenProcess(PROCESS_QUERY_LIMITED_INFORMATION | PROCESS_VM_READ, FALSE, ids[i]);
        PROCESS_MEMORY_COUNTERS_EX memory = {0};
        memory.cb = sizeof(memory);
        if (process && GetProcessMemoryInfo(process, (PROCESS_MEMORY_COUNTERS *)&memory, sizeof(memory))) {
            total_working += memory.WorkingSetSize; total_private += memory.PrivateUsage;
            used += (size_t)_snwprintf(result + used, ARRAY_COUNT(result) - used,
                L"%ls{\"pid\":%lu,\"working_set\":%llu,\"private_bytes\":%llu}", measured++ ? L"," : L"",
                ids[i], (unsigned long long)memory.WorkingSetSize, (unsigned long long)memory.PrivateUsage);
        }
        if (process) CloseHandle(process);
    }
    RECT bounds;
    GetWindowRect(window, &bounds);
    _snwprintf(result + used, ARRAY_COUNT(result) - used,
        L"],\"working_set_total\":%llu,\"private_bytes_total\":%llu,\"native_fullscreen\":%ls,"
        L"\"window_handle\":%llu,\"width\":%ld,\"height\":%ld}",
        (unsigned long long)total_working, (unsigned long long)total_private, fullscreen ? L"true" : L"false",
        (unsigned long long)(uintptr_t)window, bounds.right - bounds.left, bounds.bottom - bounds.top);
    wchar_t name[80], path[PATH_CAP];
    _snwprintf(name, ARRAY_COUNT(name), L"memory-%d.json", diagnostic_stage);
    diagnostic_path(path, name); write_json(path, result);
}
static void diagnostic_actions(void) {
    if (!smoke) return;
    switch (diagnostic_stage) {
    case 1:
        ICoreWebView2_ExecuteScript(core, L"document.getElementById('app').__vue_app__.config.globalProperties.$router"
            L".push({name:'Search',query:{q:'三体'}})", NULL); break;
    case 2:
        ICoreWebView2_ExecuteScript(core, L"(function(){var b=document.querySelector('.search .result');if(b)b.click()})()", NULL); break;
    case 3:
        ICoreWebView2_ExecuteScript(core, L"(function(){var v=document.querySelector('video');"
            L"if(v&&v.paused)v.play().catch(function(){});window.__jpSmokeAction='observe_playback'})()", NULL); break;
    case 4:
        ICoreWebView2_ExecuteScript(core, L"(function(){var v=document.querySelector('video');"
            L"if(v){v.pause();window.__jpSmokeAction='paused'}})()", NULL); break;
    case 5:
        ICoreWebView2_ExecuteScript(core, L"(function(){var v=document.querySelector('video');"
            L"if(v){v.currentTime=60;v.play().catch(function(){});window.__jpSmokeAction='seek_60_and_resume'}})()", NULL); break;
    case 6:
        ICoreWebView2_ExecuteScript(core, L"document.querySelector('.jp-player-expand').click()", NULL); break;
    case 7:
        if (fullscreen) toggle_fullscreen();
        ICoreWebView2_ExecuteScript(core, L"document.getElementById('work-discussion-tab').click()", NULL); break;
    case 8:
        SetWindowPos(window, NULL, 0, 0, 900, 640, SWP_NOMOVE | SWP_NOZORDER);
        break;
    case 9:
        ICoreWebView2_ExecuteScript(core, L"document.getElementById('work-detail-tab').click();"
            L"setTimeout(function(){var p=document.getElementById('work-detail-panel');p.scrollTop=p.scrollHeight},300)", NULL); break;
    case 10:
        ICoreWebView2_ExecuteScript(core, L"document.querySelector('.jp-cache-save').click()", NULL); break;
    case 11:
        ICoreWebView2_ExecuteScript(core, L"document.querySelector('.jp-cache-cancel').click();"
            L"var v=document.querySelector('video');if(v)v.currentTime=5;", NULL); break;
    case 12:
        SetWindowPos(window, NULL, 0, 0, 1360, 850, SWP_NOMOVE | SWP_NOZORDER);
        ICoreWebView2_Navigate(core, APP_URL); break;
    }
}
static HRESULT STDMETHODCALLTYPE preview_complete(ICoreWebView2CapturePreviewCompletedHandler *self, HRESULT error) {
    if (preview_stream) { IStream_Release(preview_stream); preview_stream = NULL; }
    diagnostic_actions();
    if (smoke && diagnostic_stage == 3) SetTimer(window, 1, 5000, NULL);
    diagnostic_busy = FALSE;
    if (diagnostic_stage >= (smoke ? 13 : 3)) {
        KillTimer(window, 1);
        wchar_t path[PATH_CAP];
        diagnostic_path(path, L"done.json");
        write_json(path, L"{\"completed\":true}");
    }
    return S_OK;
}
HANDLER(ICoreWebView2CapturePreviewCompletedHandler, preview_handler, preview_complete);
static HRESULT STDMETHODCALLTYPE script_complete(ICoreWebView2ExecuteScriptCompletedHandler *self,
        HRESULT error, LPCWSTR json) {
    /* Live sources may take longer than the first ten-second sample to decode.
       Wait for actual playback, within a fixed 90-second budget, before taking
       the before/after playback and fullscreen measurements. */
    if (smoke && diagnostic_stage == 3 && SUCCEEDED(error) && json &&
            wcsstr(json, L"\"playbackReady\":false") && diagnostic_playback_waits++ < 45) {
        --diagnostic_stage;
        diagnostic_busy = FALSE;
        SetTimer(window, 1, 2000, NULL);
        return S_OK;
    }
    wchar_t name[80], path[PATH_CAP], runtime[2048];
    _snwprintf(name, ARRAY_COUNT(name), L"ui-state-%d.json", diagnostic_stage);
    diagnostic_path(path, name);
    if (SUCCEEDED(error) && json) write_json(path, json);
    _snwprintf(runtime, ARRAY_COUNT(runtime),
        L"{\"language\":\"C17\",\"emulator_required\":false,\"api_success\":%lu,\"api_failure\":%lu,"
        L"\"media_success\":%lu,\"media_failure\":%lu,\"blocked_media\":%lu,"
        L"\"last_win32_error\":%lu,\"selected_api_host\":\"%ls\","
        L"\"cache_hits\":%ld,\"cache_writes\":%ld,\"cache_errors\":%ld,\"cache_bytes\":%lld}",
        api_success, api_failure, media_success, media_failure, blocked_media, last_network_error, api_host,
        cache_hits, cache_writes, cache_errors, cache_saved_bytes);
    diagnostic_path(path, L"runtime.json"); write_json(path, runtime);
    capture_memory();
    _snwprintf(name, ARRAY_COUNT(name), L"desktop-%d.png", diagnostic_stage);
    diagnostic_path(path, name);
    if (SUCCEEDED(SHCreateStreamOnFileEx(path, STGM_CREATE | STGM_WRITE | STGM_SHARE_EXCLUSIVE,
            FILE_ATTRIBUTE_NORMAL, TRUE, NULL, &preview_stream))) {
        HRESULT capture = ICoreWebView2_CapturePreview(core, COREWEBVIEW2_CAPTURE_PREVIEW_IMAGE_FORMAT_PNG,
            preview_stream, (ICoreWebView2CapturePreviewCompletedHandler *)&preview_handler);
        if (SUCCEEDED(capture)) return S_OK;
    }
    return preview_complete(NULL, error);
}
HANDLER(ICoreWebView2ExecuteScriptCompletedHandler, script_handler, script_complete);
static void capture_diagnostic(void) {
    if (!core || diagnostic_busy || !diagnostic_dir[0]) return;
    diagnostic_busy = TRUE; ++diagnostic_stage;
    ICoreWebView2_ExecuteScript(core,
        L"(function(){var observed=document.querySelector('video');"
        L"if(observed&&observed.readyState>=3&&!window.__jpSmokeVideo)window.__jpSmokeVideo=observed;"
        L"return {title:document.title,route:location.pathname+location.hash,"
        L"playbackReady:!!(observed&&observed.readyState>=3&&observed.videoWidth>=1920&&!observed.paused),"
        L"videoNodePreserved:observed?observed===window.__jpSmokeVideo:null,"
        L"secureContext:window.isSecureContext,hasAndroidBridge:!!(window.jpBridge||window.Android),"
        L"cards:document.querySelectorAll('.search .result').length,action:window.__jpSmokeAction||null,"
        L"fullscreen:!!document.fullscreenElement,events:window.__jpDesktopEvents||[],"
        L"desktopFullscreen:window.__jpDesktopFullscreen?window.__jpDesktopFullscreen.state():null,"
        L"cache:window.__jpCacheState?window.__jpCacheState():null,"
        L"layout:Array.from(document.querySelectorAll('.detail__player-shell,.detail__tabs,.detail__pager,.detail__pane,.discussion__composer'))"
        L".map(function(e){var r=e.getBoundingClientRect();return {class:e.className,x:r.x,y:r.y,"
        L"width:r.width,height:r.height,scrollHeight:e.scrollHeight,scrollTop:e.scrollTop,inert:e.inert}}),"
        L"videos:Array.from(document.querySelectorAll('video')).map(function(v){return {paused:v.paused,"
        L"readyState:v.readyState,currentTime:v.currentTime,duration:Number.isFinite(v.duration)?v.duration:0,"
        L"width:v.videoWidth,height:v.videoHeight,buffered:Array.from({length:v.buffered.length},"
        L"function(_,i){return [v.buffered.start(i),v.buffered.end(i)]})}}),text:document.body.innerText.slice(0,3500)}})()",
        (ICoreWebView2ExecuteScriptCompletedHandler *)&script_handler);
}
static HRESULT STDMETHODCALLTYPE controller_created(ICoreWebView2CreateCoreWebView2ControllerCompletedHandler *self,
        HRESULT error, ICoreWebView2Controller *created) {
    if (closing) return S_OK;
    if (FAILED(error) || !created) { show_failure(L"无法创建 Windows 播放窗口。"); return S_OK; }
    controller = created;
    ICoreWebView2Controller_AddRef(controller);
    if (FAILED(ICoreWebView2Controller_get_CoreWebView2(controller, &core))) return E_FAIL;
    ICoreWebView2Settings *settings = NULL;
    if (SUCCEEDED(ICoreWebView2_get_Settings(core, &settings))) {
        ICoreWebView2Settings_put_AreDevToolsEnabled(settings, FALSE);
        ICoreWebView2Settings_put_AreDefaultContextMenusEnabled(settings, FALSE);
        ICoreWebView2Settings_put_AreHostObjectsAllowed(settings, FALSE);
        ICoreWebView2Settings_put_IsWebMessageEnabled(settings, FALSE);
        ICoreWebView2Settings_put_IsStatusBarEnabled(settings, FALSE);
        ICoreWebView2Settings4 *extended = NULL;
        if (SUCCEEDED(ICoreWebView2Settings_QueryInterface(settings, &IID_ICoreWebView2Settings4, (void **)&extended))) {
            ICoreWebView2Settings4_put_IsPasswordAutosaveEnabled(extended, FALSE);
            ICoreWebView2Settings4_put_IsGeneralAutofillEnabled(extended, FALSE);
            ICoreWebView2Settings4_put_AreBrowserAcceleratorKeysEnabled(extended, FALSE);
            ICoreWebView2Settings4_Release(extended);
        }
        ICoreWebView2Settings_Release(settings);
    }
    EventRegistrationToken token;
    ICoreWebView2_add_NavigationStarting(core, (ICoreWebView2NavigationStartingEventHandler *)&navigation_handler, &token);
    ICoreWebView2_add_FrameNavigationStarting(core, (ICoreWebView2NavigationStartingEventHandler *)&frame_handler, &token);
    ICoreWebView2_add_NavigationCompleted(core, (ICoreWebView2NavigationCompletedEventHandler *)&navigation_complete_handler, &token);
    ICoreWebView2_add_NewWindowRequested(core, (ICoreWebView2NewWindowRequestedEventHandler *)&popup_handler, &token);
    ICoreWebView2_add_PermissionRequested(core, (ICoreWebView2PermissionRequestedEventHandler *)&permission_handler, &token);
    ICoreWebView2_add_ContainsFullScreenElementChanged(core,
        (ICoreWebView2ContainsFullScreenElementChangedEventHandler *)&fullscreen_handler, &token);
    ICoreWebView2Controller_add_AcceleratorKeyPressed(controller,
        (ICoreWebView2AcceleratorKeyPressedEventHandler *)&accelerator_handler, &token);
    ICoreWebView2_AddWebResourceRequestedFilter(core, L"*", COREWEBVIEW2_WEB_RESOURCE_CONTEXT_ALL);
    ICoreWebView2_add_WebResourceRequested(core, (ICoreWebView2WebResourceRequestedEventHandler *)&resource_handler, &token);
    ICoreWebView2_4 *downloads = NULL;
    if (SUCCEEDED(ICoreWebView2_QueryInterface(core, &IID_ICoreWebView2_4, (void **)&downloads))) {
        ICoreWebView2_4_add_DownloadStarting(downloads, (ICoreWebView2DownloadStartingEventHandler *)&download_handler, &token);
        ICoreWebView2_4_Release(downloads);
    }
    ICoreWebView2_18 *schemes = NULL;
    if (SUCCEEDED(ICoreWebView2_QueryInterface(core, &IID_ICoreWebView2_18, (void **)&schemes))) {
        ICoreWebView2_18_add_LaunchingExternalUriScheme(schemes,
            (ICoreWebView2LaunchingExternalUriSchemeEventHandler *)&scheme_handler, &token);
        ICoreWebView2_18_Release(schemes);
    }
    ICoreWebView2_19 *memory = NULL;
    if (SUCCEEDED(ICoreWebView2_QueryInterface(core, &IID_ICoreWebView2_19, (void **)&memory))) {
        ICoreWebView2_19_put_MemoryUsageTargetLevel(memory, COREWEBVIEW2_MEMORY_USAGE_TARGET_LEVEL_LOW);
        ICoreWebView2_19_Release(memory);
    }
    if (diagnostic_dir[0])
        ICoreWebView2_AddScriptToExecuteOnDocumentCreated(core,
            L"(function(){window.__jpDesktopEvents=[];"
            L"['hashchange','popstate','fullscreenchange','error','unhandledrejection'].forEach(function(k){"
            L"window.addEventListener(k,function(){var a=window.__jpDesktopEvents;"
            L"a.push({event:k,hash:location.hash,time:Math.round(performance.now())});if(a.length>30)a.shift()})})})()", NULL);
    layout();
    ICoreWebView2Controller_put_IsVisible(controller, TRUE);
    ICoreWebView2_Navigate(core, APP_URL);
    return S_OK;
}
HANDLER(ICoreWebView2CreateCoreWebView2ControllerCompletedHandler, controller_handler, controller_created);
static HRESULT STDMETHODCALLTYPE environment_created(ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler *self,
        HRESULT error, ICoreWebView2Environment *created) {
    if (closing) return S_OK;
    if (FAILED(error) || !created) {
        show_failure(L"请安装微软 Edge WebView2 Runtime 后重试。"); return S_OK;
    }
    environment = created;
    ICoreWebView2Environment_AddRef(environment);
    ICoreWebView2Environment_CreateCoreWebView2Controller(environment, window,
        (ICoreWebView2CreateCoreWebView2ControllerCompletedHandler *)&controller_handler);
    return S_OK;
}
HANDLER(ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler, environment_handler, environment_created);

static BOOL verify_loader(const wchar_t *path) {
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    BCRYPT_ALG_HANDLE algorithm = NULL;
    BCRYPT_HASH_HANDLE hash = NULL;
    unsigned char result[32], buffer[8192];
    BOOL ok = BCryptOpenAlgorithmProvider(&algorithm, BCRYPT_SHA256_ALGORITHM, NULL, 0) >= 0 &&
        BCryptCreateHash(algorithm, &hash, NULL, 0, NULL, 0, 0) >= 0;
    DWORD received = 0;
    while (ok) {
        if (!ReadFile(file, buffer, sizeof(buffer), &received, NULL)) { ok = FALSE; break; }
        if (!received) break;
        ok = BCryptHashData(hash, buffer, received, 0) >= 0;
    }
    if (ok) ok = BCryptFinishHash(hash, result, sizeof(result), 0) >= 0;
    if (ok) {
        unsigned char difference = 0;
        for (size_t i = 0; i < sizeof(result); ++i) difference |= result[i] ^ loader_sha256[i];
        ok = difference == 0;
    }
    if (hash) BCryptDestroyHash(hash);
    if (algorithm) BCryptCloseAlgorithmProvider(algorithm, 0);
    CloseHandle(file);
    return ok;
}
static BOOL loader_path(wchar_t *path) {
    DWORD length = GetModuleFileNameW(NULL, path, PATH_CAP);
    return length && length < PATH_CAP && PathRemoveFileSpecW(path) &&
        PathAppendW(path, L"WebView2Loader.dll");
}
static void initialize_browser(void) {
    wchar_t path[PATH_CAP], profile[PATH_CAP];
    if (!loader_path(path) || !verify_loader(path)) {
        show_failure(L"微软运行文件缺失或校验失败，请完整解压发布包。"); return;
    }
    loader_module = LoadLibraryExW(path, NULL, LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR | LOAD_LIBRARY_SEARCH_SYSTEM32);
    typedef HRESULT (STDAPICALLTYPE *CreateEnvironment)(PCWSTR, PCWSTR, ICoreWebView2EnvironmentOptions *,
        ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler *);
    CreateEnvironment create = loader_module ?
        (CreateEnvironment)(void *)GetProcAddress(loader_module, "CreateCoreWebView2EnvironmentWithOptions") : NULL;
    if (!create) { show_failure(L"无法加载微软播放环境。"); return; }
    DWORD profile_length = GetEnvironmentVariableW(L"LOCALAPPDATA", profile, ARRAY_COUNT(profile));
    if (!profile_length || profile_length >= ARRAY_COUNT(profile) - 64) {
        show_failure(L"无法确定用户数据目录。"); return;
    }
    wcscat(profile, L"\\JianpianDesktop\\NativeWebView2");
    SHCreateDirectoryExW(NULL, profile, NULL);
    SetEnvironmentVariableW(L"WEBVIEW2_ADDITIONAL_BROWSER_ARGUMENTS", smoke ?
        L"--mute-audio --disk-cache-size=8388608 --media-cache-size=8388608" :
        L"--disk-cache-size=8388608 --media-cache-size=8388608");
    HRESULT result = create(NULL, profile, NULL,
        (ICoreWebView2CreateCoreWebView2EnvironmentCompletedHandler *)&environment_handler);
    if (FAILED(result)) show_failure(L"无法启动，请安装微软 Edge WebView2 Runtime 后重试。");
}
static LRESULT CALLBACK window_proc(HWND hwnd, UINT message, WPARAM wparam, LPARAM lparam) {
    switch (message) {
    case WM_CREATE:
        window = hwnd;
        font = CreateFontW(-15, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
            OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, DEFAULT_PITCH, L"Microsoft YaHei UI");
        {
            const wchar_t *names[5] = { L"← 返回", L"⌂ 首页", L"↻ 刷新", L"⛶ 全屏", L"保存位置" };
            for (int i = 0; i < 5; ++i) {
                buttons[i] = CreateWindowExW(0, L"BUTTON", names[i], WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_OWNERDRAW,
                    0, 0, 0, 0, hwnd, (HMENU)(INT_PTR)(100 + i), instance, NULL);
                SendMessageW(buttons[i], WM_SETFONT, (WPARAM)font, FALSE);
            }
        }
        label = CreateWindowExW(0, L"STATIC", L"正在初始化 Windows 播放环境…",
            WS_CHILD | WS_VISIBLE | SS_LEFT, 0, 0, 0, 0, hwnd, NULL, instance, NULL);
        SendMessageW(label, WM_SETFONT, (WPARAM)font, FALSE);
        return 0;
    case WM_SIZE: layout(); return 0;
    case WM_GETMINMAXINFO:
        ((MINMAXINFO *)lparam)->ptMinTrackSize.x = 900;
        ((MINMAXINFO *)lparam)->ptMinTrackSize.y = 640;
        return 0;
    case WM_CTLCOLOREDIT:
    case WM_CTLCOLORSTATIC:
        SetTextColor((HDC)wparam, RGB(210,210,210));
        SetBkColor((HDC)wparam, RGB(25,28,34));
        return (LRESULT)background;
    case WM_DRAWITEM: {
        DRAWITEMSTRUCT *item = (DRAWITEMSTRUCT *)lparam;
        if (item->CtlType != ODT_BUTTON) break;
        COLORREF color = item->itemState & ODS_SELECTED ? RGB(55,61,71) : RGB(36,41,49);
        HBRUSH fill = CreateSolidBrush(color);
        HPEN border = CreatePen(PS_SOLID, 1, item->itemState & ODS_FOCUS ? RGB(110,119,132) : color);
        HGDIOBJ old_brush = SelectObject(item->hDC, fill), old_pen = SelectObject(item->hDC, border);
        FillRect(item->hDC, &item->rcItem, background);
        RoundRect(item->hDC, item->rcItem.left, item->rcItem.top, item->rcItem.right, item->rcItem.bottom, 7, 7);
        wchar_t text[48];
        GetWindowTextW(item->hwndItem, text, ARRAY_COUNT(text));
        HGDIOBJ old_font = SelectObject(item->hDC, font);
        SetBkMode(item->hDC, TRANSPARENT);
        SetTextColor(item->hDC, RGB(236,237,239));
        DrawTextW(item->hDC, text, -1, &item->rcItem, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
        SelectObject(item->hDC, old_font); SelectObject(item->hDC, old_brush); SelectObject(item->hDC, old_pen);
        DeleteObject(fill); DeleteObject(border);
        return TRUE;
    }
    case WM_COMMAND:
        if (LOWORD(wparam) == 104) { choose_storage(); return 0; }
        if (!core) return 0;
        switch (LOWORD(wparam)) {
        case 100: {
            BOOL can = FALSE;
            ICoreWebView2_get_CanGoBack(core, &can);
            if (can) ICoreWebView2_GoBack(core);
            break;
        }
        case 101: ICoreWebView2_Navigate(core, APP_URL); break;
        case 102: ICoreWebView2_Reload(core); break;
        case 103: toggle_fullscreen(); break;
        }
        return 0;
    case WM_KEYDOWN:
        if (wparam == VK_F11 || (wparam == VK_ESCAPE && fullscreen)) toggle_fullscreen();
        return 0;
    case WM_TOGGLE_FULLSCREEN: toggle_fullscreen(); return 0;
    case WM_TIMER: if (wparam == 1) capture_diagnostic(); return 0;
    case WM_NETWORK_DONE: {
        Request *request = (Request *)lparam;
        if (request->error) {
            last_network_error = request->error;
            if (request->api) { ++api_failure; set_status(L"暂时无法连接服务，请稍后刷新。"); }
            else { ++media_failure; if (request->error == ERROR_ACCESS_DENIED) ++blocked_media; }
            static const char error[] = "{\"type\":\"about:blank\",\"title\":\"Connection failed\","
                "\"status\":502,\"code\":\"network_error\"}";
            respond(request->args, error, sizeof(error)-1, 502,
                L"Content-Type: application/problem+json\r\nCache-Control: no-store\r\n"
                L"Access-Control-Allow-Origin: " APP_ORIGIN L"\r\n");
        } else {
            if (request->api) { if (request->status < 400) ++api_success; else ++api_failure; }
            else if (request->status < 400) ++media_success;
            else ++media_failure;
            respond(request->args, request->response_body, request->response_length,
                request->status, request->response_headers);
        }
        release_request(request);
        return 0;
    }
    case WM_CLOSE:
        closing = TRUE;
        KillTimer(hwnd, 1);
        if (controller) ICoreWebView2Controller_Close(controller);
        DestroyWindow(hwnd);
        return 0;
    case WM_DESTROY: PostQuitMessage(0); return 0;
    }
    return DefWindowProcW(hwnd, message, wparam, lparam);
}

int WINAPI wWinMain(HINSTANCE executable, HINSTANCE previous, PWSTR command_line, int show) {
    instance = executable;
    SetDefaultDllDirectories(LOAD_LIBRARY_SEARCH_SYSTEM32 | LOAD_LIBRARY_SEARCH_USER_DIRS);
    int argc = 0;
    wchar_t check_path[PATH_CAP] = {0};
    LPWSTR *argv = CommandLineToArgvW(GetCommandLineW(), &argc);
    for (int i = 1; argv && i < argc; ++i) {
        if (!wcscmp(argv[i], L"--diagnostics") && i + 1 < argc) {
            DWORD count = GetFullPathNameW(argv[++i], ARRAY_COUNT(diagnostic_dir), diagnostic_dir, NULL);
            if (!count || count >= ARRAY_COUNT(diagnostic_dir) - 128) diagnostic_dir[0] = 0;
        } else if (!wcscmp(argv[i], L"--verify-runtime") && i + 1 < argc) {
            DWORD count = GetFullPathNameW(argv[++i], ARRAY_COUNT(check_path), check_path, NULL);
            if (!count || count >= ARRAY_COUNT(check_path)) check_path[0] = 0;
        } else if (!wcscmp(argv[i], L"--smoke-test")) smoke = TRUE;
    }
    if (argv) LocalFree(argv);
    if (check_path[0]) {
        wchar_t path[PATH_CAP];
        BOOL verified = loader_path(path) && verify_loader(path);
        write_json(check_path, verified ? L"{\"verified\":true}" : L"{\"verified\":false}");
        return verified ? 0 : 2;
    }
    if (diagnostic_dir[0]) SHCreateDirectoryExW(NULL, diagnostic_dir, NULL);
    HRSRC resource = FindResourceW(executable, MAKEINTRESOURCEW(101), RT_RCDATA);
    if (!resource) return 1;
    asset_size = SizeofResource(executable, resource);
    asset_data = LockResource(LoadResource(executable, resource));
    if (!asset_data || FAILED(CoInitializeEx(NULL, COINIT_APARTMENTTHREADED))) return 1;
    WSADATA sockets;
    if (WSAStartup(MAKEWORD(2, 2), &sockets)) return 1;
    http_session = WinHttpOpen(L"JianpianWindows/0.2.2", WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY,
        WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    if (!http_session) return 1;
    WinHttpSetTimeouts(http_session, 6000, 6000, 10000, 15000);
    worker_pool = CreateThreadpool(NULL);
    if (!worker_pool) return 1;
    SetThreadpoolThreadMaximum(worker_pool, 6);
    InitializeThreadpoolEnvironment(&worker_environment);
    SetThreadpoolCallbackPool(&worker_environment, worker_pool);
    background = CreateSolidBrush(RGB(25,28,34));
    WNDCLASSW type = {0};
    type.lpfnWndProc = window_proc;
    type.hInstance = executable;
    type.hIcon = LoadIconW(NULL, IDI_APPLICATION);
    type.hCursor = LoadCursorW(NULL, IDC_ARROW);
    type.hbrBackground = background;
    type.lpszClassName = L"JianpianDesktop.Native";
    RegisterClassW(&type);
    window = CreateWindowExW(0, type.lpszClassName, L"荐片 · Windows",
        WS_OVERLAPPEDWINDOW | WS_CLIPCHILDREN, CW_USEDEFAULT, CW_USEDEFAULT, 1360, 850,
        NULL, NULL, executable, NULL);
    if (!window) return 1;
    BOOL dark = TRUE;
    DwmSetWindowAttribute(window, 20, &dark, sizeof(dark));
    ShowWindow(window, show);
    UpdateWindow(window);
    if (smoke && diagnostic_dir[0]) {
        cache_set_directory(diagnostic_dir);
    } else choose_storage();
    initialize_browser();
    MSG message;
    while (GetMessageW(&message, NULL, 0, 0) > 0) {
        TranslateMessage(&message);
        DispatchMessageW(&message);
    }
    /* All outstanding workers are confined to this process; Windows releases
       their handles when it terminates. No worker touches COM objects. */
    return (int)message.wParam;
}
