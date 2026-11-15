"""Package the verified portable client and scan its final files and ZIP."""
from pathlib import Path
import datetime
import hashlib
import json
import subprocess
import zipfile
from build_native import VERSION

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / f"output/Jianpian-Windows-C-{VERSION}"
TEST = ROOT / f"testing/windows-native-{VERSION}"
BUILD = ROOT / "work/windows-native-build"
SCANNER = Path(r"C:\ProgramData\Microsoft\Windows Defender\Platform\CurrentVersion\MpCmdRun.exe")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def scan(target, filename):
    completed = subprocess.run([str(SCANNER), "-Scan", "-ScanType", "3", "-File", str(target),
                                "-DisableRemediation"], capture_output=True, text=True, errors="replace", timeout=60)
    report = {"timestamp": datetime.datetime.now().astimezone().isoformat(), "target": str(target),
              "exit_code": completed.returncode, "stdout": completed.stdout, "stderr": completed.stderr,
              "remediation_disabled": True}
    (TEST / filename).write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    assert completed.returncode == 0 and "no threats" in completed.stdout.lower(), report
    return report


def zip_files(destination, files):
    with zipfile.ZipFile(destination, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
        for path, name in sorted(files, key=lambda item: item[1]):
            info = zipfile.ZipInfo(name, (2026, 11, 15, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            archive.writestr(info, path.read_bytes())
    with zipfile.ZipFile(destination) as archive:
        assert archive.testzip() is None
        for path, name in files:
            assert hashlib.sha256(archive.read(name)).hexdigest() == sha(path)


def main():
    verification = read_json(TEST / "verification.json")
    inventory = read_json(BUILD / "build-inventory.json")
    signature = read_json(TEST / "microsoft-signature.json")
    assert sha(OUT / "Jianpian.exe") == inventory["exe_sha256"]
    assert sha(OUT / "WebView2Loader.dll") == inventory["loader_sha256"]
    assert signature["status"] == "Valid" and "Microsoft Corporation" in signature["signer"]
    assert verification["functional"]["video_decoded_1080p"]
    assert verification["functional"]["player_button_fills_viewport"]
    assert verification["functional"]["fullscreen_unobstructed"]
    update = read_json(TEST / "update-verification.json")
    assert update["exe_sha256"] == sha(OUT / "Jianpian.exe") and update["passed"] >= 65
    assert update["transaction_success"]["passed"] and update["transaction_restart_failure"]["passed"]
    update_ui = read_json(TEST / "update-ui.json")
    assert update_ui["exe_sha256"] == sha(OUT / "Jianpian.exe")
    assert update_ui["manual_check"] and update_ui["returned_to_app"]
    fullscreen_ui = read_json(TEST / "fullscreen-ui.json")
    assert fullscreen_ui["exe_sha256"] == sha(OUT / "Jianpian.exe")
    assert all(fullscreen_ui[name] for name in (
        "player_internal_button", "player_expand_button", "toolbar_button", "f11",
        "escape_exit", "f11_exit", "visible_exit_button", "no_phone_rotation_prompt"))
    assert fullscreen_ui["physical_arrows"]["paused_right_seconds"] == 10
    assert fullscreen_ui["physical_arrows"]["paused_left_seconds"] == 10
    mp4 = read_json(TEST / "mp4-verification.json")
    assert mp4["exe_sha256"] == sha(OUT / "Jianpian.exe") and mp4["all_passed"] and mp4["passed"] >= 14
    assert mp4["checks"]["standalone_os_video_audio_decode_and_seek"]["decoded"]
    assert read_json(TEST / "lgpl-relink.json")["runtime_verified"]
    (OUT / "使用说明.txt").write_text(
        f"荐片 Windows C 桌面版 {VERSION}（非官方移植）\n\n"
        "完整解压后双击 Jianpian.exe。请保留同文件夹的 WebView2Loader.dll。\n"
        "适用 Windows 10/11 x64，需要微软 Edge WebView2 Runtime；本机测试环境已经安装。\n"
        "发布包复用系统运行库，不包含浏览器、Android 运行环境或原 Windows 客户端。\n\n"
        "界面来自安卓版 5.0.78，Windows 宿主使用 C17。支持鼠标、键盘、F11 全屏、Esc 退出全屏。\n"
        "打开影片默认左侧小窗播放，右侧详情和讨论独立滚动，点击“全屏播放”可放大。\n"
        "修复手机横屏提示；播放器全屏、全屏播放按钮、工具栏和 F11 使用同一桌面全屏逻辑。\n"
        "全屏右上角可点击“退出全屏 (Esc)”，或按 Esc / F11 返回小播放器。\n"
        "全屏时左右方向键每次快退/快进 10 秒，暂停状态下也可使用；不会跳出视频范围。\n"
        "启动后会在后台检查 GitHub 的 Windows 更新；工具栏也可点击“检查更新”。\n"
        "发现新版会询问是否更新，默认不更新。确认后下载、校验，并关闭和重新启动程序。\n"
        "安装会停止当前播放和下载，保留视频、缓存及保存路径；失败时保留或还原原版本。\n"
        "0.2.2 及更早版本需要先手动下载本版，之后可使用程序内更新。\n"
        "启动会弹出“视频保存设置”，可直接输入 D:\\jianpandownload 等完整路径。\n"
        "点击“保存设置”后自动创建不存在的文件夹，支持多级目录，并记住路径。\n"
        "工具栏“保存位置”可随时修改；新设置直接使用填写的目录，不额外套文件夹。\n"
        "取消选择时沿用上次目录；首次取消且无历史目录时只在线播放。\n"
        "程序在设置目录内保存播放列表和 media 子目录，播放时自动缓存完整片段，相同地址和范围时复用。\n"
        "升级时默认沿用旧版已有的 JianpianCache 路径，不搬动已有缓存。\n"
        "“缓存整集”可边下边播，支持普通 HLS 点播、AES-128 密钥和初始化片段。\n"
        "整集片段下载完成后自动合并为单个 MP4，文件名包含片名和地址摘要，可单独复制和播放。\n"
        "使用官方 FFmpeg 9.0.2 源码裁剪的 C 容器组件，不重新编码，保留原音视频质量。\n"
        "合并成功才显示“已保存为 MP4”，中断或失败不会发布半成品；已完成分片保留供重试。\n"
        "合并成功后删除该次临时 m3u8。media 内的播放缓存仍保留，会另占空间。\n"
        "中断后完整片段保留，重新发起时可复用；关闭程序后不继续下载。\n"
        "直播、独立音轨、字节范围 HLS 和 DRM 不支持整集保存；原版 P2P 内核未移植。\n"
        "此版尚未提供本地影片库入口；账号登录、全部线路及完整长片的离线播放尚未验证。\n\n"
        "实测首页、搜索、1080p 播放、暂停、跳转、全屏、900×640 布局、讨论、真实缓存和停止下载通过。\n"
        "完整下载控制器和本地播放列表发布使用短测试样本验证，未为测试下载整部长片。\n\n"
        "程序目录实际体积见交付记录。WebView2 用户数据和视频缓存另计，随使用增长。\n"
        "数据目录：%LOCALAPPDATA%\\JianpianDesktop\\NativeWebView2\n"
        "若另一台电脑没有 WebView2，安装该微软运行环境会另占空间。\n\n"
        "检查安全检测.txt 和 SHA256SUMS.txt 可核对本次交付。\n"
        "程序需要联网；内容和线路可用性依赖原服务。\n",
        encoding="utf-8-sig")
    (OUT / "FFmpeg说明.txt").write_text(
        "本程序静态链接 FFmpeg 9.0.2 的 libavformat、libavcodec 和 libavutil，\n"
        "依据 GNU Lesser General Public License 2.1 或后续版本分发。\n"
        "FFmpeg 的版权属于其各文件中标明的原作者。\n"
        "许可证见 FFmpeg-LGPL-2.1.txt。\n\n"
        "同一 Release 的 source-and-checks.zip 包含原版完整 FFmpeg 源码包、\n"
        "官方签名/公钥、精确配置、本程序源码及用于重新链接的对象文件和资源。\n"
        "可使用修改后的 LGPL 库重新链接；不限制为调试此类修改而进行的逆向工程。\n"
        "构建和重新链接步骤见源码包 windows-native/README.md 与 relink/relink.py。\n",
        encoding="utf-8-sig")
    folder_scan = scan(OUT, "defender-final-files.json")
    (OUT / "安全检测.txt").write_text(
        "本次交付的文件检测记录\n\n"
        f"生成时间：{folder_scan['timestamp']}\n"
        "Windows Defender 对最终运行目录的扫描已完成，退出码为 0，报告未检出威胁。\n"
        "压缩包还会单独扫描，完整记录位于随附源码与检测记录包。\n"
        "这描述本次扫描结果，不代表绝对安全保证。\n\n"
        f"Jianpian.exe SHA-256：{sha(OUT / 'Jianpian.exe')}\n"
        "该 EXE 由本项目 C 源码编译，目前没有 Authenticode 签名。\n"
        f"WebView2Loader.dll SHA-256：{sha(OUT / 'WebView2Loader.dll')}\n"
        "该 DLL 的 Microsoft Corporation 数字签名验证有效。\n\n"
        "实测完整 DLL 校验通过；缺失和改动后的 DLL 会被拒绝。\n"
        "32 项媒体地址边界测试通过。更新需用户确认，限定本项目 GitHub HTTPS 地址，验证 SHA-256 和运行环境兼容性。\n"
        "更新通过原生程序替换与启动握手完成；没有开机自启或系统命令执行功能。\n"
        "原 Windows 客户端没有参与构建。没有关闭或绕过杀毒软件。\n",
        encoding="utf-8-sig")
    sums = "".join(f"{sha(p)}  {p.name}\n" for p in sorted(OUT.iterdir())
                   if p.is_file() and p.name != "SHA256SUMS.txt")
    (OUT / "SHA256SUMS.txt").write_text(sums, encoding="utf-8")
    runtime_zip = ROOT / f"output/Jianpian-Windows-C-{VERSION}.zip"
    runtime_files = [(path, OUT.name + "/" + path.name) for path in OUT.iterdir() if path.is_file()]
    zip_files(runtime_zip, runtime_files)
    scan(runtime_zip, "defender-final-zip.json")

    source_files = [(path, str(path.relative_to(ROOT)).replace("\\", "/"))
                    for path in (ROOT / "windows-native").rglob("*")
                    if path.is_file() and "__pycache__" not in path.parts]
    source_files.append((ROOT / "windows-desktop/desktop.css", "windows-desktop/desktop.css"))
    for name in ("verification.json", "microsoft-signature.json", "defender-final-files.json",
                 "defender-final-zip.json", "profile-disk.json", "folder-dialog.json",
                 "storage-settings.json", "fullscreen-ui.json", "update-verification.json", "update-ui.json"):
        source_files.append((TEST / name, "evidence/" + name))
    source_files.append((BUILD / "build-inventory.json", "evidence/build-inventory.json"))
    source_files.append((ROOT / "tools/zig-download.json", "evidence/zig-download.json"))
    source_files.append((ROOT / "tools/webview2/download.json", "evidence/webview2-download.json"))
    source_files.append((OUT / "Microsoft-WebView2-LICENSE.txt", "evidence/Microsoft-WebView2-LICENSE.txt"))
    for name in ("mp4-verification.json", "lgpl-relink.json"):
        source_files.append((TEST / name, "evidence/" + name))
    source_files.append((BUILD / "remux-build.json", "evidence/remux-build.json"))
    for name in ("ffmpeg-9.0.2.tar.xz", "ffmpeg-9.0.2.tar.xz.asc", "ffmpeg-devel.asc"):
        source_files.append((ROOT / "tools" / name, "third-party/" + name))
    for name in ("main.o", "remux.o", "app.res"):
        source_files.append((BUILD / "relink" / name, "relink/" + name))
    for lib in ("avformat", "avcodec", "avutil"):
        source_files.append((ROOT / f"tools/ffmpeg-9.0.2/lib{lib}/lib{lib}.a", f"relink/lib{lib}.a"))
    source_files.append((ROOT / "windows-native/relink.py", "relink/relink.py"))
    source_zip = ROOT / f"output/Jianpian-Windows-C-{VERSION}-source-and-checks.zip"
    zip_files(source_zip, source_files)
    report = {
        "created_at": datetime.datetime.now().astimezone().isoformat(),
        "runtime_directory": str(OUT),
        "runtime_bytes": sum(path.stat().st_size for path, _ in runtime_files),
        "files": {path.name: {"bytes": path.stat().st_size, "sha256": sha(path)} for path, _ in runtime_files},
        "runtime_zip": {"path": str(runtime_zip), "bytes": runtime_zip.stat().st_size, "sha256": sha(runtime_zip)},
        "source_zip": {"path": str(source_zip), "bytes": source_zip.stat().st_size, "sha256": sha(source_zip)},
    }
    (TEST / "delivery.json").write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
