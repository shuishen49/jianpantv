#ifndef JP_REMUX_H
#define JP_REMUX_H
#include <windows.h>

#define JP_REMUX_PATH 4096
typedef struct JpRemux {
    wchar_t directory[JP_REMUX_PATH], id[65], filename[192], error[256];
    volatile LONG cancel, phase, progress;
    volatile LONG64 bytes;
    /* phase: 1 merging, 2 published, 3 cancelled, 4 failed. */
} JpRemux;

BOOL jp_remux_name(const wchar_t *title, const wchar_t *id, wchar_t filename[192]);
DWORD WINAPI jp_remux_run(void *context);
#endif
