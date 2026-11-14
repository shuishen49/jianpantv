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

ROOT = Path(__file__).resolve().parents[1]
SOURCE = Path(__file__).resolve().parent
STAGE = ROOT / "work/windows-native-build"
OUT = ROOT / "output/Jianpian-Windows-C-0.2.1"
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
    assets["assets/app-modern.js"] = app.encode()
    html = assets["index.html"].decode()
    html = html.replace("</head>", '<link rel="stylesheet" href="/runtime/desktop.css" />'
                        '<script src="/runtime/desktop.js"></script></head>')
    html = html.replace('<script nomodule src="/runtime/assets/app-legacy.js"></script>', "")
    html = html.replace("<title>荐片 jianpian.com</title>", "<title>荐片 · Windows</title>")
    html = html.replace("script-src 'self' data:", "script-src 'self'")
    assets["index.html"] = html.encode()
    assets["desktop.css"] = (ROOT / "windows-desktop/desktop.css").read_bytes()
    assets["desktop.js"] = (SOURCE / "desktop.js").read_bytes()
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
               str(SOURCE / "main.c"), str(STAGE / "app.res"),
               "-luser32", "-lgdi32", "-lole32", "-lshlwapi", "-lshell32",
               "-lwinhttp", "-lbcrypt", "-lcabinet", "-lws2_32", "-luuid", "-lpsapi", "-ldwmapi",
               "-Wl,--subsystem,windows,--dynamicbase,--nxcompat,--high-entropy-va",
               "-o", str(OUT / "Jianpian.exe")]
    (STAGE / "build-command.json").write_text(json.dumps(command, indent=2))
    subprocess.run(command, env=env, check=True)
    shutil.copyfile(loader, OUT / "WebView2Loader.dll")
    shutil.copyfile(SDK / "LICENSE.txt", OUT / "Microsoft-WebView2-LICENSE.txt")
    evidence = {"version": "0.2.1", "language": "C17", "architecture": "x64",
                "compiler": "Zig 0.14.1 (Clang C compiler)",
                "apk_input_sha256": APK_SHA, "web_bundle_sha256": BUNDLE_SHA,
                "microsoft_sdk_sha256": SDK_SHA, "assets": assets,
                "no_android_runtime": True, "no_original_windows_binary": True,
                "exe_sha256": sha(OUT / "Jianpian.exe"),
                "loader_sha256": loader_sha,
                "files": {p.name: {"bytes": p.stat().st_size, "sha256": sha(p)}
                          for p in OUT.iterdir() if p.is_file()}}
    (STAGE / "build-inventory.json").write_text(json.dumps(evidence, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({"output": str(OUT), "files": evidence["files"]}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
