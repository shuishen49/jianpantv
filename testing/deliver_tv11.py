"""Package the tested fullscreen controls repair without private app data."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import zipfile

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / "output"
EVIDENCE = ROOT / "testing/security-tv11"
APK = OUTPUT / "jianpian-mobile-tv-5.0.78-tv.11.apk"


def load(path):
    return json.loads(path.read_text("utf-8-sig"))


def sha(data):
    return hashlib.sha256(data).hexdigest()


digest = sha(APK.read_bytes())
static = load(EVIDENCE / "final-artifact-verification.json")
installed = load(EVIDENCE / "installed-verification.json")
functional = load(EVIDENCE / "functional-tests.json")
defender = load(EVIDENCE / "defender-final.json")
assert static["sha256"] == installed["installed_sha256"] == functional["apk_sha256"] == defender["apk_sha256"] == digest
assert all(static["static_checks"].values()) and installed["matches"]
assert defender["exit_code"] == 0 and defender["no_threats_reported"]
for name in (
    "native_video_visible", "timeline_visible", "right_seek", "left_seek",
    "repeated_seek", "paused_seek_preserves_pause", "resume", "hud_auto_hide",
    "hud_up_reveals", "back_exits_fullscreen", "back_stops_playback",
):
    assert functional["tests"][name]["passed"], name
assert functional["same_authenticated_profile_after_upgrade"]
assert functional["same_authenticated_profile_after_cold_start"]
build = load(OUTPUT / "mobile-tv-build.json")
assert build["apk_sha256"] == digest
build["runtime_validation"] = "passed_in_LDPlayer_Android14_ARM32_translation_with_documented_limits"
build["runtime_evidence"] = "testing/security-tv11"
build["security_baseline"] = "tv.10; final tv.11 static checks repeated, baseline dynamic checks not repeated"
(OUTPUT / "mobile-tv-build.json").write_text(json.dumps(build, ensure_ascii=False, indent=2) + "\n", "utf-8")
functional["environment"] = {
    "emulator": "LDPlayer 14.0.29.0", "android": 14, "api": 34,
    "abi": "armeabi-v7a via libhoudini", "screen": "1920x1080",
    "real_tv_tested": False,
}
functional["not_tested"] = [
    "Physical TV and manufacturer-specific remotes", "Multi-hour playback",
    "All source servers", "Fresh password login", "Sound listening",
]
(OUTPUT / "mobile-tv-runtime-tests-tv11.json").write_text(
    json.dumps(functional, ensure_ascii=False, indent=2) + "\n", "utf-8")
runtime_path = OUTPUT / "mobile-tv-runtime-tests.json"
if runtime_path.exists():
    previous = load(runtime_path)
    if previous.get("version") == "5.0.78-tv.10":
        (OUTPUT / "mobile-tv-runtime-tests-tv10.json").write_bytes(runtime_path.read_bytes())
runtime_path.write_text(json.dumps(functional, ensure_ascii=False, indent=2) + "\n", "utf-8")
report = f"""# tv.11 全屏进度与遥控快进修复

日期：2026-11-07。安装 `jianpian-mobile-tv-5.0.78-tv.11.apk`。
独立包名 `local.tv.jianpianmobile`，版本号 5089，桌面名称“荐片·电视新版测试”。
文件大小 {APK.stat().st_size:,} 字节。SHA-256：`{digest}`。
签名证书 SHA-256：`{static['signer_sha256']}`。

## 本次修复

- 全屏底部显示播放器真实回传的当前时间、总时长、进度条和播放状态。
- 左右键快退/快进 10 秒；持续按键可连续定位，长按重复事件会加速。
- 确认键暂停/继续；上下键重新显示进度条。
- 播放时无操作约 5 秒隐藏控制条；暂停或缓冲时保持显示。
- 进度条支持鼠标或触摸拖动；目标位置限制在本视频有效时长内。
- 第一次返回退出全屏到选集页；再次返回到列表并停止播放。

快进通过已有受信任桥的有类型参数传递，调用本应用实际播放器所属的
MediaSession.seekTo；在线播放器采用精确定位，避免 10 秒步长被关键帧吸附抵消。
全屏时将原生视频放在透明网页下方，控制条显示在视频之上；
退出全屏恢复原布局。没有模拟时间或伪造播放状态。网页更新和桥来源限制继续保留。

## 雷电验证

测试使用雷电 Android 14、1920×1080、ARM32 翻译运行。
已对最终安装 APK 核验哈希，实际画面、进度显示、左右定位、连续定位、暂停后定位保持暂停、
继续播放、控制条自动隐藏与唤出、返回退出全屏与停止播放均有证据记录。
具体播放位置和断言见 `testing/security-tv11/functional-tests.json`。
升级和强制停止重开后保留原登录，账号页面只在内存比对，未导出截图、口令、令牌或原始日志。

## 安全修复保持情况

最终 tv.11 重跑静态检查：UMeng 类与原生 spy 库仍移除，无旧式无来源桥，
无共享存储/媒体/相机/电话/广告标识危险权限；内置 bundle 与每个资源哈希正确，
10 个原业务网页模块保持原样；同一签名，v2/v3 与 zipalign 通过。
Microsoft Defender 对本最终 APK 扫描完成，未报告威胁。

tv.10 的 WebView 权限、更新器关闭、拒绝下载/导出等动态安全验证作为既有基线；
本轮未重复空数据多用户测试或安全测试器。详见仍保留的 `tv.10-安全修复与测试报告.md`。
业务安装标识及私有 WebView localStorage 令牌存储仍保留。
扫描与局部审计不构成绝对无病毒保证。

