"""Reproducible security changes for the exact supplied APK.

Operate only on a disposable decoded build tree. The original APK, original
decoded sources and account data are never changed by this module.
"""

from pathlib import Path
import json
import re
import shutil


def method_match(source, signature):
    matches = list(re.finditer(
        r"^\.method " + re.escape(signature) + r"\n.*?^\.end method",
        source, re.M | re.S))
    if len(matches) != 1:
        raise RuntimeError("Expected exactly one smali method: " + signature)
    return matches[0]


def replace_method(path, signature, body):
    source = path.read_text("utf-8")
    match = method_match(source, signature)
    replacement = "" if body is None else (
        ".method " + signature + "\n" + body.strip("\n") + "\n.end method")
    path.write_text(source[:match.start()] + replacement + source[match.end():],
                    encoding="utf-8")


def edit_method(path, signature, edit):
    source = path.read_text("utf-8")
    match = method_match(source, signature)
    updated = edit(match.group())
    if updated == match.group():
        raise RuntimeError("Security edit had no effect: " + signature)
    path.write_text(source[:match.start()] + updated + source[match.end():],
                    encoding="utf-8")


def once(source, before, after):
    if source.count(before) != 1:
        raise RuntimeError("Security patch anchor mismatch: " + before[:100])
    return source.replace(before, after, 1)


