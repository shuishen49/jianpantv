.method public final localTvTogglePlayback()V
    .locals 4
    iget-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;
    move-result-object v0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    move-result-object v1
    if-eqz v1, :local_tv_done
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I
    move-result v2
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    const/4 v3, 0x3
    if-eq v2, v3, :local_tv_pause
    const/4 v3, 0x6
    if-eq v2, v3, :local_tv_pause
    const/4 v3, 0x2
    if-ne v2, v3, :local_tv_done
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V
    goto :local_tv_done
    :local_tv_pause
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V
    :local_tv_done
    return-void
.end method

.method public final localTvSeekTo(J)V
    .locals 6
    # Clamp against this app's bound player's actual duration.
    iget-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;
    if-eqz v0, :local_tv_seek_done
    const-wide/16 v1, 0x0
    cmp-long v3, p1, v1
    if-gez v3, :local_tv_nonnegative
    move-wide p1, v1
    :local_tv_nonnegative
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J
    move-result-wide v1
    const-wide/16 v4, 0x0
    cmp-long v3, v1, v4
    if-lez v3, :local_tv_seek_done
    cmp-long v3, p1, v1
    if-lez v3, :local_tv_seek_in_range
    move-wide p1, v1
    :local_tv_seek_in_range
    iget-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;
    move-result-object v0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;
    move-result-object v0
    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V
    :local_tv_seek_done
    return-void
.end method