## 限制与重建

实体电视和不同厂商遥控器未测试；全新口令登录、声音听感、多小时与全部线路未全面验证。
本次验证使用雷电，不代表 Android 9 真机结果。
原应用、历史安装包及 tv.10 证据保留。已有同签名测试版可直接覆盖升级；首次安装直接装 tv.11。

源码证据 ZIP 包含补丁、构建脚本、修改后的 smali、脱敏测试记录和 SHA256SUMS.json，
不含原始 APK、私钥、账号数据。重建需要原始输入 APK 和本机工具：

```powershell
python .\\build_mobile_tv.py --java-home 'D:\\harmony-tools\\jdk17\\jdk-17.0.20.1+1' --build-tools '.\\tools\\android-build-tools\\android-16'
```

私钥不打包；换签名后无法直接覆盖现有同包名安装。
"""
report_path = OUTPUT / "tv.11-全屏进度修复与测试报告.md"
report_path.write_text(report, "utf-8")
instructions = f"""当前应安装：jianpian-mobile-tv-5.0.78-tv.11.apk
桌面名称：荐片·电视新版测试
包名：local.tv.jianpianmobile
版本号：5089
SHA-256：{digest}

直接安装 tv.11；无需先安装旧版。已有同签名测试版可以覆盖升级。
全屏：左右键快退/快进10秒，确认键暂停/继续，上下键显示进度条。
返回一次退出全屏，再返回到列表停止播放。底部进度条支持触摸/鼠标拖动。
播放时约5秒隐藏控制条，暂停和缓冲时显示。

保留 tv.10 安全修复，无共享存储/媒体危险权限。正常播放使用本应用私有缓存。
最终包已在雷电验证；实体电视未测试。详见 tv.11-全屏进度修复与测试报告.md。
旧 APK 保留溯源；unsigned/aligned/probe 文件不是用户安装文件。
"""
for name in ("交付文件说明.txt", "电视新版适配说明.txt"):
    (OUTPUT / name).write_text(instructions, "utf-8")

members = {}
for name in ("build_mobile_tv.py", "security_patch_tv.py", "generate_tv_pinyin.py"):
    members[name] = (ROOT / name).read_bytes()
for path in (ROOT / "tv-adapter").iterdir():
    if path.is_file() and path.suffix in (".smali", ".js", ".css", ".txt"):
        members["tv-adapter/" + path.name] = path.read_bytes()
for name in ("verify_tv10_security.py", "deliver_tv11.py"):
    members["testing/" + name] = (ROOT / "testing" / name).read_bytes()
for path in EVIDENCE.iterdir():
    if path.is_file() and path.suffix in (".json", ".png"):
        members["testing/security-tv11/" + path.name] = path.read_bytes()
for path in (report_path, OUTPUT / "交付文件说明.txt", OUTPUT / "电视新版适配说明.txt",
             OUTPUT / "mobile-tv-build.json", OUTPUT / "mobile-tv-runtime-tests-tv11.json"):
    members["output/" + path.name] = path.read_bytes()
inventory = []
stage = ROOT / "work/mobile-tv11"
pristine = ROOT / "work/mobile-original"
for path in stage.glob("smali*/**/*.smali"):
    relative = path.relative_to(stage)
    original = pristine / relative
    data = path.read_bytes()
    if not original.exists() or original.read_bytes() != data:
        members["patched/" + relative.as_posix()] = data
        inventory.append({"path": relative.as_posix(), "patched_sha256": sha(data),
                          "original_sha256": sha(original.read_bytes()) if original.exists() else None})
members["PATCH-INVENTORY.json"] = json.dumps(inventory, ensure_ascii=False, indent=2).encode("utf-8")
for name, data in members.items():
    assert ".local-signing" not in name and not name.endswith((".p12", ".jks", ".keystore"))
    if name.endswith((".json", ".py", ".js", ".smali", ".txt", ".md", ".css")):
        assert not re.search(rb"(?i)shuishen[0-9]+", data), "Account data in delivery"
        assert not re.search(rb'"(?:accessToken|refreshToken)"\s*:\s*"[^"]{12,}"', data), "Token in delivery"
members["SHA256SUMS.json"] = json.dumps(
    {name: sha(data) for name, data in sorted(members.items())}, indent=2).encode("utf-8")
archive_path = OUTPUT / "jianpian-mobile-tv-5.0.78-tv.11-source-evidence.zip"
with zipfile.ZipFile(archive_path, "w", zipfile.ZIP_DEFLATED) as archive:
    for name, data in sorted(members.items()):
        archive.writestr(name, data)
with zipfile.ZipFile(archive_path) as archive:
    assert archive.testzip() is None
    assert all(sha(archive.read(name)) == expected
               for name, expected in json.loads(archive.read("SHA256SUMS.json")).items())
delivery = {
    "created": datetime.datetime.now().astimezone().isoformat(),
    "apk": str(APK), "apk_sha256": digest,
    "source_evidence_zip": str(archive_path), "zip_sha256": sha(archive_path.read_bytes()),
    "report": str(report_path), "private_signing_key_included": False,
    "credentials_tokens_or_raw_logs_included": False, "real_tv_tested": False,
}
(OUTPUT / "tv11-delivery.json").write_text(json.dumps(delivery, ensure_ascii=False, indent=2) + "\n", "utf-8")
print(json.dumps(delivery, ensure_ascii=False, indent=2))
