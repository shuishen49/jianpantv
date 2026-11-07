"""Keep the native video surface attached while the TV controls move above it."""
from pathlib import Path


def replace_once(source: str, before: str, after: str, description: str) -> str:
    if source.count(before) != 1:
        raise RuntimeError("Unexpected fullscreen patch target: " + description)
    return source.replace(before, after, 1)


def apply_fullscreen_patches(decoded: Path) -> None:
    runtime_path = decoded / "smali/com/jp/runtime/web/TrustedLocalWebRuntime.smali"
    runtime = runtime_path.read_text("utf-8")
    runtime = replace_once(
        runtime, "# instance fields\n",
        "# instance fields\n.field private localTvCinemaTransparent:Z\n",
        "WebView fields",
    )
    policy_call = (
        "    invoke-static {p1, v0}, Lcom/jp/runtime/web/WebViewOpaquePolicyKt;"
        "->webViewOpaquePresentation(ZI)Lcom/jp/runtime/web/WebViewOpaquePresentation;"
    )
    start = runtime.index(policy_call)
    result = runtime.index("    move-result-object p1", start)
    insert = result + len("    move-result-object p1")
    # Preserve webViewOpaqueRequested so that leaving cinema restores the latest
    # upstream request. Force actual transparent ARGB even on the API <29 path,
    # whose normal punch-through policy otherwise uses alpha=1.
    runtime = runtime[:insert] + """

    iget-boolean v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->localTvCinemaTransparent:Z
    if-eqz v1, :local_tv_keep_web_presentation
    new-instance p1, Lcom/jp/runtime/web/WebViewOpaquePresentation;
    const/4 v1, 0x0
    sget-object v2, Lcom/jp/runtime/web/WebViewLayerKind;->HARDWARE:Lcom/jp/runtime/web/WebViewLayerKind;
    const/4 v3, 0x1
    invoke-direct {p1, v1, v2, v3}, Lcom/jp/runtime/web/WebViewOpaquePresentation;-><init>(ILcom/jp/runtime/web/WebViewLayerKind;Z)V
    :local_tv_keep_web_presentation
""" + runtime[insert:]
    runtime += """

.method public final localTvSetCinemaTransparent(Z)V
    .locals 1
    iput-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->localTvCinemaTransparent:Z
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webViewOpaqueRequested:Z
    invoke-direct {p0, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->applyWebViewOpaque(Z)V
    return-void
.end method
"""
    runtime_path.write_text(runtime, encoding="utf-8")

    shell_path = decoded / "smali/com/jp/runtime/shell/ShellActivity.smali"
    shell = shell_path.read_text("utf-8")
    cinema_read = (
        "    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z\n"
        "    move-result v2\n"
    )
    shell = replace_once(
        shell, cinema_read,
        cinema_read + """
    iget-object v3, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;
    if-eqz v3, :local_tv_cinema_runtime_ready
    invoke-virtual {v3, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->localTvSetCinemaTransparent(Z)V
    :local_tv_cinema_runtime_ready
""",
        "Cinema command",
    )
    shell_path.write_text(shell, encoding="utf-8")

    player_path = decoded / "smali/com/jp/runtime/shell/EmbeddedFilmPlayerController.smali"
    player = player_path.read_text("utf-8")
    under_anchor = ".method private final placeHostUnderWebView()V\n    .locals 4\n"
    player = replace_once(player, under_anchor, under_anchor + """

    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z
    if-eqz v0, :local_tv_original_under_layer
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvPlaceCinemaLayers()V
    return-void
    :local_tv_original_under_layer
""", "Cinema layers")
    # bringToFront changes child order without detaching TextureView. The old
    # remove/add sequence destroyed its SurfaceTexture when leaving fullscreen.
    above_start = player.index(".method private final placeHostAboveWebView()V")
    above_end = player.index(".end method", above_start)
    above = player[above_start:above_end]
    remove_start = above.index(
        "    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V"
    )
    add_call = "    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V"
    remove_end = above.index(add_call, remove_start) + len(add_call)
    above = (
        above[:remove_start]
        + "    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V"
        + above[remove_end:]
    )
    player = player[:above_start] + above + player[above_end:]
    player += """

.method private final localTvPlaceCinemaLayers()V
    .locals 3
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    instance-of v1, v0, Landroid/view/ViewGroup;
    if-eqz v1, :local_tv_cinema_layers_done
    check-cast v0, Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$childWebView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;
    move-result-object v0
    if-eqz v0, :local_tv_cinema_layers_done
    const/high16 v1, 0x41000000    # 8.0f
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V
    :local_tv_cinema_layers_done
    return-void
.end method
"""
    player_path.write_text(player, encoding="utf-8")
