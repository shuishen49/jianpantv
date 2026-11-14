/* Executable boundary tests; no service requests or WebView are needed. */
#include <stdio.h>
#include <string.h>
#include <wchar.h>
#include "policy.h"
typedef struct { const wchar_t *url; BOOL allowed; } Case;
int main(void) {
    static const Case cases[] = {
        { L"https://cdn.example.com/video.m3u8?key=sample", TRUE },
        { L"https://8.8.8.8/video.ts", TRUE },
        { L"https://[2606:4700:4700::1111]/video.ts", TRUE },
        { L"http://cdn.example.com/video.m3u8", FALSE },
        { L"file:///C:/Windows/win.ini", FALSE },
        { L"https://user:password@cdn.example.com/video", FALSE },
        { L"https://cdn.example.com:8443/video", FALSE },
        { L"https://localhost/video", FALSE },
        { L"https://computer.local/video", FALSE },
        { L"https://sub.localhost/video", FALSE },
        { L"https://127.0.0.1/video", FALSE },
        { L"https://127.1/video", FALSE },
        { L"https://2130706433/video", FALSE },
        { L"https://0177.0.0.1/video", FALSE },
        { L"https://0x7f.0.0.1/video", FALSE },
        { L"https://10.1.2.3/video", FALSE },
        { L"https://172.16.0.1/video", FALSE },
        { L"https://192.168.1.1/video", FALSE },
        { L"https://169.254.169.254/latest/meta-data", FALSE },
        { L"https://100.64.0.1/video", FALSE },
        { L"https://192.0.2.1/video", FALSE },
        { L"https://198.18.0.1/video", FALSE },
        { L"https://198.51.100.1/video", FALSE },
        { L"https://203.0.113.1/video", FALSE },
        { L"https://224.0.0.1/video", FALSE },
        { L"https://255.255.255.255/video", FALSE },
        { L"https://[::1]/video", FALSE },
        { L"https://[::ffff:127.0.0.1]/video", FALSE },
        { L"https://[fd00::1]/video", FALSE },
        { L"https://[fe80::1]/video", FALSE },
        { L"https://[2001:db8::1]/video", FALSE },
        { L"https://cdn.example.com./video", FALSE },
    };
    int failed = 0;
    for (size_t i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
        wchar_t host[256];
        const wchar_t *path;
        BOOL allowed = split_https(cases[i].url, host, 256, &path) && public_hostname(host, FALSE);
        if (allowed != cases[i].allowed) {
            fwprintf(stderr, L"Unexpected URL policy result: %ls\n", cases[i].url);
            ++failed;
        }
    }
    printf("{\"cases\":%zu,\"failed\":%d}\n", sizeof(cases) / sizeof(cases[0]), failed);
    return failed ? 1 : 0;
}
