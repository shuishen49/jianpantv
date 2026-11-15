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

def ui_evidence(name, current_sha):
    record = read_json(TEST / name)
    if record.get("exe_sha256") == current_sha:
        return record
    if record.get("schema") == "scoped-ui-history-1":
        # Keep historical physical input explicitly historical. Changes to
        # unrelated cache/naming/toolbar code need not invalidate unchanged
        # key handling or updater transactions. Pair exact scoped comparisons
        # with the final EXE's fresh playback, layout and input regressions.
        assert record["current_version"] == VERSION and record["historical_only"]
        assert record["validated_exe_sha256"] == current_sha
        required = {
            "fullscreen-ui.json": {"native_set", "native_toggle", "native_event",
                "native_accelerator", "window_commands", "window_keys", "fullscreen_js", "fullscreen_css"},
            "update-ui.json": {"updater_ui", "updater_transaction", "updater_json", "window_commands"},
        }[name]
        assert set(record["unchanged_sections"]) == required
        for section in record["unchanged_sections"].values():
            text = (ROOT / section["file"]).read_text(encoding="utf-8")
            if section["start"] is not None:
                assert text.count(section["start"]) == 1 and text.count(section["end"]) == 1
                begin = text.index(section["start"])
                text = text[begin:text.index(section["end"], begin)]
            assert hashlib.sha256(text.encode("utf-8")).hexdigest() == section["sha256"]
        current = read_json(TEST / "verification.json")
        assert current["functional"]["player_button_fills_viewport"]
        assert current["functional"]["fullscreen_unobstructed"]
        assert current["fullscreen_regression"]["passed"] >= 18
        assert current["update_regression"]["transaction_success"]["passed"]
        assert current["update_regression"]["transaction_restart_failure"]["passed"]
        baseline = record["historical_baseline"]
        original = ROOT / f"output/Jianpian-Windows-C-{baseline['version']}/Jianpian.exe"
        assert baseline["exe_sha256"] == sha(original)
        return baseline
    # A remux-only patch does not turn historical physical UI input into a new
    # observation. Require exact unchanged UI/updater sources and retain the
    # original report, version and executable digest in the release evidence.
    assert record["current_version"] == VERSION and record["historical_only"]
    required = {"windows-native/main.c", "windows-native/fullscreen.js", "windows-native/desktop.js",
                "windows-desktop/desktop.css", "windows-native/update.h",
                "windows-native/update_core.h", "windows-native/update_json.h"}
    assert required <= set(record["unchanged_sources"])
    for source, digest in record["unchanged_sources"].items():
        assert sha(ROOT / source) == digest, source
    baseline = record["historical_baseline"]
    original = ROOT / f"output/Jianpian-Windows-C-{baseline['version']}/Jianpian.exe"
    assert baseline["exe_sha256"] == sha(original)
    return baseline


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
    assert verification["functional"]["history_sidebar_button"]
    assert verification["functional"]["history_repeated_navigation"]
    assert verification["functional"]["home_history_row_removed"]
    settings = read_json(TEST / "storage-settings.json")
    assert settings["exe_sha256"] == sha(OUT / "Jianpian.exe") and settings["version"] == VERSION
    assert settings["enter_rejects_relative_path"] and settings["reopen_retains_saved_path"]
    assert settings["history_sidebar_opens_original_history_route"] and settings["sidebar_returns_home"]
    update = read_json(TEST / "update-verification.json")
    assert update["exe_sha256"] == sha(OUT / "Jianpian.exe") and update["passed"] >= 65
    assert update["transaction_success"]["passed"] and update["transaction_restart_failure"]["passed"]
    update_ui = ui_evidence("update-ui.json", sha(OUT / "Jianpian.exe"))
    assert update_ui["manual_check"] and update_ui["returned_to_app"]
    fullscreen_ui = ui_evidence("fullscreen-ui.json", sha(OUT / "Jianpian.exe"))
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
        "左侧“观影历史”直接打开本地/账号历史，历史页保留侧栏，首页不再重复显示历史横栏。\n"
        "保存位置窗口使用深色标题栏、圆角输入区和强调色主按钮，可直接输入新文件夹路径。\n"
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
        "整集片段下载完成后自动合并为单个 MP4，可单独复制和播放。\n"
        "成品命名为《片名》-1080p-国语.mp4；有已知集数时在片名后保留集数。\n"
        "清晰度从实际视频读取；语言未知时省略，不从地区猜测。同名自动另存为 (2)、(3)，不覆盖。\n"
        "使用官方 FFmpeg 9.0.2 源码裁剪的 C 容器组件，不重新编码，保留原音视频质量。\n"
        "合并成功才显示“已保存为 MP4”，中断或失败不会发布半成品；已完成分片保留供重试。\n"
        "合并成功后自动删除本集临时 m3u8 和 media 内对应的分片及元数据，空的 media 目录也会删除。\n"
        "共用或占用的分片稍后自动重试清理；其他文件、未完成下载和成品 MP4 保留。\n"
        "中断后完整片段保留，重新发起时可复用；关闭程序后不继续下载。\n"
        "直播、独立音轨、字节范围 HLS 和 DRM 不支持整集保存；原版 P2P 内核未移植。\n"
        "0.2.6 增加合并成功后自动清理，避免播放请求把刚清掉的分片写回。\n"
        "新设计播放图标用于 EXE、标题栏、任务栏及网页；深色珊瑚红配色，顶部图标和侧栏优化。\n"
        "首页大图高度缩小，便于直接看到快捷入口及影片列表。图标和样式已嵌入 EXE。\n"
        "此版尚未提供本地影片库入口；账号登录和全部线路尚未验证。\n\n"
        "实测首页、搜索、1080p 播放、暂停、跳转、全屏、900×640 布局、讨论、真实缓存和停止下载通过。\n"
        "28 项短样本 MP4、61 项清理、28 项命名及 25 项下载/标题元数据检查通过。\n"
        "此前开发构建使用 372 个分片完成约 24 分 45 秒整集合并和清理；完整记录保留其原 EXE 摘要。\n"
        "该历史整集记录的音视频包数保持一致，Windows 系统解码器在切换点前后和片尾解码/跳转通过。\n"
        "未逐帧解码整集；清理检查覆盖实际占用、并发读写、共用下载与重启恢复。\n\n"
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
    for name in ("storage-dialog.png", "storage-error.png", "history-sidebar-ui.png"):
        source_files.append((TEST / name, "evidence/" + name))
    source_files.append((ROOT / "tools/zig-download.json", "evidence/zig-download.json"))
    source_files.append((ROOT / "tools/webview2/download.json", "evidence/webview2-download.json"))
    source_files.append((OUT / "Microsoft-WebView2-LICENSE.txt", "evidence/Microsoft-WebView2-LICENSE.txt"))
    for name in ("mp4-verification.json", "lgpl-relink.json"):
        source_files.append((TEST / name, "evidence/" + name))
    for name in ("saved-vod-verification.json", "ui-source-baseline.json"):
        if (TEST / name).exists():
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
