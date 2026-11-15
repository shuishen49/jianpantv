"""Build the C desktop client using verified Microsoft headers and a portable compiler."""
from pathlib import Path
import ctypes
from ctypes import wintypes
import hashlib
import io
import json
import shutil
import struct
import subprocess
import zipfile
import os
import re

ROOT = Path(__file__).resolve().parents[1]
SOURCE = Path(__file__).resolve().parent
STAGE = ROOT / "work/windows-native-build"
VERSION = re.search(r'#define JP_VERSION "([^"]+)"', (SOURCE / "version.h").read_text()).group(1)
OUT = ROOT / f"output/Jianpian-Windows-C-{VERSION}"
FFMPEG = ROOT / "tools/ffmpeg-9.0.2"
SDK = ROOT / "tools/webview2"
ZIG = ROOT / "tools/zig-x86_64-windows-0.14.1/zig.exe"
APK = ROOT / "handoff/apks/mobile-5.0.78.apk"
APK_SHA = "f7a524d843c4b077099ff49795ac17a49d187a942139752f466e32cef8db084b"
SDK_SHA = "90778deb1b77e36292828b4b5833c9255c27533f40e0ddd55891ae718944edc4"
BUNDLE_SHA = "67c852a704f6bbb92c7e35c9ec56a97503662cbce67140e31ede733407679ac6"


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def compress(data):
    cabinet = ctypes.WinDLL("cabinet", use_last_error=True)
    cabinet.CreateCompressor.argtypes = [wintypes.DWORD, ctypes.c_void_p,
                                         ctypes.POINTER(ctypes.c_void_p)]
    cabinet.Compress.argtypes = [ctypes.c_void_p, ctypes.c_void_p, ctypes.c_size_t,
                                 ctypes.c_void_p, ctypes.c_size_t,
                                 ctypes.POINTER(ctypes.c_size_t)]
    cabinet.CloseCompressor.argtypes = [ctypes.c_void_p]
    handle = ctypes.c_void_p()
    if not cabinet.CreateCompressor(2, None, ctypes.byref(handle)):
        raise ctypes.WinError(ctypes.get_last_error())
    try:
        size = ctypes.c_size_t()
        cabinet.Compress(handle, data, len(data), None, 0, ctypes.byref(size))
        output = ctypes.create_string_buffer(size.value)
        if not cabinet.Compress(handle, data, len(data), output, size.value, ctypes.byref(size)):
            raise ctypes.WinError(ctypes.get_last_error())
        return output.raw[:size.value]
    finally:
        cabinet.CloseCompressor(handle)


def adapt_fullscreen(app):
    # Replace the shared mobile enter/exit and resize helpers, not just the toast.
    start = app.index("async function k0(e,t={}){")
    end = app.index("function E0(){", start)
    assert app.count("async function k0(e,t={}){") == 1
    assert "请旋转手机观看" in app[start:end] and "async function _0(e){" in app[start:end]
    app = app[:start] + (
        'async function k0(e,t={}){if(!e)return"unsupported";QZ=e;'
        'return window.__jpDesktopFullscreen.enter(e)}'
        'async function _0(e){QZ=null;return window.__jpDesktopFullscreen.exit(e)}'
    ) + app[end:]
    target = 'function p0(e){e&&(QZ=e,n0(!0),a0()?c0(e):f0(e))}'
    assert app.count(target) == 1
    return app.replace(target,
        'function p0(e){e&&window.__jpDesktopFullscreen.refresh(e)}')

def adapt_save_metadata(app):
    target = 'xg("h1",Xie,Ud(ue.value.title),1)'
    assert app.count(target) == 1
    return app.replace(target, 'xg("h1",{...Xie,"data-jp-language":ue.value.language||"",'
        '"data-jp-episode":"movie"===ue.value.kind?"":u.value&&u.value.name||""},'
        'Ud(ue.value.title),9,["data-jp-language","data-jp-episode"])')

