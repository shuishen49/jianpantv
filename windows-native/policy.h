/* URL checks apply before forwarding any request to a media host. */
#ifndef JP_POLICY_H
#define JP_POLICY_H
#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
#include <winhttp.h>

static BOOL public_ipv4(const unsigned char *b) {
    return b[0] != 0 && b[0] != 10 && b[0] != 127 && b[0] < 224 &&
        !(b[0] == 169 && b[1] == 254) && !(b[0] == 172 && b[1] >= 16 && b[1] <= 31) &&
        !(b[0] == 192 && (b[1] == 168 || (b[1] == 0 && (b[2] == 0 || b[2] == 2)))) &&
        !(b[0] == 198 && (b[1] == 18 || b[1] == 19 || (b[1] == 51 && b[2] == 100))) &&
        !(b[0] == 203 && b[1] == 0 && b[2] == 113) &&
        !(b[0] == 100 && b[1] >= 64 && b[1] <= 127);
}
static BOOL public_sockaddr(const SOCKADDR *address) {
    if (address->sa_family == AF_INET)
        return public_ipv4((const unsigned char *)&((const SOCKADDR_IN *)address)->sin_addr);
    if (address->sa_family != AF_INET6) return FALSE;
    const unsigned char *b = (const unsigned char *)&((const SOCKADDR_IN6 *)address)->sin6_addr;
    static const unsigned char mapped[12] = {0,0,0,0,0,0,0,0,0,0,0xff,0xff};
    if (memcmp(b, mapped, 12) == 0) return public_ipv4(b + 12);
    return (b[0] & 0xe0) == 0x20 &&
        !(b[0] == 0x20 && b[1] == 0x01 &&
          ((b[2] == 0x0d && b[3] == 0xb8) || (b[2] == 0 && b[3] == 0)));
}
static BOOL split_https(const wchar_t *uri, wchar_t *host, size_t host_capacity,
                       const wchar_t **path) {
    URL_COMPONENTS parts = {0};
    parts.dwStructSize = sizeof(parts);
    parts.dwHostNameLength = (DWORD)-1;
    parts.dwUrlPathLength = (DWORD)-1;
    parts.dwUserNameLength = (DWORD)-1;
    parts.dwPasswordLength = (DWORD)-1;
    if (!WinHttpCrackUrl(uri, 0, 0, &parts) || parts.nScheme != INTERNET_SCHEME_HTTPS ||
        parts.nPort != 443 || parts.dwUserNameLength || parts.dwPasswordLength ||
        !parts.dwHostNameLength || parts.dwHostNameLength >= host_capacity) return FALSE;
    memcpy(host, parts.lpszHostName, parts.dwHostNameLength * sizeof(wchar_t));
    host[parts.dwHostNameLength] = 0;
    *path = parts.dwUrlPathLength ? parts.lpszUrlPath : L"/";
    return TRUE;
}
static BOOL public_hostname(const wchar_t *host, BOOL resolve) {
    size_t length = wcslen(host);
    if (!length || length > 253 || host[length-1] == L'.') return FALSE;
    if (_wcsicmp(host, L"localhost") == 0 ||
        (length >= 6 && _wcsicmp(host + length - 6, L".local") == 0) ||
        (length >= 10 && _wcsicmp(host + length - 10, L".localhost") == 0)) return FALSE;
    SOCKADDR_IN v4 = {0};
    v4.sin_family = AF_INET;
    if (InetPtonW(AF_INET, host, &v4.sin_addr) == 1)
        return public_sockaddr((const SOCKADDR *)&v4);
    SOCKADDR_IN6 v6 = {0};
    v6.sin6_family = AF_INET6;
    if (InetPtonW(AF_INET6, host, &v6.sin6_addr) == 1)
        return public_sockaddr((const SOCKADDR *)&v6);
    if (host[0] == L'[') {
        wchar_t literal[256];
        if (length < 3 || host[length-1] != L']') return FALSE;
        memcpy(literal, host + 1, (length - 2) * sizeof(wchar_t));
        literal[length-2] = 0;
        if (InetPtonW(AF_INET6, literal, &v6.sin6_addr) != 1) return FALSE;
        return public_sockaddr((const SOCKADDR *)&v6);
    }
    if (!wcschr(host, L'.')) return FALSE;
    /* Reject alternate numeric forms rather than allowing the HTTP stack to
       reinterpret an apparently public hostname as a local numeric address. */
    BOOL numeric = TRUE;
    for (const wchar_t *p = host; *p; ++p)
        if (!((*p >= L'0' && *p <= L'9') || *p == L'.' || *p == L'x' ||
              *p == L'X' || (*p >= L'a' && *p <= L'f') || (*p >= L'A' && *p <= L'F')))
            numeric = FALSE;
    if (numeric) return FALSE;
    if (!resolve) return TRUE;
    ADDRINFOW hints = {0}, *addresses = NULL;
    hints.ai_socktype = SOCK_STREAM;
    if (GetAddrInfoW(host, L"443", &hints, &addresses) != 0 || !addresses) return FALSE;
    BOOL safe = TRUE;
    for (ADDRINFOW *item = addresses; item; item = item->ai_next)
        if (!public_sockaddr(item->ai_addr)) { safe = FALSE; break; }
    FreeAddrInfoW(addresses);
    return safe;
}
#endif
