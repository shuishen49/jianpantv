/* Native, opt-in GitHub updater. Included after the bounded cache/hash helpers.
   Only official release assets from this repository are considered. */
#include "version.h"
#include "update_json.h"
#ifndef UP_NOTICE
#define UP_NOTICE MessageBoxW
#endif
#define UPDATE_LIMIT (32u*1024u*1024u)
#define UPDATE_API L"https://api.github.com/repos/shuishen49/jianpantv/releases?per_page=100"
#define UPDATE_FEED L"https://raw.githubusercontent.com/shuishen49/jianpantv/main/updates/windows-x64.json"
#define UPDATE_DOWNLOAD L"https://github.com/shuishen49/jianpantv/releases/download/"
typedef struct {
    char version[32], tag[48], asset[96], sha[65];
    DWORD size;
} UpdateRelease;
static void up_hex(const unsigned char *hash, wchar_t text[65]);
static BOOL up_version(const char *text, unsigned parts[3]) {
    const char *p = text;
    for (int k = 0; k < 3; ++k) {
        unsigned n = 0, digits = 0;
        while (*p >= '0' && *p <= '9') {
            if (++digits > 5 || (digits > 1 && !n)) return FALSE;
            n = n*10 + (unsigned)(*p++ - '0');
            if (n > 65535) return FALSE;
        }
        if (!digits || (k < 2 ? *p++ != '.' : *p != 0)) return FALSE;
        parts[k] = n;
    }
    return TRUE;
}
static int up_compare(const char *a, const char *b) {
    unsigned aa[3], bb[3];
    if (!up_version(a, aa) || !up_version(b, bb)) return 0;
    for (int k = 0; k < 3; ++k) if (aa[k] != bb[k]) return aa[k] > bb[k] ? 1 : -1;
    return 0;
}
static BOOL up_sha(const char *text, unsigned char bytes[32]) {
    if (strlen(text) != 64) return FALSE;
    for (int k = 0; k < 32; ++k) {
        int a = uj_hex(text[2*k]), b = uj_hex(text[2*k+1]);
        if (a < 0 || b < 0) return FALSE;
        bytes[k] = (unsigned char)(a*16+b);
    }
    return TRUE;
}
static BOOL up_releases(const char *body, DWORD size, const char *current, UpdateRelease *best) {
    UToken *tokens = allocate(65536*sizeof(*tokens));
    UJson json;
    BOOL ok = tokens && uj_parse(&json, body, size, tokens, 65536) && tokens[0].type == '[';
    *best = (UpdateRelease){0};
    if (!ok) { deallocate(tokens); return FALSE; }
    for (int release = 1; release < tokens[0].next; release = tokens[release].next) {
        char tag[48], version[32];
        int tag_index = uj_field(&json, release, "tag_name");
        if (!uj_is(&json, uj_field(&json, release, "draft"), "false") ||
                !uj_string(&json, tag_index, tag, sizeof(tag))) continue;
        size_t n = strlen(tag);
        if (n <= 9 || tag[0] != 'v' || strcmp(tag+n-8, "-windows") || n-9 >= sizeof(version)) continue;
        memcpy(version, tag+1, n-9); version[n-9] = 0;
        unsigned parts[3];
        if (!up_version(version, parts) || up_compare(version, current) <= 0 ||
                (best->version[0] && up_compare(version, best->version) <= 0)) continue;
        int assets = uj_field(&json, release, "assets");
        if (assets < 0 || tokens[assets].type != '[') continue;
        char expected[96];
        snprintf(expected, sizeof(expected), "Jianpian-Windows-C-%s.exe", version);
        UpdateRelease candidate = {0};
        unsigned matches = 0;
        for (int asset = assets+1; asset < tokens[assets].next; asset = tokens[asset].next) {
            char name[96], digest[80];
            if (!uj_string(&json, uj_field(&json, asset, "name"), name, sizeof(name)) ||
                    strcmp(name, expected)) continue;
            ++matches;
            DWORD length;
            unsigned char hash[32];
            if (!uj_is(&json, uj_field(&json, asset, "state"), "\"uploaded\"") ||
                    !uj_uint(&json, uj_field(&json, asset, "size"), UPDATE_LIMIT, &length) ||
                    length < 65536 ||
                    !uj_string(&json, uj_field(&json, asset, "digest"), digest, sizeof(digest)) ||
                    strncmp(digest, "sha256:", 7) || !up_sha(digest+7, hash)) continue;
            strcpy(candidate.version, version);
            strcpy(candidate.tag, tag);
            strcpy(candidate.asset, name);
            strcpy(candidate.sha, digest+7);
            candidate.size = length;
        }
        if (matches == 1 && candidate.size) *best = candidate;
    }
    deallocate(tokens);
    return TRUE;
}
static BOOL up_manifest(const char *body, DWORD size, const char *current, UpdateRelease *release) {
    UToken tokens[128]; UJson j; char version[32], platform[32], sha[65], loader[65], expected_loader[65];
    DWORD schema=0,length=0; unsigned parts[3]; unsigned char digest[32]; wchar_t hex[65];
    *release=(UpdateRelease){0};
    if (!uj_parse(&j,body,size,tokens,ARRAY_COUNT(tokens)) ||
            !uj_uint(&j,uj_field(&j,0,"schema"),1,&schema) || schema != 1 ||
            !uj_string(&j,uj_field(&j,0,"platform"),platform,sizeof(platform)) || strcmp(platform,"windows-x64") ||
            !uj_string(&j,uj_field(&j,0,"version"),version,sizeof(version)) || !up_version(version,parts) ||
            !uj_uint(&j,uj_field(&j,0,"size"),UPDATE_LIMIT,&length) || length<65536 ||
            !uj_string(&j,uj_field(&j,0,"sha256"),sha,sizeof(sha)) || !up_sha(sha,digest) ||
            !uj_string(&j,uj_field(&j,0,"loader_sha256"),loader,sizeof(loader))) return FALSE;
    up_hex(loader_sha256,hex);
    WideCharToMultiByte(CP_UTF8,0,hex,-1,expected_loader,sizeof(expected_loader),NULL,NULL);
    if (strcmp(loader,expected_loader)) return FALSE;
    if (up_compare(version,current)>0) {
        strcpy(release->version,version);
        snprintf(release->tag,sizeof(release->tag),"v%s-windows",version);
        snprintf(release->asset,sizeof(release->asset),"Jianpian-Windows-C-%s.exe",version);
        strcpy(release->sha,sha); release->size=length;
    }
    return TRUE;
}
/* Redirects are explicit and never carry cookies, credentials or authorization.
   GitHub's signed asset CDN URLs are accepted only after the repository URL. */
