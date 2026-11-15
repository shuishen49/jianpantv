/* Production file/Range stream tests. Creates fixtures only under argv[1]. */
#define WIN32_LEAN_AND_MEAN
#define COBJMACROS
#include <windows.h>
#include <winioctl.h>
#include <bcrypt.h>
#include <shlwapi.h>
#include <shlobj.h>
#include <stdint.h>
#include <stdio.h>
#include <wchar.h>
#define PATH_CAP 4096
static void *allocate(size_t n) { return HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, n ? n : 1); }
static void deallocate(void *p) { if (p) HeapFree(GetProcessHeap(), 0, p); }
static wchar_t *duplicate(const wchar_t *p) {
    size_t n = (wcslen(p)+1)*sizeof(wchar_t); wchar_t *v = allocate(n);
    if (v) memcpy(v, p, n); return v;
}
static BOOL prefix(const wchar_t *p, const wchar_t *s) { return !wcsncmp(p,s,wcslen(s)); }
#include "local_media.h"
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s\n",__LINE__,#x); return 1; } } while(0)
static BOOL range_case(const wchar_t *text, ULONGLONG size, int code, ULONGLONG a, ULONGLONG n) {
    ULONGLONG start, length;
    int actual = local_range(text, size, &start, &length);
    return actual == code && (code == 416 || (start == a && length == n));
}
static DWORD WINAPI clone_reader(void *context) {
    IStream *stream = context;
    for (int i=0;i<1000;++i) {
        LARGE_INTEGER seek = {.QuadPart=2}; char buf[4]; ULONG n;
        if (FAILED(IStream_Seek(stream,seek,STREAM_SEEK_SET,NULL)) ||
            IStream_Read(stream,buf,4,&n) != S_OK || n != 4 || memcmp(buf,"4567",4)) return 1;
    }
    return 0;
}
int wmain(int argc, wchar_t **argv) {
    CHECK(argc == 2);
    wchar_t root[PATH_CAP], path[PATH_CAP];
    _snwprintf(root,PATH_CAP,L"%ls\\local-%lu-%llu",argv[1],GetCurrentProcessId(),GetTickCount64());
    CHECK(SHCreateDirectoryExW(NULL,root,NULL) == ERROR_SUCCESS);
    CHECK(local_extension(L"《影片》-1080p-国语.MP4"));
    CHECK(local_extension(L"video.webm") && local_extension(L"video.MKV"));
    CHECK(!local_extension(L"video.mp4.exe") && !local_extension(L"video.m3u8"));
    CHECK(range_case(NULL,100,200,0,100));
    CHECK(range_case(L"",100,200,0,100));
    CHECK(range_case(L"bytes=0-0",100,206,0,1));
    CHECK(range_case(L"bytes=25-49",100,206,25,25));
    CHECK(range_case(L"bytes=25-",100,206,25,75));
    CHECK(range_case(L"bytes=99-999",100,206,99,1));
    CHECK(range_case(L"bytes=-1",100,206,99,1));
    CHECK(range_case(L"bytes=-999",100,206,0,100));
    CHECK(range_case(L"bytes=4294967296-",8589934592ull,206,4294967296ull,4294967296ull));
    CHECK(range_case(L"bytes=9223372036854775806-",INT64_MAX,206,INT64_MAX-1,1));
    const wchar_t *invalid[] = {L"bytes=100-",L"bytes=2-1",L"bytes=-0",L"bytes=-",
        L"bytes=0-1,3-4",L"bytes=0-1\r\nx:y",L"bytes=0-1x",L"bytes=+0-1",L"bytes= 0-1",
        L"bytes=0--1",L"Bytes=0-1",L"bytes=9223372036854775808-",L"bytes=18446744073709551616-"};
    for (unsigned i=0;i<sizeof(invalid)/sizeof(invalid[0]);++i) CHECK(range_case(invalid[i],100,416,0,0));
    CHECK(range_case(L"bytes=0-",0,416,0,0));
    for (unsigned i=0;i<5000;++i) {
        wchar_t text[64]; ULONGLONG start,length;
        _snwprintf(text,64,L"bytes=%u-%u",i%130,(i*73)%190);
        int code=local_range(text,100,&start,&length);
        CHECK(code == 416 || (code == 206 && start<100 && length && length<=100-start));
    }
    _snwprintf(path,PATH_CAP,L"%ls\\《测试 & 影片》-1080p-国语.mp4",root);
    HANDLE file=CreateFileW(path,GENERIC_WRITE,0,NULL,CREATE_NEW,0,NULL); DWORD n;
    CHECK(file != INVALID_HANDLE_VALUE && WriteFile(file,"0123456789",10,&n,NULL) && n==10);
    CloseHandle(file);
    int index=local_register(path); CHECK(index>=0);
    CHECK(local_register(path)==index && local_count==1);
    CHECK(local_lookup(local_entries[index].id)==index);
    CHECK(local_lookup(L"../../Windows/win.ini")==-1);
    CHECK(local_lookup(L"00000000000000000000000000000000")==-1);
    CHECK(local_register(L"C:\\Windows\\win.ini")==-1);
    CHECK(local_register(L"C:\\missing-video.mp4")==-1);
    CHECK(local_register(L"\\\\.\\PhysicalDrive0.mp4")==-1);
    CHECK(local_register(L"C:\\Windows:secret.mp4")==-1);
    local_current=index; local_visible=TRUE; ++local_revision; CHECK(local_visible && local_revision==1);
    ULONGLONG length;
    file=local_file(path,&length); CHECK(file != INVALID_HANDLE_VALUE && length==10);
    IStream *stream=NULL; CHECK(SUCCEEDED(local_stream_create(file,2,6,&stream)));
    STATSTG stat; CHECK(IStream_Stat(stream,&stat,STATFLAG_NONAME)==S_OK && stat.cbSize.QuadPart==6);
    char buf[20]={0}; ULONG got;
    CHECK(IStream_Read(stream,buf,3,&got)==S_OK && got==3 && !memcmp(buf,"234",3));
    LARGE_INTEGER seek={.QuadPart=-1}; ULARGE_INTEGER pos;
    CHECK(IStream_Seek(stream,seek,STREAM_SEEK_END,&pos)==S_OK && pos.QuadPart==5);
    CHECK(IStream_Read(stream,buf,5,&got)==S_FALSE && got==1 && buf[0]=='7');
    CHECK(IStream_Read(stream,buf,5,&got)==S_FALSE && got==0);
    seek.QuadPart=-7; CHECK(FAILED(IStream_Seek(stream,seek,STREAM_SEEK_END,NULL)));
    seek.QuadPart=INT64_MIN; CHECK(FAILED(IStream_Seek(stream,seek,STREAM_SEEK_CUR,NULL)));
    CHECK(IStream_Write(stream,"x",1,&got)==STG_E_ACCESSDENIED && got==0);
    IStream *clone=NULL; CHECK(IStream_Clone(stream,&clone)==S_OK);
    HANDLE thread=CreateThread(NULL,0,clone_reader,clone,0,NULL); CHECK(thread!=NULL);
    for (int i=0;i<1000;++i) {
        seek.QuadPart=0;
        CHECK(IStream_Seek(stream,seek,STREAM_SEEK_SET,NULL)==S_OK);
        CHECK(IStream_Read(stream,buf,4,&got)==S_OK && got==4 && !memcmp(buf,"2345",4));
    }
    CHECK(WaitForSingleObject(thread,10000)==WAIT_OBJECT_0);
    DWORD exit; CHECK(GetExitCodeThread(thread,&exit) && exit==0); CloseHandle(thread);
    IStream_Release(clone); IStream_Release(stream);
    /* A sparse fixture verifies reads and Seek beyond 4 GiB using a few disk blocks. */
    _snwprintf(path,PATH_CAP,L"%ls\\large.mp4",root);
    file=CreateFileW(path,GENERIC_READ|GENERIC_WRITE,0,NULL,CREATE_NEW,0,NULL);
    CHECK(file!=INVALID_HANDLE_VALUE);
    CHECK(DeviceIoControl(file,FSCTL_SET_SPARSE,NULL,0,NULL,0,&n,NULL));
    seek.QuadPart=4294967296ull+19;
    CHECK(SetFilePointerEx(file,seek,NULL,FILE_BEGIN) && WriteFile(file,"END",3,&n,NULL));
    CloseHandle(file); file=local_file(path,&length); CHECK(length==4294967296ull+22);
    CHECK(SUCCEEDED(local_stream_create(file,4294967296ull+19,3,&stream)));
    CHECK(IStream_Read(stream,buf,20,&got)==S_FALSE && got==3 && !memcmp(buf,"END",3));
    IStream_Release(stream); CHECK(DeleteFileW(path));
    for (unsigned i=0;i<local_count;++i) deallocate(local_entries[i].path);
    printf("{\"passed\":%d,\"range_fuzz_cases\":5000,\"concurrent_clone_reads\":1000,"
        "\"sparse_file_over_4gib\":true,\"registry_limit\":%d}\n",checks,JP_LOCAL_LIMIT);
    return 0;
}
