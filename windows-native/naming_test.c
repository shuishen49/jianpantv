/* Bounded Unicode metadata and safe, human-readable Windows basenames. */
#include <windows.h>
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include "remux.h"
static int checks;
#define CHECK(x) do { ++checks; if (!(x)) { fprintf(stderr,"Failed line %d: %s\n",__LINE__,#x); return 1; } } while(0)
int wmain(void) {
    wchar_t name[192], long_title[256];
    jp_remux_name(L"八仙！", L"", 1080, L"国语", name);
    CHECK(!wcscmp(name, L"《八仙！》-1080p-国语.mp4"));
    jp_remux_name(L"八仙！", L"", 720, L"", name);
    CHECK(!wcscmp(name, L"《八仙！》-720p.mp4"));
    jp_remux_name(L"《八仙！》", L"", 0, L"und", name);
    CHECK(!wcscmp(name, L"《八仙！》.mp4"));
    jp_remux_name(L"三体", L"第01集", 1080, L"en-US", name);
    CHECK(!wcscmp(name, L"《三体》-第01集-1080p-英语.mp4"));
    jp_remux_name(L"CON", L"", 2160, L"zh-Hant", name);
    CHECK(!wcscmp(name, L"《CON》-2160p-中文.mp4"));
    jp_remux_name(L"片名", L"", 480, L"zh-yue-Hant", name);
    CHECK(!wcscmp(name, L"《片名》-480p-粤语.mp4"));
    jp_remux_name(L"片名", L"", 1080, L"jpn", name);
    CHECK(!wcscmp(name, L"《片名》-1080p-日语.mp4"));
    jp_remux_name(L"片名", L"", 1080, L"unknown", name);
    CHECK(!wcscmp(name, L"《片名》-1080p.mp4"));
    jp_remux_name(L"片名", L"", 1080, L"N/A", name);
    CHECK(!wcscmp(name, L"《片名》-1080p.mp4"));
    jp_remux_name(L"片名", L"", 1080, L"未知", name);
    CHECK(!wcscmp(name, L"《片名》-1080p.mp4"));
    jp_remux_name(L"../CON:*?\"bad\\title. ", L"第1/2集", 1080, L"国语/粤语", name);
    CHECK(!wcspbrk(name, L"<>:\"/\\|?*"));
    CHECK(wcsstr(name, L"第1_2集") && wcsstr(name, L"国语_粤语"));
    CHECK(name[0] == L'《' && !wcscmp(name+wcslen(name)-4, L".mp4"));
    jp_remux_name(L" . ", L"", 0, L"", name);
    CHECK(!wcscmp(name, L"《影片》.mp4"));
    for (int i = 0; i < 255; ++i) long_title[i] = L'长';
    long_title[79] = 0xd83c; long_title[80] = 0xdfac; long_title[255] = 0;
    jp_remux_name(long_title, long_title, 32768, long_title, name);
    CHECK(wcslen(name) <= 139);
    CHECK(WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, name, -1, NULL, 0, NULL, NULL) > 0);
    jp_remux_name(L"电影\U0001f3ac", L"", 1080, L"国语", name);
    CHECK(wcsstr(name, L"\U0001f3ac") != NULL);
    JpRemux job = {0};
    const unsigned char body[] = "JPMP4/1\n八仙！\n国语\n第01集";
    CHECK(jp_remux_request(body, sizeof(body)-1, &job));
    CHECK(!wcscmp(job.title, L"八仙！") && !wcscmp(job.language, L"国语") && !wcscmp(job.episode, L"第01集"));
    const unsigned char empty[] = "JPMP4/1\n片名\n\n";
    CHECK(jp_remux_request(empty, sizeof(empty)-1, &job) && !job.language[0] && !job.episode[0]);
    static const char *bad[] = {"片名", "JPMP4/2\n片名\n\n", "JPMP4/1\n片名\n",
        "JPMP4/1\n片名\n国语\n第1集\nextra", "JPMP4/1\n片\r名\n\n", "JPMP4/1\n\xff\n\n"};
    for (unsigned i = 0; i < sizeof(bad)/sizeof(*bad); ++i)
        CHECK(!jp_remux_request((const unsigned char *)bad[i], (DWORD)strlen(bad[i]), &job));
    CHECK(!jp_remux_request(body, sizeof(body), &job)); /* Embedded NUL. */
    unsigned char too_long[400];
    memset(too_long, 'x', sizeof(too_long));
    memcpy(too_long, "JPMP4/1\n", 8); too_long[264] = too_long[265] = '\n';
    CHECK(!jp_remux_request(too_long, 266, &job));
    printf("{\"passed\":%d,\"unicode_filenames\":true,\"missing_fields_omitted\":true,"
        "\"language_tags\":true,\"bounded_metadata\":true,\"reserved_titles_safe\":true}\n", checks);
    return 0;
}
