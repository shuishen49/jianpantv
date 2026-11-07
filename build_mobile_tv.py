"""Build an isolated TV test candidate from the supplied mobile APK.

No account, password, token, login response, or certificate-check bypass belongs
in this script. The original app JavaScript stays unchanged. A separate local
navigation module is added, and the bundle's expected hash is maintained.
"""

from pathlib import Path
import argparse
import getpass
import hashlib
import io
import json
import os
import shutil
import subprocess
import xml.etree.ElementTree as ET
import zipfile
from security_patch_tv import apply_security_patches
from fullscreen_patch_tv import apply_fullscreen_patches


ROOT = Path(__file__).resolve().parent
PACKAGE = "local.tv.jianpianmobile"
VERSION_NAME = "5.0.78-tv.12"
VERSION_CODE = 5090
RELEASE_ID = "20261107-local-tv12"
INPUT_SHA256 = "f7a524d843c4b077099ff49795ac17a49d187a942139752f466e32cef8db084b"
ANDROID = "{http://schemas.android.com/apk/res/android}"
ET.register_namespace("android", ANDROID[1:-1])


def run(args, **kwargs):
    subprocess.run([str(arg) for arg in args], check=True, **kwargs)


def main():
    global PACKAGE
    parser = argparse.ArgumentParser()
    parser.add_argument("--java-home", type=Path, required=True)
    parser.add_argument("--build-tools", type=Path, required=True)
    parser.add_argument("--package", default=PACKAGE,
                        help="Use a separate package when the installed signing key is unavailable")
    parser.add_argument("--app-label", default="荐片·电视新版测试")
    args = parser.parse_args()
    if not args.package or any(
        not part.isascii() or not part.isidentifier() for part in args.package.split(".")
    ) or "." not in args.package:
        raise ValueError("Invalid Android package name")
    PACKAGE = args.package
    java = args.java_home / "bin/java.exe"
    keytool = args.java_home / "bin/keytool.exe"
    apktool = ROOT / "tools/apktool_3.0.3.jar"
    apksigner = args.build_tools / "lib/apksigner.jar"
    original = ROOT / "handoff/apks/mobile-5.0.78.apk"
    if hashlib.sha256(original.read_bytes()).hexdigest() != INPUT_SHA256:
        raise RuntimeError("Input APK does not match the supplied sample")

    pristine = ROOT / "work/mobile-original"
    decoded = ROOT / "work/mobile-tv12"
    if not pristine.exists():
        run([java, "-jar", apktool, "d", original, "-o", pristine])
    # Start with a clean disposable stage to avoid stale vendor classes.
    if decoded.exists():
        resolved = decoded.resolve()
        if resolved.parent != (ROOT / "work").resolve() or resolved.name != "mobile-tv12":
            raise RuntimeError("Unexpected staging cleanup target")
        shutil.rmtree(resolved)
    shutil.copytree(pristine, decoded)
    notices = decoded / "assets/licenses"
    notices.mkdir(exist_ok=True)
    shutil.copyfile(
        ROOT / "tv-adapter/pinyin-LICENSE.txt",
        notices / "pypinyin-LICENSE.txt",
    )

    # Small media-control extension. Login, transport, trust and bridge-origin
    # validation are left intact. Controls target this app's own media session.
    shell_path = decoded / "smali/com/jp/runtime/shell/ShellActivity.smali"
    shell = shell_path.read_text("utf-8")
    anchor = (
        ".method private final handleNativeCommand"
        "(Lcom/jp/runtime/web/NativeWebCommand;)V\n    .locals 9\n"
    )
    if shell.count(anchor) != 1:
        raise RuntimeError("Shell command dispatch does not match expected sample")
    shell = shell.replace(
        anchor, anchor + "\n" +
        (ROOT / "tv-adapter/shell-media-dispatch.smali").read_text("utf-8") + "\n", 1)
    back_anchor = ".method private final handleBack()V\n    .locals 3\n"
    if shell.count(back_anchor) != 1:
        raise RuntimeError("Native back handler does not match expected sample")
    shell = shell.replace(
        back_anchor, back_anchor + "\n" +
        (ROOT / "tv-adapter/shell-cinema-back.smali").read_text("utf-8") + "\n", 1)
    shell_path.write_text(shell, encoding="utf-8")
    window_path = decoded / "smali/com/jp/runtime/web/RuntimeWindowKt.smali"
    window_source = window_path.read_text("utf-8")
    window_anchor = (
        ".method public static final applyRuntimeWindowMode"
        "(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V\n"
        "    .locals 5\n"
    )
    if window_source.count(window_anchor) != 1:
        raise RuntimeError("Runtime window configuration does not match expected sample")
    window_source = window_source.replace(
        window_anchor, window_anchor +
        "\n    # Use the original immersive window path for the TV presentation.\n"
        "    sget-object p1, Lcom/jp/runtime/web/RuntimeWindowMode;"
        "->MEDIA_IMMERSIVE:Lcom/jp/runtime/web/RuntimeWindowMode;\n", 1)
    window_path.write_text(window_source, encoding="utf-8")
    bridge_path = decoded / "smali/com/jp/runtime/web/TrustedLocalWebRuntime.smali"
    bridge = bridge_path.read_text("utf-8")
    start = bridge.index("\n    :sswitch_38\n")
    end = bridge.index("\n    :sswitch_39\n", start)
    overlay = bridge[start:end]
    anchor = (
        "    invoke-virtual {v3, v0, v4}, "
        "Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V"
    )
    if overlay.count(anchor) != 1 or '"player.overlay"' not in overlay:
        raise RuntimeError("Trusted overlay parameter parser does not match sample")
    overlay = overlay.replace(
        anchor, anchor + "\n\n" +
        (ROOT / "tv-adapter/bridge-overlay-parameter.smali").read_text("utf-8"), 1)
    bridge_path.write_text(
        bridge[:start] + overlay + bridge[end:] + "\n" +
        (ROOT / "tv-adapter/bridge-seek-parameter.smali").read_text("utf-8") + "\n",
        encoding="utf-8")
    for target, patch in (
        ("EmbeddedFilmPlayerController", "embedded-media-toggle.smali"),
        ("JpFilmPlaybackMediaSession", "session-media-toggle.smali"),
    ):
        path = decoded / ("smali/com/jp/runtime/shell/" + target + ".smali")
        with path.open("a", encoding="utf-8") as stream:
            stream.write("\n" + (ROOT / "tv-adapter" / patch).read_text("utf-8") + "\n")
    player_path = decoded / "smali/com/jp/runtime/shell/EmbeddedFilmPlayerController.smali"
    player_source = player_path.read_text("utf-8")
    player_source = player_source.replace(
        "# instance fields\n", "# instance fields\n.field private localTvCinema:Z\n", 1)
    if ".field private localTvCinema:Z" not in player_source:
        raise RuntimeError("Player field section does not match expected sample")
    for anchor, hook in (
        (".method private final placeHostAboveWebView()V\n    .locals 4\n",
         "    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z\n"
         "    if-eqz v0, :local_tv_original_layer\n"
         "    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placeHostUnderWebView()V\n"
         "    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;\n"
         "    const/16 v1, 0x8\n"
         "    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V\n"
         "    return-void\n"
         "    :local_tv_original_layer\n"),
        (".method private final dispatchWebViewTouchIfNeeded(Landroid/view/MotionEvent;)Z\n    .locals 10\n",
         "    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z\n"
         "    if-eqz v0, :local_tv_original_touch\n"
         "    const/4 v0, 0x0\n"
         "    return v0\n"
         "    :local_tv_original_touch\n"),
    ):
        if player_source.count(anchor) != 1:
            raise RuntimeError("Player overlay hook does not match expected sample")
        player_source = player_source.replace(anchor, anchor + "\n" + hook, 1)
    player_path.write_text(player_source, encoding="utf-8")
    apply_fullscreen_patches(decoded)
    streaming_path = decoded / "smali/com/jp/runtime/shell/StreamingMediaRuntime.smali"
    streaming = streaming_path.read_text("utf-8")
    nearest_sync = (
        "sget-object p0, Lcom/jp/bootstrap/internal/s80;"
        "->jyozshuy:Lcom/jp/bootstrap/internal/s80;"
    )
    if streaming.count(nearest_sync) != 1:
        raise RuntimeError("Player seek precision setting does not match expected sample")
    # EXACT (0, 0) avoids a ten-second step snapping back to the same keyframe.
    streaming = streaming.replace(
        nearest_sync,
        "sget-object p0, Lcom/jp/bootstrap/internal/s80;"
        "->dhjfigsvwc:Lcom/jp/bootstrap/internal/s80;", 1)
    streaming_path.write_text(streaming, encoding="utf-8")

    tree = ET.parse(pristine / "AndroidManifest.xml")
    manifest = tree.getroot()
    manifest.set("package", PACKAGE)
    allowed = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "android.permission.FOREGROUND_SERVICE",
        "android.permission.FOREGROUND_SERVICE_DATA_SYNC",
        "android.permission.FOREGROUND_SERVICE_MEDIA_PLAYBACK",
        PACKAGE + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION",
    }
    for item in list(manifest):
        name = item.get(ANDROID + "name", "")
        if name.startswith("com.jp.app."):
            name = PACKAGE + name[len("com.jp.app"):]
            item.set(ANDROID + "name", name)
        if item.tag == "uses-permission" and name not in allowed:
            manifest.remove(item)
    ET.SubElement(manifest, "uses-permission", {
        ANDROID + "name": "android.permission.MODIFY_AUDIO_SETTINGS"
    })
    for feature in ("android.hardware.touchscreen", "android.software.leanback"):
        ET.SubElement(manifest, "uses-feature", {
            ANDROID + "name": feature,
            ANDROID + "required": "false",
        })

    app = manifest.find("application")
    app.set(ANDROID + "label", args.app_label)
    app.set(ANDROID + "allowBackup", "false")
    app.set(ANDROID + "debuggable", "false")
    app.set(ANDROID + "banner", "@drawable/tv_banner")
    for provider in app.findall("provider"):
        authorities = provider.get(ANDROID + "authorities", "")
        provider.set(ANDROID + "authorities", authorities.replace("com.jp.app", PACKAGE))
    for activity in app.findall("activity"):
        activity.set(ANDROID + "screenOrientation", "landscape")
        for intent in activity.findall("intent-filter"):
            if any(cat.get(ANDROID + "name") == "android.intent.category.LAUNCHER"
                   for cat in intent.findall("category")):
                ET.SubElement(intent, "category", {
                    ANDROID + "name": "android.intent.category.LEANBACK_LAUNCHER"
                })
    ET.indent(tree, space="    ")
    tree.write(decoded / "AndroidManifest.xml", encoding="utf-8", xml_declaration=True)
    styles_tree = ET.parse(pristine / "res/values/styles.xml")
    fullscreen = styles_tree.find("./style[@name='Theme.Jp']/item[@name='android:windowFullscreen']")
    if fullscreen is None:
        raise RuntimeError("Expected window theme was not found")
    fullscreen.text = "true"
    styles_tree.write(decoded / "res/values/styles.xml", encoding="utf-8", xml_declaration=True)

    config = json.loads((pristine / "assets/jp-runtime-settings.json").read_text("utf-8"))
    config["analytics"]["enabled"] = False
    config["analytics"]["app_key"] = ""
    (decoded / "assets/jp-runtime-settings.json").write_text(
        json.dumps(config, separators=(",", ":")), encoding="utf-8")
    (decoded / "res/xml/jp_network_security_config.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<network-security-config>\n'
        '  <base-config cleartextTrafficPermitted="false">\n'
        '    <trust-anchors><certificates src="system" /></trust-anchors>\n'
        '  </base-config>\n'
        '  <domain-config cleartextTrafficPermitted="true">\n'
        '    <domain includeSubdomains="false">127.0.0.1</domain>\n'
        '    <domain includeSubdomains="false">localhost</domain>\n'
        '  </domain-config>\n'
        '</network-security-config>\n', encoding="utf-8")
    (decoded / "res/drawable/tv_banner.xml").write_text(
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<layer-list xmlns:android="http://schemas.android.com/apk/res/android">\n'
        '  <item><shape android:shape="rectangle">'
        '<solid android:color="#15191F"/>'
        '<size android:width="320dp" android:height="180dp"/></shape></item>\n'
        '  <item android:width="96dp" android:height="96dp" '
        'android:gravity="center" android:drawable="@mipmap/ic_launcher"/>\n'
        '</layer-list>\n', encoding="utf-8")
    metadata = (pristine / "apktool.yml").read_text("utf-8")
    metadata = metadata.replace("versionName: 5.0.78", "versionName: " + VERSION_NAME)
    metadata = metadata.replace("versionCode: 5078", "versionCode: " + str(VERSION_CODE))
    (decoded / "apktool.yml").write_text(metadata, encoding="utf-8")

    # Keep all original application modules byte-for-byte. CSP already permits
    # same-origin external scripts/styles, so it does not need to be relaxed.
    bundle_data = io.BytesIO()
    with zipfile.ZipFile(pristine / "assets/web-bundle.zip") as before:
        files = {}
        inventory = json.loads(before.read("bundle-manifest.json"))
        inventory["bundleVersion"] = RELEASE_ID
        for name in before.namelist():
            if name == "bundle-manifest.json" or before.getinfo(name).is_dir():
                continue
            content = before.read(name)
            if name == "index.html":
                content = content.replace(
                    b"</head>",
                    b'<link rel="stylesheet" href="./tv-navigation.css" />\n</head>')
                content = content.replace(
                    b"</body>",
                    b'<script src="./tv-navigation.js" defer></script>\n'
                    b'<script src="./tv-pinyin-data.js" defer></script>\n'
                    b'<script src="./tv-layout.js" defer></script>\n</body>')
            files[name] = content
        for name in ("tv-navigation.js", "tv-navigation.css", "tv-layout.js", "tv-pinyin-data.js"):
            files[name] = (ROOT / "tv-adapter" / name).read_bytes()
        inventory["files"] = [
            {"path": name, "length": len(content),
             "sha256": hashlib.sha256(content).hexdigest()}
            for name, content in sorted(files.items())
        ]
        with zipfile.ZipFile(bundle_data, "w", zipfile.ZIP_DEFLATED) as after:
            for name, content in sorted(files.items()):
                after.writestr(name, content)
            after.writestr("bundle-manifest.json",
                           json.dumps(inventory, separators=(",", ":")).encode("utf-8"))
    adapted_bundle = bundle_data.getvalue()
    (decoded / "assets/web-bundle.zip").write_bytes(adapted_bundle)
    builtin = json.loads((pristine / "assets/builtin-runtime.json").read_text("utf-8"))
    builtin["releaseSetId"] = RELEASE_ID
    builtin["version"] = VERSION_CODE
    builtin["web"]["length"] = len(adapted_bundle)
    builtin["web"]["sha256"] = hashlib.sha256(adapted_bundle).hexdigest()
    (decoded / "assets/builtin-runtime.json").write_text(
        json.dumps(builtin, separators=(",", ":")), encoding="utf-8")
    security = apply_security_patches(decoded)

    output = ROOT / "output"
    output.mkdir(exist_ok=True)
    unsigned = output / "jianpian-mobile-tv-unsigned.apk"
    aligned = output / "jianpian-mobile-tv-aligned.apk"
    signed = output / ("jianpian-mobile-tv-" + VERSION_NAME + ".apk")
    # Keep the input path relative; this also avoids known aapt path issues.
    run([java, "-jar", apktool, "b", "work/mobile-tv12", "-o", unsigned], cwd=ROOT)
    run([args.build_tools / "zipalign.exe", "-P", "16", "-f", "4", unsigned, aligned])

    private = ROOT / ".local-signing"
    private.mkdir(exist_ok=True)
    keystore = private / "tv-candidate.p12"
    signing_password = (
        os.environ.get("JIANPIAN_SIGNING_PASSWORD")
        or getpass.getpass("APK signing keystore password: ")
    )
    if not signing_password:
        raise RuntimeError("A non-empty signing password is required")
    if not keystore.exists():
        run([keytool, "-genkeypair", "-keystore", keystore, "-storetype", "PKCS12",
             "-storepass", signing_password, "-keypass", signing_password,
             "-alias", "tv-candidate", "-keyalg", "RSA", "-keysize", "3072",
             "-validity", "3650", "-dname", "CN=Local TV Test Candidate"])
    env = os.environ.copy()
    env["JIANPIAN_SIGNING_PASSWORD"] = signing_password
    run([java, "-jar", apksigner, "sign", "--ks", keystore,
         "--ks-key-alias", "tv-candidate",
         "--ks-pass", "env:JIANPIAN_SIGNING_PASSWORD",
         "--key-pass", "env:JIANPIAN_SIGNING_PASSWORD",
         "--out", signed, aligned], env=env)
    run([java, "-jar", apksigner, "verify", "--verbose", "--print-certs", signed])
    run([args.build_tools / "zipalign.exe", "-c", "-P", "16", "4", signed])
    with zipfile.ZipFile(original) as before, zipfile.ZipFile(signed) as after:
        with zipfile.ZipFile(io.BytesIO(before.read("assets/web-bundle.zip"))) as old_web:
            with zipfile.ZipFile(io.BytesIO(after.read("assets/web-bundle.zip"))) as new_web:
                for name in old_web.namelist():
                    if old_web.getinfo(name).is_dir():
                        continue
                    if name not in ("index.html", "bundle-manifest.json") and old_web.read(name) != new_web.read(name):
                        raise RuntimeError("Original application asset changed: " + name)
    report = {
        "package": PACKAGE,
        "version": VERSION_NAME,
        "source_sha256": INPUT_SHA256,
        "apk_sha256": hashlib.sha256(signed.read_bytes()).hexdigest(),
        "apk": str(signed),
        "authentication_code_patched": False,
        "web_bundle_changed": True,
        "original_web_application_modules_changed": False,
        "bundle_hash_updated_without_disabling_verification": True,
        "certificate_checks_bypassed": False,
        "private_signing_material_included_in_delivery": False,
        "changes": [
            "Independent package and provider authorities",
            "Landscape activities and TV launcher category/banner",
            "Sensitive/advertising/storage permissions removed",
            *security["changes"],
            "System certificate trust; cleartext allowed only for local playback",
            "Separate spatial-navigation module and visible focus style",
            "Remote confirm toggles this application's active native film session",
            "TV sidebar, compact hero, poster shelves and landscape detail layout",
            "On-screen remote keyboard and dedicated full-screen playback controls",
            "Offline pinyin character input and immersive TV window",
            "Fullscreen timeline with real native progress and remote seek controls",
            "Cinema WebView transparency restored on Android 9",
            "Video TextureView kept attached across cinema layer changes",
        ],
        "runtime_validation": "pending",
        "security_patch": security,
    }
    (output / "mobile-tv-build.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        key: report[key] for key in
        ("package", "version", "apk_sha256", "apk", "runtime_validation")
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
