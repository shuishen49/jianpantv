    # TV-only extension of the existing trusted player-overlay command.
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getMethod()Ljava/lang/String;
    move-result-object v0
    const-string v1, "player.overlay"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :local_tv_original_dispatch
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;
    move-result-object v0
    const-string v1, "localTvCinema"
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :local_tv_check_seek
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z
    move-result v2
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    move-result-object v0
    invoke-virtual {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvSetCinema(Z)V
    return-void
    :local_tv_check_seek
    const-string v1, "localTvSeekMs"
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :local_tv_check_toggle
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J
    move-result-wide v2
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    move-result-object v0
    invoke-virtual {v0, v2, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvSeekTo(J)V
    return-void
    :local_tv_check_toggle
    const-string v1, "localTvToggle"
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z
    move-result v0
    if-eqz v0, :local_tv_original_dispatch
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    move-result-object v0
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvTogglePlayback()V
    return-void
    :local_tv_original_dispatch
