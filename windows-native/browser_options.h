/* Explicit C implementation of the SDK's environment options. Passing the
   arguments directly also works when the host has environment overrides. */
static HRESULT browser_string(const wchar_t *value, LPWSTR *out) {
    if (!out) return E_POINTER;
    *out = NULL;
    size_t n = (wcslen(value)+1)*sizeof(wchar_t);
    *out = CoTaskMemAlloc(n);
    if (!*out) return E_OUTOFMEMORY;
    memcpy(*out, value, n); return S_OK;
}
static HRESULT STDMETHODCALLTYPE browser_arguments(ICoreWebView2EnvironmentOptions *self, LPWSTR *out) {
    return browser_string(smoke ?
        L"--mute-audio --autoplay-policy=no-user-gesture-required --disk-cache-size=8388608 --media-cache-size=8388608" :
        L"--autoplay-policy=no-user-gesture-required --disk-cache-size=8388608 --media-cache-size=8388608", out);
}
static HRESULT STDMETHODCALLTYPE browser_no_string(ICoreWebView2EnvironmentOptions *self, LPWSTR *out) {
    return browser_string(L"", out);
}
static HRESULT STDMETHODCALLTYPE browser_version(ICoreWebView2EnvironmentOptions *self, LPWSTR *out) {
    /* The target version declared by our pinned Microsoft SDK. */
    return browser_string(L"156.0.4314.35", out);
}
static HRESULT STDMETHODCALLTYPE browser_set_string(ICoreWebView2EnvironmentOptions *self, LPCWSTR value) { return E_NOTIMPL; }
static HRESULT STDMETHODCALLTYPE browser_sso(ICoreWebView2EnvironmentOptions *self, BOOL *out) {
    if (!out) return E_POINTER;
    *out = FALSE; return S_OK;
}
static HRESULT STDMETHODCALLTYPE browser_set_sso(ICoreWebView2EnvironmentOptions *self, BOOL value) { return E_NOTIMPL; }
static const ICoreWebView2EnvironmentOptionsVtbl browser_options_vtable = {
    (void *)callback_query, (void *)callback_addref, (void *)callback_release,
    browser_arguments, browser_set_string, browser_no_string, browser_set_string,
    browser_version, browser_set_string, browser_sso, browser_set_sso
};
static Callback browser_options = { &browser_options_vtable, 1, &IID_ICoreWebView2EnvironmentOptions };