static BOOL up_url(const wchar_t *url, BOOL api, BOOL redirected) {
    URL_COMPONENTS c = {.dwStructSize=sizeof(c), .dwHostNameLength=(DWORD)-1,
        .dwUserNameLength=(DWORD)-1, .dwPasswordLength=(DWORD)-1,
        .dwUrlPathLength=(DWORD)-1, .dwExtraInfoLength=(DWORD)-1};
    if (wcslen(url) > 8190 || !WinHttpCrackUrl(url, 0, 0, &c) ||
            c.nScheme != INTERNET_SCHEME_HTTPS || c.nPort != 443 ||
            c.dwUserNameLength || c.dwPasswordLength || wcschr(url, L'#')) return FALSE;
    if (api) return !redirected && (!wcscmp(url, UPDATE_API) || !wcscmp(url, UPDATE_FEED));
    if (!redirected) return prefix(url, UPDATE_DOWNLOAD);
    const wchar_t *hosts[] = { L"release-assets.githubusercontent.com", L"objects.githubusercontent.com" };
    for (size_t k = 0; k < ARRAY_COUNT(hosts); ++k)
        if (wcslen(hosts[k]) == c.dwHostNameLength &&
                !_wcsnicmp(c.lpszHostName, hosts[k], c.dwHostNameLength)) return TRUE;
    return FALSE;
}
static BOOL up_fetch(const wchar_t *source, BOOL api, DWORD limit,
        unsigned char **result, DWORD *length, DWORD *http_status) {
    *result = NULL; *length = 0; *http_status = 0;
    BOOL ok = FALSE;
    HINTERNET session = WinHttpOpen(L"JianpianWindowsUpdater/" JP_VERSION_W,
        WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY, WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    if (!session) return FALSE;
    WinHttpSetTimeouts(session, 6000, 6000, 10000, 15000);
    wchar_t url[8192];
    wcscpy(url, source);
    ULONGLONG deadline = GetTickCount64()+120000;
    for (int hop = 0; hop < 6 && GetTickCount64() < deadline; ++hop) {
        if (!up_url(url, api, hop > 0)) break;
        wchar_t host[256], path[8192];
        URL_COMPONENTS c = {.dwStructSize=sizeof(c), .lpszHostName=host, .dwHostNameLength=ARRAY_COUNT(host),
            .lpszUrlPath=path, .dwUrlPathLength=ARRAY_COUNT(path)};
        if (!WinHttpCrackUrl(url, 0, 0, &c)) break;
        HINTERNET connection = WinHttpConnect(session, host, 443, 0);
        HINTERNET request = connection ? WinHttpOpenRequest(connection, L"GET", path, NULL,
            WINHTTP_NO_REFERER, WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_SECURE) : NULL;
        if (!request) { if (connection) WinHttpCloseHandle(connection); break; }
        DWORD redirect = WINHTTP_OPTION_REDIRECT_POLICY_NEVER;
        DWORD disabled = WINHTTP_DISABLE_COOKIES | WINHTTP_DISABLE_AUTHENTICATION;
        BOOL sent = WinHttpSetOption(request, WINHTTP_OPTION_REDIRECT_POLICY, &redirect, sizeof(redirect)) &&
            WinHttpSetOption(request, WINHTTP_OPTION_DISABLE_FEATURE, &disabled, sizeof(disabled)) &&
            WinHttpSendRequest(request, api ?
                L"Accept: application/vnd.github+json\r\nX-GitHub-Api-Version: 2022-11-28\r\n" :
                L"Accept: application/octet-stream\r\n", (DWORD)-1, NULL, 0, 0, 0) &&
            WinHttpReceiveResponse(request, NULL);
        DWORD status = 0, n = sizeof(status);
        if (sent) sent = WinHttpQueryHeaders(request, WINHTTP_QUERY_STATUS_CODE | WINHTTP_QUERY_FLAG_NUMBER,
            NULL, &status, &n, NULL);
        *http_status = status;
        BOOL again = sent && !api && (status == 301 || status == 302 || status == 303 || status == 307 || status == 308);
        if (again) {
            DWORD bytes = sizeof(url);
            again = WinHttpQueryHeaders(request, WINHTTP_QUERY_LOCATION, NULL, url, &bytes, NULL);
        } else if (sent && status == 200) {
            unsigned char *body = allocate((size_t)limit+1);
            DWORD content_length = 0, capacity = sizeof(content_length), used = 0;
            BOOL valid = body != NULL;
            if (WinHttpQueryHeaders(request, WINHTTP_QUERY_CONTENT_LENGTH | WINHTTP_QUERY_FLAG_NUMBER,
                    NULL, &content_length, &capacity, NULL) && content_length > limit) valid = FALSE;
            while (valid) {
                DWORD received = 0, available = limit-used;
                unsigned char extra;
                if (GetTickCount64() >= deadline || !WinHttpReadData(request,
                        available ? body+used : &extra, available > 65536 ? 65536 : available ? available : 1,
                        &received)) { valid = FALSE; break; }
                if (!received) break;
                if (received > available) { valid = FALSE; break; }
                used += received;
            }
            if (valid && used && (!content_length || content_length == used)) {
                body[used] = 0;
                *result = body; *length = used; ok = TRUE;
            } else deallocate(body);
        }
        WinHttpCloseHandle(request); WinHttpCloseHandle(connection);
        if (ok || !again) break;
    }
    WinHttpCloseHandle(session);
    return ok;
}
static BOOL up_check(UpdateRelease *release, DWORD *status) {
    unsigned char *body = NULL; DWORD size = 0;
    BOOL ok=up_fetch(UPDATE_FEED,TRUE,16384,&body,&size,status) &&
        up_manifest((const char *)body,size,JP_VERSION,release);
    deallocate(body); body=NULL;
    if (ok) return TRUE;
    ok = up_fetch(UPDATE_API, TRUE, 4u*1024u*1024u, &body, &size, status) &&
        up_releases((const char *)body, size, JP_VERSION, release);
    deallocate(body);
    return ok;
}
static void up_hex(const unsigned char *hash, wchar_t text[65]) {
    const wchar_t *hex = L"0123456789abcdef";
    for (int k = 0; k < 32; ++k) { text[2*k] = hex[hash[k] >> 4]; text[2*k+1] = hex[hash[k]&15]; }
    text[64] = 0;
}
static BOOL up_metadata(const wchar_t *path, const char *version) {
    /* LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE maps resources without executing code. */
    HMODULE module = LoadLibraryExW(path, NULL, LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE);
    if (!module) return FALSE;
    HRSRC resource = FindResourceW(module, MAKEINTRESOURCEW(103), RT_RCDATA);
    DWORD n = resource ? SizeofResource(module, resource) : 0;
    const void *data = resource ? LockResource(LoadResource(module, resource)) : NULL;
    wchar_t hash_w[65]; char hash[65], expected[160];
    up_hex(loader_sha256, hash_w);
    WideCharToMultiByte(CP_UTF8, 0, hash_w, -1, hash, sizeof(hash), NULL, NULL);
    int count = snprintf(expected, sizeof(expected), "JPUPDATE1\n%s\n%s\n", version, hash);
    BOOL ok = count > 0 && n == (DWORD)count && data && !memcmp(data, expected, n);
    FreeLibrary(module);
    return ok;
}
/* Return a read-only lease. ReplaceFile needs write sharing, so the helper
   closes this immediately before replacement and rechecks the installed file. */
static HANDLE up_verify(const wchar_t *path, const char *version, const char *sha) {
    unsigned char expected[32], actual[32];
    if (!up_sha(sha, expected)) return INVALID_HANDLE_VALUE;
    HANDLE file = CreateFileW(path, GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_DELETE, NULL, OPEN_EXISTING,
        FILE_FLAG_OPEN_REPARSE_POINT | FILE_FLAG_SEQUENTIAL_SCAN, NULL);
    if (file == INVALID_HANDLE_VALUE) return file;
    FILE_ATTRIBUTE_TAG_INFO tag;
    LARGE_INTEGER length;
    BOOL ok = GetFileInformationByHandleEx(file, FileAttributeTagInfo, &tag, sizeof(tag)) &&
        !(tag.FileAttributes & (FILE_ATTRIBUTE_REPARSE_POINT | FILE_ATTRIBUTE_DIRECTORY)) &&
        GetFileSizeEx(file, &length) && length.QuadPart >= 65536 && length.QuadPart <= UPDATE_LIMIT;
    unsigned char *body = ok ? allocate((size_t)length.QuadPart) : NULL;
    DWORD received = 0;
    ok = ok && body && ReadFile(file, body, (DWORD)length.QuadPart, &received, NULL) &&
        received == length.QuadPart && cache_digest(body, received, actual) && !memcmp(actual, expected, 32);
    /* Require an x64 PE executable before considering its resource contract. */
    if (ok) {
        DWORD offset = 0;
        memcpy(&offset, body+0x3c, 4);
        ok = body[0] == 'M' && body[1] == 'Z' && offset <= received-26 &&
            !memcmp(body+offset, "PE\0\0", 4) && body[offset+4] == 0x64 && body[offset+5] == 0x86;
    }
    deallocate(body);
    if (ok) ok = up_metadata(path, version);
    if (!ok) { CloseHandle(file); return INVALID_HANDLE_VALUE; }
    return file;
}
static BOOL up_nonce(const wchar_t *text) {
    if (wcslen(text) != 32) return FALSE;
    for (int k = 0; k < 32; ++k)
        if (!((text[k] >= L'0' && text[k] <= L'9') || (text[k] >= L'a' && text[k] <= L'f'))) return FALSE;
    return TRUE;
}
static BOOL up_paths(const wchar_t *target, const wchar_t *nonce, wchar_t *stage, wchar_t *helper, wchar_t *backup) {
    if (!up_nonce(nonce) || wcslen(target) > PATH_CAP-100 || _wcsicmp(PathFindFileNameW(target), L"Jianpian.exe"))
        return FALSE;
    _snwprintf(stage, PATH_CAP, L"%ls.pending-%ls.exe", target, nonce);
    _snwprintf(helper, PATH_CAP, L"%ls.updater-%ls.exe", target, nonce);
    _snwprintf(backup, PATH_CAP, L"%ls.previous-%ls.exe", target, nonce);
    return TRUE;
}
/* Only these two handles are inherited. No shell, script or administrator
   process is involved in replacement or restart. */
static BOOL up_launch(const wchar_t *exe, wchar_t *command, HANDLE *handles, DWORD count, PROCESS_INFORMATION *process) {
    SIZE_T bytes = 0;
    InitializeProcThreadAttributeList(NULL, 1, 0, &bytes);
    STARTUPINFOEXW start = {0};
    start.StartupInfo.cb = sizeof(start);
    start.lpAttributeList = allocate(bytes);
    BOOL initialized = start.lpAttributeList && InitializeProcThreadAttributeList(start.lpAttributeList, 1, 0, &bytes);
    BOOL ok = initialized && UpdateProcThreadAttribute(start.lpAttributeList, 0,
        PROC_THREAD_ATTRIBUTE_HANDLE_LIST, handles, count*sizeof(HANDLE), NULL, NULL) &&
        CreateProcessW(exe, command, NULL, NULL, TRUE, EXTENDED_STARTUPINFO_PRESENT, NULL, NULL,
            &start.StartupInfo, process);
    if (initialized) DeleteProcThreadAttributeList(start.lpAttributeList);
    deallocate(start.lpAttributeList);
    return ok;
}
static BOOL up_random_nonce(wchar_t nonce[33]) {
    unsigned char random[16];
    if (BCryptGenRandom(NULL, random, sizeof(random), BCRYPT_USE_SYSTEM_PREFERRED_RNG) < 0) return FALSE;
    const wchar_t *hex = L"0123456789abcdef";
    for (int k = 0; k < 16; ++k) { nonce[2*k]=hex[random[k]>>4]; nonce[2*k+1]=hex[random[k]&15]; }
    nonce[32]=0;
    return TRUE;
}
static BOOL up_stage(const UpdateRelease *release, wchar_t nonce[33], wchar_t stage[PATH_CAP]) {
    wchar_t target[PATH_CAP], helper[PATH_CAP], backup[PATH_CAP], url[512];
    DWORD n = GetModuleFileNameW(NULL, target, PATH_CAP);
    if (!n || n >= PATH_CAP || !up_random_nonce(nonce) || !up_paths(target, nonce, stage, helper, backup)) return FALSE;
    _snwprintf(url, ARRAY_COUNT(url), UPDATE_DOWNLOAD L"%hs/%hs", release->tag, release->asset);
    unsigned char *body = NULL, expected[32], actual[32]; DWORD size=0, status=0;
    BOOL ok = up_fetch(url, FALSE, release->size, &body, &size, &status) &&
        size == release->size && up_sha(release->sha, expected) &&
        cache_digest(body, size, actual) && !memcmp(expected, actual, 32);
    HANDLE file = ok ? CreateFileW(stage, GENERIC_WRITE, 0, NULL, CREATE_NEW, FILE_ATTRIBUTE_NORMAL, NULL) :
        INVALID_HANDLE_VALUE;
    DWORD written=0;
    if (file == INVALID_HANDLE_VALUE) ok=FALSE;
    else {
        ok=WriteFile(file, body, size, &written, NULL) && written == size && FlushFileBuffers(file);
        CloseHandle(file);
        if (!ok) DeleteFileW(stage);
    }
    deallocate(body);
    if (ok) {
        HANDLE lease=up_verify(stage, release->version, release->sha);
        ok=lease != INVALID_HANDLE_VALUE;
        if (ok) CloseHandle(lease);
        else DeleteFileW(stage);
    }
    return ok;
}
static BOOL up_begin_apply(const UpdateRelease *release, const wchar_t *nonce) {
    wchar_t target[PATH_CAP], stage[PATH_CAP], helper[PATH_CAP], backup[PATH_CAP], command[PATH_CAP+512];
    DWORD n=GetModuleFileNameW(NULL, target, PATH_CAP);
    if (!n || n >= PATH_CAP || !up_paths(target, nonce, stage, helper, backup)) return FALSE;
    SECURITY_ATTRIBUTES security={.nLength=sizeof(security), .bInheritHandle=TRUE};
    HANDLE ready=CreateEventW(&security, TRUE, FALSE, NULL), parent=NULL;
    BOOL ok=ready && DuplicateHandle(GetCurrentProcess(), GetCurrentProcess(), GetCurrentProcess(), &parent,
        SYNCHRONIZE | PROCESS_QUERY_LIMITED_INFORMATION, TRUE, 0) && CopyFileW(target, helper, TRUE);
    PROCESS_INFORMATION process={0};
    if (ok) {
        _snwprintf(command, ARRAY_COUNT(command), L"\"%ls\" --apply-update %llu %llu %hs %hs", helper,
            (unsigned long long)(uintptr_t)parent, (unsigned long long)(uintptr_t)ready, release->version, release->sha);
        HANDLE inherited[]={parent,ready};
        ok=up_launch(helper, command, inherited, 2, &process);
    }
    if (ok) {
        HANDLE events[]={ready,process.hProcess};
        ok=WaitForMultipleObjects(2, events, FALSE, 10000) == WAIT_OBJECT_0;
        if (!ok) { TerminateProcess(process.hProcess, 3); WaitForSingleObject(process.hProcess, 5000); }
    }
    if (process.hThread) CloseHandle(process.hThread);
    if (process.hProcess) CloseHandle(process.hProcess);
    if (parent) CloseHandle(parent);
    if (ready) CloseHandle(ready);
    if (!ok) { DeleteFileW(helper); DeleteFileW(stage); }
    return ok;
}
static HANDLE up_handle(const wchar_t *text) {
    if (!text[0]) return NULL;
    uintptr_t n=0;
    for (const wchar_t *p=text; *p; ++p) {
        if (*p < L'0' || *p > L'9' || n > (UINTPTR_MAX-9)/10) return NULL;
        n=n*10+(uintptr_t)(*p-L'0');
    }
    return (HANDLE)n;
}
/* The helper derives all paths from its own randomized name. It cannot be
   pointed at an arbitrary target by command-line paths. */
static int up_apply(int argc, wchar_t **argv) {
    if (argc != 6) return 2;
    HANDLE parent=up_handle(argv[2]), ready=up_handle(argv[3]);
    wchar_t self[PATH_CAP], target[PATH_CAP], stage[PATH_CAP], helper[PATH_CAP], backup[PATH_CAP], parent_path[PATH_CAP];
    char version[32], sha[65];
    unsigned parts[3]; unsigned char digest[32];
    if (!parent || !ready || !WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, argv[4], -1,
            version, sizeof(version), NULL, NULL) || !up_version(version, parts) ||
            !WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, argv[5], -1, sha, sizeof(sha), NULL, NULL) ||
            !up_sha(sha, digest)) return 2;
    DWORD n=GetModuleFileNameW(NULL, self, PATH_CAP), parent_length=PATH_CAP;
    if (!n || n >= PATH_CAP || !QueryFullProcessImageNameW(parent, 0, parent_path, &parent_length)) return 2;
    const wchar_t *name=PathFindFileNameW(self), *start=L"Jianpian.exe.updater-";
    if (wcsncmp(name,start,wcslen(start)) || wcslen(name) != wcslen(start)+32+4 ||
            wcscmp(name+wcslen(name)-4,L".exe")) return 2;
    wchar_t nonce[33];
    memcpy(nonce,name+wcslen(start),32*sizeof(wchar_t)); nonce[32]=0;
    wcscpy(target,self); target[name-self]=0; wcscat(target,L"Jianpian.exe");
    if (!up_paths(target,nonce,stage,helper,backup) || _wcsicmp(target,parent_path) || _wcsicmp(helper,self))
        return 2;
    HANDLE lease=up_verify(stage,version,sha);
    if (lease == INVALID_HANDLE_VALUE) return 2;
    if (!SetEvent(ready)) { CloseHandle(lease); return 2; }
    CloseHandle(ready);
    if (WaitForSingleObject(parent,45000) != WAIT_OBJECT_0) { CloseHandle(lease); CloseHandle(parent); return 2; }
    CloseHandle(parent);
    CloseHandle(lease);
    BOOL replaced=FALSE;
    for (int attempt=0; attempt<40; ++attempt) {
        if (ReplaceFileW(target,stage,backup,REPLACEFILE_IGNORE_MERGE_ERRORS,NULL,NULL)) { replaced=TRUE; break; }
        Sleep(100);
    }
    BOOL success=FALSE;
    PROCESS_INFORMATION process={0};
    SECURITY_ATTRIBUTES security={.nLength=sizeof(security),.bInheritHandle=TRUE};
    ready=CreateEventW(&security,TRUE,FALSE,NULL);
    if (replaced && ready) {
        /* Check the installed pathname as well as the still-open candidate. */
        lease=up_verify(target,version,sha);
        if (lease != INVALID_HANDLE_VALUE) {
            wchar_t command[PATH_CAP+256];
            _snwprintf(command,ARRAY_COUNT(command),L"\"%ls\" --update-restart %ls %llu",target,nonce,
                (unsigned long long)(uintptr_t)ready);
            HANDLE inherited[]={ready};
            success=up_launch(target,command,inherited,1,&process);
            CloseHandle(lease);
            if (success) {
                HANDLE events[]={ready,process.hProcess};
                success=WaitForMultipleObjects(2,events,FALSE,45000) == WAIT_OBJECT_0;
                if (!success) { TerminateProcess(process.hProcess,4); WaitForSingleObject(process.hProcess,5000); }
            }
        }
    }
    if (ready) CloseHandle(ready);
    if (process.hThread) CloseHandle(process.hThread);
    if (process.hProcess) CloseHandle(process.hProcess);
    if (success) { DeleteFileW(backup); return 0; }
    /* ReplaceFile failure normally leaves the old EXE in place. If Windows
       moved the old file into the backup before failing, restore it explicitly. */
    if (PathFileExistsW(backup)) {
        if (replaced) {
            if (!ReplaceFileW(target,backup,stage,REPLACEFILE_IGNORE_MERGE_ERRORS,NULL,NULL)) {
                UP_NOTICE(NULL,L"更新启动失败，自动还原也未完成。旧版程序保留在同目录的 .previous 文件中，请重新解压便携包。",
                    L"荐片更新",MB_OK|MB_ICONERROR);
                return 3;
            }
        } else if (!PathFileExistsW(target)) MoveFileExW(backup,target,MOVEFILE_WRITE_THROUGH);
    }
    DeleteFileW(stage);
    UP_NOTICE(NULL,L"更新未完成，已保留或还原原版本。请稍后通过“检查更新”重试。",
        L"荐片更新",MB_OK|MB_ICONWARNING);
    wchar_t command[PATH_CAP+8];
    _snwprintf(command,ARRAY_COUNT(command),L"\"%ls\" --update-restart %ls 0",target,nonce);
    STARTUPINFOW start_info={.cb=sizeof(start_info)};
    if (CreateProcessW(target,command,NULL,NULL,FALSE,0,NULL,NULL,&start_info,&process)) {
        CloseHandle(process.hThread); CloseHandle(process.hProcess);
    }
    return 1;
}
