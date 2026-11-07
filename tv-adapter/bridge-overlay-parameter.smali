    # Preserve a single typed TV-control parameter through the trusted bridge.
    const-string v4, "localTvToggle"
    invoke-virtual {v13, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :local_tv_overlay_parameter_done
    invoke-virtual {v13, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z
    move-result v5
    invoke-virtual {v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V
    :local_tv_overlay_parameter_done
    # Isolate wide seek arithmetic from the enclosing bridge's live registers.
    invoke-static {v13, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->localTvCopySeek(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
