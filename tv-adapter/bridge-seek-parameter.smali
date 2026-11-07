.method private static localTvCopySeek(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 7
    const-string v0, "localTvCinema"
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :local_tv_copy_seek
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z
    move-result v1
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V
    :local_tv_copy_seek
    const-string v0, "localTvSeekMs"
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :local_tv_seek_parameter_done
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J
    move-result-wide v1
    const-wide/16 v3, 0x0
    cmp-long v5, v1, v3
    if-ltz v5, :local_tv_bad_seek
    const-wide/32 v3, 0x240c8400
    cmp-long v5, v1, v3
    if-gtz v5, :local_tv_bad_seek
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    move-result-object v1
    invoke-virtual {p1, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V
    :local_tv_seek_parameter_done
    return-void
    :local_tv_bad_seek
    new-instance v1, Ljava/lang/IllegalArgumentException;
    const-string v0, "Invalid TV seek target"
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    throw v1
.end method