def adapt_desktop_navigation(app):
    # Adapt the pinned Vue navigation itself, so routing, selected state,
    # keyboard access and the existing local/account history remain shared.
    replacements = {
        'TB={class:"nav__label"},xB=cm(':
            'TB={class:"nav__label"},jpDesktopHistoryIcon=Rf({name:"DesktopHistoryIcon",'
            'render(){return xg("svg",{class:"jp-icon",viewBox:"0 0 24 24",'
            'fill:"none",stroke:"currentColor","stroke-width":1.8,'
            '"stroke-linecap":"round","stroke-linejoin":"round"},['
            'xg("path",{d:"M3 11a9 9 0 1 1 2.5 7M3 5v6h6M12 7v5l3 2"})])}}),xB=cm(',
        'u=Iv(()=>i.value.map(e=>({...e,name:s[e.page],idle:l[e.page][0],active:l[e.page][1]})))':
            'u=Iv(()=>{const e=i.value.filter(e=>"history"!==e.page).map(e=>'
            '({...e,name:s[e.page],idle:l[e.page][0],active:l[e.page][1]}));'
            'const t=e.findIndex(e=>"profile"===e.page);'
            'e.splice(t<0?e.length:t,0,{id:"desktop.history",page:"history",name:"History",'
            'label:"观影历史",idle:jpDesktopHistoryIcon,active:jpDesktopHistoryIcon});return e})',
        'onClick:t=>function(e){d.switchTab(e.page,function(e){':
            'onClick:t=>function(e){if("history"===e.page)return d.open({name:"History"});'
            'd.switchTab(e.page,function(e){',
        'class:Gd(["nav__item",{"is-active":f.value===e.name}]),onClick:':
            'class:Gd(["nav__item",{"is-active":f.value===e.name}]),'
            '"aria-current":f.value===e.name?"page":void 0,onClick:',
        '_B=["onClick"]': '_B=["onClick","aria-current"]',
        'var Aae=EM;': 'var Aae=new Set([...EM,"History"]);',
        'function o(e){return i[e.block_type]}':
            'function o(e){return"continue_watching"===e.block_type?null:i[e.block_type]}',
    }
    for original, replacement in replacements.items():
        assert app.count(original) == 1, f"Unexpected navigation implementation: {original}"
        app = app.replace(original, replacement)
    return app


def prepare_assets():
    assert sha(APK) == APK_SHA, "Unexpected original APK"
    assert sha(SDK / "microsoft.web.webview2.1.0.4314.35.nupkg") == SDK_SHA
    with zipfile.ZipFile(APK) as apk:
        original = apk.read("assets/web-bundle.zip")
    assert hashlib.sha256(original).hexdigest() == BUNDLE_SHA
    with zipfile.ZipFile(io.BytesIO(original)) as web:
        assets = {n: web.read(n) for n in web.namelist()
                  if not web.getinfo(n).is_dir()
                  and n not in ("bundle-manifest.json", "fs-lab.html", "assets/app-legacy.js")
                  and not n.endswith(".legacy.css")}
    app = assets["assets/app-modern.js"].decode()
    target = '"android-modern".startsWith("android")'
    assert app.count(target) == 5
    app = app.replace(target, "false")
    # The mobile composer is teleported to body and fixed across the entire screen.
    # Keep this one Teleport inline so the desktop discussion pane owns it.
    target = 'Eg(cp,{to:"body"},[e.active?(yg(),_g("form",{key:0,class:"discussion__composer"'
    assert app.count(target) == 1
    app = app.replace(target, target.replace('{to:"body"}', '{to:"body",disabled:!0}'))
    target = "new e({enableWorker:!0,lowLatencyMode:!1,...r})"
    assert app.count(target) == 1
    app = app.replace(target, "window.__jpRegisterHls(new e({enableWorker:!0,lowLatencyMode:!1,"
                      "maxBufferLength:20,maxMaxBufferLength:40,maxBufferSize:2e7,"
                      "backBufferLength:20,frontBufferFlushThreshold:60,...r}))")
    app = adapt_desktop_navigation(adapt_save_metadata(adapt_fullscreen(app)))
    target = 'var KD="/runtime/assets/logo-DkDMvUmZ.png"'
    assert app.count(target) == 1
    app = app.replace(target, 'var KD="/runtime/desktop-icon.png"')
    assets["assets/app-modern.js"] = app.encode()
    html = assets["index.html"].decode()
    html = html.replace("</head>", '<link rel="stylesheet" href="/runtime/desktop.css" />'
                        '<script src="/runtime/desktop-fullscreen.js"></script>'
                        '<script src="/runtime/desktop.js"></script></head>')
    html = html.replace('<script nomodule src="/runtime/assets/app-legacy.js"></script>', "")
    html = html.replace("<title>荐片 jianpian.com</title>", "<title>荐片 · Windows</title>")
    assert html.count('href="./logo.png"') == 2
    html = html.replace('href="./logo.png"', 'href="/runtime/desktop-icon.png"')
    html = html.replace("script-src 'self' data:", "script-src 'self'")
    assets["index.html"] = html.encode()
    assets["desktop.css"] = (ROOT / "windows-desktop/desktop.css").read_bytes()
    assets["desktop.js"] = (SOURCE / "desktop.js").read_bytes()
    assets["desktop-fullscreen.js"] = (SOURCE / "fullscreen.js").read_bytes()
    assets["desktop-icon.png"] = (SOURCE / "assets/app-icon.png").read_bytes()
    del assets["logo.png"], assets["assets/logo-DkDMvUmZ.png"]
    result = bytearray(b"JPW1" + struct.pack("<I", len(assets)))
    inventory = {}
    for name, body in sorted(assets.items()):
        path = ("/runtime/" + name).encode("ascii")
        compressed = compress(body)
        result += struct.pack("<III", len(path), len(body), len(compressed)) + path + compressed
        inventory[name] = {"sha256": hashlib.sha256(body).hexdigest(),
                           "bytes": len(body), "compressed_bytes": len(compressed)}
    (STAGE / "assets.bin").write_bytes(result)
    return inventory


