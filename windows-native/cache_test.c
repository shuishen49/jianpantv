#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <bcrypt.h>
#include <shlwapi.h>
#include <shlobj.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#define PATH_CAP 4096
#define MAX_MEDIA_BODY (32u*1024u*1024u)
static void *allocate(size_t n) { return HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, n ? n : 1); }
static void deallocate(void *p) { if (p) HeapFree(GetProcessHeap(), 0, p); }
#include "cache.h"
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s\n",__LINE__,#x); return 1; } } while(0)
int wmain(int argc, wchar_t **argv) {
    CHECK(argc == 2);
    wchar_t test_root[PATH_CAP];
    _snwprintf(test_root, PATH_CAP, L"%ls\\cache-unit-%lu-%llu", argv[1], GetCurrentProcessId(), GetTickCount64());
    CHECK(cache_set_directory(test_root));
    wchar_t directory[PATH_CAP], key[65], other[65], path[PATH_CAP];
    cache_snapshot(directory);
    CHECK(cache_key(L"https://example.com/segment.ts?a=1", L"", key));
    CHECK(!wcscmp(key, L"082aac776f894f8cc833afffbbd021b5b7ecde22240db0f26662dc304d0e41a0"));
    CHECK(cache_key(L"https://example.com/segment.ts?a=1", L"bytes=0-99", other));
    CHECK(wcscmp(key, other));
    const unsigned char content[] = "transport stream fixture";
    const wchar_t headers[] = L"Content-Type: video/mp2t\r\nCache-Control: no-store\r\n";
    CHECK(cache_write(directory, key, 200, content, sizeof(content), headers));
    unsigned char *body = NULL; wchar_t *response = NULL; DWORD status = 0, length = 0;
    CHECK(cache_read(directory, key, &status, &body, &length, &response));
    CHECK(status == 200 && length == sizeof(content) && !memcmp(body, content, length));
    CHECK(!wcscmp(response, headers));
    deallocate(body); deallocate(response);
    CHECK(!cache_read(directory, other, &status, &body, &length, &response));
    CHECK(!cache_write(directory, other, 404, content, sizeof(content), headers));
    CHECK(!cache_write(directory, other, 200, (const unsigned char *)"#EXTM3U\nx", 9, headers));
    CHECK(!cache_write(directory, other, 200, content, sizeof(content), L"Content-Type: application/json"));
    CHECK(cache_write(directory, other, 206, content, sizeof(content), L"Content-Range: bytes 0-24/100\r\n"));
    CHECK(cache_read(directory, other, &status, &body, &length, &response) && status == 206);
    deallocate(body); deallocate(response);
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.ts", directory, key);
    HANDLE file = CreateFileW(path, GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
    DWORD written;
    CHECK(file != INVALID_HANDLE_VALUE);
    CHECK(WriteFile(file, "CORRUPT", 7, &written, NULL));
    CloseHandle(file);
    CHECK(!cache_read(directory, key, &status, &body, &length, &response));
    CHECK(cache_write(directory, key, 200, content, sizeof(content), headers));
    file = CreateFileW(path, GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
    CHECK(file != INVALID_HANDLE_VALUE && SetEndOfFile(file));
    CloseHandle(file);
    CHECK(!cache_read(directory, key, &status, &body, &length, &response));
    CHECK(cache_write(directory, key, 200, content, sizeof(content), headers));
    _snwprintf(path, PATH_CAP, L"%ls\\media\\%ls.info", directory, key);
    file = CreateFileW(path, GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL);
    CHECK(file != INVALID_HANDLE_VALUE && SetEndOfFile(file));
    CloseHandle(file);
    CHECK(!cache_read(directory, key, &status, &body, &length, &response));
    CHECK(!cache_set_directory(L"Z:\\invalid-drive-for-jianpian-test\\missing"));
    wchar_t nested[PATH_CAP], resolved[PATH_CAP], retained[PATH_CAP];
    _snwprintf(nested, PATH_CAP, L"%ls\\new-folders-%lu\\nested\\jianpandownload", argv[1], GetCurrentProcessId());
    CHECK(!PathFileExistsW(nested));
    CHECK(cache_set_directory(nested));
    CHECK(PathIsDirectoryW(nested));
    cache_snapshot(resolved);
    CHECK(!wcscmp(resolved, nested));
    _snwprintf(path, PATH_CAP, L"%ls\\media", nested);
    CHECK(PathIsDirectoryW(path));
    CHECK(!cache_set_directory(L"relative\\cache"));
    CHECK(!cache_set_directory(L"D:relative"));
    CHECK(!cache_set_directory(L"D:\\invalid?name"));
    cache_snapshot(retained);
    CHECK(!wcscmp(retained, nested));
    _snwprintf(path, PATH_CAP, L"  %ls  ", nested);
    CHECK(cache_resolve_directory(path, resolved) && !wcscmp(resolved, nested));
    _snwprintf(path, PATH_CAP, L"%ls\\existing-file", nested);
    HANDLE collision = CreateFileW(path, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    CHECK(collision != INVALID_HANDLE_VALUE);
    CloseHandle(collision);
    CHECK(!cache_set_directory(path));
    CHECK(cache_set_directory(test_root));
    CHECK(cache_write(directory, key, 200, content, sizeof(content), headers));
    printf("{\"passed\":%d,\"checksum_and_truncation\":true,\"range_separation\":true}\n", checks);
    return 0;
}
