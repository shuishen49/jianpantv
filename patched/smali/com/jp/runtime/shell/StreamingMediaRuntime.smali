.class public final Lcom/jp/runtime/shell/StreamingMediaRuntime;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;,
        Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final BACK_BUFFER_MS:I = 0x7530

.field private static final CACHE_DIRECTORY:Ljava/lang/String; = "jp-streaming-media-v1"

.field private static final CACHE_MAX_BYTES:J = 0x20000000L

.field public static final INSTANCE:Lcom/jp/runtime/shell/StreamingMediaRuntime;

.field public static final MAX_BUFFER_MS:I = 0x15f90

.field public static final MIN_BUFFER_MS:I = 0x4e20

.field public static final PLAYBACK_BUFFER_MS:I = 0x3e8

.field public static final REBUFFER_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "StreamingMediaRuntime"

.field private static volatile cacheInitializationAttempted:Z

.field private static final cacheLock:Ljava/lang/Object;

.field private static volatile cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

.field private static volatile cachedSpaceSnapshot:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->INSTANCE:Lcom/jp/runtime/shell/StreamingMediaRuntime;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final dataSourceFactory$lambda$0(Lcom/jp/bootstrap/internal/fmgshokrh;)Lcom/jp/bootstrap/internal/dtqwxcuypf;
    .locals 8

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v3, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v3, v1

    .line 13
    :goto_0
    if-nez v3, :cond_1

    .line 14
    .line 15
    new-instance v0, Lcom/jp/bootstrap/internal/kruyk;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/jp/bootstrap/internal/fmgshokrh;->sbmzsrkn:Landroid/content/Context;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/jp/bootstrap/internal/fmgshokrh;->tsodtn:Lcom/jp/bootstrap/internal/kgcm;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/kgcm;->hqaldusn()Lcom/jp/bootstrap/internal/dtqwxcuypf;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, v1, p0}, Lcom/jp/bootstrap/internal/kruyk;-><init>(Landroid/content/Context;Lcom/jp/bootstrap/internal/dtqwxcuypf;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/fmgshokrh;->hqaldusn()Lcom/jp/bootstrap/internal/dtqwxcuypf;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    move-object v4, p0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v4, v1

    .line 38
    :goto_1
    if-nez v4, :cond_3

    .line 39
    .line 40
    :goto_2
    move-object v6, v1

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    new-instance v1, Lcom/jp/bootstrap/internal/mpjyxulei;

    .line 43
    .line 44
    invoke-direct {v1, v3}, Lcom/jp/bootstrap/internal/mpjyxulei;-><init>(Lcom/jp/bootstrap/internal/ec0;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_3
    new-instance v2, Lcom/jp/bootstrap/internal/pspyeabtjcr;

    .line 49
    .line 50
    new-instance v5, Lcom/jp/bootstrap/internal/okmcec;

    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    invoke-direct {v5, p0}, Lcom/jp/bootstrap/internal/redfkjnuug;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    const/4 v7, 0x2

    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/jp/bootstrap/internal/pspyeabtjcr;-><init>(Lcom/jp/bootstrap/internal/ec0;Lcom/jp/bootstrap/internal/dtqwxcuypf;Lcom/jp/bootstrap/internal/dtqwxcuypf;Lcom/jp/bootstrap/internal/mpjyxulei;I)V

    .line 58
    .line 59
    .line 60
    return-object v2
.end method

.method public static synthetic syiqloeyp(Lcom/jp/bootstrap/internal/fmgshokrh;)Lcom/jp/bootstrap/internal/dtqwxcuypf;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->dataSourceFactory$lambda$0(Lcom/jp/bootstrap/internal/fmgshokrh;)Lcom/jp/bootstrap/internal/dtqwxcuypf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final cacheBytesSnapshot()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cachedSpaceSnapshot:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final clearCache(Landroid/content/Context;)Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->prewarm(Landroid/content/Context;)Lcom/jp/bootstrap/internal/tqwr;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;

    .line 24
    .line 25
    invoke-direct {p0, v1, v2, v1, v2}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;-><init>(JJ)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    :goto_0
    check-cast v0, Lcom/jp/bootstrap/internal/ec0;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ec0;->uaakwbmitdl()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    .line 37
    .line 38
    iget-object v4, v0, Lcom/jp/bootstrap/internal/ec0;->jyozshuy:Lcom/jp/bootstrap/internal/j21;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/jp/bootstrap/internal/j21;->jzphcv:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v4, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    invoke-static {v3}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->wgnctvg(Ljava/lang/Iterable;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/String;

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/jp/bootstrap/internal/ec0;->tsodtn(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object v4, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception v4

    .line 79
    new-instance v5, Lcom/jp/bootstrap/internal/y20;

    .line 80
    .line 81
    invoke-direct {v5, v4}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    move-object v4, v5

    .line 85
    :goto_2
    invoke-static {v4}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    const-string v5, "StreamingMediaRuntime"

    .line 92
    .line 93
    const-string v6, "Unable to evict active streaming cache entry"

    .line 94
    .line 95
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ec0;->uaakwbmitdl()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    sput-wide v3, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cachedSpaceSnapshot:J

    .line 104
    .line 105
    new-instance v0, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;

    .line 106
    .line 107
    sub-long/2addr p0, v3

    .line 108
    cmp-long v5, p0, v1

    .line 109
    .line 110
    if-gez v5, :cond_4

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    move-wide v1, p0

    .line 114
    :goto_3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheClearResult;-><init>(JJ)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    throw p0
.end method

.method public final dataSourceFactory(Landroid/content/Context;)Lcom/jp/bootstrap/internal/fhzsfd;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/jp/bootstrap/internal/fmgshokrh;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/jp/bootstrap/internal/fmgshokrh;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/jp/bootstrap/internal/qxejfohh;

    .line 14
    .line 15
    const/16 v0, 0x1b

    .line 16
    .line 17
    invoke-direct {p1, v0, p0}, Lcom/jp/bootstrap/internal/qxejfohh;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final loadControl()Lcom/jp/bootstrap/internal/nzasy;
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Lcom/jp/runtime/shell/StreamingBufferBudgetKt;->streamingPlayerBufferBytes(J)I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    new-instance v10, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lcom/jp/bootstrap/internal/bu;->cauva:Lcom/jp/bootstrap/internal/bu;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/jp/bootstrap/internal/bu;->syiqloeyp:Ljava/lang/String;

    .line 21
    .line 22
    const/high16 v3, 0x8980000

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v2, "bufferForPlaybackMs"

    .line 32
    .line 33
    const-string v3, "0"

    .line 34
    .line 35
    const/16 v4, 0x3e8

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static {v2, v3, v4, v5}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    const-string v7, "bufferForPlaybackAfterRebufferMs"

    .line 42
    .line 43
    const/16 v8, 0x7d0

    .line 44
    .line 45
    invoke-static {v7, v3, v8, v5}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    const-string v9, "minBufferMs"

    .line 49
    .line 50
    move v11, v4

    .line 51
    const/16 v4, 0x4e20

    .line 52
    .line 53
    invoke-static {v9, v2, v4, v11}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-static {v9, v7, v4, v8}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    const-string v2, "maxBufferMs"

    .line 60
    .line 61
    move v7, v5

    .line 62
    const v5, 0x15f90

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v9, v5, v4}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/jp/bootstrap/internal/bu;->syiqloeyp:Ljava/lang/String;

    .line 69
    .line 70
    div-int/lit8 v2, v6, 0x2

    .line 71
    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v10, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    const-wide/32 v8, 0x8000000

    .line 80
    .line 81
    .line 82
    cmp-long p0, v0, v8

    .line 83
    .line 84
    if-gez p0, :cond_0

    .line 85
    .line 86
    move v8, v7

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/16 p0, 0x7530

    .line 89
    .line 90
    move v8, p0

    .line 91
    :goto_0
    const-string p0, "backBufferDurationMs"

    .line 92
    .line 93
    invoke-static {p0, v3, v8, v7}, Lcom/jp/bootstrap/internal/nzasy;->syiqloeyp(Ljava/lang/String;Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lcom/jp/bootstrap/internal/iasnpjk;

    .line 97
    .line 98
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/iasnpjk;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v2, Lcom/jp/bootstrap/internal/nzasy;

    .line 102
    .line 103
    const/4 v7, 0x1

    .line 104
    const/4 v9, 0x1

    .line 105
    invoke-direct/range {v2 .. v10}, Lcom/jp/bootstrap/internal/nzasy;-><init>(Lcom/jp/bootstrap/internal/iasnpjk;IIIZIZLjava/util/Map;)V

    .line 106
    .line 107
    .line 108
    return-object v2
.end method

.method public final mediaSourceFactory(Landroid/content/Context;)Lcom/jp/bootstrap/internal/isiglpiqa;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jp/bootstrap/internal/isiglpiqa;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->dataSourceFactory(Landroid/content/Context;)Lcom/jp/bootstrap/internal/fhzsfd;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0}, Lcom/jp/bootstrap/internal/isiglpiqa;-><init>(Lcom/jp/bootstrap/internal/fhzsfd;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final newPlayer(Landroid/content/Context;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jp/bootstrap/internal/tpqdbith;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/jp/bootstrap/internal/tpqdbith;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->mediaSourceFactory(Landroid/content/Context;)Lcom/jp/bootstrap/internal/isiglpiqa;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/tpqdbith;->jyozshuy(Lcom/jp/bootstrap/internal/lc;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->loadControl()Lcom/jp/bootstrap/internal/nzasy;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Lcom/jp/bootstrap/internal/tpqdbith;->jzphcv(Lcom/jp/bootstrap/internal/nzasy;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/jp/bootstrap/internal/tvlqptobe;->cauva(Landroid/content/Context;)Lcom/jp/bootstrap/internal/tvlqptobe;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-boolean p1, v0, Lcom/jp/bootstrap/internal/tpqdbith;->ryrgde:Z

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    xor-int/2addr p1, v1

    .line 31
    invoke-static {p1}, Lcom/jp/bootstrap/internal/hf;->ckyiuuu(Z)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/jp/bootstrap/internal/eanmch;

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-direct {p1, v2, p0}, Lcom/jp/bootstrap/internal/eanmch;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, v0, Lcom/jp/bootstrap/internal/tpqdbith;->mhirrjin:Lcom/jp/bootstrap/internal/tj0;

    .line 41
    .line 42
    sget-object p0, Lcom/jp/bootstrap/internal/s80;->dhjfigsvwc:Lcom/jp/bootstrap/internal/s80;

    .line 43
    .line 44
    iget-boolean p1, v0, Lcom/jp/bootstrap/internal/tpqdbith;->ryrgde:Z

    .line 45
    .line 46
    xor-int/2addr p1, v1

    .line 47
    invoke-static {p1}, Lcom/jp/bootstrap/internal/hf;->ckyiuuu(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iput-object p0, v0, Lcom/jp/bootstrap/internal/tpqdbith;->wyjqgzdhz:Lcom/jp/bootstrap/internal/s80;

    .line 54
    .line 55
    iget-boolean p0, v0, Lcom/jp/bootstrap/internal/tpqdbith;->ryrgde:Z

    .line 56
    .line 57
    xor-int/2addr p0, v1

    .line 58
    invoke-static {p0}, Lcom/jp/bootstrap/internal/hf;->ckyiuuu(Z)V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, v0, Lcom/jp/bootstrap/internal/tpqdbith;->sbmzsrkn:Z

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/tpqdbith;->syiqloeyp()Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    new-instance p1, Lcom/jp/bootstrap/internal/lhmembysxl;

    .line 68
    .line 69
    invoke-direct {p1, v2}, Lcom/jp/bootstrap/internal/lhmembysxl;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->gbursjlv(Lcom/jp/bootstrap/internal/lhmembysxl;)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method

.method public final prewarm(Landroid/content/Context;)Lcom/jp/bootstrap/internal/tqwr;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    sget-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :cond_1
    sget-boolean v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheInitializationAttempted:Z

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    move-object p1, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheInitializationAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/jp/bootstrap/internal/ch0;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/jp/bootstrap/internal/ch0;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/jp/bootstrap/internal/ec0;

    .line 47
    .line 48
    new-instance v3, Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v4, "jp-streaming-media-v1"

    .line 55
    .line 56
    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/jp/bootstrap/internal/v4;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/v4;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, v3, p1, v0}, Lcom/jp/bootstrap/internal/ec0;-><init>(Ljava/io/File;Lcom/jp/bootstrap/internal/iqfwtue;Lcom/jp/bootstrap/internal/ch0;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/ec0;->uaakwbmitdl()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    sput-wide v3, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cachedSpaceSnapshot:J

    .line 72
    .line 73
    new-instance p1, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 74
    .line 75
    invoke-direct {p1, v2, v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;-><init>(Lcom/jp/bootstrap/internal/ec0;Lcom/jp/bootstrap/internal/ch0;)V

    .line 76
    .line 77
    .line 78
    sput-object p1, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 81
    .line 82
    .line 83
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    :try_start_2
    new-instance v0, Lcom/jp/bootstrap/internal/y20;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v0

    .line 92
    :goto_0
    invoke-static {p1}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    const-string v2, "StreamingMediaRuntime"

    .line 99
    .line 100
    const-string v3, "Streaming cache unavailable; using network directly"

    .line 101
    .line 102
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_3
    instance-of v0, p1, Lcom/jp/bootstrap/internal/y20;

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v1, p1

    .line 111
    :goto_1
    move-object p1, v1

    .line 112
    check-cast p1, Lcom/jp/bootstrap/internal/ec0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .line 114
    :goto_2
    monitor-exit p0

    .line 115
    return-object p1

    .line 116
    :goto_3
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public final refreshCacheBytes()J
    .locals 2

    .line 1
    sget-object p0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheState:Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/runtime/shell/StreamingMediaRuntime$CacheState;->getCache()Lcom/jp/bootstrap/internal/ec0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ec0;->uaakwbmitdl()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    :goto_0
    sput-wide v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cachedSpaceSnapshot:J

    .line 19
    .line 20
    return-wide v0
.end method