def main():
    STAGE.mkdir(parents=True, exist_ok=True)
    OUT.mkdir(parents=True, exist_ok=True)
    assets = prepare_assets()
    loader = SDK / "runtimes/win-x64/native/WebView2Loader.dll"
    loader_sha = sha(loader)
    (STAGE / "integrity.h").write_text(
        'static const unsigned char loader_sha256[32]={' +
        ",".join("0x" + loader_sha[i:i+2] for i in range(0, 64, 2)) + "};\n")
    resource = '// UTF-8 resources\n#pragma code_page(65001)\n'
    resource += f'1 24 "{(SOURCE / "desktop.manifest").as_posix()}"\n'
    resource += f'101 10 "{(STAGE / "assets.bin").as_posix()}"\n'
    resource += f'102 ICON "{(SOURCE / "assets/app-icon.ico").as_posix()}"\n'
    (STAGE / "update-contract.txt").write_bytes(
        f"JPUPDATE1\n{VERSION}\n{loader_sha}\n".encode("ascii"))
    resource += f'103 10 "{(STAGE / "update-contract.txt").as_posix()}"\n'
    resource += f'#include "{(SOURCE / "storage-dialog.rc").as_posix()}"\n'
    (STAGE / "app.rc").write_text(resource)
    env = os.environ.copy()
    env["ZIG_GLOBAL_CACHE_DIR"] = str(STAGE / "compiler-cache")
    env["ZIG_LOCAL_CACHE_DIR"] = str(STAGE / "compiler-cache-local")
    subprocess.run([str(ZIG), "rc", "/nologo", "/fo", str(STAGE / "app.res"),
                    str(STAGE / "app.rc")], env=env, check=True)
    command = [str(ZIG), "cc", "-target", "x86_64-windows-gnu", "-std=c17",
               "-Os", "-s", "-municode", "-fstack-protector-strong",
               "-Wall", "-Wextra", "-Werror", "-Wno-unknown-pragmas",
               "-Wno-unused-parameter", "-DUNICODE", "-D_UNICODE",
               "-I" + str(SDK / "build/native/include"), "-I" + str(STAGE), "-I" + str(SOURCE / "compat"),
               "-I" + str(FFMPEG), str(SOURCE / "main.c"), str(SOURCE / "remux.c"), str(STAGE / "app.res"),
               *(str(FFMPEG / f"lib{lib}/lib{lib}.a") for lib in ("avformat", "avcodec", "avutil")),
               "-luser32", "-lgdi32", "-lole32", "-lshlwapi", "-lshell32",
               "-lwinhttp", "-lbcrypt", "-lcabinet", "-lws2_32", "-luuid", "-lpsapi", "-ldwmapi",
               "-lm", "-latomic",
               "-Wl,--subsystem,windows,--dynamicbase,--nxcompat,--high-entropy-va,--gc-sections",
               "-o", str(OUT / "Jianpian.exe")]
    (STAGE / "build-command.json").write_text(json.dumps(command, indent=2))
    subprocess.run(command, env=env, check=True)
    shutil.copyfile(loader, OUT / "WebView2Loader.dll")
    shutil.copyfile(SDK / "LICENSE.txt", OUT / "Microsoft-WebView2-LICENSE.txt")
    # Static LGPL linking: retain the application objects and exact link recipe
    # in the source/relink archive so replacement FFmpeg libraries can be used.
    relink = STAGE / "relink"
    relink.mkdir(exist_ok=True)
    options = [value for value in command[:command.index(str(SOURCE / "main.c"))]
               if value not in ("-s", "-municode")]
    for name in ("main", "remux"):
        subprocess.run(options + ["-c", str(SOURCE / (name + ".c")),
                                  "-o", str(relink / (name + ".o"))], env=env, check=True)
    shutil.copyfile(STAGE / "app.res", relink / "app.res")
    shutil.copyfile(FFMPEG / "COPYING.LGPLv2.1", OUT / "FFmpeg-LGPL-2.1.txt")
    evidence = {"version": VERSION, "language": "C17", "architecture": "x64",
                "compiler": "Zig 0.14.1 (Clang C compiler)",
                "apk_input_sha256": APK_SHA, "web_bundle_sha256": BUNDLE_SHA,
                "microsoft_sdk_sha256": SDK_SHA, "assets": assets,
                "no_android_runtime": True, "no_original_windows_binary": True,
                "exe_sha256": sha(OUT / "Jianpian.exe"),
                "loader_sha256": loader_sha,
                "remux": json.loads((STAGE / "remux-build.json").read_text()),
                "files": {p.name: {"bytes": p.stat().st_size, "sha256": sha(p)}
                          for p in OUT.iterdir() if p.is_file()}}
    (STAGE / "build-inventory.json").write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"output": str(OUT), "files": evidence["files"]}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
