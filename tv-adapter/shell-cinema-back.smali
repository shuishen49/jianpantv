    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z
    move-result v0
    if-eqz v0, :local_tv_original_back
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    move-result-object v0
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvIsCinema()Z
    move-result v0
    if-eqz v0, :local_tv_original_back
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;
    if-eqz v0, :local_tv_original_back
    const-string v1, "localTvExitCinema"
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;
    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V
    invoke-virtual {v0, v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    return-void
    :local_tv_original_back
