/* Integration checks against the production native playlist publisher. */
#define wWinMain unused_gui_entry
#include "main.c"
#undef wWinMain
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s\n",__LINE__,#x); return 1; } } while(0)
int wmain(int argc, wchar_t **argv) {
    CHECK(argc == 2 && cache_set_directory(argv[1]));
    wchar_t base[PATH_CAP], key[65], name[80];
    cache_snapshot(base);
    CHECK(cache_key(L"https://example.com/test.ts", L"", key));
    const unsigned char body[] = "test-media-bytes";
    CHECK(cache_write(base, key, 200, body, sizeof(body), L"Content-Type: video/mp2t\r\n"));
    _snwprintf(name, ARRAY_COUNT(name), L"%ls.m3u8", key);
    char hash[65], manifest[1024];
    WideCharToMultiByte(CP_UTF8, 0, key, -1, hash, sizeof(hash), NULL, NULL);
    int length = snprintf(manifest, sizeof(manifest),
        "#EXTM3U\n#EXT-X-TARGETDURATION:1\n#EXTINF:1,\nmedia/%s.ts\n#EXT-X-ENDLIST\n", hash);
    CHECK(save_playlist(base, name, (unsigned char *)manifest, (DWORD)length));
    CHECK(!save_playlist(base, L"..\\outside.m3u8", (unsigned char *)manifest, (DWORD)length));
    const char *remote = "#EXTM3U\n#EXTINF:1,\nhttps://example.com/test.ts\n#EXT-X-ENDLIST\n";
    CHECK(!save_playlist(base, name, (const unsigned char *)remote, (DWORD)strlen(remote)));
    const char *relative = "#EXTM3U\n#EXTINF:1,\n../test.ts\n#EXT-X-ENDLIST\n";
    CHECK(!save_playlist(base, name, (const unsigned char *)relative, (DWORD)strlen(relative)));
    length = snprintf(manifest, sizeof(manifest),
        "#EXTM3U\n#EXT-X-KEY:METHOD=AES-128,URI=\"media/%s.ts\"\n#EXTINF:1,\nmedia/%s.ts\n#EXT-X-ENDLIST\n", hash, hash);
    CHECK(save_playlist(base, name, (unsigned char *)manifest, (DWORD)length));
    char *part = strstr(manifest, "media/");
    part[6] = part[6] == '0' ? '1' : '0';
    CHECK(!save_playlist(base, name, (unsigned char *)manifest, (DWORD)length));
    const char *key_url = "#EXTM3U\n#EXT-X-KEY:METHOD=AES-128,URI=\"https://example.com/key\"\n#EXT-X-ENDLIST\n";
    CHECK(!save_playlist(base, name, (const unsigned char *)key_url, (DWORD)strlen(key_url)));
    CHECK(!save_playlist(base, name, (const unsigned char *)"#EXTM3U\n#EXT-X-ENDLIST\n", 22));
    printf("{\"passed\":%d,\"complete_manifest\":true,\"key_rewrite\":true,"
        "\"missing_fragments_rejected\":true,\"path_traversal_rejected\":true}\n", checks);
    return 0;
}
