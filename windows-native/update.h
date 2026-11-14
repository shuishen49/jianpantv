/* UI integration stays on the host thread. Workers never access WebView COM. */
#define WM_UPDATE_DONE (WM_APP+3)
typedef struct {
    BOOL download, manual, ok;
    DWORD status;
    UpdateRelease release;
    wchar_t nonce[33], stage[PATH_CAP];
} UpdateJob;
static BOOL update_busy, update_restart;
static char update_offered[32];
static wchar_t update_cleanup_nonce[33];
static HANDLE update_ready;
static DWORD WINAPI update_worker(void *parameter) {
    UpdateJob *job=parameter;
    job->ok=job->download ? up_stage(&job->release,job->nonce,job->stage) :
        up_check(&job->release,&job->status);
    if (!PostMessageW(window,WM_UPDATE_DONE,0,(LPARAM)job)) {
        if (job->stage[0]) DeleteFileW(job->stage);
        deallocate(job);
    }
    return 0;
}
static void update_run(UpdateJob *job) {
    update_busy=TRUE;
    EnableWindow(buttons[5],FALSE);
    SetWindowTextW(buttons[5],job->download ? L"下载更新…" : L"检查中…");
    HANDLE thread=CreateThread(NULL,0,update_worker,job,0,NULL);
    if (thread) CloseHandle(thread);
    else {
        update_busy=FALSE;
        EnableWindow(buttons[5],TRUE); SetWindowTextW(buttons[5],L"检查更新");
        if (job->manual || job->download) MessageBoxW(window,L"无法开始更新检查，请稍后重试。",L"荐片更新",MB_OK|MB_ICONWARNING);
        deallocate(job);
    }
}
static void update_check(BOOL manual) {
    if (update_busy || closing || smoke || diagnostic_dir[0]) return;
    UpdateJob *job=allocate(sizeof(*job));
    if (!job) return;
    job->manual=manual;
    update_run(job);
}
static void update_complete(UpdateJob *job) {
    update_busy=FALSE;
    EnableWindow(buttons[5],TRUE); SetWindowTextW(buttons[5],L"检查更新");
    if (closing) { if (job->stage[0]) DeleteFileW(job->stage); deallocate(job); return; }
    if (!job->ok) {
        if (job->manual || job->download)
            MessageBoxW(window,job->download ?
                L"更新下载或校验失败，当前版本仍可使用。请检查网络后重试；若新版更换了运行环境，请完整下载新版便携包。" :
                job->status == 403 || job->status == 429 ?
                L"GitHub 暂时限制了更新检查，请稍后再试。当前版本仍可使用。" :
                L"暂时无法连接 GitHub 检查更新，请检查网络后重试。当前版本仍可使用。",
                L"荐片更新",MB_OK|MB_ICONWARNING);
    } else if (job->download) {
        set_status(L"更新已校验，正在重启…");
        if (up_begin_apply(&job->release,job->nonce)) PostMessageW(window,WM_CLOSE,0,0);
        else MessageBoxW(window,L"无法启动更新，当前程序没有被替换。请确认程序目录可写，或重新解压新版便携包。",
            L"荐片更新",MB_OK|MB_ICONWARNING);
    } else if (!job->release.version[0]) {
        if (job->manual) MessageBoxW(window,L"当前已是可自动更新的最新 Windows 版本（" JP_VERSION_W L"）。",
            L"检查更新",MB_OK|MB_ICONINFORMATION);
    } else if (job->manual || strcmp(update_offered,job->release.version)) {
        strcpy(update_offered,job->release.version);
        wchar_t prompt[768];
        _snwprintf(prompt,ARRAY_COUNT(prompt),L"发现新的 Windows 版本 %hs\n当前版本：" JP_VERSION_W
            L"\n\n是否下载并安装更新？\n\n下载期间可以继续使用，安装时将关闭并重新启动程序，停止当前播放和下载任务。"
            L"\n视频文件、缓存和保存路径会保留。\n\n更新来源：GitHub · shuishen49/jianpantv"
            L"\n下载大小：%.2f MiB",job->release.version,job->release.size/1048576.0);
        if (MessageBoxW(window,prompt,L"发现新版本",MB_YESNO|MB_ICONINFORMATION|MB_DEFBUTTON2) == IDYES) {
            job->download=TRUE; update_run(job); return;
        }
    }
    deallocate(job);
}
static void update_signal_ready(void) {
    if (update_ready) { SetEvent(update_ready); CloseHandle(update_ready); update_ready=NULL; }
}
static void update_cleanup(void) {
    if (!update_cleanup_nonce[0]) return;
    wchar_t target[PATH_CAP],stage[PATH_CAP],helper[PATH_CAP],backup[PATH_CAP];
    DWORD n=GetModuleFileNameW(NULL,target,PATH_CAP);
    if (!n || n >= PATH_CAP || !up_paths(target,update_cleanup_nonce,stage,helper,backup)) return;
    /* The helper deletes the backup after readiness. Only remove its executable
       once it has actually stopped; never remove a rollback copy here. */
    if (DeleteFileW(helper) || GetLastError() == ERROR_FILE_NOT_FOUND) {
        update_cleanup_nonce[0]=0; KillTimer(window,3);
    }
}
