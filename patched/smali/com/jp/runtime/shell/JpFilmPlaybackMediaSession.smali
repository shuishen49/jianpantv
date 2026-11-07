.class public final Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private boundPlayer:Lcom/jp/bootstrap/internal/gt;

.field private hasNextEpisode:Z

.field private final listener:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;

.field private final onNextEpisode:Lcom/jp/bootstrap/internal/mbwlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/mbwlg;"
        }
    .end annotation
.end field

.field private final session:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/mbwlg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/umqafeb;",
            "Lcom/jp/bootstrap/internal/mbwlg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->onNextEpisode:Lcom/jp/bootstrap/internal/mbwlg;

    .line 11
    .line 12
    new-instance p2, Landroid/media/session/MediaSession;

    .line 13
    .line 14
    const-string v0, "jp-film-playback"

    .line 15
    .line 16
    invoke-direct {p2, p1, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$session$1$1;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$session$1$1;-><init>(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 32
    .line 33
    new-instance p1, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;-><init>(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->listener:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;

    .line 39
    .line 40
    return-void
.end method

.method public static final synthetic access$getBoundPlayer$p(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;)Lcom/jp/bootstrap/internal/gt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getHasNextEpisode$p(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->hasNextEpisode:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOnNextEpisode$p(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;)Lcom/jp/bootstrap/internal/mbwlg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->onNextEpisode:Lcom/jp/bootstrap/internal/mbwlg;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$syncPlaybackState(Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;Lcom/jp/bootstrap/internal/gt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->syncPlaybackState(Lcom/jp/bootstrap/internal/gt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final detachPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->listener:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;

    .line 6
    .line 7
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->tscplbdu(Lcom/jp/bootstrap/internal/et;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 14
    .line 15
    return-void
.end method

.method private final syncPlaybackState(Lcom/jp/bootstrap/internal/gt;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 7
    .line 8
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-boolean v3, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->hasNextEpisode:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-wide/16 v3, 0x126

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v3, 0x106

    .line 38
    .line 39
    :goto_0
    move-object v5, p1

    .line 40
    check-cast v5, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 41
    .line 42
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dujeewwyska()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/4 v7, 0x2

    .line 47
    if-eq v6, v7, :cond_5

    .line 48
    .line 49
    const/4 v8, 0x3

    .line 50
    if-eq v6, v8, :cond_3

    .line 51
    .line 52
    const/4 p1, 0x4

    .line 53
    if-eq v6, p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    check-cast p1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/mctadfgh;->mhirrjin()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    move v0, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v0, v7

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const/4 v0, 0x6

    .line 71
    :goto_1
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 72
    .line 73
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    .line 74
    .line 75
    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    cmp-long v6, v3, v1

    .line 87
    .line 88
    if-gez v6, :cond_6

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move-wide v1, v3

    .line 92
    :goto_2
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/xmpxuyqu;->fugymz()Lcom/jp/bootstrap/internal/ts;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget v3, v3, Lcom/jp/bootstrap/internal/ts;->syiqloeyp:F

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final attach(Lcom/jp/bootstrap/internal/gt;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->detachPlayer()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->hasNextEpisode:Z

    .line 13
    .line 14
    iget-object p3, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 15
    .line 16
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.media.metadata.TITLE"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p3, p2}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->listener:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession$listener$1;

    .line 35
    .line 36
    move-object p3, p1

    .line 37
    check-cast p3, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 38
    .line 39
    iget-object p3, p3, Lcom/jp/bootstrap/internal/xmpxuyqu;->tsodtn:Lcom/jp/bootstrap/internal/w6;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p2}, Lcom/jp/bootstrap/internal/w6;->syiqloeyp(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->syncPlaybackState(Lcom/jp/bootstrap/internal/gt;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->detachPlayer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/media/session/MediaSession;->release()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final currentPositionMs()J
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long p0, v2, v0

    .line 14
    .line 15
    if-gez p0, :cond_0

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    return-wide v2

    .line 19
    :cond_1
    return-wide v0
.end method

.method public final release()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->detachPlayer()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->session:Landroid/media/session/MediaSession;

    .line 5
    .line 6
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final updateHasNext(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->hasNextEpisode:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->boundPlayer:Lcom/jp/bootstrap/internal/gt;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->syncPlaybackState(Lcom/jp/bootstrap/internal/gt;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

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

