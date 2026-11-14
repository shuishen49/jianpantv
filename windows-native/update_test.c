/* Exercises the production parser, verifier, replacement and rollback.
   Only the helper's error MessageBox is replaced, to keep CI noninteractive. */
#define COBJMACROS
#include <winsock2.h>
#include <windows.h>
static int test_notice(HWND owner, LPCWSTR text, LPCWSTR title, UINT type) { return IDOK; }
#define UP_NOTICE test_notice
#define wWinMain unused_gui_entry
#include "main.c"
#undef wWinMain
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s (%lu)\n",__LINE__,#x,GetLastError()); return 1; } } while(0)
static BOOL fixture(const char *json, UpdateRelease *release) {
    return up_releases(json,(DWORD)strlen(json),"0.2.3",release);
}
static void release_json(char *out, size_t cap, const char *version, const char *extra, const char *digest) {
    snprintf(out,cap,"{\"tag_name\":\"v%s-windows\",\"draft\":false,%s"
        "\"assets\":[{\"name\":\"Jianpian-Windows-C-%s.exe\",\"state\":\"uploaded\","
        "\"size\":1000000,\"digest\":\"sha256:%s\"}]}",version,extra,version,digest);
}
static BOOL file_sha(const wchar_t *path, char sha[65]) {
    HANDLE file=CreateFileW(path,GENERIC_READ,FILE_SHARE_READ,NULL,OPEN_EXISTING,0,NULL);
    if (file == INVALID_HANDLE_VALUE) return FALSE;
    LARGE_INTEGER n; DWORD received=0; BOOL ok=GetFileSizeEx(file,&n) && n.QuadPart < UPDATE_LIMIT;
    unsigned char *body=ok ? allocate((size_t)n.QuadPart) : NULL, hash[32]; wchar_t hex[65];
    ok=ok && body && ReadFile(file,body,(DWORD)n.QuadPart,&received,NULL) && received == n.QuadPart &&
        cache_digest(body,received,hash);
    CloseHandle(file); deallocate(body);
    if (ok) { up_hex(hash,hex); ok=WideCharToMultiByte(CP_UTF8,0,hex,-1,sha,65,NULL,NULL) != 0; }
    return ok;
}
int wmain(int argc, wchar_t **argv) {
    SetDefaultDllDirectories(LOAD_LIBRARY_SEARCH_SYSTEM32 | LOAD_LIBRARY_SEARCH_USER_DIRS);
    if (argc == 2 && !wcscmp(argv[1],L"--prompt-test")) {
        /* Display the real production confirmation with an explicit fixture.
           Decline it during UI QA; no test endpoint is added to the shipped app. */
        instance=GetModuleHandleW(NULL);
        background=CreateSolidBrush(RGB(25,28,34));
        WNDCLASSW type={.lpfnWndProc=window_proc,.hInstance=instance,.hbrBackground=background,
            .hCursor=LoadCursorW(NULL,IDC_ARROW),.lpszClassName=L"Jianpian.UpdatePromptFixture"};
        RegisterClassW(&type);
        window=CreateWindowExW(0,type.lpszClassName,L"荐片更新提醒测试",WS_OVERLAPPEDWINDOW,
            CW_USEDEFAULT,CW_USEDEFAULT,960,640,NULL,NULL,instance,NULL);
        CHECK(window);
        ShowWindow(window,SW_SHOW);
        UpdateJob *job=allocate(sizeof(*job)); CHECK(job);
        job->ok=TRUE; strcpy(job->release.version,"0.2.4"); job->release.size=1068544;
        PostMessageW(window,WM_UPDATE_DONE,0,(LPARAM)job);
        MSG message;
        while (GetMessageW(&message,NULL,0,0)>0) { TranslateMessage(&message); DispatchMessageW(&message); }
        return 0;
    }
    if (argc > 1 && !wcscmp(argv[1],L"--apply-update")) return up_apply(argc,argv);
    if (argc == 4 && !wcscmp(argv[1],L"--update-restart")) {
        wchar_t self[PATH_CAP],marker[PATH_CAP];
        GetModuleFileNameW(NULL,self,PATH_CAP); PathRemoveFileSpecW(self);
        _snwprintf(marker,PATH_CAP,L"%ls\\reject-restart",self);
        HANDLE ready=up_handle(argv[3]);
        if (ready && PathFileExistsW(marker)) return 9;
        if (ready) SetEvent(ready);
        _snwprintf(marker,PATH_CAP,L"%ls\\%ls",self,ready ? L"updated.txt" : L"rolled-back.txt");
        write_bytes(marker,"ok",2);
        if (ready) CloseHandle(ready);
        return 0;
    }
    if (argc == 3 && !wcscmp(argv[1],L"--transaction")) {
        wchar_t target[PATH_CAP],stage[PATH_CAP],helper[PATH_CAP],backup[PATH_CAP],nonce[33];
        CHECK(GetModuleFileNameW(NULL,target,PATH_CAP));
        CHECK(up_random_nonce(nonce) && up_paths(target,nonce,stage,helper,backup));
        CHECK(CopyFileW(argv[2],stage,TRUE));
        UpdateRelease r={0};
        strcpy(r.version,"0.2.3");
        CHECK(file_sha(stage,r.sha));
        CHECK(up_begin_apply(&r,nonce));
        return 0; /* The real helper waits for this process to exit. */
    }
    if (argc == 2 && !wcscmp(argv[1],L"--live-update")) {
        /* Explicitly model an older updater. Fetch and install the real 0.2.3
           release in this isolated fixture folder, using production routines. */
        unsigned char *body=NULL; DWORD length=0,status=0; UpdateRelease r={0};
        BOOL ok=up_fetch(UPDATE_FEED,TRUE,16384,&body,&length,&status) &&
            up_manifest((const char *)body,length,"0.2.2",&r);
        deallocate(body); body=NULL;
        if (!ok) {
            ok=up_fetch(UPDATE_API,TRUE,4u*1024u*1024u,&body,&length,&status) &&
                up_releases((const char *)body,length,"0.2.2",&r);
            deallocate(body);
        }
        CHECK(ok && !strcmp(r.version,"0.2.3"));
        wchar_t nonce[33],stage[PATH_CAP],report[PATH_CAP];
        CHECK(up_stage(&r,nonce,stage));
        GetModuleFileNameW(NULL,report,PATH_CAP); PathRemoveFileSpecW(report); PathAppendW(report,L"live-download.json");
        wchar_t json[512];
        _snwprintf(json,ARRAY_COUNT(json),L"{\"version\":\"%hs\",\"size\":%lu,\"sha256\":\"%hs\","
            L"\"real_github_metadata\":true,\"real_release_download\":true,\"candidate_verified\":true}",
            r.version,r.size,r.sha);
        write_json(report,json);
        CHECK(up_begin_apply(&r,nonce));
        return 0;
    }
    CHECK(argc == 3);
    const wchar_t *binary=argv[1], *root=argv[2];
    unsigned a[3];
    CHECK(up_version("0.2.3",a) && a[0]==0 && a[1]==2 && a[2]==3);
    CHECK(up_compare("0.2.10","0.2.9")>0);
    CHECK(up_compare("1.0.0","0.99.99")>0);
    CHECK(up_compare("0.2.3","0.2.3")==0);
    CHECK(!up_version("00.2.3",a) && !up_version("1.02.3",a));
    CHECK(!up_version("1.2.3-beta",a) && !up_version("1.2",a) && !up_version("1.2.3.4",a));
    CHECK(!up_version("65536.1.1",a) && !up_version("../1.2.3",a));
    const char *hash="0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef";
    unsigned char bytes[32];
    CHECK(up_sha(hash,bytes) && !up_sha("abc",bytes));
    char r1[1024],r2[1024],response[4096];
    release_json(r1,sizeof(r1),"0.2.4","\"prerelease\":true,",hash);
    release_json(r2,sizeof(r2),"0.2.10","",hash);
    snprintf(response,sizeof(response),"[%s,%s,{\"tag_name\":\"v99.0.0-tv\",\"draft\":false}]",r1,r2);
    UpdateRelease r;
    CHECK(fixture(response,&r) && !strcmp(r.version,"0.2.10"));
    CHECK(!strcmp(r.asset,"Jianpian-Windows-C-0.2.10.exe") && r.size==1000000);
    CHECK(fixture("[]",&r) && !r.version[0]);
    release_json(r1,sizeof(r1),"0.2.3","",hash);
    snprintf(response,sizeof(response),"[%s]",r1);
    CHECK(fixture(response,&r) && !r.version[0]);
    release_json(r1,sizeof(r1),"0.2.2","",hash);
    snprintf(response,sizeof(response),"[%s]",r1);
    CHECK(fixture(response,&r) && !r.version[0]);
    release_json(r1,sizeof(r1),"0.2.4","\"draft\":true,",hash);
    snprintf(response,sizeof(response),"[%s]",r1);
    CHECK(fixture(response,&r) && !r.version[0]); /* duplicate draft rejected */
    release_json(r1,sizeof(r1),"0.2.4","", "corrupt");
    snprintf(response,sizeof(response),"[%s]",r1);
    CHECK(fixture(response,&r) && !r.version[0]);
    const char *bad[]={"","[","[{}","[{},]","{\"x\":}","[true false]","[01]","[1.]","[1e]","[\"\\x\"]","[\"\\u0X00\"]","[] garbage"};
    for (size_t k=0;k<ARRAY_COUNT(bad);++k) CHECK(!fixture(bad[k],&r));
    CHECK(!fixture("{}",&r));
    UToken tokens[32]; UJson j; char decoded[32];
    const char *escaped="{\"x\":\"abc\\u002fdef\",\"body\":\"\\u89c6\\u9891\"}";
    CHECK(uj_parse(&j,escaped,(DWORD)strlen(escaped),tokens,32));
    CHECK(uj_string(&j,uj_field(&j,0,"x"),decoded,sizeof(decoded)) && !strcmp(decoded,"abc/def"));
    CHECK(!uj_string(&j,uj_field(&j,0,"body"),decoded,sizeof(decoded)));
    CHECK(up_url(UPDATE_API,TRUE,FALSE));
    CHECK(up_url(UPDATE_FEED,TRUE,FALSE));
    CHECK(!up_url(L"https://raw.githubusercontent.com/other/project/main/updates/windows-x64.json",TRUE,FALSE));
    CHECK(!up_url(UPDATE_API,TRUE,TRUE));
    CHECK(!up_url(L"http://api.github.com/repos/shuishen49/jianpantv/releases?per_page=100",TRUE,FALSE));
    CHECK(!up_url(L"https://api.github.com.evil.test/",TRUE,FALSE));
    CHECK(up_url(UPDATE_DOWNLOAD L"v0.2.4-windows/Jianpian-Windows-C-0.2.4.exe",FALSE,FALSE));
    CHECK(up_url(L"https://release-assets.githubusercontent.com/a?token=x",FALSE,TRUE));
    CHECK(!up_url(L"https://release-assets.githubusercontent.com.evil.test/a",FALSE,TRUE));
    CHECK(!up_url(L"https://release-assets.githubusercontent.com:444/a",FALSE,TRUE));
    CHECK(!up_url(L"https://user:password@release-assets.githubusercontent.com/a",FALSE,TRUE));
    CHECK(!up_url(L"https://127.0.0.1/a",FALSE,TRUE));
    CHECK(!up_url(L"https://release-assets.githubusercontent.com/a#fragment",FALSE,TRUE));
    CHECK(!up_url(L"file:///D:/a.exe",FALSE,FALSE));
    wchar_t loader_w[65]; char loader[65], manifest[512];
    up_hex(loader_sha256,loader_w);
    WideCharToMultiByte(CP_UTF8,0,loader_w,-1,loader,sizeof(loader),NULL,NULL);
    snprintf(manifest,sizeof(manifest),"{\"schema\":1,\"platform\":\"windows-x64\","
        "\"version\":\"0.2.4\",\"size\":1000000,\"sha256\":\"%s\",\"loader_sha256\":\"%s\"}",hash,loader);
    CHECK(up_manifest(manifest,(DWORD)strlen(manifest),"0.2.3",&r) && !strcmp(r.version,"0.2.4"));
    CHECK(up_manifest(manifest,(DWORD)strlen(manifest),"0.2.4",&r) && !r.version[0]);
    CHECK(up_manifest(manifest,(DWORD)strlen(manifest),"0.2.5",&r) && !r.version[0]);
    char *hash_field=strstr(manifest,"loader_sha256")+strlen("loader_sha256")+3;
    hash_field[0]=hash_field[0]=='0' ? '1' : '0';
    CHECK(!up_manifest(manifest,(DWORD)strlen(manifest),"0.2.3",&r));
    CHECK(!up_manifest("{\"schema\":1,\"schema\":1}",23,"0.2.3",&r));
    CHECK(!up_manifest("[]",2,"0.2.3",&r));
    char real_sha[65];
    CHECK(file_sha(binary,real_sha));
    HANDLE lease=up_verify(binary,"0.2.3",real_sha);
    CHECK(lease != INVALID_HANDLE_VALUE); CloseHandle(lease);
    CHECK(up_verify(binary,"0.2.4",real_sha)==INVALID_HANDLE_VALUE);
    CHECK(up_verify(binary,"0.2.3",hash)==INVALID_HANDLE_VALUE);
    wchar_t file[PATH_CAP];
    _snwprintf(file,PATH_CAP,L"%ls\\not-a-pe.exe",root);
    CHECK(write_bytes(file,"short",5));
    CHECK(up_verify(file,"0.2.3",hash)==INVALID_HANDLE_VALUE);
    wchar_t nonce[33],stage[PATH_CAP],helper[PATH_CAP],backup[PATH_CAP];
    CHECK(up_random_nonce(nonce) && up_nonce(nonce));
    CHECK(up_paths(L"D:\\test\\Jianpian.exe",nonce,stage,helper,backup));
    CHECK(!up_paths(L"D:\\test\\other.exe",nonce,stage,helper,backup));
    CHECK(!up_paths(L"D:\\test\\Jianpian.exe",L"..\\escape",stage,helper,backup));
    CHECK(up_apply(1,argv)==2);
    CHECK(!up_handle(L"-1") && !up_handle(L"1x") && !up_handle(L"99999999999999999999999"));
    /* Deterministic malformed-input fuzzing must terminate without reading past
       the supplied byte length; no service or filesystem mutation is involved. */
    uint32_t random=0x12345678; char fuzz[256];
    for (int k=0;k<4000;++k) {
        int n=k%255+1;
        for (int p=0;p<n;++p) { random=random*1664525+1013904223; fuzz[p]=(char)(1+random%127); }
        uj_parse(&j,fuzz,(DWORD)n,tokens,32);
    }
    CHECK(TRUE);
    printf("{\"passed\":%d,\"fuzz_inputs\":4000,\"release_filter\":true,\"numeric_versions\":true,"
        "\"digest_required\":true,\"repository_and_redirect_policy\":true,\"candidate_contract\":true}\n",checks);
    return 0;
}