def apply_security_patches(decoded: Path):
    root = decoded.resolve()
    if root.name not in ("mobile-tv10", "mobile-tv11", "mobile-tv12") or root.parent.name != "work":
        raise RuntimeError("Security patch requires an isolated TV build tree")
    changes = []
    internal = root / "smali/com/jp/bootstrap/internal"
    web = root / "smali/com/jp/runtime/web/TrustedLocalWebRuntime.smali"
    non_vendor_sources = {
        path: path.read_text("utf-8") for path in root.glob("smali*/**/*.smali")
        if "/com/umeng/" not in path.as_posix()
    }

    # Remove SDK entrypoints regardless of first-run, cached or remote settings.
    for signature in (
        "public static jzphcv(Landroid/app/Application;)V",
        "public static syiqloeyp(Landroid/content/Context;Z)V",
    ):
        replace_method(internal / "vs0.smali", signature,
                       "    .locals 0\n    return-void")
    # R8 merged these SDK-only utilities into otherwise shared app classes.
    # All four methods have no callers outside the removed vendor namespace.
    for filename, signatures in {
        "qo.smali": [
            "public static sbmzsrkn(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V",
            "public static uaakwbmitdl(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;",
        ],
        "vt0.smali": [
            "public static synthetic cauva(Ljava/lang/Object;Ljava/lang/String;)V",
            "public static synthetic uaakwbmitdl(Ljava/lang/String;Lcom/umeng/analytics/pro/bw;)V",
        ],
    }.items():
        for signature in signatures:
            # Fail if another app method calls one of these utilities.
            short = signature.split()[-1]
            owner = "Lcom/jp/bootstrap/internal/" + filename[:-6] + ";->" + short
            for path, text in non_vendor_sources.items():
                if owner in text:
                    raise RuntimeError("Unexpected external SDK helper caller: " + str(path))
            replace_method(internal / filename, signature, None)
    removed = []
    for vendor in root.glob("smali*/com/umeng"):
        target = vendor.resolve()
        if not target.is_relative_to(root) or target.name != "umeng":
            raise RuntimeError("Invalid SDK removal target")
        removed.extend(str(p.relative_to(root)) for p in vendor.rglob("*") if p.is_file())
        shutil.rmtree(target)
    for native in root.glob("lib/*/libumeng-spy.so"):
        if not native.resolve().is_relative_to(root):
            raise RuntimeError("Invalid native SDK removal target")
        removed.append(str(native.relative_to(root)))
        native.unlink()
    for path in root.glob("smali*/**/*.smali"):
        if "Lcom/umeng/" in path.read_text("utf-8"):
            raise RuntimeError("Unresolved vendor SDK dependency: " + str(path))
    changes.append("UMeng classes, native spy library and init/lifecycle dependencies removed")

    # Disable online update creation, manual broadcasts and old plugin recovery.
    replace_method(
        internal / "fj.smali",
        "public static cauva(Lcom/jp/bootstrap/JpApplication;Lcom/jp/release/ReleaseSlotStore;)Lcom/jp/bootstrap/internal/h50;",
        "    .locals 1\n    const/4 v0, 0x0\n    return-object v0")
    replace_method(
        root / "smali/com/jp/bootstrap/RuntimeUpdateReceiver.smali",
        "public onReceive(Landroid/content/Context;Landroid/content/Intent;)V",
        "    .locals 0\n    return-void")
    application = root / "smali/com/jp/bootstrap/JpApplication.smali"
    source = application.read_text("utf-8")
    source, count = re.subn(
        r"    invoke-static \{p0\}, Lcom/tencent/shadow/dynamic/host/DynamicRuntime;"
        r"->recoveryRuntime\(Landroid/content/Context;\)Z\s+"
        r"(?:\.line \d+\s+)*move-result v2",
        "    # Frozen TV build: never recover downloaded plugin code.\n    const/4 v2, 0x0",
        source)
    if count != 1:
        raise RuntimeError("Plugin recovery anchor mismatch")
    application.write_text(source, encoding="utf-8")

    def builtin_only(source):
        # Keep the original asset schema, length, SHA256, read-only extraction
        # and per-resource integrity checks. Skip every active remote slot.
        begin = source.index(
            "    invoke-virtual {v2}, Lcom/jp/release/ReleaseSlotStore;->state()")
        end = source.index("    :cond_4\n    :goto_3\n", begin)
        source = source[:begin] + (
            "    # Always select the packaged and verified built-in archive.\n"
        ) + source[end:]
        source, count = re.subn(
            r"    invoke-virtual \{v2\}, Lcom/jp/release/ReleaseSlotStore;->state\(\)"
            r"Lcom/jp/release/SlotState;\s+(?:\.line \d+\s+)*move-result-object v0\s+"
            r"(?:\.line \d+\s+)*invoke-virtual \{v1, v0\}, Lcom/jp/bootstrap/internal/t3;"
            r"->rowxts\(Lcom/jp/release/SlotState;\)V",
            "    # No remote-slot cleanup or selection is needed in this build.", source)
        if count != 1 or "->gfcrkryqbn(" in source:
            raise RuntimeError("Built-in-only resolver patch failed")
        return source

    edit_method(internal / "t3.smali",
                "public amcmg()Lcom/jp/bootstrap/internal/u40;", builtin_only)
    replace_method(
        internal / "t3.smali",
        "public gfcrkryqbn(Lcom/jp/release/SlotRef;)Lcom/jp/bootstrap/internal/u40;",
        '    .locals 2\n    new-instance v0, Ljava/lang/UnsupportedOperationException;\n'
        '    const-string v1, "Remote runtime disabled in this TV build"\n'
        '    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V\n'
        "    throw v0")
    replace_method(web, "private final requestRuntimeUpdateCheck()V",
                   "    .locals 0\n    return-void")
    changes.append("Built-in-only verified runtime; updater, remote slots and plugin recovery disabled")

    def harden_settings(source):
        # Use a spare register; keep v1=true for JavaScript and DOM storage.
        for name in ("setAllowFileAccess", "setAllowContentAccess",
                     "setAllowFileAccessFromFileURLs", "setAllowUniversalAccessFromFileURLs"):
            anchor = f"    invoke-virtual {{p1, v1}}, Landroid/webkit/WebSettings;->{name}(Z)V"
            source = once(source, anchor, (
                "    const/4 v4, 0x0\n"
                f"    invoke-virtual {{p1, v4}}, Landroid/webkit/WebSettings;->{name}(Z)V"))
        source = once(source,
            "    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V",
            "    const/4 v4, 0x1\n"
            "    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V")
        return source

    edit_method(web, "private final createWebView(Landroid/content/Context;)Landroid/webkit/WebView;",
                harden_settings)

    def remove_fallback(source):
        begin = source.index("    :cond_3\n")
        return source[:begin] + "    :cond_3\n    return-void\n.end method"

    edit_method(web, "private final installBridge()V", remove_fallback)
    # Remove the origin-less JS interface class entirely, including its
    # synthetic dispatcher call. Modern allowlisted/main-frame bridge stays.
    fallback = root / "smali/com/jp/runtime/web/TrustedLocalWebRuntime$FallbackBridge.smali"
    fallback.unlink()
    for name in ("jzphcv.smali", "syiqloeyp.smali"):
        path = root / "smali/com/jp/runtime/web" / name
        if "TrustedLocalWebRuntime$FallbackBridge;" not in path.read_text("utf-8"):
            raise RuntimeError("Unexpected fallback dispatcher")
        path.unlink()
    source = web.read_text("utf-8")
    source = once(source,
        "        Lcom/jp/runtime/web/TrustedLocalWebRuntime$FallbackBridge;,\n", "")
    web.write_text(source, encoding="utf-8")

    # Unsupported engines display a static, readable page; no insecure bridge
    # fallback. Check in both initial route and saved-route restore paths.
    with web.open("a", encoding="utf-8") as out:
        out.write("""

.method private final showTvWebViewRequirement()Z
    .locals 4
    const-string v0, "WEB_MESSAGE_LISTENER"
    invoke-static {v0}, Lcom/jp/bootstrap/internal/uy0;->syiqloeyp(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :tv_unsupported
    const/4 v0, 0x0
    return v0
    :tv_unsupported
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;
    const-string v1, "<html><meta charset='utf-8'><body style='background:#15191f;color:white;font:28px sans-serif;padding:64px'><h2>请更新电视的 Android System WebView</h2><p>当前网页内核不支持安全通信，无法启动此版本。</p><p>更新系统网页内核后，重新打开应用。</p></body></html>"
    const-string v2, "text/html"
    const-string v3, "UTF-8"
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0x1
    return v0
.end method
""")
    for signature, returns in (
        ("public final show(Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)V", "    return-void"),
        ("public final restoreAppUrl(Ljava/lang/String;)Z", "    const/4 v0, 0x1\n    return v0"),
    ):
        def guard(source, returns=returns):
            # Insert after method annotations, before original first instruction.
            first = "    invoke-virtual {p1}" if signature.startswith("public final show(") else "    if-eqz p1"
            index = source.index(first)
            return source[:index] + (
                "    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->showTvWebViewRequirement()Z\n"
                "    move-result v0\n    if-eqz v0, :tv_supported_engine\n" +
                returns + "\n    :tv_supported_engine\n") + source[index:]
        edit_method(web, signature, guard)
    changes.append("WebView file/content/cross-file access disabled; mixed content denied; origin-less bridge removed")

    # Block optional storage/download/export/update and external-app commands
    # at the validated bridge dispatch boundary. Playback APIs remain intact.
    blocked_prefixes = ("downloads.", "update.check", "update.apply",
                        "diagnostics.export", "media.saveImage", "openUrlBySystem")
    helper = """
.method private static isTvBlockedCommand(Ljava/lang/String;)Z
    .locals 1
"""
    for prefix in blocked_prefixes:
        helper += (
            f'    const-string v0, "{prefix}"\n'
            '    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z\n'
            '    move-result v0\n'
            '    if-nez v0, :tv_blocked\n')
    helper += """    const/4 v0, 0x0
    return v0
    :tv_blocked
    const/4 v0, 0x1
    return v0
.end method

.method private final tvDisabledReply(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 3
    const-string v0, "id"
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v0, "disabled_in_tv_build"
    const/4 v2, 0x0
    invoke-direct {p0, v0, v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    move-result-object v0
    return-object v0
.end method
"""
    with web.open("a", encoding="utf-8") as out:
        out.write("\n" + helper)

    def gate_commands(source):
        anchor = "    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I"
        return once(source, anchor, """    invoke-static {v10}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->isTvBlockedCommand(Ljava/lang/String;)Z
    move-result v27
    if-eqz v27, :tv_command_allowed
    invoke-direct {v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->tvDisabledReply(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    move-result-object v27
    return-object v27
    :tv_command_allowed
""" + anchor)

    edit_method(web, "private final handleMessage(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;",
                gate_commands)
    replace_method(
        web, "private final saveImageToGallery(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;",
        '    .locals 2\n    new-instance v0, Ljava/lang/UnsupportedOperationException;\n'
        '    const-string v1, "Image export disabled in TV build"\n'
        '    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V\n'
        "    throw v0")
    chrome = root / "smali/com/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4.smali"
    replace_method(
        chrome, "public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z",
        "    .locals 1\n    const/4 v0, 0x0\n"
        "    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V\n"
        "    const/4 v0, 0x1\n    return v0")
    replace_method(
        chrome, "public onPermissionRequest(Landroid/webkit/PermissionRequest;)V",
        "    .locals 0\n"
        "    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V\n    return-void")
    changes.append("File chooser, camera/Web permissions and bridge download/export/external-app commands denied")

    # Static invariants: no removed SDK references or origin-less interface call.
    all_smali = list(root.glob("smali*/**/*.smali"))
    for path in all_smali:
        text = path.read_text("utf-8")
        if "Lcom/umeng/" in text or "TrustedLocalWebRuntime$FallbackBridge;" in text:
            raise RuntimeError("Removed component reference: " + str(path))
    report = {
        "changes": changes,
        "removed_sdk_files": len(removed),
        "removed_sdk_inventory": sorted(removed),
        "blocked_bridge_prefixes": list(blocked_prefixes),
        "preserved": [
            "Original login, API discovery and encrypted business transport",
            "Original business installation identifier",
            "Original web session storage in private WebView localStorage",
            "Private playback cache and original bundle integrity verification",
        ],
    }
    (root / "security-patch.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    return report
