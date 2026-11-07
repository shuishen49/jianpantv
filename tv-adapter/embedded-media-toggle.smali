.method public final localTvIsCinema()Z
    .locals 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z
    return v0
.end method

.method public final localTvSetCinema(Z)V
    .locals 0
    iput-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V
    return-void
.end method

.method public final localTvTogglePlayback()V
    .locals 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;
    if-eqz v0, :local_tv_done
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->chromeSheetsOpen()Z
    move-result v0
    if-nez v0, :local_tv_done
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;
    invoke-virtual {v0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->localTvTogglePlayback()V
    :local_tv_done
    return-void
.end method

.method public final localTvSeekTo(J)V
    .locals 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;
    if-eqz v0, :local_tv_seek_done
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->chromeSheetsOpen()Z
    move-result v0
    if-nez v0, :local_tv_seek_done
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;
    invoke-virtual {v0, p1, p2}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->localTvSeekTo(J)V
    :local_tv_seek_done
    return-void
.end method
