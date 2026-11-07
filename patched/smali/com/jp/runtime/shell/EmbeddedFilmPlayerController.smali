.class public final Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$Companion;,
        Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;,
        Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$Companion;

.field private static final DOWNLOAD_OPTIMISTIC_TIMEOUT_MS:J = 0x1f40L

.field public static final EVENT_CHROME:Ljava/lang/String; = "playerChromeAction"

.field public static final EVENT_HOST_READY:Ljava/lang/String; = "playerHostReady"

.field public static final EVENT_STATE:Ljava/lang/String; = "playVideoStateChange"

.field private static final PROGRESS_INTERVAL_MS:J = 0x3e8L

.field private static final RESOLVE_LOADING_DELAY_MS:J = 0x258L


# instance fields
.field private localTvCinema:Z
.field private final activity:Lcom/jp/runtime/shell/ShellActivity;

.field private final autoNextCancelledForKey$delegate:Lcom/jp/bootstrap/internal/th;

.field private awaitingPortraitLayout:Z

.field private final castDrawerOpen$delegate:Lcom/jp/bootstrap/internal/th;

.field private final castSessionActive$delegate:Lcom/jp/bootstrap/internal/th;

.field private final castUiState$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeAutoNextSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

.field private final composeDownloadLabel$delegate:Lcom/jp/bootstrap/internal/th;

.field private composeDownloadTrackingContentId:Ljava/lang/String;

.field private final composeEpisodeKey$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeFullscreen$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeHasNext$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeIsPlaying$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeLineKey$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeLineLabel$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeLines$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composePlayWhenReady$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composePlaybackError$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composePlaybackState$delegate:Lcom/jp/bootstrap/internal/ah;

.field private final composePlayer$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeProgressFraction$delegate:Lcom/jp/bootstrap/internal/vg;

.field private final composeRemainingMs$delegate:Lcom/jp/bootstrap/internal/fh;

.field private final composeShowEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeShowLines$delegate:Lcom/jp/bootstrap/internal/th;

.field private final composeTitle$delegate:Lcom/jp/bootstrap/internal/th;

.field private container:Landroid/widget/FrameLayout;

.field private controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

.field private final controlsAccessibilityMode:I

.field private final controlsEnabledMode:Z

.field private final controlsLocked$delegate:Lcom/jp/bootstrap/internal/th;

.field private final controlsVersion$delegate:Lcom/jp/bootstrap/internal/ah;

.field private final controlsVisible$delegate:Lcom/jp/bootstrap/internal/th;

.field private final decoderRecovery:Lcom/jp/runtime/shell/DecoderRecoveryBudget;

.field private decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

.field private final dimOverlay:Landroid/view/View;

.field private directRetryHandled:Z

.field private directRetryUrl:Ljava/lang/String;

.field private final dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/tkwlkffmbu;"
        }
    .end annotation
.end field

.field private final downloadItems:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/jp/runtime/shell/PlayerDownloadUiState;",
            ">;"
        }
    .end annotation
.end field

.field private downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private final episodeSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

.field private fullscreen:Z

.field private final fullscreenChromeGate:Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

.field private fullscreenChromeGeneration:J

.field private final fullscreenChromeInputBlocker:Landroid/view/View;

.field private final fullscreenChromeRevealFallback:Ljava/lang/Runnable;

.field private fullscreenEnteredAtMs:J

.field private furthestPositionMs:J

.field private final host:Landroid/widget/FrameLayout;

.field private lastDownloadRevision:J

.field private lifecycleActive:Z

.field private final lineSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

.field private final mainHandler:Landroid/os/Handler;

.field private final message:Landroid/widget/TextView;

.field private normalFrame:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

.field private offlineAspectRatio:F

.field private final offlineDurationMs$delegate:Lcom/jp/bootstrap/internal/fh;

.field private final offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field private offlineMode:Z

.field private final offlinePlaying$delegate:Lcom/jp/bootstrap/internal/th;

.field private final offlinePositionMs$delegate:Lcom/jp/bootstrap/internal/fh;

.field private offlineRevealAttempts:I

.field private final offlineRevealRunnable:Ljava/lang/Runnable;

.field private offlineSurface:Landroid/view/Surface;

.field private final offlineTexture:Landroid/view/TextureView;

.field private final offlineUiActive$delegate:Lcom/jp/bootstrap/internal/th;

.field private final onlineFirstFrameRendered$delegate:Lcom/jp/bootstrap/internal/th;

.field private optimisticDownloadLabel:Ljava/lang/String;

.field private overlayObscured:Z

.field private final panelDismissRequest$delegate:Lcom/jp/bootstrap/internal/ah;

.field private final playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

.field private player:Landroidx/media3/exoplayer/ExoPlayer;

.field private final playerPanelOpen$delegate:Lcom/jp/bootstrap/internal/th;

.field private final playerView:Landroidx/media3/ui/PlayerView;

.field private final progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

.field private final progressTicker:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$progressTicker$1;

.field private recreateControlsOnPortrait:Z

.field private request:Lcom/jp/runtime/shell/PlaybackRequest;

.field private final resizeFill$delegate:Lcom/jp/bootstrap/internal/th;

.field private resolveGeneration:J

.field private resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private final resolveLoadingRunnable:Ljava/lang/Runnable;

.field private retainOfflineHostInDecor:Z

.field private final scope:Lcom/jp/bootstrap/internal/ssbfcea;

.field private selectionKey:Ljava/lang/String;

.field private shouldResume:Z

.field private final skipIntroOutro$delegate:Lcom/jp/bootstrap/internal/th;

.field private final skipIntroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

.field private skipOutroConsumedKey:Ljava/lang/String;

.field private final skipOutroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

.field private sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private webSelectionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$Companion;-><init>(Lcom/jp/bootstrap/internal/hjiaf;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->Companion:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->$stable:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/runtime/shell/ShellActivity;",
            "Lcom/jp/bootstrap/internal/tkwlkffmbu;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 15
    .line 16
    move-object/from16 v1, p2

    .line 17
    .line 18
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 19
    .line 20
    invoke-static {}, Lcom/jp/bootstrap/internal/fg;->jyozshuy()Lcom/jp/bootstrap/internal/sj0;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/jp/bootstrap/internal/eito;->syiqloeyp:Lcom/jp/bootstrap/internal/ulvfo;

    .line 25
    .line 26
    sget-object v2, Lcom/jp/bootstrap/internal/f9;->syiqloeyp:Lcom/jp/bootstrap/internal/vujddf;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/jp/bootstrap/internal/vujddf;->gtnruhk:Lcom/jp/bootstrap/internal/vujddf;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/jp/bootstrap/internal/pobbkg;->ydkpabz(Lcom/jp/bootstrap/internal/kvvd;Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/rpdfws;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/jp/bootstrap/internal/mail;->cauva(Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/fnxyatnqj;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scope:Lcom/jp/bootstrap/internal/ssbfcea;

    .line 39
    .line 40
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget v2, Lcom/jp/runtime/shell/R$layout;->jp_embedded_film_player_view:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    invoke-virtual {v1, v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast v1, Landroidx/media3/ui/PlayerView;

    .line 56
    .line 57
    const/high16 v2, -0x1000000

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    instance-of v6, v5, Landroid/view/TextureView;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    check-cast v5, Landroid/view/TextureView;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move-object v5, v4

    .line 74
    :goto_0
    if-eqz v5, :cond_1

    .line 75
    .line 76
    new-instance v6, Lcom/jp/bootstrap/internal/maehvrnjpb;

    .line 77
    .line 78
    invoke-direct {v6, v0, v1}, Lcom/jp/bootstrap/internal/maehvrnjpb;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroidx/media3/ui/PlayerView;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 85
    .line 86
    new-instance v5, Landroid/view/TextureView;

    .line 87
    .line 88
    invoke-direct {v5, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    invoke-virtual {v5, v9}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 93
    .line 94
    .line 95
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 96
    .line 97
    new-instance v6, Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 98
    .line 99
    invoke-direct {v6, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    const/16 v7, 0x8

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v8}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .line 115
    const/4 v10, -0x1

    .line 116
    const/16 v11, 0x11

    .line 117
    .line 118
    invoke-direct {v2, v10, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    iput-object v6, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 125
    .line 126
    new-instance v2, Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 127
    .line 128
    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/xnlsjhldp;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    sget-object v5, Lcom/jp/bootstrap/internal/bk;->sljpnfm:Lcom/jp/bootstrap/internal/bk;

    .line 135
    .line 136
    invoke-virtual {v2, v5}, Lcom/jp/bootstrap/internal/jpgq;->setViewCompositionStrategy(Lcom/jp/bootstrap/internal/ax0;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lcom/jp/runtime/shell/ComposableSingletons$EmbeddedFilmPlayerControllerKt;->INSTANCE:Lcom/jp/runtime/shell/ComposableSingletons$EmbeddedFilmPlayerControllerKt;

    .line 140
    .line 141
    invoke-virtual {v5}, Lcom/jp/runtime/shell/ComposableSingletons$EmbeddedFilmPlayerControllerKt;->getLambda$-964629465$shell_runtime()Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v2, v5}, Lcom/jp/bootstrap/internal/xnlsjhldp;->setContent(Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 149
    .line 150
    new-instance v12, Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-direct {v12, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    .line 154
    .line 155
    const v5, -0x1e1e1f

    .line 156
    .line 157
    .line 158
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    const/high16 v5, 0x41500000    # 13.0f

    .line 162
    .line 163
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iput-object v12, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 173
    .line 174
    invoke-static {v4}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayer$delegate:Lcom/jp/bootstrap/internal/th;

    .line 179
    .line 180
    const-string v5, "\u6b63\u5728\u64ad\u653e"

    .line 181
    .line 182
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeTitle$delegate:Lcom/jp/bootstrap/internal/th;

    .line 187
    .line 188
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVisible$delegate:Lcom/jp/bootstrap/internal/th;

    .line 195
    .line 196
    new-instance v5, Lcom/jp/bootstrap/internal/rp;

    .line 197
    .line 198
    invoke-direct {v5, v8}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 199
    .line 200
    .line 201
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVersion$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 202
    .line 203
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsLocked$delegate:Lcom/jp/bootstrap/internal/th;

    .line 210
    .line 211
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeFullscreen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 216
    .line 217
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeHasNext$delegate:Lcom/jp/bootstrap/internal/th;

    .line 222
    .line 223
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 228
    .line 229
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 230
    .line 231
    .line 232
    move-result-object v13

    .line 233
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 234
    .line 235
    invoke-static {v4}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 240
    .line 241
    sget-object v13, Lcom/jp/bootstrap/internal/ynthpuvskul;->sbmzsrkn:Lcom/jp/bootstrap/internal/ynthpuvskul;

    .line 242
    .line 243
    invoke-static {v13}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    iput-object v14, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 248
    .line 249
    invoke-static {v13}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 254
    .line 255
    invoke-static {v4}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodeKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 260
    .line 261
    invoke-static {v4}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 266
    .line 267
    new-instance v13, Lcom/jp/bootstrap/internal/rp;

    .line 268
    .line 269
    invoke-direct {v13, v8}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 270
    .line 271
    .line 272
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeAutoNextSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 273
    .line 274
    new-instance v13, Lcom/jp/bootstrap/internal/qp;

    .line 275
    .line 276
    const/4 v14, 0x0

    .line 277
    invoke-direct {v13, v14}, Lcom/jp/bootstrap/internal/qp;-><init>(F)V

    .line 278
    .line 279
    .line 280
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeProgressFraction$delegate:Lcom/jp/bootstrap/internal/vg;

    .line 281
    .line 282
    new-instance v13, Lcom/jp/bootstrap/internal/sp;

    .line 283
    .line 284
    const-wide v14, 0x7fffffffffffffffL

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    invoke-direct {v13, v14, v15}, Lcom/jp/bootstrap/internal/sp;-><init>(J)V

    .line 290
    .line 291
    .line 292
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeRemainingMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 293
    .line 294
    new-instance v13, Lcom/jp/bootstrap/internal/rp;

    .line 295
    .line 296
    invoke-direct {v13, v9}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 297
    .line 298
    .line 299
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackState$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 300
    .line 301
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeIsPlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 306
    .line 307
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayWhenReady$delegate:Lcom/jp/bootstrap/internal/th;

    .line 312
    .line 313
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 314
    .line 315
    .line 316
    move-result-object v13

    .line 317
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackError$delegate:Lcom/jp/bootstrap/internal/th;

    .line 318
    .line 319
    new-instance v13, Lcom/jp/runtime/shell/DecoderRecoveryBudget;

    .line 320
    .line 321
    invoke-direct {v13}, Lcom/jp/runtime/shell/DecoderRecoveryBudget;-><init>()V

    .line 322
    .line 323
    .line 324
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecovery:Lcom/jp/runtime/shell/DecoderRecoveryBudget;

    .line 325
    .line 326
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->episodeSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 331
    .line 332
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lineSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 337
    .line 338
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 339
    .line 340
    .line 341
    move-result-object v13

    .line 342
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castDrawerOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 343
    .line 344
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 345
    .line 346
    .line 347
    move-result-object v13

    .line 348
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castSessionActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 349
    .line 350
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerPanelOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 355
    .line 356
    new-instance v13, Lcom/jp/bootstrap/internal/rp;

    .line 357
    .line 358
    invoke-direct {v13, v8}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 359
    .line 360
    .line 361
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->panelDismissRequest$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 362
    .line 363
    new-instance v14, Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 364
    .line 365
    const/16 v30, 0x1fff

    .line 366
    .line 367
    const/16 v31, 0x0

    .line 368
    .line 369
    const/4 v15, 0x0

    .line 370
    const/16 v16, 0x0

    .line 371
    .line 372
    const/16 v17, 0x0

    .line 373
    .line 374
    const/16 v18, 0x0

    .line 375
    .line 376
    const/16 v19, 0x0

    .line 377
    .line 378
    const/16 v20, 0x0

    .line 379
    .line 380
    const-wide/16 v21, 0x0

    .line 381
    .line 382
    const-wide/16 v23, 0x0

    .line 383
    .line 384
    const/16 v25, 0x0

    .line 385
    .line 386
    const/16 v26, 0x0

    .line 387
    .line 388
    const/16 v27, 0x0

    .line 389
    .line 390
    const/16 v28, 0x0

    .line 391
    .line 392
    const/16 v29, 0x0

    .line 393
    .line 394
    invoke-direct/range {v14 .. v31}, Lcom/jp/runtime/shell/PlayerCastUiState;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZIZZILcom/jp/bootstrap/internal/hjiaf;)V

    .line 395
    .line 396
    .line 397
    invoke-static {v14}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castUiState$delegate:Lcom/jp/bootstrap/internal/th;

    .line 402
    .line 403
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 404
    .line 405
    .line 406
    move-result-object v13

    .line 407
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resizeFill$delegate:Lcom/jp/bootstrap/internal/th;

    .line 408
    .line 409
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroOutro$delegate:Lcom/jp/bootstrap/internal/th;

    .line 414
    .line 415
    new-instance v13, Lcom/jp/bootstrap/internal/rp;

    .line 416
    .line 417
    const/16 v14, 0x5a

    .line 418
    .line 419
    invoke-direct {v13, v14}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 420
    .line 421
    .line 422
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 423
    .line 424
    new-instance v13, Lcom/jp/bootstrap/internal/rp;

    .line 425
    .line 426
    invoke-direct {v13, v14}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 427
    .line 428
    .line 429
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 430
    .line 431
    const-string v13, "\u4e0b\u8f7d"

    .line 432
    .line 433
    invoke-static {v13}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 434
    .line 435
    .line 436
    move-result-object v13

    .line 437
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 438
    .line 439
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 440
    .line 441
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 442
    .line 443
    .line 444
    iput-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 445
    .line 446
    const-wide/16 v13, -0x1

    .line 447
    .line 448
    iput-wide v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lastDownloadRevision:J

    .line 449
    .line 450
    invoke-static {v4}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->autoNextCancelledForKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 455
    .line 456
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineUiActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 461
    .line 462
    new-instance v4, Lcom/jp/bootstrap/internal/sp;

    .line 463
    .line 464
    const-wide/16 v13, 0x0

    .line 465
    .line 466
    invoke-direct {v4, v13, v14}, Lcom/jp/bootstrap/internal/sp;-><init>(J)V

    .line 467
    .line 468
    .line 469
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePositionMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 470
    .line 471
    new-instance v4, Lcom/jp/bootstrap/internal/sp;

    .line 472
    .line 473
    invoke-direct {v4, v13, v14}, Lcom/jp/bootstrap/internal/sp;-><init>(J)V

    .line 474
    .line 475
    .line 476
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineDurationMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 477
    .line 478
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 483
    .line 484
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView()Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 489
    .line 490
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    iput-boolean v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsEnabledMode:Z

    .line 495
    .line 496
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 497
    .line 498
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    iput v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsAccessibilityMode:I

    .line 503
    .line 504
    new-instance v4, Landroid/view/View;

    .line 505
    .line 506
    invoke-direct {v4, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    .line 513
    .line 514
    .line 515
    const/4 v13, 0x2

    .line 516
    invoke-virtual {v4, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 517
    .line 518
    .line 519
    new-instance v14, Lcom/jp/bootstrap/internal/uqvlter;

    .line 520
    .line 521
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    .line 526
    .line 527
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeInputBlocker:Landroid/view/View;

    .line 528
    .line 529
    new-instance v14, Landroid/view/View;

    .line 530
    .line 531
    invoke-direct {v14, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    const/high16 v15, -0x48000000

    .line 535
    .line 536
    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundColor(I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v14, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v14, v9}, Landroid/view/View;->setClickable(Z)V

    .line 546
    .line 547
    .line 548
    new-instance v15, Lcom/jp/bootstrap/internal/bjcqvwh;

    .line 549
    .line 550
    invoke-direct {v15, v0, v9}, Lcom/jp/bootstrap/internal/bjcqvwh;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    .line 555
    .line 556
    iput-object v14, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 557
    .line 558
    new-instance v15, Landroid/widget/FrameLayout;

    .line 559
    .line 560
    invoke-direct {v15, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 561
    .line 562
    .line 563
    const v13, -0xededee

    .line 564
    .line 565
    .line 566
    invoke-virtual {v15, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v15, v7}, Landroid/view/View;->setVisibility(I)V

    .line 570
    .line 571
    .line 572
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 573
    .line 574
    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v15, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    .line 579
    .line 580
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 581
    .line 582
    invoke-direct {v1, v10, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v15, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .line 587
    .line 588
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 589
    .line 590
    const/4 v6, -0x2

    .line 591
    invoke-direct {v1, v6, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v15, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    .line 596
    .line 597
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 598
    .line 599
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 600
    .line 601
    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v15, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    .line 606
    .line 607
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    .line 609
    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v15, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    .line 614
    .line 615
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 616
    .line 617
    invoke-direct {v1, v10, v6, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v15, v12, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 624
    .line 625
    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {v15, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    .line 630
    .line 631
    new-instance v1, Lcom/jp/bootstrap/internal/uzwgonf;

    .line 632
    .line 633
    invoke-direct {v1, v8, v0}, Lcom/jp/bootstrap/internal/uzwgonf;-><init>(ILjava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v15, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 637
    .line 638
    .line 639
    iput-object v15, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 640
    .line 641
    const-string v1, ""

    .line 642
    .line 643
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 644
    .line 645
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 646
    .line 647
    iput-boolean v9, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 648
    .line 649
    iput-boolean v9, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 650
    .line 651
    invoke-static {v5}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onlineFirstFrameRendered$delegate:Lcom/jp/bootstrap/internal/th;

    .line 656
    .line 657
    new-instance v4, Landroid/os/Handler;

    .line 658
    .line 659
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 664
    .line 665
    .line 666
    iput-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 667
    .line 668
    new-instance v1, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 669
    .line 670
    new-instance v2, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 671
    .line 672
    invoke-direct {v2, v0, v8}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 673
    .line 674
    .line 675
    invoke-direct {v1, v3, v2}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;-><init>(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 676
    .line 677
    .line 678
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 679
    .line 680
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

    .line 681
    .line 682
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 683
    .line 684
    invoke-direct {v5, v0, v9}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 685
    .line 686
    .line 687
    new-instance v6, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 688
    .line 689
    const/4 v2, 0x2

    .line 690
    invoke-direct {v6, v0, v2}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 691
    .line 692
    .line 693
    new-instance v7, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 694
    .line 695
    const/4 v2, 0x3

    .line 696
    invoke-direct {v7, v0, v2}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 697
    .line 698
    .line 699
    move-object v2, v15

    .line 700
    invoke-direct/range {v1 .. v7}, Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;-><init>(Landroid/view/View;Lcom/jp/runtime/shell/ShellActivity;Landroid/os/Handler;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 701
    .line 702
    .line 703
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate:Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

    .line 704
    .line 705
    new-instance v1, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 706
    .line 707
    invoke-direct {v1, v0, v8}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 708
    .line 709
    .line 710
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback:Ljava/lang/Runnable;

    .line 711
    .line 712
    new-instance v1, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 713
    .line 714
    invoke-direct {v1, v0, v9}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 715
    .line 716
    .line 717
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable:Ljava/lang/Runnable;

    .line 718
    .line 719
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$progressTicker$1;

    .line 720
    .line 721
    invoke-direct {v1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$progressTicker$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 722
    .line 723
    .line 724
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progressTicker:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$progressTicker$1;

    .line 725
    .line 726
    const/16 v2, 0x14

    .line 727
    .line 728
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dp(I)I

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    const/16 v5, 0xc

    .line 733
    .line 734
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dp(I)I

    .line 735
    .line 736
    .line 737
    move-result v6

    .line 738
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dp(I)I

    .line 739
    .line 740
    .line 741
    move-result v2

    .line 742
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dp(I)I

    .line 743
    .line 744
    .line 745
    move-result v5

    .line 746
    invoke-virtual {v12, v3, v6, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v12, v9}, Landroid/view/View;->setClickable(Z)V

    .line 750
    .line 751
    .line 752
    new-instance v2, Lcom/jp/bootstrap/internal/bjcqvwh;

    .line 753
    .line 754
    invoke-direct {v2, v0, v8}, Lcom/jp/bootstrap/internal/bjcqvwh;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v12, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    .line 762
    .line 763
    new-instance v1, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 764
    .line 765
    const/4 v2, 0x5

    .line 766
    invoke-direct {v1, v0, v2}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 767
    .line 768
    .line 769
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealRunnable:Ljava/lang/Runnable;

    .line 770
    .line 771
    return-void
.end method

.method public synthetic constructor <init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/tkwlkffmbu;ILcom/jp/bootstrap/internal/hjiaf;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 772
    new-instance p2, Lcom/jp/bootstrap/internal/dfpidqjmo;

    const/16 p3, 0x1b

    invoke-direct {p2, p3}, Lcom/jp/bootstrap/internal/dfpidqjmo;-><init>(I)V

    .line 773
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final synthetic access$applyPictureBox(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createControlsView$lambda$0$0$0$12(Lcom/jp/bootstrap/internal/fh;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$12(Lcom/jp/bootstrap/internal/fh;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createControlsView$lambda$0$0$0$17(Lcom/jp/bootstrap/internal/ah;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$17(Lcom/jp/bootstrap/internal/ah;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$createControlsView$lambda$0$0$0$18(Lcom/jp/bootstrap/internal/ah;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$18(Lcom/jp/bootstrap/internal/ah;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$createControlsView$lambda$0$0$0$9(Lcom/jp/bootstrap/internal/th;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$9(Lcom/jp/bootstrap/internal/th;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchPlaybackFailure(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackFailure()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchPlaybackState(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/runtime/shell/ShellActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCastSessionActive(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getComposeAutoNextSeconds(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeAutoNextSeconds()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getComposeDownloadTrackingContentId$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getComposePlayWhenReady(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlayWhenReady()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getComposePlaybackError(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getComposePlaybackState(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getControlsVersion(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getHost$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getMessage$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOfflineMode$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getOverlayObscured$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getResolveGeneration$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getResolveJob$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/ezoyvkgk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSelectionKey$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$hideResolveLoading(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$presentHost(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$recoverPlaybackError(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;Lcom/jp/bootstrap/internal/rs;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recoverPlaybackError(Lcom/jp/bootstrap/internal/gt;Lcom/jp/bootstrap/internal/rs;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$refreshDownloadLabel(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$releaseOfflineSurface(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releaseOfflineSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$requestNextEpisode(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->requestNextEpisode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$seekCast(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->seekCast(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$selectEpisode(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeEpisodeItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectEpisode(Lcom/jp/runtime/shell/ChromeEpisodeItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setCastVolume(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastVolume(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposeIsPlaying(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposePlayWhenReady(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposePlaybackError(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposePlaybackState(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposeProgressFraction(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeProgressFraction(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setComposeRemainingMs(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeRemainingMs(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setControlsVersion(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setControlsVisible(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setFullscreen(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setOnlineFirstFrameRendered(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOnlineFirstFrameRendered(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setOptimisticDownloadLabel$p(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$startOfflinePlayer$bind(JLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;Ljava/lang/String;Lcom/jp/bootstrap/internal/p00;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->startOfflinePlayer$bind(JLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;Ljava/lang/String;Lcom/jp/bootstrap/internal/p00;Landroid/graphics/SurfaceTexture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$startPlayer(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ResolvedMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->startPlayer(Lcom/jp/runtime/shell/ResolvedMedia;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleCastMute(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->toggleCastMute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleCastPlayback(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->toggleCastPlayback()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic aescjqoa(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic amcmg(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$24$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final applyChromeMeta(Lcom/jp/bootstrap/internal/cjpbeith;Z)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "hasNext"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v4, v1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeHasNext(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v2, v5}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->updateHasNext(Z)V

    .line 24
    .line 25
    .line 26
    const-string v2, "showEpisodes"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeShowEpisodes(Z)V

    .line 33
    .line 34
    .line 35
    const-string v2, "showLines"

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeShowLines(Z)V

    .line 42
    .line 43
    .line 44
    const-string v2, "lineLabel"

    .line 45
    .line 46
    const-string v5, ""

    .line 47
    .line 48
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x0

    .line 57
    if-nez v6, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v2, v7

    .line 61
    :goto_0
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLineLabel(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v2, "skipIntroOutro"

    .line 65
    .line 66
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setSkipIntroOutro(Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v2, "title"

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    invoke-static {v1, v2}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeTitle(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v2, "episodeKey"

    .line 97
    .line 98
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_3

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    move-object v2, v7

    .line 116
    :goto_1
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodeKey(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    if-eqz p2, :cond_6

    .line 120
    .line 121
    const-string v2, "lineKey"

    .line 122
    .line 123
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_6

    .line 128
    .line 129
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move-object v2, v7

    .line 141
    :goto_2
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLineKey(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    const-string v2, "downloadTrackingContentId"

    .line 145
    .line 146
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    const-string v8, "workId"

    .line 151
    .line 152
    const/4 v9, 0x1

    .line 153
    if-eqz v6, :cond_8

    .line 154
    .line 155
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move-object v2, v7

    .line 167
    :goto_3
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    xor-int/2addr v6, v9

    .line 172
    invoke-direct {v0, v2, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->updateDownloadTrackingContentId(Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_e

    .line 180
    .line 181
    const-string v2, "downloadContentId"

    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_e

    .line 188
    .line 189
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 190
    .line 191
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_9

    .line 200
    .line 201
    move-object/from16 v20, v2

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_9
    move-object/from16 v20, v7

    .line 205
    .line 206
    :goto_4
    if-eqz v10, :cond_a

    .line 207
    .line 208
    invoke-virtual {v10}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move-object v11, v2

    .line 213
    goto :goto_5

    .line 214
    :cond_a
    move-object v11, v7

    .line 215
    :goto_5
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 216
    .line 217
    if-eqz v2, :cond_b

    .line 218
    .line 219
    move v13, v9

    .line 220
    goto :goto_6

    .line 221
    :cond_b
    move v13, v3

    .line 222
    :goto_6
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOnlineFirstFrameRendered()Z

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    iget-boolean v15, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 227
    .line 228
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 229
    .line 230
    if-eqz v2, :cond_c

    .line 231
    .line 232
    invoke-interface {v2}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-ne v2, v9, :cond_c

    .line 237
    .line 238
    move/from16 v16, v9

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_c
    move/from16 v16, v3

    .line 242
    .line 243
    :goto_7
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 244
    .line 245
    .line 246
    move-result v17

    .line 247
    move-object/from16 v12, v20

    .line 248
    .line 249
    invoke-static/range {v11 .. v17}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->shouldAdoptLateCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v10, :cond_d

    .line 254
    .line 255
    const/16 v24, 0x77f

    .line 256
    .line 257
    const/16 v25, 0x0

    .line 258
    .line 259
    const-wide/16 v11, 0x0

    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    const/4 v14, 0x0

    .line 263
    const/4 v15, 0x0

    .line 264
    const/16 v16, 0x0

    .line 265
    .line 266
    const-wide/16 v17, 0x0

    .line 267
    .line 268
    const/16 v19, 0x0

    .line 269
    .line 270
    const/16 v21, 0x0

    .line 271
    .line 272
    const/16 v22, 0x0

    .line 273
    .line 274
    const/16 v23, 0x0

    .line 275
    .line 276
    invoke-static/range {v10 .. v25}, Lcom/jp/runtime/shell/PlaybackRequest;->copy$default(Lcom/jp/runtime/shell/PlaybackRequest;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/jp/runtime/shell/PlaybackRequest;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    :goto_8
    move-object/from16 v12, v20

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_d
    move-object v5, v7

    .line 284
    goto :goto_8

    .line 285
    :goto_9
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 286
    .line 287
    if-eqz v2, :cond_e

    .line 288
    .line 289
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 290
    .line 291
    new-instance v5, Lcom/jp/bootstrap/internal/sbgoakejgw;

    .line 292
    .line 293
    invoke-direct {v5, v0, v12, v9}, Lcom/jp/bootstrap/internal/sbgoakejgw;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    .line 298
    .line 299
    :cond_e
    const-string v2, "chrome"

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const-string v5, "episodes"

    .line 306
    .line 307
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-eqz v6, :cond_f

    .line 312
    .line 313
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    goto :goto_a

    .line 318
    :cond_f
    if-eqz v2, :cond_10

    .line 319
    .line 320
    iget-object v6, v2, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 321
    .line 322
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_10

    .line 327
    .line 328
    invoke-virtual {v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    goto :goto_a

    .line 333
    :cond_10
    move-object v5, v7

    .line 334
    :goto_a
    const-string v6, "lines"

    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    if-eqz v8, :cond_11

    .line 341
    .line 342
    invoke-virtual {v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    goto :goto_b

    .line 347
    :cond_11
    if-eqz v2, :cond_12

    .line 348
    .line 349
    iget-object v8, v2, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 350
    .line 351
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    if-eqz v8, :cond_12

    .line 356
    .line 357
    invoke-virtual {v2, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    goto :goto_b

    .line 362
    :cond_12
    move-object v6, v7

    .line 363
    :goto_b
    if-eqz v5, :cond_13

    .line 364
    .line 365
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->parseChromeEpisodes(Lcom/jp/bootstrap/internal/nxqsmsfr;)Ljava/util/List;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodes(Ljava/util/List;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshHasNextFromEpisodes()V

    .line 373
    .line 374
    .line 375
    :cond_13
    if-eqz v6, :cond_14

    .line 376
    .line 377
    invoke-direct {v0, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->parseChromeLines(Lcom/jp/bootstrap/internal/nxqsmsfr;)Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLines(Ljava/util/List;)V

    .line 382
    .line 383
    .line 384
    :cond_14
    const-string v5, "autoNextSeconds"

    .line 385
    .line 386
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-eqz v4, :cond_15

    .line 391
    .line 392
    invoke-virtual {v1, v3, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    goto :goto_c

    .line 401
    :cond_15
    if-eqz v2, :cond_16

    .line 402
    .line 403
    iget-object v1, v2, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 404
    .line 405
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-eqz v1, :cond_16

    .line 410
    .line 411
    invoke-virtual {v2, v3, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    :cond_16
    :goto_c
    if-eqz v7, :cond_18

    .line 420
    .line 421
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-gez v1, :cond_17

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_17
    move v3, v1

    .line 429
    :goto_d
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeAutoNextSeconds(I)V

    .line 430
    .line 431
    .line 432
    :cond_18
    return-void
.end method

.method public static synthetic applyChromeMeta$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/cjpbeith;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyChromeMeta(Lcom/jp/bootstrap/internal/cjpbeith;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final applyChromeMeta$lambda$5(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0, p1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOnlineFirstFrameRendered()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_3

    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 24
    .line 25
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retryCurrent()V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method private final applyFrame(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final applyPictureBox()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getResizeFill()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$orDefaultPortrait(Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/jp/runtime/shell/FilmPictureFitKt;->filmPictureZooms(ZZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerVideoAspect()Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {p0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fittedPlaybackBox(Ljava/lang/Float;)Lcom/jp/runtime/shell/FilmPicturePlacement;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v4, v3

    .line 42
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placePicture(Landroid/view/View;Lcom/jp/runtime/shell/FilmPicturePlacement;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->pictureAspectForContain()Ljava/lang/Float;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {p0, v2, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->containTexture(Landroid/view/View;Ljava/lang/Float;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v4, 0x0

    .line 78
    cmpl-float v2, v2, v4

    .line 79
    .line 80
    if-lez v2, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move-object v1, v3

    .line 84
    :goto_2
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fittedPlaybackBox(Ljava/lang/Float;)Lcom/jp/runtime/shell/FilmPicturePlacement;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placePicture(Landroid/view/View;Lcom/jp/runtime/shell/FilmPicturePlacement;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public static synthetic arjuqebdx(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$13$0$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic bmucqf(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/pfpsgdybs;)Lcom/jp/bootstrap/internal/ikgg;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$6$0(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/pfpsgdybs;)Lcom/jp/bootstrap/internal/ikgg;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic cauva(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic cdsesehahek(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeEpisodeItem;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$6$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeEpisodeItem;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ckyiuuu(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$12$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final clearDownloadOptimistic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method private final containTexture(Landroid/view/View;Ljava/lang/Float;)V
    .locals 1

    .line 1
    instance-of p0, p1, Landroidx/media3/ui/PlayerView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/media3/ui/PlayerView;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object p0, v0

    .line 18
    :goto_1
    instance-of p1, p0, Landroid/view/TextureView;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/view/TextureView;

    .line 24
    .line 25
    :cond_2
    if-nez v0, :cond_3

    .line 26
    .line 27
    return-void

    .line 28
    :cond_3
    new-instance p0, Lcom/jp/bootstrap/internal/tvyvc;

    .line 29
    .line 30
    const/4 p1, 0x6

    .line 31
    invoke-direct {p0, p1, v0, p2}, Lcom/jp/bootstrap/internal/tvyvc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-lez p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-gtz p1, :cond_4

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/tvyvc;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_5
    :goto_2
    new-instance p1, Lcom/jp/bootstrap/internal/flrh;

    .line 52
    .line 53
    const/16 p2, 0x10

    .line 54
    .line 55
    invoke-direct {p1, p2, v0, p0}, Lcom/jp/bootstrap/internal/flrh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private static final containTexture$lambda$0(Landroid/view/TextureView;Ljava/lang/Float;)Lcom/jp/bootstrap/internal/bt0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lcom/jp/runtime/shell/FilmContainScale;

    .line 14
    .line 15
    invoke-direct {p1, v2, v2}, Lcom/jp/runtime/shell/FilmContainScale;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v0, v1, p1}, Lcom/jp/runtime/shell/FilmPictureFitKt;->filmContainScale(IIF)Lcom/jp/runtime/shell/FilmContainScale;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    new-instance v3, Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 30
    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    if-lez v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleX()F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    cmpg-float v4, v4, v2

    .line 41
    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleY()F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    cmpg-float v4, v4, v2

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleX()F

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleY()F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v0, v0

    .line 62
    const/high16 v6, 0x40000000    # 2.0f

    .line 63
    .line 64
    div-float/2addr v0, v6

    .line 65
    int-to-float v1, v1

    .line 66
    div-float/2addr v1, v6

    .line 67
    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleX()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    cmpg-float v0, v0, v2

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/jp/runtime/shell/FilmContainScale;->getScaleY()F

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    cmpg-float p1, p1, v2

    .line 83
    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const/4 p1, 0x0

    .line 89
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 96
    .line 97
    return-object p0
.end method

.method private static final containTexture$lambda$1(Landroid/view/TextureView;Lcom/jp/bootstrap/internal/mbwlg;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final createControlsView()Lcom/jp/bootstrap/internal/xnlsjhldp;
    .locals 4

    .line 1
    new-instance v0, Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/xnlsjhldp;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/jp/bootstrap/internal/bk;->xizmfgbpnv:Lcom/jp/bootstrap/internal/bk;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/jp/bootstrap/internal/jpgq;->setViewCompositionStrategy(Lcom/jp/bootstrap/internal/ax0;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/jp/bootstrap/internal/rafqorj;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-direct {v2, p0, v3}, Lcom/jp/bootstrap/internal/rafqorj;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 27
    .line 28
    const v3, 0x4670f403

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v3, v2, v1}, Lcom/jp/bootstrap/internal/ntdhbhlf;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/jp/bootstrap/internal/xnlsjhldp;->setContent(Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 18

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 11
    .line 12
    move-object/from16 v6, p1

    .line 13
    .line 14
    check-cast v6, Lcom/jp/bootstrap/internal/pawugmt;

    .line 15
    .line 16
    invoke-virtual {v6, v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lcom/jp/runtime/shell/AppShellDesign;->INSTANCE:Lcom/jp/runtime/shell/AppShellDesign;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/jp/runtime/shell/AppShellDesign;->getBrandDefault-0d7_KjU()J

    .line 25
    .line 26
    .line 27
    move-result-wide v7

    .line 28
    invoke-virtual {v0}, Lcom/jp/runtime/shell/AppShellDesign;->getSurfaceMedia-0d7_KjU()J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    invoke-virtual {v0}, Lcom/jp/runtime/shell/AppShellDesign;->getSurfaceRaised-0d7_KjU()J

    .line 33
    .line 34
    .line 35
    move-result-wide v13

    .line 36
    invoke-virtual {v0}, Lcom/jp/runtime/shell/AppShellDesign;->getTextPrimary-0d7_KjU()J

    .line 37
    .line 38
    .line 39
    move-result-wide v11

    .line 40
    invoke-virtual {v0}, Lcom/jp/runtime/shell/AppShellDesign;->getTextPrimary-0d7_KjU()J

    .line 41
    .line 42
    .line 43
    move-result-wide v15

    .line 44
    const v17, -0x1e002

    .line 45
    .line 46
    .line 47
    invoke-static/range {v7 .. v17}, Lcom/jp/bootstrap/internal/tbgjbnhlq;->syiqloeyp(JJJJJI)Lcom/jp/bootstrap/internal/ulzmafthvzh;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v0, Lcom/jp/bootstrap/internal/rafqorj;

    .line 52
    .line 53
    const/4 v1, 0x4

    .line 54
    move-object/from16 v3, p0

    .line 55
    .line 56
    invoke-direct {v0, v3, v1}, Lcom/jp/bootstrap/internal/rafqorj;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 57
    .line 58
    .line 59
    const v1, -0x4875e029

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0, v6}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/16 v7, 0xc00

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-static/range {v2 .. v7}, Lcom/jp/bootstrap/internal/ba;->jzphcv(Lcom/jp/bootstrap/internal/ulzmafthvzh;Lcom/jp/bootstrap/internal/kb0;Lcom/jp/bootstrap/internal/ms0;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v6}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 75
    .line 76
    .line 77
    :goto_1
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 78
    .line 79
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 42

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    and-int/lit8 v0, p2, 0x3

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v8, 0x2

    .line 7
    if-eq v0, v8, :cond_0

    .line 8
    .line 9
    move v0, v6

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    and-int/lit8 v1, p2, 0x1

    .line 13
    .line 14
    move-object/from16 v13, p1

    .line 15
    .line 16
    check-cast v13, Lcom/jp/bootstrap/internal/pawugmt;

    .line 17
    .line 18
    invoke-virtual {v13, v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4b

    .line 23
    .line 24
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    check-cast v0, Lcom/jp/bootstrap/internal/th;

    .line 42
    .line 43
    new-instance v14, Lcom/jp/runtime/shell/EmbeddedChromeInputs;

    .line 44
    .line 45
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVisible()Z

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 50
    .line 51
    .line 52
    move-result v16

    .line 53
    invoke-static {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$1(Lcom/jp/bootstrap/internal/th;)Z

    .line 54
    .line 55
    .line 56
    move-result v17

    .line 57
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getEpisodeSheetOpen()Z

    .line 58
    .line 59
    .line 60
    move-result v18

    .line 61
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getLineSheetOpen()Z

    .line 62
    .line 63
    .line 64
    move-result v19

    .line 65
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 66
    .line 67
    .line 68
    move-result v20

    .line 69
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getPlayerPanelOpen()Z

    .line 70
    .line 71
    .line 72
    move-result v21

    .line 73
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 74
    .line 75
    .line 76
    move-result v22

    .line 77
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlayer()Lcom/jp/bootstrap/internal/gt;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    move/from16 v23, v6

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/16 v23, 0x0

    .line 87
    .line 88
    :goto_1
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineUiActive()Z

    .line 89
    .line 90
    .line 91
    move-result v24

    .line 92
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeIsPlaying()Z

    .line 93
    .line 94
    .line 95
    move-result v25

    .line 96
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackState()I

    .line 97
    .line 98
    .line 99
    move-result v26

    .line 100
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 101
    .line 102
    .line 103
    move-result v27

    .line 104
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePlaying()Z

    .line 105
    .line 106
    .line 107
    move-result v28

    .line 108
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 109
    .line 110
    .line 111
    move-result v29

    .line 112
    invoke-direct/range {v14 .. v29}, Lcom/jp/runtime/shell/EmbeddedChromeInputs;-><init>(ZZZZZZZZZZZIZZZ)V

    .line 113
    .line 114
    .line 115
    invoke-static {v14}, Lcom/jp/runtime/shell/PlayerChromeStateKt;->deriveEmbeddedChromeLayout(Lcom/jp/runtime/shell/EmbeddedChromeInputs;)Lcom/jp/runtime/shell/EmbeddedChromeLayout;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getAutoHideEligible()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    or-int/2addr v9, v10

    .line 144
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    const/4 v11, 0x0

    .line 149
    if-nez v9, :cond_3

    .line 150
    .line 151
    if-ne v10, v1, :cond_4

    .line 152
    .line 153
    :cond_3
    new-instance v10, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$1$1;

    .line 154
    .line 155
    invoke-direct {v10, v3, v2, v11}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$1$1;-><init>(Lcom/jp/runtime/shell/EmbeddedChromeLayout;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    check-cast v10, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 162
    .line 163
    invoke-static {v4, v5, v10, v13}, Lcom/jp/bootstrap/internal/yr0;->hqaldusn(Ljava/lang/Object;Ljava/lang/Object;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/pawugmt;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlayer()Lcom/jp/bootstrap/internal/gt;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineUiActive()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodeKey()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLineKey()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    invoke-virtual {v13, v4}, Lcom/jp/bootstrap/internal/pawugmt;->mhirrjin(Z)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    or-int/2addr v4, v5

    .line 191
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    or-int/2addr v4, v5

    .line 196
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    if-nez v4, :cond_5

    .line 201
    .line 202
    if-ne v5, v1, :cond_6

    .line 203
    .line 204
    :cond_5
    new-instance v5, Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;

    .line 205
    .line 206
    invoke-direct {v5, v11, v6, v11}, Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;-><init>(Ljava/lang/Object;ILcom/jp/bootstrap/internal/hjiaf;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    move-object v4, v5

    .line 213
    check-cast v4, Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;

    .line 214
    .line 215
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    const/16 v12, 0x9

    .line 224
    .line 225
    if-nez v5, :cond_7

    .line 226
    .line 227
    if-ne v10, v1, :cond_8

    .line 228
    .line 229
    :cond_7
    new-instance v10, Lcom/jp/bootstrap/internal/yndsdvj;

    .line 230
    .line 231
    invoke-direct {v10, v12, v2, v0}, Lcom/jp/bootstrap/internal/yndsdvj;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_8
    move-object v14, v10

    .line 238
    check-cast v14, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 239
    .line 240
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    or-int/2addr v0, v5

    .line 249
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    const/16 v10, 0xa

    .line 254
    .line 255
    if-nez v0, :cond_9

    .line 256
    .line 257
    if-ne v5, v1, :cond_a

    .line 258
    .line 259
    :cond_9
    new-instance v5, Lcom/jp/bootstrap/internal/yndsdvj;

    .line 260
    .line 261
    invoke-direct {v5, v10, v9, v2}, Lcom/jp/bootstrap/internal/yndsdvj;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    check-cast v5, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 268
    .line 269
    invoke-static {v9, v5, v13}, Lcom/jp/bootstrap/internal/yr0;->dhjfigsvwc(Ljava/lang/Object;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tjht;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    if-nez v0, :cond_b

    .line 281
    .line 282
    if-ne v5, v1, :cond_c

    .line 283
    .line 284
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    :cond_c
    move-object v0, v5

    .line 294
    check-cast v0, Lcom/jp/bootstrap/internal/th;

    .line 295
    .line 296
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v15

    .line 304
    move/from16 v23, v6

    .line 305
    .line 306
    const-wide/16 v6, 0x0

    .line 307
    .line 308
    if-nez v5, :cond_d

    .line 309
    .line 310
    if-ne v15, v1, :cond_e

    .line 311
    .line 312
    :cond_d
    new-instance v15, Lcom/jp/bootstrap/internal/sp;

    .line 313
    .line 314
    invoke-direct {v15, v6, v7}, Lcom/jp/bootstrap/internal/sp;-><init>(J)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_e
    move-object v5, v15

    .line 321
    check-cast v5, Lcom/jp/bootstrap/internal/fh;

    .line 322
    .line 323
    if-eqz v9, :cond_f

    .line 324
    .line 325
    move/from16 v15, v23

    .line 326
    .line 327
    :goto_2
    move-wide/from16 p1, v6

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_f
    const/4 v15, 0x0

    .line 331
    goto :goto_2

    .line 332
    :goto_3
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlayWhenReady()Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOnlineFirstFrameRendered()Z

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackState()I

    .line 345
    .line 346
    .line 347
    move-result v12

    .line 348
    invoke-static {v15, v6, v7, v10, v12}, Lcom/jp/runtime/shell/PlayerChromeStateKt;->deriveEmbeddedBufferingPhase(ZZZZI)Lcom/jp/runtime/shell/EmbeddedBufferingPhase;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlayWhenReady()Z

    .line 361
    .line 362
    .line 363
    move-result v10

    .line 364
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    filled-new-array {v9, v6, v7, v10}, [Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v10

    .line 376
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->cauva(I)Z

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    or-int/2addr v10, v12

    .line 385
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    or-int/2addr v10, v12

    .line 390
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    if-nez v10, :cond_10

    .line 395
    .line 396
    if-ne v12, v1, :cond_11

    .line 397
    .line 398
    :cond_10
    new-instance v12, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$3$1;

    .line 399
    .line 400
    invoke-direct {v12, v6, v2, v0, v11}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$3$1;-><init>(Lcom/jp/runtime/shell/EmbeddedBufferingPhase;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/th;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_11
    check-cast v12, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 407
    .line 408
    invoke-static {v7, v12, v13}, Lcom/jp/bootstrap/internal/yr0;->sbmzsrkn([Ljava/lang/Object;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/pawugmt;)V

    .line 409
    .line 410
    .line 411
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackState()I

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v10

    .line 431
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    or-int/2addr v10, v12

    .line 436
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    or-int/2addr v10, v12

    .line 441
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    if-nez v10, :cond_12

    .line 446
    .line 447
    if-ne v12, v1, :cond_13

    .line 448
    .line 449
    :cond_12
    new-instance v12, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$4$1;

    .line 450
    .line 451
    invoke-direct {v12, v9, v2, v5, v11}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$4$1;-><init>(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/fh;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_13
    check-cast v12, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 458
    .line 459
    invoke-static {v9, v6, v7, v12, v13}, Lcom/jp/bootstrap/internal/yr0;->gbcohonrle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/pawugmt;)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 463
    .line 464
    .line 465
    move-result v6

    .line 466
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    or-int/2addr v7, v10

    .line 479
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v10

    .line 483
    if-nez v7, :cond_14

    .line 484
    .line 485
    if-ne v10, v1, :cond_15

    .line 486
    .line 487
    :cond_14
    new-instance v10, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$5$1;

    .line 488
    .line 489
    invoke-direct {v10, v2, v9, v11}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$5$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    :cond_15
    check-cast v10, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 496
    .line 497
    invoke-static {v9, v6, v10, v13}, Lcom/jp/bootstrap/internal/yr0;->hqaldusn(Ljava/lang/Object;Ljava/lang/Object;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/pawugmt;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getSheetsOpen()Z

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodeKey()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v10

    .line 512
    if-eqz v10, :cond_18

    .line 513
    .line 514
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeAutoNextSeconds()I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    if-lez v10, :cond_18

    .line 519
    .line 520
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 521
    .line 522
    .line 523
    move-result v10

    .line 524
    if-nez v10, :cond_18

    .line 525
    .line 526
    if-nez v6, :cond_18

    .line 527
    .line 528
    if-nez v9, :cond_16

    .line 529
    .line 530
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineUiActive()Z

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    if-nez v10, :cond_16

    .line 535
    .line 536
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 537
    .line 538
    .line 539
    move-result v10

    .line 540
    if-eqz v10, :cond_18

    .line 541
    .line 542
    :cond_16
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getAutoNextCancelledForKey()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    invoke-static {v10, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v10

    .line 550
    if-nez v10, :cond_18

    .line 551
    .line 552
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackState()I

    .line 553
    .line 554
    .line 555
    move-result v10

    .line 556
    const/4 v12, 0x4

    .line 557
    if-eq v10, v12, :cond_17

    .line 558
    .line 559
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeRemainingMs()J

    .line 560
    .line 561
    .line 562
    move-result-wide v18

    .line 563
    const-wide/16 v20, 0x1f40

    .line 564
    .line 565
    cmp-long v10, v18, v20

    .line 566
    .line 567
    if-lez v10, :cond_17

    .line 568
    .line 569
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 570
    .line 571
    .line 572
    move-result-object v10

    .line 573
    invoke-virtual {v10}, Lcom/jp/runtime/shell/PlayerCastUiState;->getEnded()Z

    .line 574
    .line 575
    .line 576
    move-result v10

    .line 577
    if-nez v10, :cond_17

    .line 578
    .line 579
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineUiActive()Z

    .line 580
    .line 581
    .line 582
    move-result v10

    .line 583
    if-eqz v10, :cond_18

    .line 584
    .line 585
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineDurationMs()J

    .line 586
    .line 587
    .line 588
    move-result-wide v18

    .line 589
    cmp-long v10, v18, p1

    .line 590
    .line 591
    if-lez v10, :cond_18

    .line 592
    .line 593
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineDurationMs()J

    .line 594
    .line 595
    .line 596
    move-result-wide v18

    .line 597
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePositionMs()J

    .line 598
    .line 599
    .line 600
    move-result-wide v25

    .line 601
    sub-long v18, v18, v25

    .line 602
    .line 603
    cmp-long v10, v18, v20

    .line 604
    .line 605
    if-gtz v10, :cond_18

    .line 606
    .line 607
    :cond_17
    move/from16 v10, v23

    .line 608
    .line 609
    goto :goto_4

    .line 610
    :cond_18
    const/4 v10, 0x0

    .line 611
    :goto_4
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeAutoNextSeconds()I

    .line 612
    .line 613
    .line 614
    move-result v12

    .line 615
    invoke-virtual {v13, v7}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v15

    .line 619
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->cauva(I)Z

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    or-int/2addr v12, v15

    .line 624
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v15

    .line 628
    if-nez v12, :cond_19

    .line 629
    .line 630
    if-ne v15, v1, :cond_1a

    .line 631
    .line 632
    :cond_19
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeAutoNextSeconds()I

    .line 633
    .line 634
    .line 635
    move-result v12

    .line 636
    new-instance v15, Lcom/jp/bootstrap/internal/rp;

    .line 637
    .line 638
    invoke-direct {v15, v12}, Lcom/jp/bootstrap/internal/rp;-><init>(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 642
    .line 643
    .line 644
    :cond_1a
    move-object v12, v15

    .line 645
    check-cast v12, Lcom/jp/bootstrap/internal/ah;

    .line 646
    .line 647
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 648
    .line 649
    .line 650
    move-result-object v15

    .line 651
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeAutoNextSeconds()I

    .line 652
    .line 653
    .line 654
    move-result v18

    .line 655
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 656
    .line 657
    .line 658
    move-result-object v8

    .line 659
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->mhirrjin(Z)Z

    .line 660
    .line 661
    .line 662
    move-result v18

    .line 663
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    move-result v20

    .line 667
    or-int v18, v18, v20

    .line 668
    .line 669
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v20

    .line 673
    or-int v18, v18, v20

    .line 674
    .line 675
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v11

    .line 679
    if-nez v18, :cond_1c

    .line 680
    .line 681
    if-ne v11, v1, :cond_1b

    .line 682
    .line 683
    goto :goto_5

    .line 684
    :cond_1b
    move-object/from16 p2, v0

    .line 685
    .line 686
    const/4 v0, 0x0

    .line 687
    goto :goto_6

    .line 688
    :cond_1c
    :goto_5
    new-instance v11, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$6$1;

    .line 689
    .line 690
    move-object/from16 p2, v0

    .line 691
    .line 692
    const/4 v0, 0x0

    .line 693
    invoke-direct {v11, v10, v2, v12, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$6$1;-><init>(ZLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/ah;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v13, v11}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    :goto_6
    check-cast v11, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 700
    .line 701
    invoke-static {v15, v7, v8, v11, v13}, Lcom/jp/bootstrap/internal/yr0;->gbcohonrle(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/pawugmt;)V

    .line 702
    .line 703
    .line 704
    sget-object v8, Lcom/jp/bootstrap/internal/uc0;->jyozshuy:Lcom/jp/bootstrap/internal/gteg;

    .line 705
    .line 706
    sget-object v11, Lcom/jp/bootstrap/internal/mgevwcjmy;->amcmg:Lcom/jp/bootstrap/internal/gagkz;

    .line 707
    .line 708
    const/4 v15, 0x0

    .line 709
    invoke-static {v11, v15}, Lcom/jp/bootstrap/internal/glkngkydwt;->jyozshuy(Lcom/jp/bootstrap/internal/gagkz;Z)Lcom/jp/bootstrap/internal/oa;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    move-object/from16 v20, v3

    .line 714
    .line 715
    move-object/from16 v21, v4

    .line 716
    .line 717
    iget-wide v3, v13, Lcom/jp/bootstrap/internal/pawugmt;->arjuqebdx:J

    .line 718
    .line 719
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->sbmzsrkn()Lcom/jp/bootstrap/internal/dr;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    invoke-static {v13, v8}, Lcom/jp/bootstrap/internal/xegxz;->fugymz(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/fe;)Lcom/jp/bootstrap/internal/fe;

    .line 728
    .line 729
    .line 730
    move-result-object v15

    .line 731
    sget-object v18, Lcom/jp/bootstrap/internal/vtir;->jyozshuy:Lcom/jp/bootstrap/internal/uvhusfdhcuy;

    .line 732
    .line 733
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    move-object/from16 v22, v5

    .line 737
    .line 738
    sget-object v5, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jzphcv:Lcom/jp/bootstrap/internal/bquodsmdnen;

    .line 739
    .line 740
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->eazl()V

    .line 741
    .line 742
    .line 743
    move/from16 v18, v3

    .line 744
    .line 745
    iget-boolean v3, v13, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu:Z

    .line 746
    .line 747
    if-eqz v3, :cond_1d

    .line 748
    .line 749
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->gbcohonrle(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 750
    .line 751
    .line 752
    goto :goto_7

    .line 753
    :cond_1d
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->fekqvc()V

    .line 754
    .line 755
    .line 756
    :goto_7
    sget-object v3, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->dhjfigsvwc:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 757
    .line 758
    invoke-static {v13, v3, v0}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    sget-object v0, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->cauva:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 762
    .line 763
    invoke-static {v13, v0, v4}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 764
    .line 765
    .line 766
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    move-object/from16 v25, v5

    .line 771
    .line 772
    sget-object v5, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->uaakwbmitdl:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 773
    .line 774
    invoke-static {v13, v5, v4}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    sget-object v4, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->mhirrjin:Lcom/jp/bootstrap/internal/bburc;

    .line 778
    .line 779
    invoke-static {v13, v4}, Lcom/jp/bootstrap/internal/fg;->jisccnqwqm(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 780
    .line 781
    .line 782
    move-object/from16 v26, v5

    .line 783
    .line 784
    sget-object v5, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jyozshuy:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 785
    .line 786
    invoke-static {v13, v5, v15}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    sget-object v15, Lcom/jp/bootstrap/internal/mgevwcjmy;->qwcilfgin:Lcom/jp/bootstrap/internal/mgevwcjmy;

    .line 790
    .line 791
    invoke-virtual/range {v20 .. v20}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getShowOnlineGestureLayer()Z

    .line 792
    .line 793
    .line 794
    move-result v18

    .line 795
    const/high16 v27, 0x180000

    .line 796
    .line 797
    move-object/from16 v28, v5

    .line 798
    .line 799
    const/16 v30, 0x3

    .line 800
    .line 801
    sget-object v5, Lcom/jp/bootstrap/internal/ce;->syiqloeyp:Lcom/jp/bootstrap/internal/ce;

    .line 802
    .line 803
    if-eqz v18, :cond_20

    .line 804
    .line 805
    move-object/from16 v31, v0

    .line 806
    .line 807
    const v0, -0x13571ba0

    .line 808
    .line 809
    .line 810
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    move v0, v10

    .line 817
    iget-object v10, v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 818
    .line 819
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 820
    .line 821
    .line 822
    move-result v18

    .line 823
    xor-int/lit8 v18, v18, 0x1

    .line 824
    .line 825
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 826
    .line 827
    .line 828
    move-result v32

    .line 829
    xor-int/lit8 v32, v32, 0x1

    .line 830
    .line 831
    move/from16 v33, v0

    .line 832
    .line 833
    move-object/from16 v34, v15

    .line 834
    .line 835
    const/high16 v0, 0x3f800000    # 1.0f

    .line 836
    .line 837
    invoke-static {v5, v0}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 838
    .line 839
    .line 840
    move-result-object v15

    .line 841
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v0

    .line 845
    move/from16 v35, v0

    .line 846
    .line 847
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    if-nez v35, :cond_1f

    .line 852
    .line 853
    if-ne v0, v1, :cond_1e

    .line 854
    .line 855
    goto :goto_8

    .line 856
    :cond_1e
    move-object/from16 v35, v3

    .line 857
    .line 858
    goto :goto_9

    .line 859
    :cond_1f
    :goto_8
    new-instance v0, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 860
    .line 861
    move-object/from16 v35, v3

    .line 862
    .line 863
    const/16 v3, 0xd

    .line 864
    .line 865
    invoke-direct {v0, v2, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 869
    .line 870
    .line 871
    :goto_9
    check-cast v0, Lcom/jp/bootstrap/internal/mbwlg;

    .line 872
    .line 873
    sget v3, Lcom/jp/runtime/shell/ShellActivity;->$stable:I

    .line 874
    .line 875
    shl-int/lit8 v3, v3, 0x3

    .line 876
    .line 877
    or-int v3, v3, v27

    .line 878
    .line 879
    move-object/from16 v36, v12

    .line 880
    .line 881
    move/from16 v12, v18

    .line 882
    .line 883
    const/16 v18, 0x0

    .line 884
    .line 885
    move-object/from16 p1, v11

    .line 886
    .line 887
    move-object v11, v0

    .line 888
    move-object/from16 v0, p1

    .line 889
    .line 890
    move/from16 v17, v3

    .line 891
    .line 892
    move/from16 p1, v6

    .line 893
    .line 894
    move-object/from16 v16, v13

    .line 895
    .line 896
    move/from16 v13, v32

    .line 897
    .line 898
    const/4 v3, 0x0

    .line 899
    const/16 v6, 0x9

    .line 900
    .line 901
    invoke-static/range {v9 .. v18}, Lcom/jp/runtime/shell/JpPlayerGestureChromeKt;->JpPlayerGestureLayer(Lcom/jp/bootstrap/internal/gt;Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/mbwlg;ZZLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 902
    .line 903
    .line 904
    move-object/from16 v37, v9

    .line 905
    .line 906
    move-object/from16 v13, v16

    .line 907
    .line 908
    const/4 v15, 0x0

    .line 909
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 910
    .line 911
    .line 912
    goto :goto_a

    .line 913
    :cond_20
    move-object/from16 v31, v0

    .line 914
    .line 915
    move-object/from16 v35, v3

    .line 916
    .line 917
    move/from16 p1, v6

    .line 918
    .line 919
    move-object/from16 v37, v9

    .line 920
    .line 921
    move/from16 v33, v10

    .line 922
    .line 923
    move-object v0, v11

    .line 924
    move-object/from16 v36, v12

    .line 925
    .line 926
    move-object/from16 v34, v15

    .line 927
    .line 928
    const/4 v3, 0x0

    .line 929
    const/16 v6, 0x9

    .line 930
    .line 931
    const/4 v15, 0x0

    .line 932
    const v9, -0x134d012f

    .line 933
    .line 934
    .line 935
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 939
    .line 940
    .line 941
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getShowOfflineGestureLayer()Z

    .line 942
    .line 943
    .line 944
    move-result v9

    .line 945
    if-eqz v9, :cond_23

    .line 946
    .line 947
    const v9, -0x134b5f0c

    .line 948
    .line 949
    .line 950
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 951
    .line 952
    .line 953
    iget-object v10, v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 954
    .line 955
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 956
    .line 957
    .line 958
    move-result v9

    .line 959
    xor-int/lit8 v12, v9, 0x1

    .line 960
    .line 961
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 962
    .line 963
    .line 964
    move-result v9

    .line 965
    xor-int/lit8 v9, v9, 0x1

    .line 966
    .line 967
    const/high16 v11, 0x3f800000    # 1.0f

    .line 968
    .line 969
    invoke-static {v5, v11}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 970
    .line 971
    .line 972
    move-result-object v15

    .line 973
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v16

    .line 977
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v11

    .line 981
    if-nez v16, :cond_21

    .line 982
    .line 983
    if-ne v11, v1, :cond_22

    .line 984
    .line 985
    :cond_21
    new-instance v11, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 986
    .line 987
    const/16 v6, 0xe

    .line 988
    .line 989
    invoke-direct {v11, v2, v6}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v13, v11}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 993
    .line 994
    .line 995
    :cond_22
    check-cast v11, Lcom/jp/bootstrap/internal/mbwlg;

    .line 996
    .line 997
    sget v6, Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;->$stable:I

    .line 998
    .line 999
    or-int v6, v6, v27

    .line 1000
    .line 1001
    sget v16, Lcom/jp/runtime/shell/ShellActivity;->$stable:I

    .line 1002
    .line 1003
    shl-int/lit8 v16, v16, 0x3

    .line 1004
    .line 1005
    or-int v17, v6, v16

    .line 1006
    .line 1007
    const/16 v18, 0x0

    .line 1008
    .line 1009
    move-object/from16 v16, v13

    .line 1010
    .line 1011
    const/high16 v29, 0x3f800000    # 1.0f

    .line 1012
    .line 1013
    move v13, v9

    .line 1014
    move-object/from16 v9, v21

    .line 1015
    .line 1016
    invoke-static/range {v9 .. v18}, Lcom/jp/runtime/shell/JpPlayerGestureChromeKt;->JpPlayerGestureLayer(Lcom/jp/runtime/shell/PlayerGestureAdapter;Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/mbwlg;ZZLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v13, v16

    .line 1020
    .line 1021
    const/4 v15, 0x0

    .line 1022
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_b

    .line 1026
    :cond_23
    const/4 v15, 0x0

    .line 1027
    const/high16 v29, 0x3f800000    # 1.0f

    .line 1028
    .line 1029
    const v6, -0x13422aaf

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v13, v6}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1036
    .line 1037
    .line 1038
    :goto_b
    invoke-virtual/range {v20 .. v20}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getShowControlsLayer()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v9

    .line 1042
    move/from16 v6, v30

    .line 1043
    .line 1044
    invoke-static {v3, v6}, Lcom/jp/bootstrap/internal/asfllgfps;->syiqloeyp(Lcom/jp/bootstrap/internal/wr0;I)Lcom/jp/bootstrap/internal/vfyvdrmdl;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v11

    .line 1048
    invoke-static {v3, v6}, Lcom/jp/bootstrap/internal/asfllgfps;->jzphcv(Lcom/jp/bootstrap/internal/wr0;I)Lcom/jp/bootstrap/internal/siebei;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v12

    .line 1052
    const/high16 v3, 0x40000000    # 2.0f

    .line 1053
    .line 1054
    invoke-static {v8, v3}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v10

    .line 1058
    move-object v3, v0

    .line 1059
    new-instance v0, Lcom/jp/bootstrap/internal/h3;

    .line 1060
    .line 1061
    move-object v6, v5

    .line 1062
    const/4 v5, 0x1

    .line 1063
    move-object v15, v14

    .line 1064
    move-object v14, v3

    .line 1065
    move-object v3, v15

    .line 1066
    move-object/from16 v38, v1

    .line 1067
    .line 1068
    move-object v15, v4

    .line 1069
    move-object/from16 v39, v6

    .line 1070
    .line 1071
    move-object/from16 v18, v8

    .line 1072
    .line 1073
    move-object/from16 v4, v21

    .line 1074
    .line 1075
    move-object/from16 v6, v28

    .line 1076
    .line 1077
    move-object/from16 v8, v34

    .line 1078
    .line 1079
    move-object/from16 v1, v37

    .line 1080
    .line 1081
    move-object/from16 v21, v7

    .line 1082
    .line 1083
    move/from16 v7, v29

    .line 1084
    .line 1085
    invoke-direct/range {v0 .. v5}, Lcom/jp/bootstrap/internal/h3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1086
    .line 1087
    .line 1088
    const v1, -0x3031b247

    .line 1089
    .line 1090
    .line 1091
    invoke-static {v1, v0, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v0

    .line 1095
    const v16, 0x30db0

    .line 1096
    .line 1097
    .line 1098
    const/16 v17, 0x10

    .line 1099
    .line 1100
    move-object v1, v15

    .line 1101
    move-object v15, v13

    .line 1102
    const/4 v13, 0x0

    .line 1103
    move-object v3, v14

    .line 1104
    move-object v14, v0

    .line 1105
    move-object v0, v3

    .line 1106
    move-object/from16 v40, v1

    .line 1107
    .line 1108
    move-object/from16 v1, v25

    .line 1109
    .line 1110
    move-object/from16 v5, v26

    .line 1111
    .line 1112
    move-object/from16 v4, v31

    .line 1113
    .line 1114
    move-object/from16 v3, v35

    .line 1115
    .line 1116
    invoke-static/range {v9 .. v17}, Lcom/jp/bootstrap/internal/yr0;->jzphcv(ZLcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/vfyvdrmdl;Lcom/jp/bootstrap/internal/siebei;Ljava/lang/String;Lcom/jp/bootstrap/internal/ntdhbhlf;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 1117
    .line 1118
    .line 1119
    move-object v13, v15

    .line 1120
    invoke-virtual/range {v20 .. v20}, Lcom/jp/runtime/shell/EmbeddedChromeLayout;->getShowMiniProgress()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v9

    .line 1124
    if-eqz v9, :cond_25

    .line 1125
    .line 1126
    const v9, -0x12bbd200

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1130
    .line 1131
    .line 1132
    sget-object v9, Lcom/jp/bootstrap/internal/mgevwcjmy;->dwcjxttbbo:Lcom/jp/bootstrap/internal/gagkz;

    .line 1133
    .line 1134
    invoke-virtual {v8, v9}, Lcom/jp/bootstrap/internal/mgevwcjmy;->uaakwbmitdl(Lcom/jp/bootstrap/internal/gagkz;)Lcom/jp/bootstrap/internal/fe;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v9

    .line 1138
    invoke-static {v9, v7}, Lcom/jp/bootstrap/internal/uc0;->cauva(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v7

    .line 1142
    const/4 v15, 0x0

    .line 1143
    invoke-static {v0, v15}, Lcom/jp/bootstrap/internal/glkngkydwt;->jyozshuy(Lcom/jp/bootstrap/internal/gagkz;Z)Lcom/jp/bootstrap/internal/oa;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v9

    .line 1147
    iget-wide v10, v13, Lcom/jp/bootstrap/internal/pawugmt;->arjuqebdx:J

    .line 1148
    .line 1149
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 1150
    .line 1151
    .line 1152
    move-result v10

    .line 1153
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->sbmzsrkn()Lcom/jp/bootstrap/internal/dr;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v11

    .line 1157
    invoke-static {v13, v7}, Lcom/jp/bootstrap/internal/xegxz;->fugymz(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/fe;)Lcom/jp/bootstrap/internal/fe;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v7

    .line 1161
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->eazl()V

    .line 1162
    .line 1163
    .line 1164
    iget-boolean v12, v13, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu:Z

    .line 1165
    .line 1166
    if-eqz v12, :cond_24

    .line 1167
    .line 1168
    invoke-virtual {v13, v1}, Lcom/jp/bootstrap/internal/pawugmt;->gbcohonrle(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 1169
    .line 1170
    .line 1171
    goto :goto_c

    .line 1172
    :cond_24
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->fekqvc()V

    .line 1173
    .line 1174
    .line 1175
    :goto_c
    invoke-static {v13, v3, v9}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-static {v13, v4, v11}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1179
    .line 1180
    .line 1181
    move-object/from16 v9, v40

    .line 1182
    .line 1183
    invoke-static {v10, v13, v5, v13, v9}, Lcom/jp/bootstrap/internal/pzmovkl;->jisccnqwqm(ILcom/jp/bootstrap/internal/pawugmt;Lcom/jp/bootstrap/internal/soinlbcapp;Lcom/jp/bootstrap/internal/pawugmt;Lcom/jp/bootstrap/internal/bburc;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-static {v13, v6, v7}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeProgressFraction()F

    .line 1190
    .line 1191
    .line 1192
    move-result v7

    .line 1193
    const/4 v15, 0x0

    .line 1194
    invoke-static {v7, v13, v15}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerMiniProgressBar(FLcom/jp/bootstrap/internal/tjht;I)V

    .line 1195
    .line 1196
    .line 1197
    move/from16 v7, v23

    .line 1198
    .line 1199
    invoke-virtual {v13, v7}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1203
    .line 1204
    .line 1205
    goto :goto_d

    .line 1206
    :cond_25
    move-object/from16 v9, v40

    .line 1207
    .line 1208
    const/4 v15, 0x0

    .line 1209
    const v7, -0x12b8c16f

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v13, v7}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1216
    .line 1217
    .line 1218
    :goto_d
    invoke-static/range {p2 .. p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$8(Lcom/jp/bootstrap/internal/th;)Z

    .line 1219
    .line 1220
    .line 1221
    move-result v7

    .line 1222
    if-eqz v7, :cond_26

    .line 1223
    .line 1224
    if-nez p1, :cond_26

    .line 1225
    .line 1226
    const v7, -0x12b76ff2

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v13, v7}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1230
    .line 1231
    .line 1232
    invoke-static/range {v22 .. v22}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$11(Lcom/jp/bootstrap/internal/fh;)J

    .line 1233
    .line 1234
    .line 1235
    move-result-wide v11

    .line 1236
    sget-object v7, Lcom/jp/bootstrap/internal/mgevwcjmy;->nawz:Lcom/jp/bootstrap/internal/gagkz;

    .line 1237
    .line 1238
    invoke-virtual {v8, v7}, Lcom/jp/bootstrap/internal/mgevwcjmy;->uaakwbmitdl(Lcom/jp/bootstrap/internal/gagkz;)Lcom/jp/bootstrap/internal/fe;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v7

    .line 1242
    const/4 v14, 0x0

    .line 1243
    const/4 v15, 0x2

    .line 1244
    const/4 v10, 0x0

    .line 1245
    move-object/from16 v41, v9

    .line 1246
    .line 1247
    move-object v9, v7

    .line 1248
    move-object/from16 v7, v41

    .line 1249
    .line 1250
    invoke-static/range {v9 .. v15}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerLoadingOverlay(Lcom/jp/bootstrap/internal/fe;Ljava/lang/String;JLcom/jp/bootstrap/internal/tjht;II)V

    .line 1251
    .line 1252
    .line 1253
    const/4 v15, 0x0

    .line 1254
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1255
    .line 1256
    .line 1257
    goto :goto_e

    .line 1258
    :cond_26
    move-object v7, v9

    .line 1259
    const/4 v15, 0x0

    .line 1260
    const v9, -0x12b43eaf

    .line 1261
    .line 1262
    .line 1263
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1267
    .line 1268
    .line 1269
    :goto_e
    const/4 v9, 0x6

    .line 1270
    if-eqz v33, :cond_29

    .line 1271
    .line 1272
    if-nez p1, :cond_29

    .line 1273
    .line 1274
    const v10, -0x12b34462

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1278
    .line 1279
    .line 1280
    invoke-static/range {v36 .. v36}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$17(Lcom/jp/bootstrap/internal/ah;)I

    .line 1281
    .line 1282
    .line 1283
    move-result v10

    .line 1284
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v11

    .line 1288
    move-object/from16 v12, v21

    .line 1289
    .line 1290
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 1291
    .line 1292
    .line 1293
    move-result v14

    .line 1294
    or-int/2addr v11, v14

    .line 1295
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v14

    .line 1299
    if-nez v11, :cond_27

    .line 1300
    .line 1301
    move-object/from16 v11, v38

    .line 1302
    .line 1303
    if-ne v14, v11, :cond_28

    .line 1304
    .line 1305
    goto :goto_f

    .line 1306
    :cond_27
    move-object/from16 v11, v38

    .line 1307
    .line 1308
    :goto_f
    new-instance v14, Lcom/jp/bootstrap/internal/tvyvc;

    .line 1309
    .line 1310
    const/4 v15, 0x5

    .line 1311
    invoke-direct {v14, v15, v2, v12}, Lcom/jp/bootstrap/internal/tvyvc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1315
    .line 1316
    .line 1317
    :cond_28
    check-cast v14, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1318
    .line 1319
    invoke-static {v8, v10, v14, v13, v9}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerAutoNextOverlay(Lcom/jp/bootstrap/internal/shatcob;ILcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 1320
    .line 1321
    .line 1322
    const/4 v15, 0x0

    .line 1323
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1324
    .line 1325
    .line 1326
    goto :goto_10

    .line 1327
    :cond_29
    move-object/from16 v11, v38

    .line 1328
    .line 1329
    const/4 v15, 0x0

    .line 1330
    const v8, -0x12aec3ef

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v13, v8}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1337
    .line 1338
    .line 1339
    :goto_10
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1340
    .line 1341
    .line 1342
    move-result v8

    .line 1343
    if-eqz v8, :cond_2a

    .line 1344
    .line 1345
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getEpisodeSheetOpen()Z

    .line 1346
    .line 1347
    .line 1348
    move-result v8

    .line 1349
    if-eqz v8, :cond_2a

    .line 1350
    .line 1351
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v8

    .line 1355
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 1356
    .line 1357
    .line 1358
    move-result v8

    .line 1359
    if-nez v8, :cond_2a

    .line 1360
    .line 1361
    move v8, v9

    .line 1362
    const/4 v9, 0x1

    .line 1363
    goto :goto_11

    .line 1364
    :cond_2a
    move v8, v9

    .line 1365
    const/4 v9, 0x0

    .line 1366
    :goto_11
    const/high16 v10, 0x40c00000    # 6.0f

    .line 1367
    .line 1368
    move v14, v10

    .line 1369
    move-object/from16 v12, v39

    .line 1370
    .line 1371
    invoke-static {v12, v14}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v10

    .line 1375
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v15

    .line 1379
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v8

    .line 1383
    if-nez v15, :cond_2b

    .line 1384
    .line 1385
    if-ne v8, v11, :cond_2c

    .line 1386
    .line 1387
    :cond_2b
    new-instance v8, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1388
    .line 1389
    const/16 v15, 0x10

    .line 1390
    .line 1391
    invoke-direct {v8, v2, v15}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v13, v8}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1395
    .line 1396
    .line 1397
    :cond_2c
    check-cast v8, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1398
    .line 1399
    new-instance v15, Lcom/jp/bootstrap/internal/rafqorj;

    .line 1400
    .line 1401
    const/4 v14, 0x1

    .line 1402
    invoke-direct {v15, v2, v14}, Lcom/jp/bootstrap/internal/rafqorj;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1403
    .line 1404
    .line 1405
    const v14, -0xc23dbcf

    .line 1406
    .line 1407
    .line 1408
    invoke-static {v14, v15, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v14

    .line 1412
    move-object/from16 v39, v12

    .line 1413
    .line 1414
    move-object v12, v14

    .line 1415
    const/16 v14, 0xc30

    .line 1416
    .line 1417
    const/4 v15, 0x0

    .line 1418
    move-object/from16 v28, v11

    .line 1419
    .line 1420
    move-object v11, v8

    .line 1421
    move-object/from16 v8, v28

    .line 1422
    .line 1423
    move-object/from16 v28, v6

    .line 1424
    .line 1425
    move-object/from16 v6, v39

    .line 1426
    .line 1427
    invoke-static/range {v9 .. v15}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerAnimatedFullscreenDrawer(ZLcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 1428
    .line 1429
    .line 1430
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1431
    .line 1432
    .line 1433
    move-result v9

    .line 1434
    const/16 v10, 0x30

    .line 1435
    .line 1436
    if-nez v9, :cond_2f

    .line 1437
    .line 1438
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getEpisodeSheetOpen()Z

    .line 1439
    .line 1440
    .line 1441
    move-result v9

    .line 1442
    if-eqz v9, :cond_2f

    .line 1443
    .line 1444
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v9

    .line 1448
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1449
    .line 1450
    .line 1451
    move-result v9

    .line 1452
    if-nez v9, :cond_2f

    .line 1453
    .line 1454
    const v9, -0x129fb1a5

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1461
    .line 1462
    .line 1463
    move-result v9

    .line 1464
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v11

    .line 1468
    if-nez v9, :cond_2d

    .line 1469
    .line 1470
    if-ne v11, v8, :cond_2e

    .line 1471
    .line 1472
    :cond_2d
    new-instance v11, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1473
    .line 1474
    const/16 v9, 0x11

    .line 1475
    .line 1476
    invoke-direct {v11, v2, v9}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1477
    .line 1478
    .line 1479
    invoke-virtual {v13, v11}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1480
    .line 1481
    .line 1482
    :cond_2e
    check-cast v11, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1483
    .line 1484
    new-instance v9, Lcom/jp/bootstrap/internal/rafqorj;

    .line 1485
    .line 1486
    const/4 v12, 0x2

    .line 1487
    invoke-direct {v9, v2, v12}, Lcom/jp/bootstrap/internal/rafqorj;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1488
    .line 1489
    .line 1490
    const v12, 0x582ad24b

    .line 1491
    .line 1492
    .line 1493
    invoke-static {v12, v9, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v9

    .line 1497
    invoke-static {v11, v9, v13, v10}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerFlatDialog(Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 1498
    .line 1499
    .line 1500
    const/4 v15, 0x0

    .line 1501
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1502
    .line 1503
    .line 1504
    goto :goto_12

    .line 1505
    :cond_2f
    const/4 v15, 0x0

    .line 1506
    const v9, -0x1295846f

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1513
    .line 1514
    .line 1515
    :goto_12
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1516
    .line 1517
    .line 1518
    move-result v9

    .line 1519
    if-eqz v9, :cond_30

    .line 1520
    .line 1521
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getLineSheetOpen()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v9

    .line 1525
    if-eqz v9, :cond_30

    .line 1526
    .line 1527
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLines()Ljava/util/List;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v9

    .line 1531
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1532
    .line 1533
    .line 1534
    move-result v9

    .line 1535
    if-nez v9, :cond_30

    .line 1536
    .line 1537
    const/4 v9, 0x1

    .line 1538
    :goto_13
    move v11, v10

    .line 1539
    const/high16 v14, 0x40c00000    # 6.0f

    .line 1540
    .line 1541
    goto :goto_14

    .line 1542
    :cond_30
    const/4 v9, 0x0

    .line 1543
    goto :goto_13

    .line 1544
    :goto_14
    invoke-static {v6, v14}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v10

    .line 1548
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1549
    .line 1550
    .line 1551
    move-result v12

    .line 1552
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v14

    .line 1556
    if-nez v12, :cond_31

    .line 1557
    .line 1558
    if-ne v14, v8, :cond_32

    .line 1559
    .line 1560
    :cond_31
    new-instance v14, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1561
    .line 1562
    const/4 v12, 0x6

    .line 1563
    invoke-direct {v14, v2, v12}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1564
    .line 1565
    .line 1566
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1567
    .line 1568
    .line 1569
    :cond_32
    check-cast v14, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1570
    .line 1571
    new-instance v12, Lcom/jp/bootstrap/internal/rafqorj;

    .line 1572
    .line 1573
    const/4 v15, 0x0

    .line 1574
    invoke-direct {v12, v2, v15}, Lcom/jp/bootstrap/internal/rafqorj;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1575
    .line 1576
    .line 1577
    const v15, 0x27ca439a

    .line 1578
    .line 1579
    .line 1580
    invoke-static {v15, v12, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v12

    .line 1584
    move v15, v11

    .line 1585
    move-object v11, v14

    .line 1586
    const/16 v14, 0xc30

    .line 1587
    .line 1588
    move/from16 v17, v15

    .line 1589
    .line 1590
    const/4 v15, 0x0

    .line 1591
    move-object/from16 v26, v5

    .line 1592
    .line 1593
    move/from16 v5, v17

    .line 1594
    .line 1595
    invoke-static/range {v9 .. v15}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerAnimatedFullscreenDrawer(ZLcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1599
    .line 1600
    .line 1601
    move-result v9

    .line 1602
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v10

    .line 1606
    if-nez v9, :cond_33

    .line 1607
    .line 1608
    if-ne v10, v8, :cond_34

    .line 1609
    .line 1610
    :cond_33
    new-instance v10, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1611
    .line 1612
    const/4 v9, 0x7

    .line 1613
    invoke-direct {v10, v2, v9}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v13, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1617
    .line 1618
    .line 1619
    :cond_34
    move-object v11, v10

    .line 1620
    check-cast v11, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1621
    .line 1622
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1623
    .line 1624
    .line 1625
    move-result v9

    .line 1626
    if-eqz v9, :cond_35

    .line 1627
    .line 1628
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 1629
    .line 1630
    .line 1631
    move-result v9

    .line 1632
    if-eqz v9, :cond_35

    .line 1633
    .line 1634
    const/4 v9, 0x1

    .line 1635
    :goto_15
    const/high16 v14, 0x40c00000    # 6.0f

    .line 1636
    .line 1637
    goto :goto_16

    .line 1638
    :cond_35
    const/4 v9, 0x0

    .line 1639
    goto :goto_15

    .line 1640
    :goto_16
    invoke-static {v6, v14}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v10

    .line 1644
    new-instance v6, Lcom/jp/bootstrap/internal/jjee;

    .line 1645
    .line 1646
    const/4 v15, 0x0

    .line 1647
    invoke-direct {v6, v2, v11, v15}, Lcom/jp/bootstrap/internal/jjee;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;I)V

    .line 1648
    .line 1649
    .line 1650
    const v12, -0x47c81447

    .line 1651
    .line 1652
    .line 1653
    invoke-static {v12, v6, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v12

    .line 1657
    const/16 v14, 0xc30

    .line 1658
    .line 1659
    const/4 v15, 0x0

    .line 1660
    invoke-static/range {v9 .. v15}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerAnimatedFullscreenDrawer(ZLcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 1661
    .line 1662
    .line 1663
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1664
    .line 1665
    .line 1666
    move-result v6

    .line 1667
    if-nez v6, :cond_36

    .line 1668
    .line 1669
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v6

    .line 1673
    if-eqz v6, :cond_36

    .line 1674
    .line 1675
    const v6, -0x12709aa4

    .line 1676
    .line 1677
    .line 1678
    invoke-virtual {v13, v6}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1679
    .line 1680
    .line 1681
    new-instance v6, Lcom/jp/bootstrap/internal/jjee;

    .line 1682
    .line 1683
    const/4 v14, 0x1

    .line 1684
    invoke-direct {v6, v2, v11, v14}, Lcom/jp/bootstrap/internal/jjee;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;I)V

    .line 1685
    .line 1686
    .line 1687
    const v9, -0x17678596

    .line 1688
    .line 1689
    .line 1690
    invoke-static {v9, v6, v13}, Lcom/jp/bootstrap/internal/sm;->pcqerka(ILcom/jp/bootstrap/internal/jaqjttqdgl;Lcom/jp/bootstrap/internal/tjht;)Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v6

    .line 1694
    invoke-static {v11, v6, v13, v5}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerFlatDialog(Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tkwlkffmbu;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 1695
    .line 1696
    .line 1697
    const/4 v15, 0x0

    .line 1698
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1699
    .line 1700
    .line 1701
    goto :goto_17

    .line 1702
    :cond_36
    const/4 v15, 0x0

    .line 1703
    const v5, -0x1260578f

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1707
    .line 1708
    .line 1709
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1710
    .line 1711
    .line 1712
    :goto_17
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v5

    .line 1716
    if-eqz v5, :cond_4a

    .line 1717
    .line 1718
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 1719
    .line 1720
    .line 1721
    move-result v5

    .line 1722
    if-nez v5, :cond_4a

    .line 1723
    .line 1724
    const v5, -0x125eca40

    .line 1725
    .line 1726
    .line 1727
    invoke-virtual {v13, v5}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1728
    .line 1729
    .line 1730
    const/high16 v5, 0x40a00000    # 5.0f

    .line 1731
    .line 1732
    move-object/from16 v6, v18

    .line 1733
    .line 1734
    invoke-static {v6, v5}, Lcom/jp/bootstrap/internal/fg;->vzds(Lcom/jp/bootstrap/internal/fe;F)Lcom/jp/bootstrap/internal/fe;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v5

    .line 1738
    invoke-static {v0, v15}, Lcom/jp/bootstrap/internal/glkngkydwt;->jyozshuy(Lcom/jp/bootstrap/internal/gagkz;Z)Lcom/jp/bootstrap/internal/oa;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v0

    .line 1742
    iget-wide v9, v13, Lcom/jp/bootstrap/internal/pawugmt;->arjuqebdx:J

    .line 1743
    .line 1744
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 1745
    .line 1746
    .line 1747
    move-result v6

    .line 1748
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->sbmzsrkn()Lcom/jp/bootstrap/internal/dr;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v9

    .line 1752
    invoke-static {v13, v5}, Lcom/jp/bootstrap/internal/xegxz;->fugymz(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/fe;)Lcom/jp/bootstrap/internal/fe;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v5

    .line 1756
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->eazl()V

    .line 1757
    .line 1758
    .line 1759
    iget-boolean v10, v13, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu:Z

    .line 1760
    .line 1761
    if-eqz v10, :cond_37

    .line 1762
    .line 1763
    invoke-virtual {v13, v1}, Lcom/jp/bootstrap/internal/pawugmt;->gbcohonrle(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 1764
    .line 1765
    .line 1766
    goto :goto_18

    .line 1767
    :cond_37
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->fekqvc()V

    .line 1768
    .line 1769
    .line 1770
    :goto_18
    invoke-static {v13, v3, v0}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1771
    .line 1772
    .line 1773
    invoke-static {v13, v4, v9}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1774
    .line 1775
    .line 1776
    move-object/from16 v0, v26

    .line 1777
    .line 1778
    invoke-static {v6, v13, v0, v13, v7}, Lcom/jp/bootstrap/internal/pzmovkl;->jisccnqwqm(ILcom/jp/bootstrap/internal/pawugmt;Lcom/jp/bootstrap/internal/soinlbcapp;Lcom/jp/bootstrap/internal/pawugmt;Lcom/jp/bootstrap/internal/bburc;)V

    .line 1779
    .line 1780
    .line 1781
    move-object/from16 v6, v28

    .line 1782
    .line 1783
    invoke-static {v13, v6, v5}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v9

    .line 1790
    invoke-direct {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 1791
    .line 1792
    .line 1793
    move-result v10

    .line 1794
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1795
    .line 1796
    .line 1797
    move-result v0

    .line 1798
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v1

    .line 1802
    if-nez v0, :cond_38

    .line 1803
    .line 1804
    if-ne v1, v8, :cond_39

    .line 1805
    .line 1806
    :cond_38
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$1$1;

    .line 1807
    .line 1808
    invoke-direct {v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$1$1;-><init>(Ljava/lang/Object;)V

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v13, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1812
    .line 1813
    .line 1814
    :cond_39
    check-cast v1, Lcom/jp/bootstrap/internal/c;

    .line 1815
    .line 1816
    move-object v11, v1

    .line 1817
    check-cast v11, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1818
    .line 1819
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1820
    .line 1821
    .line 1822
    move-result v0

    .line 1823
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v1

    .line 1827
    if-nez v0, :cond_3a

    .line 1828
    .line 1829
    if-ne v1, v8, :cond_3b

    .line 1830
    .line 1831
    :cond_3a
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$2$1;

    .line 1832
    .line 1833
    invoke-direct {v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$2$1;-><init>(Ljava/lang/Object;)V

    .line 1834
    .line 1835
    .line 1836
    invoke-virtual {v13, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1837
    .line 1838
    .line 1839
    :cond_3b
    check-cast v1, Lcom/jp/bootstrap/internal/c;

    .line 1840
    .line 1841
    move-object v12, v1

    .line 1842
    check-cast v12, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 1843
    .line 1844
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1845
    .line 1846
    .line 1847
    move-result v0

    .line 1848
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v1

    .line 1852
    if-nez v0, :cond_3c

    .line 1853
    .line 1854
    if-ne v1, v8, :cond_3d

    .line 1855
    .line 1856
    :cond_3c
    new-instance v1, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1857
    .line 1858
    const/16 v0, 0x8

    .line 1859
    .line 1860
    invoke-direct {v1, v2, v0}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {v13, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1864
    .line 1865
    .line 1866
    :cond_3d
    check-cast v1, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1867
    .line 1868
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v0

    .line 1872
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v3

    .line 1876
    if-nez v0, :cond_3e

    .line 1877
    .line 1878
    if-ne v3, v8, :cond_3f

    .line 1879
    .line 1880
    :cond_3e
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1881
    .line 1882
    const/16 v6, 0x9

    .line 1883
    .line 1884
    invoke-direct {v3, v2, v6}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1888
    .line 1889
    .line 1890
    :cond_3f
    move-object v14, v3

    .line 1891
    check-cast v14, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1892
    .line 1893
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1894
    .line 1895
    .line 1896
    move-result v0

    .line 1897
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1898
    .line 1899
    .line 1900
    move-result-object v3

    .line 1901
    if-nez v0, :cond_40

    .line 1902
    .line 1903
    if-ne v3, v8, :cond_41

    .line 1904
    .line 1905
    :cond_40
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1906
    .line 1907
    const/16 v0, 0xa

    .line 1908
    .line 1909
    invoke-direct {v3, v2, v0}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1913
    .line 1914
    .line 1915
    :cond_41
    move-object v15, v3

    .line 1916
    check-cast v15, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1917
    .line 1918
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1919
    .line 1920
    .line 1921
    move-result v0

    .line 1922
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v3

    .line 1926
    if-nez v0, :cond_42

    .line 1927
    .line 1928
    if-ne v3, v8, :cond_43

    .line 1929
    .line 1930
    :cond_42
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 1931
    .line 1932
    const/16 v0, 0xb

    .line 1933
    .line 1934
    invoke-direct {v3, v2, v0}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1938
    .line 1939
    .line 1940
    :cond_43
    move-object/from16 v16, v3

    .line 1941
    .line 1942
    check-cast v16, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1943
    .line 1944
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1945
    .line 1946
    .line 1947
    move-result v0

    .line 1948
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v3

    .line 1952
    if-nez v0, :cond_44

    .line 1953
    .line 1954
    if-ne v3, v8, :cond_45

    .line 1955
    .line 1956
    :cond_44
    new-instance v3, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$7$1;

    .line 1957
    .line 1958
    invoke-direct {v3, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$7$1;-><init>(Ljava/lang/Object;)V

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1962
    .line 1963
    .line 1964
    :cond_45
    check-cast v3, Lcom/jp/bootstrap/internal/c;

    .line 1965
    .line 1966
    move-object/from16 v17, v3

    .line 1967
    .line 1968
    check-cast v17, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 1969
    .line 1970
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1971
    .line 1972
    .line 1973
    move-result v0

    .line 1974
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v3

    .line 1978
    if-nez v0, :cond_46

    .line 1979
    .line 1980
    if-ne v3, v8, :cond_47

    .line 1981
    .line 1982
    :cond_46
    new-instance v3, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$8$1;

    .line 1983
    .line 1984
    invoke-direct {v3, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$14$8$1;-><init>(Ljava/lang/Object;)V

    .line 1985
    .line 1986
    .line 1987
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 1988
    .line 1989
    .line 1990
    :cond_47
    check-cast v3, Lcom/jp/bootstrap/internal/c;

    .line 1991
    .line 1992
    move-object/from16 v18, v3

    .line 1993
    .line 1994
    check-cast v18, Lcom/jp/bootstrap/internal/mbwlg;

    .line 1995
    .line 1996
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 1997
    .line 1998
    .line 1999
    move-result v0

    .line 2000
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v3

    .line 2004
    if-nez v0, :cond_48

    .line 2005
    .line 2006
    if-ne v3, v8, :cond_49

    .line 2007
    .line 2008
    :cond_48
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 2009
    .line 2010
    const/16 v0, 0xc

    .line 2011
    .line 2012
    invoke-direct {v3, v2, v0}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 2013
    .line 2014
    .line 2015
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 2016
    .line 2017
    .line 2018
    :cond_49
    move-object/from16 v19, v3

    .line 2019
    .line 2020
    check-cast v19, Lcom/jp/bootstrap/internal/mbwlg;

    .line 2021
    .line 2022
    sget v21, Lcom/jp/runtime/shell/PlayerCastUiState;->$stable:I

    .line 2023
    .line 2024
    const/16 v22, 0x0

    .line 2025
    .line 2026
    move-object/from16 v20, v13

    .line 2027
    .line 2028
    move-object v13, v1

    .line 2029
    invoke-static/range {v9 .. v22}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerCastSessionOverlay(Lcom/jp/runtime/shell/PlayerCastUiState;ZLcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;II)V

    .line 2030
    .line 2031
    .line 2032
    move-object/from16 v13, v20

    .line 2033
    .line 2034
    const/4 v14, 0x1

    .line 2035
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 2036
    .line 2037
    .line 2038
    const/4 v15, 0x0

    .line 2039
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 2040
    .line 2041
    .line 2042
    goto :goto_19

    .line 2043
    :cond_4a
    const/4 v14, 0x1

    .line 2044
    const v0, -0x124c3d8f

    .line 2045
    .line 2046
    .line 2047
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 2048
    .line 2049
    .line 2050
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 2051
    .line 2052
    .line 2053
    :goto_19
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 2054
    .line 2055
    .line 2056
    goto :goto_1a

    .line 2057
    :cond_4b
    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 2058
    .line 2059
    .line 2060
    :goto_1a
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 2061
    .line 2062
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$1(Lcom/jp/bootstrap/internal/th;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/th;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final createControlsView$lambda$0$0$0$11(Lcom/jp/bootstrap/internal/fh;)J
    .locals 2

    .line 1
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/sp;->mhirrjin()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method private static final createControlsView$lambda$0$0$0$12(Lcom/jp/bootstrap/internal/fh;J)V
    .locals 0

    .line 1
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/jp/bootstrap/internal/sp;->yndsdvj(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final createControlsView$lambda$0$0$0$17(Lcom/jp/bootstrap/internal/ah;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final createControlsView$lambda$0$0$0$18(Lcom/jp/bootstrap/internal/ah;I)V
    .locals 0

    .line 1
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final createControlsView$lambda$0$0$0$2(Lcom/jp/bootstrap/internal/th;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/th;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final createControlsView$lambda$0$0$0$20$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$10(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 7

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/2addr p2, v2

    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/jp/bootstrap/internal/pawugmt;

    .line 13
    .line 14
    invoke-virtual {v5, p2, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLines()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLineKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v5, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    sget-object v0, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    if-ne p2, v0, :cond_2

    .line 41
    .line 42
    :cond_1
    new-instance p2, Lcom/jp/bootstrap/internal/casshz;

    .line 43
    .line 44
    const/4 p1, 0x6

    .line 45
    invoke-direct {p2, p0, p1}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    move-object v3, p2

    .line 52
    check-cast v3, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 53
    .line 54
    invoke-virtual {v5, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    if-ne p2, v0, :cond_4

    .line 65
    .line 66
    :cond_3
    new-instance p2, Lcom/jp/bootstrap/internal/osimxcz;

    .line 67
    .line 68
    const/16 p1, 0x8

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    move-object v4, p2

    .line 77
    check-cast v4, Lcom/jp/bootstrap/internal/mbwlg;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerLineDrawer(Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 85
    .line 86
    .line 87
    :goto_1
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 88
    .line 89
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$10$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeLineItem;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "lineKey"

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/jp/runtime/shell/ChromeLineItem;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "selectLine"

    .line 23
    .line 24
    invoke-direct {p0, p1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 25
    .line 26
    .line 27
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 28
    .line 29
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$10$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$11$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 18
    .line 19
    const/16 v9, 0x3e

    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    const-string v3, "stopDiscovery"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-static/range {v2 .. v10}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 33
    .line 34
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$12(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p3, 0x3

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    and-int/lit8 v2, p3, 0x1

    .line 13
    .line 14
    move-object/from16 v14, p2

    .line 15
    .line 16
    check-cast v14, Lcom/jp/bootstrap/internal/pawugmt;

    .line 17
    .line 18
    invoke-virtual {v14, v2, v1}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_f

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v5, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    if-ne v2, v5, :cond_2

    .line 41
    .line 42
    :cond_1
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$1$1;

    .line 43
    .line 44
    invoke-direct {v2, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$1$1;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v14, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    check-cast v2, Lcom/jp/bootstrap/internal/c;

    .line 51
    .line 52
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    if-ne v6, v5, :cond_4

    .line 63
    .line 64
    :cond_3
    new-instance v6, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$2$1;

    .line 65
    .line 66
    invoke-direct {v6, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$2$1;-><init>(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v14, v6}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    check-cast v6, Lcom/jp/bootstrap/internal/c;

    .line 73
    .line 74
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-nez v1, :cond_5

    .line 83
    .line 84
    if-ne v7, v5, :cond_6

    .line 85
    .line 86
    :cond_5
    new-instance v7, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$3$1;

    .line 87
    .line 88
    invoke-direct {v7, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$3$1;-><init>(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v14, v7}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    check-cast v7, Lcom/jp/bootstrap/internal/c;

    .line 95
    .line 96
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    if-nez v1, :cond_7

    .line 105
    .line 106
    if-ne v8, v5, :cond_8

    .line 107
    .line 108
    :cond_7
    new-instance v8, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$4$1;

    .line 109
    .line 110
    invoke-direct {v8, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$12$4$1;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v14, v8}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    check-cast v8, Lcom/jp/bootstrap/internal/c;

    .line 117
    .line 118
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-nez v1, :cond_9

    .line 127
    .line 128
    if-ne v9, v5, :cond_a

    .line 129
    .line 130
    :cond_9
    new-instance v9, Lcom/jp/bootstrap/internal/casshz;

    .line 131
    .line 132
    invoke-direct {v9, v0, v3}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14, v9}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    check-cast v9, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 139
    .line 140
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-nez v1, :cond_b

    .line 149
    .line 150
    if-ne v3, v5, :cond_c

    .line 151
    .line 152
    :cond_b
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 153
    .line 154
    const/16 v1, 0xf

    .line 155
    .line 156
    invoke-direct {v3, v0, v1}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v14, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_c
    check-cast v3, Lcom/jp/bootstrap/internal/mbwlg;

    .line 163
    .line 164
    invoke-virtual {v14, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    if-nez v1, :cond_d

    .line 173
    .line 174
    if-ne v10, v5, :cond_e

    .line 175
    .line 176
    :cond_d
    new-instance v10, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 177
    .line 178
    const/16 v1, 0x15

    .line 179
    .line 180
    invoke-direct {v10, v0, v1}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_e
    check-cast v10, Lcom/jp/bootstrap/internal/mbwlg;

    .line 187
    .line 188
    check-cast v2, Lcom/jp/bootstrap/internal/mbwlg;

    .line 189
    .line 190
    check-cast v6, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 191
    .line 192
    move-object v11, v7

    .line 193
    check-cast v11, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 194
    .line 195
    move-object v12, v8

    .line 196
    check-cast v12, Lcom/jp/bootstrap/internal/mbwlg;

    .line 197
    .line 198
    sget v15, Lcom/jp/runtime/shell/PlayerCastUiState;->$stable:I

    .line 199
    .line 200
    const/16 v16, 0x200

    .line 201
    .line 202
    const/4 v13, 0x0

    .line 203
    move-object/from16 v8, p1

    .line 204
    .line 205
    move-object v5, v9

    .line 206
    move-object v7, v10

    .line 207
    move-object v9, v2

    .line 208
    move-object v10, v6

    .line 209
    move-object v6, v3

    .line 210
    invoke-static/range {v4 .. v16}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerCastDrawer(Lcom/jp/runtime/shell/PlayerCastUiState;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;ZLcom/jp/bootstrap/internal/tjht;II)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_f
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 215
    .line 216
    .line 217
    :goto_1
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 218
    .line 219
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$20$12$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 5
    .line 6
    const/16 v7, 0x3c

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const-string v1, "selectRoute"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v2, p1

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$12$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "showChooser"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$12$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "disconnect"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$13(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-int/lit8 v1, p3, 0x3

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    move v1, v4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v3

    .line 13
    :goto_0
    and-int/lit8 v2, p3, 0x1

    .line 14
    .line 15
    move-object/from16 v15, p2

    .line 16
    .line 17
    check-cast v15, Lcom/jp/bootstrap/internal/pawugmt;

    .line 18
    .line 19
    invoke-virtual {v15, v2, v1}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_10

    .line 24
    .line 25
    sget-object v1, Lcom/jp/bootstrap/internal/uc0;->jyozshuy:Lcom/jp/bootstrap/internal/gteg;

    .line 26
    .line 27
    invoke-static {v15, v3}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->playerDialogSafeInsets(Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/qz0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/jp/bootstrap/internal/xegxz;->syoolsrjr(Lcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/qz0;)Lcom/jp/bootstrap/internal/fe;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Lcom/jp/bootstrap/internal/mgevwcjmy;->amcmg:Lcom/jp/bootstrap/internal/gagkz;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lcom/jp/bootstrap/internal/glkngkydwt;->jyozshuy(Lcom/jp/bootstrap/internal/gagkz;Z)Lcom/jp/bootstrap/internal/oa;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-wide v5, v15, Lcom/jp/bootstrap/internal/pawugmt;->arjuqebdx:J

    .line 42
    .line 43
    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->sbmzsrkn()Lcom/jp/bootstrap/internal/dr;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v15, v1}, Lcom/jp/bootstrap/internal/xegxz;->fugymz(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/fe;)Lcom/jp/bootstrap/internal/fe;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v7, Lcom/jp/bootstrap/internal/vtir;->jyozshuy:Lcom/jp/bootstrap/internal/uvhusfdhcuy;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v7, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jzphcv:Lcom/jp/bootstrap/internal/bquodsmdnen;

    .line 61
    .line 62
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->eazl()V

    .line 63
    .line 64
    .line 65
    iget-boolean v8, v15, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu:Z

    .line 66
    .line 67
    if-eqz v8, :cond_1

    .line 68
    .line 69
    invoke-virtual {v15, v7}, Lcom/jp/bootstrap/internal/pawugmt;->gbcohonrle(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->fekqvc()V

    .line 74
    .line 75
    .line 76
    :goto_1
    sget-object v7, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->dhjfigsvwc:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 77
    .line 78
    invoke-static {v15, v7, v2}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->cauva:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 82
    .line 83
    invoke-static {v15, v2, v6}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    sget-object v5, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->uaakwbmitdl:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 91
    .line 92
    invoke-static {v15, v5, v2}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->mhirrjin:Lcom/jp/bootstrap/internal/bburc;

    .line 96
    .line 97
    invoke-static {v15, v2}, Lcom/jp/bootstrap/internal/fg;->jisccnqwqm(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 98
    .line 99
    .line 100
    sget-object v2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jyozshuy:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 101
    .line 102
    invoke-static {v15, v2, v1}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    sget-object v6, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 118
    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    if-ne v2, v6, :cond_3

    .line 122
    .line 123
    :cond_2
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$1$1;

    .line 124
    .line 125
    invoke-direct {v2, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v15, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    check-cast v2, Lcom/jp/bootstrap/internal/c;

    .line 132
    .line 133
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    if-ne v7, v6, :cond_5

    .line 144
    .line 145
    :cond_4
    new-instance v7, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$2$1;

    .line 146
    .line 147
    invoke-direct {v7, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$2$1;-><init>(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v15, v7}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_5
    check-cast v7, Lcom/jp/bootstrap/internal/c;

    .line 154
    .line 155
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    if-ne v8, v6, :cond_7

    .line 166
    .line 167
    :cond_6
    new-instance v8, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$3$1;

    .line 168
    .line 169
    invoke-direct {v8, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$3$1;-><init>(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15, v8}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_7
    check-cast v8, Lcom/jp/bootstrap/internal/c;

    .line 176
    .line 177
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    if-nez v1, :cond_8

    .line 186
    .line 187
    if-ne v9, v6, :cond_9

    .line 188
    .line 189
    :cond_8
    new-instance v9, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$4$1;

    .line 190
    .line 191
    invoke-direct {v9, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$13$1$4$1;-><init>(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v15, v9}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_9
    check-cast v9, Lcom/jp/bootstrap/internal/c;

    .line 198
    .line 199
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    if-nez v1, :cond_a

    .line 208
    .line 209
    if-ne v10, v6, :cond_b

    .line 210
    .line 211
    :cond_a
    new-instance v10, Lcom/jp/bootstrap/internal/casshz;

    .line 212
    .line 213
    invoke-direct {v10, v0, v3}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v15, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    :cond_b
    check-cast v10, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 220
    .line 221
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    if-nez v1, :cond_c

    .line 230
    .line 231
    if-ne v3, v6, :cond_d

    .line 232
    .line 233
    :cond_c
    new-instance v3, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 234
    .line 235
    const/4 v1, 0x4

    .line 236
    invoke-direct {v3, v0, v1}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v15, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_d
    check-cast v3, Lcom/jp/bootstrap/internal/mbwlg;

    .line 243
    .line 244
    invoke-virtual {v15, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    if-nez v1, :cond_e

    .line 253
    .line 254
    if-ne v11, v6, :cond_f

    .line 255
    .line 256
    :cond_e
    new-instance v11, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 257
    .line 258
    const/4 v1, 0x5

    .line 259
    invoke-direct {v11, v0, v1}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v15, v11}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_f
    check-cast v11, Lcom/jp/bootstrap/internal/mbwlg;

    .line 266
    .line 267
    check-cast v2, Lcom/jp/bootstrap/internal/mbwlg;

    .line 268
    .line 269
    check-cast v7, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 270
    .line 271
    move-object v12, v8

    .line 272
    check-cast v12, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 273
    .line 274
    move-object v13, v9

    .line 275
    check-cast v13, Lcom/jp/bootstrap/internal/mbwlg;

    .line 276
    .line 277
    const/high16 v0, 0x30000000

    .line 278
    .line 279
    sget v1, Lcom/jp/runtime/shell/PlayerCastUiState;->$stable:I

    .line 280
    .line 281
    or-int v16, v1, v0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    const/4 v14, 0x1

    .line 286
    move-object/from16 v9, p1

    .line 287
    .line 288
    move-object v6, v10

    .line 289
    move-object v8, v11

    .line 290
    move-object v10, v2

    .line 291
    move-object v11, v7

    .line 292
    move-object v7, v3

    .line 293
    invoke-static/range {v5 .. v17}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerCastDrawer(Lcom/jp/runtime/shell/PlayerCastUiState;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;ZLcom/jp/bootstrap/internal/tjht;II)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v15, v4}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 297
    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_10
    invoke-virtual {v15}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 301
    .line 302
    .line 303
    :goto_2
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 304
    .line 305
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$20$13$0$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 5
    .line 6
    const/16 v7, 0x3c

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const-string v1, "selectRoute"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v2, p1

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$13$0$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "showChooser"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$13$0$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "disconnect"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$14$2$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    const-wide/16 v0, -0x2710

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->seekCastBy(J)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$14$3$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->seekCastBy(J)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$14$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "disconnect"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$14$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 6
    .line 7
    const/16 v8, 0x3e

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const-string v2, "discover"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-static/range {v1 .. v9}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$14$8$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/umqafeb;->getOnBackPressedDispatcher()Lcom/jp/bootstrap/internal/gm;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gm;->syiqloeyp()Lcom/jp/bootstrap/internal/em;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gj;->syiqloeyp()V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;Lcom/jp/bootstrap/internal/shgceel;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 42

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p6, 0x11

    .line 7
    .line 8
    const/16 v2, 0x10

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    and-int/lit8 v2, p6, 0x1

    .line 17
    .line 18
    move-object/from16 v5, p5

    .line 19
    .line 20
    check-cast v5, Lcom/jp/bootstrap/internal/pawugmt;

    .line 21
    .line 22
    invoke-virtual {v5, v2, v1}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_43

    .line 27
    .line 28
    sget-object v6, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 29
    .line 30
    if-eqz p0, :cond_23

    .line 31
    .line 32
    const v7, -0x6735bfe7

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v7}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    move-object v8, v7

    .line 43
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLineLabel()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeShowEpisodes()Z

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeShowLines()Z

    .line 60
    .line 61
    .line 62
    move-result v15

    .line 63
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsLocked()Z

    .line 64
    .line 65
    .line 66
    move-result v34

    .line 67
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeDownloadLabel()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v22

    .line 71
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    if-nez v9, :cond_1

    .line 80
    .line 81
    if-ne v10, v6, :cond_2

    .line 82
    .line 83
    :cond_1
    new-instance v10, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$1$1;

    .line 84
    .line 85
    invoke-direct {v10, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$1$1;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v10}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    check-cast v10, Lcom/jp/bootstrap/internal/c;

    .line 92
    .line 93
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    if-nez v9, :cond_3

    .line 102
    .line 103
    if-ne v11, v6, :cond_4

    .line 104
    .line 105
    :cond_3
    new-instance v11, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$2$1;

    .line 106
    .line 107
    invoke-direct {v11, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$2$1;-><init>(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v11}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    check-cast v11, Lcom/jp/bootstrap/internal/c;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v9, :cond_5

    .line 124
    .line 125
    if-ne v1, v6, :cond_6

    .line 126
    .line 127
    :cond_5
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$3$1;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$3$1;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    check-cast v1, Lcom/jp/bootstrap/internal/c;

    .line 136
    .line 137
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v9, :cond_7

    .line 146
    .line 147
    if-ne v2, v6, :cond_8

    .line 148
    .line 149
    :cond_7
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$4$1;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$4$1;-><init>(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    check-cast v2, Lcom/jp/bootstrap/internal/c;

    .line 158
    .line 159
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipIntroOutro()Z

    .line 160
    .line 161
    .line 162
    move-result v28

    .line 163
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getPanelDismissRequest()I

    .line 164
    .line 165
    .line 166
    move-result v31

    .line 167
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-nez v9, :cond_9

    .line 176
    .line 177
    if-ne v3, v6, :cond_a

    .line 178
    .line 179
    :cond_9
    new-instance v3, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$5$1;

    .line 180
    .line 181
    invoke-direct {v3, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$5$1;-><init>(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_a
    check-cast v3, Lcom/jp/bootstrap/internal/c;

    .line 188
    .line 189
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-nez v9, :cond_b

    .line 198
    .line 199
    if-ne v4, v6, :cond_c

    .line 200
    .line 201
    :cond_b
    new-instance v4, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 202
    .line 203
    const/16 v9, 0x12

    .line 204
    .line 205
    invoke-direct {v4, v0, v9}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v4}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :cond_c
    check-cast v4, Lcom/jp/bootstrap/internal/mbwlg;

    .line 212
    .line 213
    move-object v9, v3

    .line 214
    check-cast v9, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 215
    .line 216
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    move-object/from16 p3, v1

    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-nez v3, :cond_d

    .line 227
    .line 228
    if-ne v1, v6, :cond_e

    .line 229
    .line 230
    :cond_d
    new-instance v1, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 231
    .line 232
    const/16 v3, 0x1b

    .line 233
    .line 234
    invoke-direct {v1, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    :cond_e
    check-cast v1, Lcom/jp/bootstrap/internal/mbwlg;

    .line 241
    .line 242
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    move-object/from16 p6, v1

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    if-nez v3, :cond_f

    .line 253
    .line 254
    if-ne v1, v6, :cond_10

    .line 255
    .line 256
    :cond_f
    new-instance v1, Lcom/jp/bootstrap/internal/osimxcz;

    .line 257
    .line 258
    const/4 v3, 0x0

    .line 259
    invoke-direct {v1, v0, v3}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_10
    move-object/from16 v17, v1

    .line 266
    .line 267
    check-cast v17, Lcom/jp/bootstrap/internal/mbwlg;

    .line 268
    .line 269
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    if-nez v1, :cond_11

    .line 278
    .line 279
    if-ne v3, v6, :cond_12

    .line 280
    .line 281
    :cond_11
    new-instance v3, Lcom/jp/bootstrap/internal/osimxcz;

    .line 282
    .line 283
    const/4 v1, 0x1

    .line 284
    invoke-direct {v3, v0, v1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_12
    move-object/from16 v18, v3

    .line 291
    .line 292
    check-cast v18, Lcom/jp/bootstrap/internal/mbwlg;

    .line 293
    .line 294
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    move/from16 v16, v1

    .line 303
    .line 304
    const/4 v1, 0x2

    .line 305
    if-nez v16, :cond_13

    .line 306
    .line 307
    if-ne v3, v6, :cond_14

    .line 308
    .line 309
    :cond_13
    new-instance v3, Lcom/jp/bootstrap/internal/osimxcz;

    .line 310
    .line 311
    invoke-direct {v3, v0, v1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_14
    move-object/from16 v19, v3

    .line 318
    .line 319
    check-cast v19, Lcom/jp/bootstrap/internal/mbwlg;

    .line 320
    .line 321
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v3

    .line 325
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-nez v3, :cond_15

    .line 330
    .line 331
    if-ne v1, v6, :cond_16

    .line 332
    .line 333
    :cond_15
    new-instance v1, Lcom/jp/bootstrap/internal/osimxcz;

    .line 334
    .line 335
    const/4 v3, 0x3

    .line 336
    invoke-direct {v1, v0, v3}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5, v1}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_16
    move-object/from16 v20, v1

    .line 343
    .line 344
    check-cast v20, Lcom/jp/bootstrap/internal/mbwlg;

    .line 345
    .line 346
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    if-nez v1, :cond_17

    .line 355
    .line 356
    if-ne v3, v6, :cond_18

    .line 357
    .line 358
    :cond_17
    new-instance v3, Lcom/jp/bootstrap/internal/osimxcz;

    .line 359
    .line 360
    const/4 v1, 0x4

    .line 361
    invoke-direct {v3, v0, v1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    :cond_18
    move-object/from16 v21, v3

    .line 368
    .line 369
    check-cast v21, Lcom/jp/bootstrap/internal/mbwlg;

    .line 370
    .line 371
    move-object/from16 v23, v10

    .line 372
    .line 373
    check-cast v23, Lcom/jp/bootstrap/internal/mbwlg;

    .line 374
    .line 375
    move-object/from16 v24, v11

    .line 376
    .line 377
    check-cast v24, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 378
    .line 379
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    const/4 v10, 0x5

    .line 388
    if-nez v1, :cond_19

    .line 389
    .line 390
    if-ne v3, v6, :cond_1a

    .line 391
    .line 392
    :cond_19
    new-instance v3, Lcom/jp/bootstrap/internal/osimxcz;

    .line 393
    .line 394
    invoke-direct {v3, v0, v10}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_1a
    move-object/from16 v25, v3

    .line 401
    .line 402
    check-cast v25, Lcom/jp/bootstrap/internal/mbwlg;

    .line 403
    .line 404
    move-object/from16 v26, p3

    .line 405
    .line 406
    check-cast v26, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 407
    .line 408
    move-object/from16 v27, v2

    .line 409
    .line 410
    check-cast v27, Lcom/jp/bootstrap/internal/yscssjg;

    .line 411
    .line 412
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v1

    .line 416
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    if-nez v1, :cond_1b

    .line 421
    .line 422
    if-ne v2, v6, :cond_1c

    .line 423
    .line 424
    :cond_1b
    new-instance v2, Lcom/jp/bootstrap/internal/osimxcz;

    .line 425
    .line 426
    const/4 v1, 0x6

    .line 427
    invoke-direct {v2, v0, v1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    :cond_1c
    move-object/from16 v29, v2

    .line 434
    .line 435
    check-cast v29, Lcom/jp/bootstrap/internal/mbwlg;

    .line 436
    .line 437
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    if-nez v1, :cond_1d

    .line 446
    .line 447
    if-ne v2, v6, :cond_1e

    .line 448
    .line 449
    :cond_1d
    new-instance v2, Lcom/jp/bootstrap/internal/casshz;

    .line 450
    .line 451
    invoke-direct {v2, v0, v10}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_1e
    move-object/from16 v30, v2

    .line 458
    .line 459
    check-cast v30, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 460
    .line 461
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    if-nez v1, :cond_1f

    .line 470
    .line 471
    if-ne v2, v6, :cond_20

    .line 472
    .line 473
    :cond_1f
    new-instance v2, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 474
    .line 475
    const/16 v1, 0x13

    .line 476
    .line 477
    invoke-direct {v2, v0, v1}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    :cond_20
    move-object/from16 v32, v2

    .line 484
    .line 485
    check-cast v32, Lcom/jp/bootstrap/internal/mbwlg;

    .line 486
    .line 487
    invoke-virtual {v5, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    if-nez v1, :cond_21

    .line 496
    .line 497
    if-ne v2, v6, :cond_22

    .line 498
    .line 499
    :cond_21
    new-instance v2, Lcom/jp/bootstrap/internal/casshz;

    .line 500
    .line 501
    const/4 v1, 0x2

    .line 502
    invoke-direct {v2, v0, v1}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v5, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    :cond_22
    move-object/from16 v35, v2

    .line 509
    .line 510
    check-cast v35, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 511
    .line 512
    const/16 v40, 0x0

    .line 513
    .line 514
    const/16 v41, 0x0

    .line 515
    .line 516
    const/4 v10, 0x1

    .line 517
    const/4 v11, 0x0

    .line 518
    const/high16 v37, 0x1b0000

    .line 519
    .line 520
    const/16 v38, 0x0

    .line 521
    .line 522
    const/16 v39, 0x0

    .line 523
    .line 524
    move-object/from16 v33, p2

    .line 525
    .line 526
    move-object/from16 v16, p6

    .line 527
    .line 528
    move-object/from16 v36, v5

    .line 529
    .line 530
    move-object v6, v8

    .line 531
    move-object/from16 v5, p0

    .line 532
    .line 533
    move-object v8, v4

    .line 534
    invoke-static/range {v5 .. v41}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->JpPlayerControls(Lcom/jp/bootstrap/internal/gt;Ljava/lang/String;ZLcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;ZZZLjava/lang/String;ZZLcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/yscssjg;ZLcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;ILcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;ZLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tjht;IIIII)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v1, v36

    .line 538
    .line 539
    const/4 v3, 0x0

    .line 540
    invoke-virtual {v1, v3}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_1

    .line 544
    .line 545
    :cond_23
    move-object v1, v5

    .line 546
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineUiActive()Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-eqz v2, :cond_42

    .line 551
    .line 552
    const v2, -0x66ec4704

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 556
    .line 557
    .line 558
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePositionMs()J

    .line 559
    .line 560
    .line 561
    move-result-wide v2

    .line 562
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineDurationMs()J

    .line 563
    .line 564
    .line 565
    move-result-wide v8

    .line 566
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePlaying()Z

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v11

    .line 574
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 575
    .line 576
    .line 577
    move-result v12

    .line 578
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    const/16 v16, 0x1

    .line 583
    .line 584
    xor-int/lit8 v14, v4, 0x1

    .line 585
    .line 586
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    if-nez v4, :cond_24

    .line 595
    .line 596
    if-ne v5, v6, :cond_25

    .line 597
    .line 598
    :cond_24
    new-instance v5, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$18$1;

    .line 599
    .line 600
    invoke-direct {v5, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$18$1;-><init>(Ljava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    :cond_25
    check-cast v5, Lcom/jp/bootstrap/internal/c;

    .line 607
    .line 608
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeDownloadLabel()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v22

    .line 612
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    if-nez v4, :cond_26

    .line 621
    .line 622
    if-ne v7, v6, :cond_27

    .line 623
    .line 624
    :cond_26
    new-instance v7, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$19$1;

    .line 625
    .line 626
    invoke-direct {v7, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$19$1;-><init>(Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1, v7}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    :cond_27
    check-cast v7, Lcom/jp/bootstrap/internal/c;

    .line 633
    .line 634
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v13

    .line 642
    if-nez v4, :cond_28

    .line 643
    .line 644
    if-ne v13, v6, :cond_29

    .line 645
    .line 646
    :cond_28
    new-instance v13, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$20$1;

    .line 647
    .line 648
    invoke-direct {v13, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$20$1;-><init>(Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1, v13}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    :cond_29
    check-cast v13, Lcom/jp/bootstrap/internal/c;

    .line 655
    .line 656
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v15

    .line 664
    if-nez v4, :cond_2a

    .line 665
    .line 666
    if-ne v15, v6, :cond_2b

    .line 667
    .line 668
    :cond_2a
    new-instance v15, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$21$1;

    .line 669
    .line 670
    invoke-direct {v15, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$21$1;-><init>(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v1, v15}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    :cond_2b
    check-cast v15, Lcom/jp/bootstrap/internal/c;

    .line 677
    .line 678
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    move-wide/from16 v16, v2

    .line 683
    .line 684
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    if-nez v4, :cond_2c

    .line 689
    .line 690
    if-ne v2, v6, :cond_2d

    .line 691
    .line 692
    :cond_2c
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$22$1;

    .line 693
    .line 694
    invoke-direct {v2, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$3$22$1;-><init>(Ljava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    :cond_2d
    check-cast v2, Lcom/jp/bootstrap/internal/c;

    .line 701
    .line 702
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipIntroOutro()Z

    .line 703
    .line 704
    .line 705
    move-result v28

    .line 706
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeShowEpisodes()Z

    .line 707
    .line 708
    .line 709
    move-result v29

    .line 710
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    if-nez v3, :cond_2e

    .line 719
    .line 720
    if-ne v4, v6, :cond_2f

    .line 721
    .line 722
    :cond_2e
    new-instance v4, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 723
    .line 724
    const/16 v3, 0x14

    .line 725
    .line 726
    invoke-direct {v4, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1, v4}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    :cond_2f
    check-cast v4, Lcom/jp/bootstrap/internal/mbwlg;

    .line 733
    .line 734
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    move-object/from16 p0, v2

    .line 739
    .line 740
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    if-nez v3, :cond_30

    .line 745
    .line 746
    if-ne v2, v6, :cond_31

    .line 747
    .line 748
    :cond_30
    new-instance v2, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 749
    .line 750
    const/16 v3, 0x16

    .line 751
    .line 752
    invoke-direct {v2, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 756
    .line 757
    .line 758
    :cond_31
    check-cast v2, Lcom/jp/bootstrap/internal/mbwlg;

    .line 759
    .line 760
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    move-object/from16 p6, v2

    .line 765
    .line 766
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    if-nez v3, :cond_32

    .line 771
    .line 772
    if-ne v2, v6, :cond_33

    .line 773
    .line 774
    :cond_32
    new-instance v2, Lcom/jp/bootstrap/internal/casshz;

    .line 775
    .line 776
    const/4 v3, 0x3

    .line 777
    invoke-direct {v2, v0, v3}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    :cond_33
    check-cast v2, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 784
    .line 785
    move-object/from16 v18, v5

    .line 786
    .line 787
    check-cast v18, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 788
    .line 789
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    if-nez v3, :cond_34

    .line 798
    .line 799
    if-ne v5, v6, :cond_35

    .line 800
    .line 801
    :cond_34
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 802
    .line 803
    const/16 v3, 0x17

    .line 804
    .line 805
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 809
    .line 810
    .line 811
    :cond_35
    move-object/from16 v19, v5

    .line 812
    .line 813
    check-cast v19, Lcom/jp/bootstrap/internal/mbwlg;

    .line 814
    .line 815
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    move-result v3

    .line 819
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    if-nez v3, :cond_36

    .line 824
    .line 825
    if-ne v5, v6, :cond_37

    .line 826
    .line 827
    :cond_36
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 828
    .line 829
    const/16 v3, 0x18

    .line 830
    .line 831
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    :cond_37
    move-object/from16 v20, v5

    .line 838
    .line 839
    check-cast v20, Lcom/jp/bootstrap/internal/mbwlg;

    .line 840
    .line 841
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result v3

    .line 845
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    if-nez v3, :cond_38

    .line 850
    .line 851
    if-ne v5, v6, :cond_39

    .line 852
    .line 853
    :cond_38
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 854
    .line 855
    const/16 v3, 0x19

    .line 856
    .line 857
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 861
    .line 862
    .line 863
    :cond_39
    move-object/from16 v21, v5

    .line 864
    .line 865
    check-cast v21, Lcom/jp/bootstrap/internal/mbwlg;

    .line 866
    .line 867
    move-object/from16 v23, v7

    .line 868
    .line 869
    check-cast v23, Lcom/jp/bootstrap/internal/mbwlg;

    .line 870
    .line 871
    move-object/from16 v24, v13

    .line 872
    .line 873
    check-cast v24, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 874
    .line 875
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v5

    .line 883
    if-nez v3, :cond_3a

    .line 884
    .line 885
    if-ne v5, v6, :cond_3b

    .line 886
    .line 887
    :cond_3a
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 888
    .line 889
    const/16 v3, 0x1a

    .line 890
    .line 891
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 895
    .line 896
    .line 897
    :cond_3b
    move-object/from16 v25, v5

    .line 898
    .line 899
    check-cast v25, Lcom/jp/bootstrap/internal/mbwlg;

    .line 900
    .line 901
    move-object/from16 v26, v15

    .line 902
    .line 903
    check-cast v26, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 904
    .line 905
    move-object/from16 v27, p0

    .line 906
    .line 907
    check-cast v27, Lcom/jp/bootstrap/internal/yscssjg;

    .line 908
    .line 909
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v5

    .line 917
    if-nez v3, :cond_3c

    .line 918
    .line 919
    if-ne v5, v6, :cond_3d

    .line 920
    .line 921
    :cond_3c
    new-instance v5, Lcom/jp/bootstrap/internal/casshz;

    .line 922
    .line 923
    const/4 v3, 0x4

    .line 924
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 925
    .line 926
    .line 927
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    :cond_3d
    move-object/from16 v30, v5

    .line 931
    .line 932
    check-cast v30, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 933
    .line 934
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 935
    .line 936
    .line 937
    move-result v3

    .line 938
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    if-nez v3, :cond_3e

    .line 943
    .line 944
    if-ne v5, v6, :cond_3f

    .line 945
    .line 946
    :cond_3e
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 947
    .line 948
    const/16 v3, 0x1c

    .line 949
    .line 950
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    :cond_3f
    move-object/from16 v31, v5

    .line 957
    .line 958
    check-cast v31, Lcom/jp/bootstrap/internal/mbwlg;

    .line 959
    .line 960
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v5

    .line 968
    if-nez v3, :cond_40

    .line 969
    .line 970
    if-ne v5, v6, :cond_41

    .line 971
    .line 972
    :cond_40
    new-instance v5, Lcom/jp/bootstrap/internal/thauvknfap;

    .line 973
    .line 974
    const/16 v3, 0x1d

    .line 975
    .line 976
    invoke-direct {v5, v0, v3}, Lcom/jp/bootstrap/internal/thauvknfap;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v1, v5}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 980
    .line 981
    .line 982
    :cond_41
    move-object/from16 v33, v5

    .line 983
    .line 984
    check-cast v33, Lcom/jp/bootstrap/internal/mbwlg;

    .line 985
    .line 986
    const/high16 v0, 0x180000

    .line 987
    .line 988
    sget v3, Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;->$stable:I

    .line 989
    .line 990
    or-int v36, v3, v0

    .line 991
    .line 992
    const/16 v38, 0x0

    .line 993
    .line 994
    const/high16 v39, 0x2000000

    .line 995
    .line 996
    const/4 v13, 0x1

    .line 997
    const/16 v32, 0x0

    .line 998
    .line 999
    const/16 v37, 0x0

    .line 1000
    .line 1001
    move-object/from16 v34, p2

    .line 1002
    .line 1003
    move-object/from16 v5, p3

    .line 1004
    .line 1005
    move-object/from16 v35, v1

    .line 1006
    .line 1007
    move-object v15, v4

    .line 1008
    move-wide/from16 v6, v16

    .line 1009
    .line 1010
    move-object/from16 v16, p6

    .line 1011
    .line 1012
    move-object/from16 v17, v2

    .line 1013
    .line 1014
    invoke-static/range {v5 .. v39}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->JpOfflinePlayerControls(Lcom/jp/runtime/shell/PlayerGestureAdapter;JJZLjava/lang/String;ZZZLcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/mbwlg;Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/yscssjg;ZZLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tjht;IIII)V

    .line 1015
    .line 1016
    .line 1017
    const/4 v3, 0x0

    .line 1018
    invoke-virtual {v1, v3}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_1

    .line 1022
    :cond_42
    const/4 v3, 0x0

    .line 1023
    const v0, -0x66b88bd7

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/pawugmt;->yxdrscromtp(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1, v3}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_1

    .line 1033
    :cond_43
    move-object v1, v5

    .line 1034
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 1035
    .line 1036
    .line 1037
    :goto_1
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 1038
    .line 1039
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$10$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shareCurrentPlayback()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$11$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const-string v0, "more"

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0, v0, v2, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$12$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->enterPictureInPicture()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$13$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$14$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setPlayerPanelOpen(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$15$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$16$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsLocked(Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/2addr v0, p1

    .line 13
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$22$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/umqafeb;->getOnBackPressedDispatcher()Lcom/jp/bootstrap/internal/gm;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gm;->syiqloeyp()Lcom/jp/bootstrap/internal/em;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gj;->syiqloeyp()V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$23$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->isPlaying()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->pause()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->resume()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 20
    .line 21
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$24$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->seekTo(J)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$25$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v18, 0x1ff6

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    invoke-static/range {v2 .. v19}, Lcom/jp/runtime/shell/PlayerCastUiState;->copy$default(Lcom/jp/runtime/shell/PlayerCastUiState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZIZZILjava/lang/Object;)Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 50
    .line 51
    const/16 v9, 0x3e

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const-string v3, "prepareSheet"

    .line 55
    .line 56
    invoke-static/range {v2 .. v10}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 60
    .line 61
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$26$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "share"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$27$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const-string v0, "more"

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p0, v0, v2, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$28$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->enterPictureInPicture()Z

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$29$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setPlayerPanelOpen(Z)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$30$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$31$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dismissChromeSheets()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 16
    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/umqafeb;->getOnBackPressedDispatcher()Lcom/jp/bootstrap/internal/gm;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gm;->syiqloeyp()Lcom/jp/bootstrap/internal/em;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/gj;->syiqloeyp()V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->requestNextEpisode()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$7$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-string v0, "episodes"

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {p0, v0, v2, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 52
    .line 53
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$8$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeFullscreen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeLines()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    const-string v0, "lines"

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {p0, v0, v2, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 52
    .line 53
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$2$9$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v18, 0x1ff6

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    invoke-static/range {v2 .. v19}, Lcom/jp/runtime/shell/PlayerCastUiState;->copy$default(Lcom/jp/runtime/shell/PlayerCastUiState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZIZZILjava/lang/Object;)Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 50
    .line 51
    const/16 v9, 0x3e

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const-string v3, "prepareSheet"

    .line 55
    .line 56
    invoke-static/range {v2 .. v10}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 60
    .line 61
    return-object v0
.end method

.method private static final createControlsView$lambda$0$0$0$20$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setAutoNextCancelledForKey(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$6(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 9

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/2addr p2, v2

    .line 11
    move-object v6, p1

    .line 12
    check-cast v6, Lcom/jp/bootstrap/internal/pawugmt;

    .line 13
    .line 14
    invoke-virtual {v6, p2, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_5

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodeKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v6, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v6}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    sget-object v0, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    if-ne p2, v0, :cond_2

    .line 41
    .line 42
    :cond_1
    new-instance p2, Lcom/jp/bootstrap/internal/casshz;

    .line 43
    .line 44
    const/4 p1, 0x7

    .line 45
    invoke-direct {p2, p0, p1}, Lcom/jp/bootstrap/internal/casshz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    move-object v3, p2

    .line 52
    check-cast v3, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 53
    .line 54
    invoke-virtual {v6, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v6}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    if-ne p2, v0, :cond_4

    .line 65
    .line 66
    :cond_3
    new-instance p2, Lcom/jp/bootstrap/internal/osimxcz;

    .line 67
    .line 68
    const/16 p1, 0x9

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    move-object v4, p2

    .line 77
    check-cast v4, Lcom/jp/bootstrap/internal/mbwlg;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    const/16 v8, 0x10

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v1 .. v8}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerEpisodeDrawer(Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;ZLcom/jp/bootstrap/internal/tjht;II)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-virtual {v6}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 88
    .line 89
    .line 90
    :goto_1
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 91
    .line 92
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$6$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeEpisodeItem;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectEpisode(Lcom/jp/runtime/shell/ChromeEpisodeItem;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$6$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$7$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$8(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 12

    .line 1
    and-int/lit8 v0, p2, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    and-int/2addr p2, v3

    .line 12
    move-object v9, p1

    .line 13
    check-cast v9, Lcom/jp/bootstrap/internal/pawugmt;

    .line 14
    .line 15
    invoke-virtual {v9, p2, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_6

    .line 20
    .line 21
    sget-object p1, Lcom/jp/bootstrap/internal/uc0;->jyozshuy:Lcom/jp/bootstrap/internal/gteg;

    .line 22
    .line 23
    invoke-static {v9, v2}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->playerDialogSafeInsets(Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/qz0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/jp/bootstrap/internal/xegxz;->syoolsrjr(Lcom/jp/bootstrap/internal/fe;Lcom/jp/bootstrap/internal/qz0;)Lcom/jp/bootstrap/internal/fe;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/jp/bootstrap/internal/mgevwcjmy;->amcmg:Lcom/jp/bootstrap/internal/gagkz;

    .line 32
    .line 33
    invoke-static {p2, v2}, Lcom/jp/bootstrap/internal/glkngkydwt;->jyozshuy(Lcom/jp/bootstrap/internal/gagkz;Z)Lcom/jp/bootstrap/internal/oa;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-wide v0, v9, Lcom/jp/bootstrap/internal/pawugmt;->arjuqebdx:J

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->sbmzsrkn()Lcom/jp/bootstrap/internal/dr;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v9, p1}, Lcom/jp/bootstrap/internal/xegxz;->fugymz(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/fe;)Lcom/jp/bootstrap/internal/fe;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v2, Lcom/jp/bootstrap/internal/vtir;->jyozshuy:Lcom/jp/bootstrap/internal/uvhusfdhcuy;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jzphcv:Lcom/jp/bootstrap/internal/bquodsmdnen;

    .line 57
    .line 58
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->eazl()V

    .line 59
    .line 60
    .line 61
    iget-boolean v4, v9, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu:Z

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v9, v2}, Lcom/jp/bootstrap/internal/pawugmt;->gbcohonrle(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->fekqvc()V

    .line 70
    .line 71
    .line 72
    :goto_1
    sget-object v2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->dhjfigsvwc:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 73
    .line 74
    invoke-static {v9, v2, p2}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->cauva:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 78
    .line 79
    invoke-static {v9, p2, v1}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    sget-object v0, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->uaakwbmitdl:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 87
    .line 88
    invoke-static {v9, v0, p2}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->mhirrjin:Lcom/jp/bootstrap/internal/bburc;

    .line 92
    .line 93
    invoke-static {v9, p2}, Lcom/jp/bootstrap/internal/fg;->jisccnqwqm(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 94
    .line 95
    .line 96
    sget-object p2, Lcom/jp/bootstrap/internal/uvhusfdhcuy;->jyozshuy:Lcom/jp/bootstrap/internal/soinlbcapp;

    .line 97
    .line 98
    invoke-static {v9, p2, p1}, Lcom/jp/bootstrap/internal/fg;->edtsi(Lcom/jp/bootstrap/internal/tjht;Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodeKey()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v9, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    sget-object v0, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 118
    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    if-ne p2, v0, :cond_3

    .line 122
    .line 123
    :cond_2
    new-instance p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$9$1$1$1;

    .line 124
    .line 125
    invoke-direct {p2, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$7$9$1$1$1;-><init>(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    check-cast p2, Lcom/jp/bootstrap/internal/c;

    .line 132
    .line 133
    move-object v6, p2

    .line 134
    check-cast v6, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 135
    .line 136
    invoke-virtual {v9, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-nez p1, :cond_4

    .line 145
    .line 146
    if-ne p2, v0, :cond_5

    .line 147
    .line 148
    :cond_4
    new-instance p2, Lcom/jp/bootstrap/internal/osimxcz;

    .line 149
    .line 150
    const/4 p1, 0x7

    .line 151
    invoke-direct {p2, p0, p1}, Lcom/jp/bootstrap/internal/osimxcz;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, p2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    move-object v7, p2

    .line 158
    check-cast v7, Lcom/jp/bootstrap/internal/mbwlg;

    .line 159
    .line 160
    const/16 v10, 0x6000

    .line 161
    .line 162
    const/4 v11, 0x0

    .line 163
    const/4 v8, 0x1

    .line 164
    invoke-static/range {v4 .. v11}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->PlayerEpisodeDrawer(Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;ZLcom/jp/bootstrap/internal/tjht;II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v3}, Lcom/jp/bootstrap/internal/pawugmt;->nvbyrnefqdi(Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    invoke-virtual {v9}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 172
    .line 173
    .line 174
    :goto_2
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 175
    .line 176
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$8$0$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$20$9$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/th;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$2(Lcom/jp/bootstrap/internal/th;Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final createControlsView$lambda$0$0$0$6$0(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/pfpsgdybs;)Lcom/jp/bootstrap/internal/ikgg;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    invoke-direct {p1, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackState(I)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-direct {p1, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeProgressFraction(F)V

    .line 12
    .line 13
    .line 14
    const-wide v0, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeRemainingMs(J)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$lambda$0$0$0$6$0$$inlined$onDispose$1;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$lambda$0$0$0$6$0$$inlined$onDispose$1;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$2$1$listener$1;

    .line 29
    .line 30
    invoke-direct {p2, p1, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$2$1$listener$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;)V

    .line 31
    .line 32
    .line 33
    move-object v0, p0

    .line 34
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/jp/bootstrap/internal/xmpxuyqu;->tsodtn:Lcom/jp/bootstrap/internal/w6;

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Lcom/jp/bootstrap/internal/w6;->syiqloeyp(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dujeewwyska()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {p1, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackState(I)V

    .line 46
    .line 47
    .line 48
    move-object v1, p0

    .line 49
    check-cast v1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/mctadfgh;->mhirrjin()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-direct {p1, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->rowxts()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-direct {p1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$lambda$0$0$0$6$0$$inlined$onDispose$2;

    .line 66
    .line 67
    invoke-direct {p1, p0, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$lambda$0$0$0$6$0$$inlined$onDispose$2;-><init>(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createControlsView$1$1$1$2$1$listener$1;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method private static final createControlsView$lambda$0$0$0$8(Lcom/jp/bootstrap/internal/th;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/th;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final createControlsView$lambda$0$0$0$9(Lcom/jp/bootstrap/internal/th;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/th;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final createOnlinePlayer(Lcom/jp/bootstrap/internal/yb;JZ)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->INSTANCE:Lcom/jp/runtime/shell/StreamingMediaRuntime;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->newPlayer(Landroid/content/Context;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 11
    .line 12
    invoke-virtual {v1, p1, p2, p3}, Lcom/jp/bootstrap/internal/mctadfgh;->wyjqgzdhz(Lcom/jp/bootstrap/internal/yb;J)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    check-cast p1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 17
    .line 18
    invoke-virtual {p1, p4}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createOnlinePlayer$1$1;

    .line 22
    .line 23
    invoke-direct {p2, p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$createOnlinePlayer$1$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p1, Lcom/jp/bootstrap/internal/xmpxuyqu;->tsodtn:Lcom/jp/bootstrap/internal/w6;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/jp/bootstrap/internal/w6;->syiqloeyp(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dwcjxttbbo()V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private final currentDownloadState()Lcom/jp/runtime/shell/PlayerDownloadUiState;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadTrackingContentId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v5, "work:"

    .line 52
    .line 53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, ":"

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    check-cast p0, Ljava/lang/Iterable;

    .line 78
    .line 79
    new-instance v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const/4 v6, 0x0

    .line 93
    if-eqz v5, :cond_4

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v7, v5

    .line 100
    check-cast v7, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7, v3, v6}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    move v5, v6

    .line 126
    :cond_5
    :goto_1
    if-ge v5, v3, :cond_9

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    move-object v8, v7

    .line 135
    check-cast v8, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    if-eqz v9, :cond_7

    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getEpisodeIndex()Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-nez v8, :cond_6

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-ne v8, v9, :cond_5

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    if-eqz v9, :cond_5

    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    new-instance v11, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v12, ":episode:"

    .line 174
    .line 175
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-static {v10, v11, v6}, Lcom/jp/bootstrap/internal/gi0;->gbursjlv(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    if-nez v10, :cond_8

    .line 193
    .line 194
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-static {v8, v9, v6}, Lcom/jp/bootstrap/internal/ni0;->punn(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_5

    .line 207
    .line 208
    :cond_8
    :goto_2
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    :goto_3
    if-ge v6, v0, :cond_a

    .line 217
    .line 218
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 223
    .line 224
    check-cast v2, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 225
    .line 226
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_a
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    check-cast p0, Ljava/lang/Iterable;

    .line 242
    .line 243
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->selectBestPlayerDownloadState(Ljava/lang/Iterable;)Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0
.end method

.method public static synthetic dhjfigsvwc(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen$lambda$1(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final dimOverlay$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jp/runtime/shell/ShellActivity;->dismissPlayerOverlay$shell_runtime()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final dispatchCastPlaybackProgress(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 7
    .line 8
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 9
    .line 10
    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "workId"

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "selectionId"

    .line 27
    .line 28
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "episodeKey"

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "episodeIndex"

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "lineKey"

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v0, "playing"

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    const-string v0, "buffering"

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v2, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const-string v0, "error"

    .line 73
    .line 74
    invoke-virtual {v2, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    cmp-long v0, p1, v4

    .line 80
    .line 81
    if-gez v0, :cond_1

    .line 82
    .line 83
    move-wide p1, v4

    .line 84
    :cond_1
    long-to-double p1, p1

    .line 85
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    div-double/2addr p1, v6

    .line 91
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "current"

    .line 96
    .line 97
    invoke-virtual {v2, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    cmp-long p1, p3, v4

    .line 101
    .line 102
    if-gez p1, :cond_2

    .line 103
    .line 104
    move-wide p3, v4

    .line 105
    :cond_2
    long-to-double p1, p3

    .line 106
    div-double/2addr p1, v6

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "duration"

    .line 112
    .line 113
    invoke-virtual {v2, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string p1, "fullscreen"

    .line 117
    .line 118
    iget-boolean p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 119
    .line 120
    invoke-virtual {v2, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    const-string p1, "offline"

    .line 124
    .line 125
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 126
    .line 127
    invoke-virtual {v2, p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    const-string p0, "casting"

    .line 131
    .line 132
    invoke-virtual {v2, p0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    const-string p0, "playVideoStateChange"

    .line 136
    .line 137
    invoke-interface {v1, p0, v2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private final dispatchChromeAction(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "action"

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "workId"

    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "selectionId"

    .line 44
    .line 45
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object p1, v1

    .line 61
    :goto_1
    const-string v2, "episodeKey"

    .line 62
    .line 63
    invoke-virtual {v0, p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    move-object p1, v1

    .line 76
    :goto_2
    const-string v2, "episodeIndex"

    .line 77
    .line 78
    invoke-virtual {v0, p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_3
    const-string p1, "lineKey"

    .line 90
    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "fullscreen"

    .line 95
    .line 96
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 97
    .line 98
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/jp/bootstrap/internal/cjpbeith;->wyjqgzdhz()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->nvbyrnefqdi(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 129
    .line 130
    const-string p1, "playerChromeAction"

    .line 131
    .line 132
    invoke-interface {p0, p1, v0}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public static synthetic dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 6
    .line 7
    invoke-direct {p2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final dispatchHostReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    new-instance v2, Lcom/jp/bootstrap/internal/flrh;

    .line 9
    .line 10
    const/16 v3, 0xf

    .line 11
    .line 12
    invoke-direct {v2, v3, p0, v0}, Lcom/jp/bootstrap/internal/flrh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final dispatchHostReady$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    cmp-long v0, v0, v2

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 48
    .line 49
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v2, "workId"

    .line 63
    .line 64
    invoke-virtual {v1, p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "selectionId"

    .line 68
    .line 69
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v2, "width"

    .line 85
    .line 86
    invoke-virtual {v1, p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string p1, "height"

    .line 100
    .line 101
    invoke-virtual {v1, p0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string p0, "playerHostReady"

    .line 105
    .line 106
    invoke-interface {v0, p0, v1}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    return-void
.end method

.method private final dispatchPlaybackAccessReady(Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/ResolvedMedia;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/jp/runtime/shell/ResolvedMedia;->getLineKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 25
    .line 26
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "work_id"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v2, "episode_key"

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "episode_index"

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v1, p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "preferred_line_key"

    .line 63
    .line 64
    invoke-virtual {v1, v0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "url"

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/jp/runtime/shell/ResolvedMedia;->getUrl()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v1, p2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "playbackAccessReady"

    .line 77
    .line 78
    invoke-interface {p0, p1, v1}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private final dispatchPlaybackFailure()V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 13
    .line 14
    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 15
    .line 16
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v5, "workId"

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "selectionId"

    .line 33
    .line 34
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v5, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "episodeKey"

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3, v5, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "episodeIndex"

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v3, v5, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "lineKey"

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v3, v1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "playing"

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v3, v1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    const-string v1, "buffering"

    .line 73
    .line 74
    invoke-virtual {v3, v1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    const-string v1, "error"

    .line 78
    .line 79
    const/4 v5, 0x1

    .line 80
    invoke-virtual {v3, v1, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const-string v1, "current"

    .line 84
    .line 85
    invoke-virtual {v3, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "duration"

    .line 89
    .line 90
    invoke-virtual {v3, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "fullscreen"

    .line 94
    .line 95
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 96
    .line 97
    invoke-virtual {v3, v0, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    const-string p0, "offline"

    .line 101
    .line 102
    invoke-virtual {v3, p0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    const-string p0, "playVideoStateChange"

    .line 106
    .line 107
    invoke-interface {v2, p0, v3}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method private final dispatchPlaybackState()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    iget-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlayerCastUiState;->getDurationMs()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchCastPlaybackProgress(JJ)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    iget-boolean v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 56
    .line 57
    const-string v4, "offline"

    .line 58
    .line 59
    const-string v5, "error"

    .line 60
    .line 61
    const-string v6, "buffering"

    .line 62
    .line 63
    const-string v7, "fullscreen"

    .line 64
    .line 65
    const-string v8, "duration"

    .line 66
    .line 67
    const-string v9, "current"

    .line 68
    .line 69
    const-string v10, "playing"

    .line 70
    .line 71
    const-string v11, "lineKey"

    .line 72
    .line 73
    const-string v12, "episodeIndex"

    .line 74
    .line 75
    const-string v13, "episodeKey"

    .line 76
    .line 77
    const-string v14, "selectionId"

    .line 78
    .line 79
    const-string v15, "workId"

    .line 80
    .line 81
    move/from16 v16, v2

    .line 82
    .line 83
    const-string v2, "playVideoStateChange"

    .line 84
    .line 85
    const-wide v17, 0x408f400000000000L    # 1000.0

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    move-object/from16 v19, v1

    .line 91
    .line 92
    const-wide/16 v20, 0x0

    .line 93
    .line 94
    if-eqz v3, :cond_b

    .line 95
    .line 96
    sget-object v3, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->videoAspectRatio()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/16 v22, 0x0

    .line 103
    .line 104
    cmpl-float v22, v1, v22

    .line 105
    .line 106
    move-object/from16 v23, v3

    .line 107
    .line 108
    if-lez v22, :cond_3

    .line 109
    .line 110
    iget v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 111
    .line 112
    sub-float v3, v1, v3

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    const v24, 0x3a83126f    # 0.001f

    .line 119
    .line 120
    .line 121
    cmpl-float v3, v3, v24

    .line 122
    .line 123
    if-lez v3, :cond_3

    .line 124
    .line 125
    iput v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 126
    .line 127
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 128
    .line 129
    invoke-virtual {v3, v1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 130
    .line 131
    .line 132
    :cond_3
    if-lez v22, :cond_4

    .line 133
    .line 134
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/high16 v3, 0x3f800000    # 1.0f

    .line 141
    .line 142
    cmpg-float v1, v1, v3

    .line 143
    .line 144
    if-gez v1, :cond_4

    .line 145
    .line 146
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->isPlaying()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflinePlaying(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    iget-boolean v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 161
    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePlaying()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_5

    .line 169
    .line 170
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    if-eqz v3, :cond_6

    .line 175
    .line 176
    :cond_5
    move/from16 v3, v16

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_6
    const/4 v3, 0x0

    .line 180
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->positionMs()J

    .line 184
    .line 185
    .line 186
    move-result-wide v24

    .line 187
    cmp-long v1, v24, v20

    .line 188
    .line 189
    move-object v3, v2

    .line 190
    if-gez v1, :cond_7

    .line 191
    .line 192
    move-wide/from16 v1, v20

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_7
    move-wide/from16 v1, v24

    .line 196
    .line 197
    :goto_1
    invoke-direct {v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflinePositionMs(J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->durationMs()J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    cmp-long v22, v1, v20

    .line 205
    .line 206
    if-gez v22, :cond_8

    .line 207
    .line 208
    move-wide/from16 v1, v20

    .line 209
    .line 210
    :cond_8
    invoke-direct {v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflineDurationMs(J)V

    .line 211
    .line 212
    .line 213
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePositionMs()J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    invoke-direct {v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->notePlayhead(J)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflinePositionMs()J

    .line 221
    .line 222
    .line 223
    move-result-wide v1

    .line 224
    move-object/from16 v24, v3

    .line 225
    .line 226
    move-object/from16 v22, v4

    .line 227
    .line 228
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOfflineDurationMs()J

    .line 229
    .line 230
    .line 231
    move-result-wide v3

    .line 232
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->maybeSkipOutro(JJ)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    add-int/lit8 v1, v1, 0x1

    .line 240
    .line 241
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 245
    .line 246
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 247
    .line 248
    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 252
    .line 253
    .line 254
    move-result-wide v3

    .line 255
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v2, v3, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v2, v3, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v2, v3, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v2, v3, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {v2, v3, v11}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->isPlaying()Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-virtual {v2, v10, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->positionMs()J

    .line 296
    .line 297
    .line 298
    move-result-wide v3

    .line 299
    cmp-long v10, v3, v20

    .line 300
    .line 301
    if-gez v10, :cond_9

    .line 302
    .line 303
    move-wide/from16 v3, v20

    .line 304
    .line 305
    :cond_9
    long-to-double v3, v3

    .line 306
    div-double v3, v3, v17

    .line 307
    .line 308
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v2, v3, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual/range {v23 .. v23}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->durationMs()J

    .line 316
    .line 317
    .line 318
    move-result-wide v3

    .line 319
    cmp-long v9, v3, v20

    .line 320
    .line 321
    if-gez v9, :cond_a

    .line 322
    .line 323
    move-wide/from16 v3, v20

    .line 324
    .line 325
    :cond_a
    long-to-double v3, v3

    .line 326
    div-double v3, v3, v17

    .line 327
    .line 328
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v2, v3, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-boolean v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 336
    .line 337
    invoke-virtual {v2, v7, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    const/4 v0, 0x0

    .line 341
    invoke-virtual {v2, v6, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2, v5, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 345
    .line 346
    .line 347
    move/from16 v3, v16

    .line 348
    .line 349
    move-object/from16 v4, v22

    .line 350
    .line 351
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v0, v24

    .line 355
    .line 356
    invoke-interface {v1, v0, v2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :cond_b
    move-object v1, v2

    .line 361
    move/from16 v3, v16

    .line 362
    .line 363
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 364
    .line 365
    if-nez v2, :cond_c

    .line 366
    .line 367
    :goto_2
    return-void

    .line 368
    :cond_c
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 369
    .line 370
    move-object/from16 v22, v2

    .line 371
    .line 372
    iget-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 373
    .line 374
    move/from16 v23, v2

    .line 375
    .line 376
    const/4 v2, 0x2

    .line 377
    if-eqz v23, :cond_e

    .line 378
    .line 379
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 380
    .line 381
    .line 382
    move-result v23

    .line 383
    if-nez v23, :cond_d

    .line 384
    .line 385
    move-object/from16 v23, v22

    .line 386
    .line 387
    check-cast v23, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 388
    .line 389
    invoke-virtual/range {v23 .. v23}, Lcom/jp/bootstrap/internal/xmpxuyqu;->rowxts()Z

    .line 390
    .line 391
    .line 392
    move-result v24

    .line 393
    if-eqz v24, :cond_e

    .line 394
    .line 395
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 396
    .line 397
    .line 398
    move-result v24

    .line 399
    if-nez v24, :cond_e

    .line 400
    .line 401
    move-object/from16 v24, v22

    .line 402
    .line 403
    check-cast v24, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 404
    .line 405
    invoke-virtual/range {v24 .. v24}, Lcom/jp/bootstrap/internal/mctadfgh;->mhirrjin()Z

    .line 406
    .line 407
    .line 408
    move-result v24

    .line 409
    if-nez v24, :cond_d

    .line 410
    .line 411
    move-object/from16 v24, v1

    .line 412
    .line 413
    invoke-virtual/range {v23 .. v23}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dujeewwyska()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eq v1, v2, :cond_f

    .line 418
    .line 419
    invoke-virtual/range {v23 .. v23}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dujeewwyska()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    const/4 v2, 0x3

    .line 424
    if-ne v1, v2, :cond_10

    .line 425
    .line 426
    goto :goto_3

    .line 427
    :cond_d
    move-object/from16 v24, v1

    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_e
    move-object/from16 v24, v1

    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_f
    :goto_3
    const/4 v1, 0x1

    .line 434
    goto :goto_5

    .line 435
    :cond_10
    :goto_4
    const/4 v1, 0x0

    .line 436
    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 437
    .line 438
    .line 439
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_11

    .line 444
    .line 445
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 450
    .line 451
    .line 452
    move-result-wide v1

    .line 453
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlayerCastUiState;->getDurationMs()J

    .line 458
    .line 459
    .line 460
    move-result-wide v3

    .line 461
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchCastPlaybackProgress(JJ)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_11
    move-object/from16 v2, v22

    .line 466
    .line 467
    check-cast v2, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 468
    .line 469
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 470
    .line 471
    .line 472
    move-result-wide v25

    .line 473
    cmp-long v1, v25, v20

    .line 474
    .line 475
    move-object v3, v2

    .line 476
    if-gez v1, :cond_12

    .line 477
    .line 478
    move-wide/from16 v1, v20

    .line 479
    .line 480
    goto :goto_6

    .line 481
    :cond_12
    move-wide/from16 v1, v25

    .line 482
    .line 483
    :goto_6
    invoke-direct {v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->notePlayhead(J)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J

    .line 487
    .line 488
    .line 489
    move-result-wide v25

    .line 490
    cmp-long v27, v25, v20

    .line 491
    .line 492
    move-object/from16 v28, v3

    .line 493
    .line 494
    if-gez v27, :cond_13

    .line 495
    .line 496
    move-object/from16 v27, v4

    .line 497
    .line 498
    move-wide/from16 v3, v20

    .line 499
    .line 500
    goto :goto_7

    .line 501
    :cond_13
    move-object/from16 v27, v4

    .line 502
    .line 503
    move-wide/from16 v3, v25

    .line 504
    .line 505
    :goto_7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->maybeSkipOutro(JJ)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatch:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 509
    .line 510
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 511
    .line 512
    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 516
    .line 517
    .line 518
    move-result-wide v3

    .line 519
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    invoke-virtual {v2, v3, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v2, v3, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    invoke-virtual {v2, v3, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    invoke-virtual {v2, v3, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual/range {v19 .. v19}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v2, v3, v11}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    move-object/from16 v3, v22

    .line 553
    .line 554
    check-cast v3, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 555
    .line 556
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/mctadfgh;->mhirrjin()Z

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    invoke-virtual {v2, v10, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 561
    .line 562
    .line 563
    const-string v3, "playWhenReady"

    .line 564
    .line 565
    invoke-virtual/range {v28 .. v28}, Lcom/jp/bootstrap/internal/xmpxuyqu;->rowxts()Z

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v28 .. v28}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dujeewwyska()I

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    const/4 v4, 0x2

    .line 577
    if-ne v3, v4, :cond_14

    .line 578
    .line 579
    const/4 v3, 0x1

    .line 580
    goto :goto_8

    .line 581
    :cond_14
    const/4 v3, 0x0

    .line 582
    :goto_8
    invoke-virtual {v2, v6, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 583
    .line 584
    .line 585
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 586
    .line 587
    .line 588
    move-result v3

    .line 589
    invoke-virtual {v2, v5, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 590
    .line 591
    .line 592
    invoke-virtual/range {v28 .. v28}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 593
    .line 594
    .line 595
    move-result-wide v3

    .line 596
    cmp-long v5, v3, v20

    .line 597
    .line 598
    if-gez v5, :cond_15

    .line 599
    .line 600
    move-wide/from16 v3, v20

    .line 601
    .line 602
    :cond_15
    long-to-double v3, v3

    .line 603
    div-double v3, v3, v17

    .line 604
    .line 605
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    invoke-virtual {v2, v3, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual/range {v28 .. v28}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J

    .line 613
    .line 614
    .line 615
    move-result-wide v3

    .line 616
    cmp-long v5, v3, v20

    .line 617
    .line 618
    if-gez v5, :cond_16

    .line 619
    .line 620
    move-wide/from16 v3, v20

    .line 621
    .line 622
    :cond_16
    long-to-double v3, v3

    .line 623
    div-double v3, v3, v17

    .line 624
    .line 625
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    invoke-virtual {v2, v3, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    iget-boolean v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 633
    .line 634
    invoke-virtual {v2, v7, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 635
    .line 636
    .line 637
    move-object/from16 v4, v27

    .line 638
    .line 639
    const/4 v0, 0x0

    .line 640
    invoke-virtual {v2, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 641
    .line 642
    .line 643
    move-object/from16 v0, v24

    .line 644
    .line 645
    invoke-interface {v1, v0, v2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    return-void
.end method

.method private final dispatchWebViewTouchIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z
    if-eqz v0, :local_tv_original_touch
    const/4 v0, 0x0
    return v0
    :local_tv_original_touch

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v9

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget-object v6, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v7, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    iget-object v8, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->shouldForwardWebViewTouchToHost(ZZZFFFFII)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    return v9

    .line 56
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    neg-float v0, v0

    .line 67
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    neg-float v1, v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 84
    .line 85
    .line 86
    return p0
.end method

.method private final dp(I)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float/2addr p1, p0

    .line 15
    invoke-static {p1}, Lcom/jp/bootstrap/internal/ca;->pcqerka(F)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public static synthetic dujeewwyska(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic dwcjxttbbo(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$6$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic dzseq(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$10$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ealgnqalat(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$16$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic eazl(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$29$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic edtsi(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic eozvzdjcai(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$22$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic fekqvc(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onDownloadSnapshot$lambda$4(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final fittedPlaybackBox(Ljava/lang/Float;)Lcom/jp/runtime/shell/FilmPicturePlacement;
    .locals 7

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gtz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/shell/FilmPictureFitKt;->placeFilmPicture$default(IIFLcom/jp/runtime/shell/FilmInsets;ILjava/lang/Object;)Lcom/jp/runtime/shell/FilmPicturePlacement;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public static synthetic fohw(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$31$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic fugymz(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$13$0$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final fullscreenChromeGate$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    return p0
.end method

.method private static final fullscreenChromeGate$lambda$1(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGeneration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private static final fullscreenChromeGate$lambda$2(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 16
    .line 17
    return-object p0
.end method

.method private static final fullscreenChromeInputBlocker$lambda$0$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method private static final fullscreenChromeRevealFallback$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpg-float v0, v0, v1

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic gbcohonrle(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeLineItem;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$10$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/ChromeLineItem;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic gbursjlv(Landroid/view/TextureView;Ljava/lang/Float;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->containTexture$lambda$0(Landroid/view/TextureView;Ljava/lang/Float;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAutoNextCancelledForKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->autoNextCancelledForKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getCastDrawerOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castDrawerOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getCastSessionActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castSessionActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castUiState$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeAutoNextSeconds()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeAutoNextSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getComposeDownloadLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeEpisodeKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodeKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeEpisodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeEpisodeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeFullscreen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeFullscreen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposeHasNext()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeHasNext$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposeIsPlaying()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeIsPlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposeLineKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeLineLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeLines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeLineItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposePlayWhenReady()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayWhenReady$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposePlaybackError()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackError$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposePlaybackState()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackState$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getComposePlayer()Lcom/jp/bootstrap/internal/gt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayer$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/gt;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getComposeProgressFraction()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeProgressFraction$delegate:Lcom/jp/bootstrap/internal/vg;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/qp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/qp;->mhirrjin()F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getComposeRemainingMs()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeRemainingMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/sp;->mhirrjin()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private final getComposeShowEpisodes()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposeShowLines()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getComposeTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeTitle$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getControlsLocked()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsLocked$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getControlsVersion()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVersion$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getControlsVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVisible$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getEpisodeSheetOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->episodeSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getLineSheetOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lineSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getOfflineDurationMs()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineDurationMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/sp;->mhirrjin()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private final getOfflinePlaying()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getOfflinePositionMs()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePositionMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/sp;->mhirrjin()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method private final getOfflineUiActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineUiActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getOnlineFirstFrameRendered()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onlineFirstFrameRendered$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getPanelDismissRequest()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->panelDismissRequest$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getPlayerPanelOpen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerPanelOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getResizeFill()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resizeFill$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getSkipIntroOutro()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroOutro$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/lh0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private final getSkipIntroSeconds()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private final getSkipOutroSeconds()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/rp;->mhirrjin()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static synthetic gfcrkryqbn(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$10(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic gtnruhk(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$9$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final handleOfflineUnavailable(Lcom/jp/runtime/shell/PlaybackRequest;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->filmPlaybackSelectionKey(Lcom/jp/runtime/shell/PlaybackRequest;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getForceOffline()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->shouldFailClosedAfterOfflineMiss(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v0, "\u7f13\u5b58\u4e0d\u53ef\u7528\uff0c\u8bf7\u8fd4\u56de\u91cd\u8bd5\u6216\u91cd\u65b0\u4e0b\u8f7d"

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackFailure()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveOnline(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method

.method private final hasPlaybackSession()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-ne p0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_1
    :goto_0
    return v1
.end method

.method private final hideResolveLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic holm(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroidx/media3/ui/PlayerView;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroidx/media3/ui/PlayerView;Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final host$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-ne p3, p7, :cond_0

    .line 4
    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-ne p5, p9, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic hqaldusn(Landroid/view/TextureView;Lcom/jp/bootstrap/internal/tvyvc;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->containTexture$lambda$1(Landroid/view/TextureView;Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic hwrol(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$28$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final installWebViewTouchPassthrough(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$childWebView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/jp/bootstrap/internal/zzms;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/jp/bootstrap/internal/zzms;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final installWebViewTouchPassthrough$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchWebViewTouchIfNeeded(Landroid/view/MotionEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public static synthetic iqcydhdkhyv(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic jisccnqwqm(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$15$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic jpgq(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeInputBlocker$lambda$0$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic jyozshuy(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$8(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic jzphcv(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$14$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final lambda$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retryCurrent()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic lglrfgmg(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$8$0$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic lmsiyi(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$14$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Z)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic lsqxopbhlw(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final maybeSkipOutro(JJ)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipIntroOutro()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipOutroSeconds()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    const-wide/16 v3, 0x3e8

    .line 11
    .line 12
    mul-long v5, v1, v3

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroConsumedKey:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const/16 v11, 0x40

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    move-wide v1, p1

    .line 32
    move-wide/from16 v3, p3

    .line 33
    .line 34
    invoke-static/range {v0 .. v12}, Lcom/jp/runtime/shell/SkipCreditsKt;->decideOutroAction$default(ZJJJZZJILjava/lang/Object;)Lcom/jp/runtime/shell/OutroAction;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lcom/jp/runtime/shell/OutroAction;->None:Lcom/jp/runtime/shell/OutroAction;

    .line 39
    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroConsumedKey:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    aget v0, v1, v0

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    if-eq v0, v1, :cond_6

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    if-eq v0, v1, :cond_2

    .line 60
    .line 61
    const/4 p0, 0x3

    .line 62
    if-ne v0, p0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/jp/bootstrap/internal/fseadzoqiv;->tsodtn()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-wide/16 v0, 0x190

    .line 70
    .line 71
    sub-long v0, p3, v0

    .line 72
    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    cmp-long v4, v0, v2

    .line 76
    .line 77
    if-gez v4, :cond_3

    .line 78
    .line 79
    move-wide v0, v2

    .line 80
    :cond_3
    iget-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    sget-object p0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 85
    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->seekTo(J)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 91
    .line 92
    if-eqz p0, :cond_5

    .line 93
    .line 94
    check-cast p0, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 95
    .line 96
    const/4 v2, 0x5

    .line 97
    invoke-virtual {p0, v2, v0, v1}, Lcom/jp/bootstrap/internal/mctadfgh;->gbcohonrle(IJ)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_0
    return-void

    .line 101
    :cond_6
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodeKey()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setAutoNextCancelledForKey(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->requestNextEpisode()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public static synthetic mbkvlevkkf(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$12$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic mcxjpbyqnoz(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$12$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic mhirrjin(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$12(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic mhpayc(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$14$3$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic muagzygxao(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$6(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic nawz(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealRunnable$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic nehlzhe(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final notePlayhead(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->furthestPositionMs:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->furthestPositionMs:J

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static synthetic nthce(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/th;Z)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/th;Z)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic nvbyrnefqdi(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$30$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic odgej(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final offlineRevealRunnable$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->revealOfflineWhenSized()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onDownloadSnapshot$lambda$4(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getForceOffline()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {v0, p1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retryCurrent()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public static synthetic ornjfep(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ospb(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen$lambda$2(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ouysgha(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$14$8$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final parseChromeEpisodes(Lcom/jp/bootstrap/internal/nxqsmsfr;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/nxqsmsfr;",
            ")",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeEpisodeItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/jp/bootstrap/internal/zatkzfy;->nvbyrnefqdi()Lcom/jp/bootstrap/internal/o6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p1, Lcom/jp/bootstrap/internal/nxqsmsfr;->sbmzsrkn:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/nxqsmsfr;->mhirrjin(I)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string v3, "key"

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v3, v6

    .line 38
    :goto_1
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const-string v5, "index"

    .line 42
    .line 43
    invoke-virtual {v2, v1, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const-string v7, "name"

    .line 48
    .line 49
    invoke-static {v2, v7}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-nez v7, :cond_3

    .line 54
    .line 55
    add-int/lit8 v7, v5, 0x1

    .line 56
    .line 57
    const-string v8, "\u7b2c"

    .line 58
    .line 59
    const-string v9, "\u96c6"

    .line 60
    .line 61
    invoke-static {v7, v8, v9}, Lcom/jp/bootstrap/internal/pzmovkl;->mhirrjin(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    :cond_3
    const-string v8, "downloadContentId"

    .line 66
    .line 67
    invoke-virtual {v2, v8, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_4

    .line 76
    .line 77
    move-object v6, v2

    .line 78
    :cond_4
    new-instance v2, Lcom/jp/runtime/shell/ChromeEpisodeItem;

    .line 79
    .line 80
    invoke-direct {v2, v3, v5, v7, v6}, Lcom/jp/runtime/shell/ChromeEpisodeItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Lcom/jp/bootstrap/internal/o6;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    invoke-static {p0}, Lcom/jp/bootstrap/internal/zatkzfy;->gbcohonrle(Lcom/jp/bootstrap/internal/o6;)Lcom/jp/bootstrap/internal/o6;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method private final parseChromeLines(Lcom/jp/bootstrap/internal/nxqsmsfr;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/nxqsmsfr;",
            ")",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeLineItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/jp/bootstrap/internal/zatkzfy;->nvbyrnefqdi()Lcom/jp/bootstrap/internal/o6;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p1, Lcom/jp/bootstrap/internal/nxqsmsfr;->sbmzsrkn:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/nxqsmsfr;->mhirrjin(I)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string v3, "key"

    .line 22
    .line 23
    const-string v4, ""

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    :goto_1
    if-nez v3, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const-string v5, "name"

    .line 41
    .line 42
    invoke-virtual {v2, v5, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    const-string v4, "\u7ebf\u8def"

    .line 53
    .line 54
    :cond_3
    const-string v5, "available"

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-virtual {v2, v5, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    new-instance v5, Lcom/jp/runtime/shell/ChromeLineItem;

    .line 62
    .line 63
    invoke-direct {v5, v3, v4, v2}, Lcom/jp/runtime/shell/ChromeLineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v5}, Lcom/jp/bootstrap/internal/o6;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-static {p0}, Lcom/jp/bootstrap/internal/zatkzfy;->gbcohonrle(Lcom/jp/bootstrap/internal/o6;)Lcom/jp/bootstrap/internal/o6;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method private final pauseLocalForCast()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/mctadfgh;->yndsdvj()V

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->pause()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic pcqerka(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate$lambda$2(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final pictureAspectForContain()Ljava/lang/Float;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getResizeFill()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$orDefaultPortrait(Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1, v2}, Lcom/jp/runtime/shell/FilmPictureFitKt;->filmPictureZooms(ZZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerVideoAspect()Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private final placeHostAboveWebView()V
    .locals 4

    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->localTvCinema:Z
    if-eqz v0, :local_tv_original_layer
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placeHostUnderWebView()V
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    return-void
    :local_tv_original_layer

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eq v3, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-static {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$childWebView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    const/high16 v1, 0x41000000    # 8.0f

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private final placeHostUnderWebView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 28
    .line 29
    .line 30
    if-gtz v1, :cond_2

    .line 31
    .line 32
    :goto_1
    return-void

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final placePicture(Landroid/view/View;Lcom/jp/runtime/shell/FilmPicturePlacement;)V
    .locals 4

    .line 1
    const/4 p0, -0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/jp/runtime/shell/FilmPicturePlacement;->getWidth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, p0

    .line 10
    :goto_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/jp/runtime/shell/FilmPicturePlacement;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/jp/runtime/shell/FilmPicturePlacement;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v2, v1

    .line 25
    :goto_1
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/jp/runtime/shell/FilmPicturePlacement;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    instance-of v3, p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    const/4 p2, 0x0

    .line 43
    :goto_2
    if-eqz p2, :cond_5

    .line 44
    .line 45
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 46
    .line 47
    if-ne v3, v0, :cond_5

    .line 48
    .line 49
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    .line 51
    if-ne v3, p0, :cond_5

    .line 52
    .line 53
    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 54
    .line 55
    if-ne v3, v2, :cond_5

    .line 56
    .line 57
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 58
    .line 59
    if-ne p2, v1, :cond_5

    .line 60
    .line 61
    return-void

    .line 62
    :cond_5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    const v3, 0x800033

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, v0, p0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 68
    .line 69
    .line 70
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    .line 72
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final playNextOfflineEpisode()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move v4, v1

    .line 28
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_9

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/jp/runtime/shell/ChromeEpisodeItem;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v5}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-static {v6, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_a

    .line 66
    .line 67
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-eqz v6, :cond_6

    .line 72
    .line 73
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v5}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getDownloadContentId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v6, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-nez v6, :cond_a

    .line 93
    .line 94
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getIndex()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    if-nez v6, :cond_7

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-ne v5, v6, :cond_8

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_9
    const/4 v4, -0x1

    .line 122
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-static {v4, v0}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->nextCompletedEpisodeIndex(II)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_c

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/jp/runtime/shell/ChromeEpisodeItem;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getDownloadContentId()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_c

    .line 147
    .line 148
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_b

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_b
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectEpisode(Lcom/jp/runtime/shell/ChromeEpisodeItem;)V

    .line 156
    .line 157
    .line 158
    const/4 p0, 0x1

    .line 159
    return p0

    .line 160
    :cond_c
    :goto_5
    return v1
.end method

.method private static final playbackMediaSession$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->requestNextEpisode()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 5
    .line 6
    return-object p0
.end method

.method private final playerVideoAspect()Ljava/lang/Float;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->taplwdejpie()V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/jp/bootstrap/internal/xmpxuyqu;->fohw:Lcom/jp/bootstrap/internal/nw0;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v0, p0, Lcom/jp/bootstrap/internal/nw0;->syiqloeyp:I

    .line 16
    .line 17
    iget v1, p0, Lcom/jp/bootstrap/internal/nw0;->jzphcv:I

    .line 18
    .line 19
    iget p0, p0, Lcom/jp/bootstrap/internal/nw0;->jyozshuy:F

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, p0, v2}, Lcom/jp/runtime/shell/FilmPictureFitKt;->filmVideoAspect(IIFI)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method private static final playerView$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroidx/media3/ui/PlayerView;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p3, p7, :cond_0

    .line 2
    .line 3
    if-ne p4, p8, :cond_0

    .line 4
    .line 5
    if-ne p5, p9, :cond_0

    .line 6
    .line 7
    if-ne p6, p10, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->pictureAspectForContain()Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->containTexture(Landroid/view/View;Ljava/lang/Float;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final presentHost()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hasPlaybackSession()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placeHostUnderWebView()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placeHostAboveWebView()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchHostReady()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static synthetic punn(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$13$0$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic qfxkjcskcw(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$10$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic qwcilfgin(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lambda$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final recoverPlaybackError(Lcom/jp/bootstrap/internal/gt;Lcom/jp/bootstrap/internal/rs;)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 9
    .line 10
    if-ne v1, p1, :cond_1

    .line 11
    .line 12
    :cond_0
    return v0

    .line 13
    :cond_1
    if-eqz p1, :cond_5

    .line 14
    .line 15
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecovery:Lcom/jp/runtime/shell/DecoderRecoveryBudget;

    .line 16
    .line 17
    iget v2, p2, Lcom/jp/bootstrap/internal/rs;->sbmzsrkn:I

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/jp/runtime/shell/DecoderRecoveryBudget;->take(ILjava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    move-object v1, p1

    .line 30
    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer;

    .line 31
    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 34
    .line 35
    move-object v3, v2

    .line 36
    check-cast v3, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/xmpxuyqu;->xizmfgbpnv()Lcom/jp/bootstrap/internal/zn0;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/zn0;->nvbyrnefqdi()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/xmpxuyqu;->mhpayc()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v2, v2, Lcom/jp/bootstrap/internal/mctadfgh;->syiqloeyp:Lcom/jp/bootstrap/internal/yn0;

    .line 57
    .line 58
    invoke-virtual {v4, v3, v2, v6, v7}, Lcom/jp/bootstrap/internal/zn0;->tsodtn(ILcom/jp/bootstrap/internal/yn0;J)Lcom/jp/bootstrap/internal/yn0;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v2, v2, Lcom/jp/bootstrap/internal/yn0;->jzphcv:Lcom/jp/bootstrap/internal/yb;

    .line 63
    .line 64
    :goto_0
    const/4 v3, 0x0

    .line 65
    if-nez v2, :cond_3

    .line 66
    .line 67
    return v3

    .line 68
    :cond_3
    check-cast v1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    cmp-long v8, v4, v6

    .line 75
    .line 76
    if-gez v8, :cond_4

    .line 77
    .line 78
    move-wide v8, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move-wide v8, v4

    .line 81
    :goto_1
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->rowxts()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    iget-wide v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 86
    .line 87
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 93
    .line 94
    const/16 v3, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 100
    .line 101
    move-object v7, v2

    .line 102
    new-instance v2, Lcom/jp/bootstrap/internal/ovltybdthv;

    .line 103
    .line 104
    move-object v3, p0

    .line 105
    move-object v4, p1

    .line 106
    move-object v11, p2

    .line 107
    invoke-direct/range {v2 .. v11}, Lcom/jp/bootstrap/internal/ovltybdthv;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;JLcom/jp/bootstrap/internal/yb;JZLcom/jp/bootstrap/internal/rs;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    return v0

    .line 114
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->switchToDirectRetry(Lcom/jp/bootstrap/internal/gt;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    return p0
.end method

.method private static final recoverPlaybackError$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;JLcom/jp/bootstrap/internal/yb;JZLcom/jp/bootstrap/internal/rs;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 7
    .line 8
    if-ne v0, p1, :cond_2

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 11
    .line 12
    cmp-long p2, v2, p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 26
    .line 27
    check-cast p1, Landroidx/media3/exoplayer/ExoPlayer;

    .line 28
    .line 29
    check-cast p1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->cdsesehahek()V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOnlineFirstFrameRendered(Z)V

    .line 36
    .line 37
    .line 38
    if-eqz p7, :cond_1

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-boolean p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 45
    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-boolean p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/jp/runtime/shell/ShellActivity;->hasActiveCastDevice$shell_runtime()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move p2, p1

    .line 63
    :goto_0
    invoke-direct {p0, p4, p5, p6, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createOnlinePlayer(Lcom/jp/bootstrap/internal/yb;JZ)Landroidx/media3/exoplayer/ExoPlayer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 68
    .line 69
    iget-object p3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 70
    .line 71
    invoke-virtual {p3, p2}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    invoke-virtual {p1, p2, p3, p4}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->attach(Lcom/jp/bootstrap/internal/gt;Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 94
    .line 95
    iget p1, p8, Lcom/jp/bootstrap/internal/rs;->sbmzsrkn:I

    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p3, "recreated failed decoder code="

    .line 100
    .line 101
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "JPPlayback"

    .line 112
    .line 113
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 121
    .line 122
    if-ne p2, p1, :cond_3

    .line 123
    .line 124
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method private final recreateControlsCompositionAfterRotation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsOnPortrait:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsOnPortrait:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/jpgq;->uaakwbmitdl()V

    .line 29
    .line 30
    .line 31
    if-ltz v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView()Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 43
    .line 44
    if-ltz v2, :cond_2

    .line 45
    .line 46
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v4, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method private final refreshDownloadLabel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->currentDownloadState()Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getLabel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "\u4e0b\u8f7d"

    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeDownloadLabel(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final refreshHasNextFromEpisodes()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_8

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/jp/runtime/shell/ChromeEpisodeItem;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v4}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getKey()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_9

    .line 65
    .line 66
    :cond_3
    :goto_2
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-virtual {v4}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getDownloadContentId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_9

    .line 92
    .line 93
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v5, :cond_7

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getIndex()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-nez v5, :cond_6

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-ne v4, v5, :cond_7

    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    const/4 v3, -0x1

    .line 121
    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeEpisodes()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v3, v0}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->nextCompletedEpisodeIndex(II)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    :cond_a
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeHasNext(Z)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    invoke-virtual {v0, p0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->updateHasNext(Z)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private final releaseOfflineSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineSurface:Landroid/view/Surface;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineSurface:Landroid/view/Surface;

    .line 23
    .line 24
    return-void
.end method

.method private final releasePlayer()V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOnlineFirstFrameRendered(Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    const-wide/16 v5, 0x5f

    .line 28
    .line 29
    const-wide/16 v7, 0x64

    .line 30
    .line 31
    const-wide/16 v9, 0x3e8

    .line 32
    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 38
    .line 39
    sget-object v13, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 40
    .line 41
    invoke-virtual {v13}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->positionMs()J

    .line 42
    .line 43
    .line 44
    move-result-wide v14

    .line 45
    div-long/2addr v14, v9

    .line 46
    cmp-long v16, v14, v11

    .line 47
    .line 48
    if-gez v16, :cond_0

    .line 49
    .line 50
    move-wide/from16 v23, v11

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-wide/from16 v23, v14

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v13}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->durationMs()J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    cmp-long v16, v14, v11

    .line 60
    .line 61
    if-gez v16, :cond_1

    .line 62
    .line 63
    move-wide v14, v11

    .line 64
    :cond_1
    div-long/2addr v14, v9

    .line 65
    cmp-long v9, v14, v11

    .line 66
    .line 67
    if-gez v9, :cond_2

    .line 68
    .line 69
    move-wide/from16 v25, v11

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-wide/from16 v25, v14

    .line 73
    .line 74
    :goto_1
    if-eqz v2, :cond_4

    .line 75
    .line 76
    sget-object v9, Lcom/jp/runtime/web/RuntimeProgressReporter;->INSTANCE:Lcom/jp/runtime/web/RuntimeProgressReporter;

    .line 77
    .line 78
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 79
    .line 80
    new-instance v17, Lcom/jp/runtime/web/RuntimePlaybackProgress;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 83
    .line 84
    .line 85
    move-result-wide v18

    .line 86
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v20

    .line 90
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v21

    .line 94
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v22

    .line 98
    cmp-long v2, v25, v11

    .line 99
    .line 100
    if-lez v2, :cond_3

    .line 101
    .line 102
    mul-long v7, v7, v23

    .line 103
    .line 104
    mul-long v5, v5, v25

    .line 105
    .line 106
    cmp-long v2, v7, v5

    .line 107
    .line 108
    if-ltz v2, :cond_3

    .line 109
    .line 110
    move/from16 v27, v4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move/from16 v27, v3

    .line 114
    .line 115
    :goto_2
    invoke-direct/range {v17 .. v27}, Lcom/jp/runtime/web/RuntimePlaybackProgress;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JJZ)V

    .line 116
    .line 117
    .line 118
    move-object/from16 v2, v17

    .line 119
    .line 120
    invoke-virtual {v9, v10, v2}, Lcom/jp/runtime/web/RuntimeProgressReporter;->enqueue(Landroid/content/Context;Lcom/jp/runtime/web/RuntimePlaybackProgress;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-virtual {v13}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->release()V

    .line 124
    .line 125
    .line 126
    iput-boolean v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 127
    .line 128
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflineUiActive(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 132
    .line 133
    const/16 v4, 0x8

    .line 134
    .line 135
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 141
    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    iput v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 145
    .line 146
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releaseOfflineSurface()V

    .line 147
    .line 148
    .line 149
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 150
    .line 151
    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 161
    .line 162
    if-nez v2, :cond_6

    .line 163
    .line 164
    return-void

    .line 165
    :cond_6
    iget-object v13, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 166
    .line 167
    check-cast v2, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 170
    .line 171
    .line 172
    move-result-wide v14

    .line 173
    div-long/2addr v14, v9

    .line 174
    cmp-long v16, v14, v11

    .line 175
    .line 176
    if-gez v16, :cond_7

    .line 177
    .line 178
    move-wide/from16 v23, v11

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_7
    move-wide/from16 v23, v14

    .line 182
    .line 183
    :goto_3
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J

    .line 184
    .line 185
    .line 186
    move-result-wide v14

    .line 187
    cmp-long v16, v14, v11

    .line 188
    .line 189
    if-gez v16, :cond_8

    .line 190
    .line 191
    move-wide v14, v11

    .line 192
    :cond_8
    div-long/2addr v14, v9

    .line 193
    cmp-long v9, v14, v11

    .line 194
    .line 195
    if-gez v9, :cond_9

    .line 196
    .line 197
    move-wide/from16 v25, v11

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    move-wide/from16 v25, v14

    .line 201
    .line 202
    :goto_4
    if-eqz v13, :cond_b

    .line 203
    .line 204
    sget-object v9, Lcom/jp/runtime/web/RuntimeProgressReporter;->INSTANCE:Lcom/jp/runtime/web/RuntimeProgressReporter;

    .line 205
    .line 206
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 207
    .line 208
    new-instance v17, Lcom/jp/runtime/web/RuntimePlaybackProgress;

    .line 209
    .line 210
    invoke-virtual {v13}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 211
    .line 212
    .line 213
    move-result-wide v18

    .line 214
    invoke-virtual {v13}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v20

    .line 218
    invoke-virtual {v13}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v21

    .line 222
    invoke-virtual {v13}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v22

    .line 226
    cmp-long v11, v25, v11

    .line 227
    .line 228
    if-lez v11, :cond_a

    .line 229
    .line 230
    mul-long v7, v7, v23

    .line 231
    .line 232
    mul-long v5, v5, v25

    .line 233
    .line 234
    cmp-long v5, v7, v5

    .line 235
    .line 236
    if-ltz v5, :cond_a

    .line 237
    .line 238
    move/from16 v27, v4

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_a
    move/from16 v27, v3

    .line 242
    .line 243
    :goto_5
    invoke-direct/range {v17 .. v27}, Lcom/jp/runtime/web/RuntimePlaybackProgress;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JJZ)V

    .line 244
    .line 245
    .line 246
    move-object/from16 v3, v17

    .line 247
    .line 248
    invoke-virtual {v9, v10, v3}, Lcom/jp/runtime/web/RuntimeProgressReporter;->enqueue(Landroid/content/Context;Lcom/jp/runtime/web/RuntimePlaybackProgress;)V

    .line 249
    .line 250
    .line 251
    :cond_b
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 252
    .line 253
    invoke-virtual {v3, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->cdsesehahek()V

    .line 260
    .line 261
    .line 262
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->release()V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method private final requestNextEpisode()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playNextOfflineEpisode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "next"

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v0, v2, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final resolveAndStart(Lcom/jp/runtime/shell/PlaybackRequest;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->startOfflinePlayer(Lcom/jp/runtime/shell/PlaybackRequest;J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getForceOffline()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->shouldFailClosedAfterOfflineMiss(Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->handleOfflineUnavailable(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveOnline(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic resolveAndStart$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-wide p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 6
    .line 7
    const-wide/16 p4, 0x1

    .line 8
    .line 9
    add-long/2addr p2, p4

    .line 10
    iput-wide p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveAndStart(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static final resolveLoadingRunnable$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private final resolveOnline(Lcom/jp/runtime/shell/PlaybackRequest;J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scheduleResolveLoading()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scope:Lcom/jp/bootstrap/internal/ssbfcea;

    .line 5
    .line 6
    new-instance v1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$resolveOnline$1;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-wide v4, p2

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$resolveOnline$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;JLcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {v0, p1, v1, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 22
    .line 23
    return-void
.end method

.method private final resumeLocalFromCast(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    move-wide p1, v0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->seekTo(J)V

    .line 15
    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 22
    .line 23
    if-nez p0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->resume()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v1, v0

    .line 35
    check-cast v1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 36
    .line 37
    const/4 v2, 0x5

    .line 38
    invoke-virtual {v1, v2, p1, p2}, Lcom/jp/bootstrap/internal/mctadfgh;->gbcohonrle(IJ)V

    .line 39
    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 42
    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0, p1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/mctadfgh;->yfqpbrvsm()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 62
    .line 63
    .line 64
    iput-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method private final retryCurrent()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, v2}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-wide v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 15
    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    add-long/2addr v1, v3

    .line 19
    iput-wide v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releasePlayer()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveAndStart(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final revealOfflineWhenSized()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->videoAspectRatio()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    cmpl-float v1, v0, v1

    .line 14
    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    iput v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 18
    .line 19
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 25
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealAttempts:I

    .line 33
    .line 34
    const/16 v1, 0x18

    .line 35
    .line 36
    if-ge v0, v1, :cond_2

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    iput v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealAttempts:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealRunnable:Ljava/lang/Runnable;

    .line 45
    .line 46
    const-wide/16 v1, 0x32

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic rowxts(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$7$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ryrgde(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;Lcom/jp/bootstrap/internal/shgceel;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2(Lcom/jp/bootstrap/internal/gt;Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/shell/OfflinePlayerGestureAdapter;Lcom/jp/bootstrap/internal/shgceel;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic sbmzsrkn(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyChromeMeta$lambda$5(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final scheduleResolveLoading()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    const-wide/16 v1, 0x258

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final seekCast(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/16 v7, 0x3a

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v1, "seek"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final seekCastBy(J)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerCastUiState;->getDurationMs()J

    .line 6
    .line 7
    .line 8
    move-result-wide v5

    .line 9
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    add-long v1, v0, p1

    .line 18
    .line 19
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    cmp-long v0, v5, p1

    .line 22
    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-static/range {v1 .. v6}, Lcom/jp/bootstrap/internal/vd;->yfqpbrvsm(JJJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    cmp-long v0, v1, p1

    .line 33
    .line 34
    if-gez v0, :cond_1

    .line 35
    .line 36
    move-wide v1, p1

    .line 37
    :cond_1
    move-wide p1, v1

    .line 38
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->seekCast(J)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final selectEpisode(Lcom/jp/runtime/shell/ChromeEpisodeItem;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getDownloadContentId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v12

    .line 16
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    if-eqz v12, :cond_4

    .line 21
    .line 22
    invoke-static {v12}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getKey()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getIndex()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const/16 v16, 0x49

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const-wide/16 v9, 0x0

    .line 53
    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v14, 0x1

    .line 56
    const/4 v15, 0x1

    .line 57
    move-object v13, v12

    .line 58
    invoke-static/range {v2 .. v17}, Lcom/jp/runtime/shell/PlaybackRequest;->copy$default(Lcom/jp/runtime/shell/PlaybackRequest;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/jp/runtime/shell/PlaybackRequest;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->filmPlaybackSelectionKey(Lcom/jp/runtime/shell/PlaybackRequest;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-interface {v3, v4}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-wide v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 77
    .line 78
    const-wide/16 v5, 0x1

    .line 79
    .line 80
    add-long/2addr v3, v5

    .line 81
    iput-wide v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releasePlayer()V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getTitle()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeTitle(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodeKey(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iput-object v12, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v1}, Lcom/jp/runtime/shell/CastPlaybackFollowKt;->playbackIdentityChanged(Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_3

    .line 112
    .line 113
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/jp/runtime/shell/ShellActivity;->syncActiveCastPlayback$shell_runtime()V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-direct {v0, v1, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveAndStart(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshHasNextFromEpisodes()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_4
    :goto_0
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v2, "episodeKey"

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getKey()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/jp/runtime/shell/ChromeEpisodeItem;->getIndex()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v3, "episodeIndex"

    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v2, "selectEpisode"

    .line 153
    .line 154
    invoke-direct {v0, v2, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method private final setAutoNextCancelledForKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->autoNextCancelledForKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setCastDrawerOpen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castDrawerOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setCastSessionActive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castSessionActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castUiState$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setCastVolume(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    const/16 v7, 0x36

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const-string v1, "volume"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final setComposeAutoNextSeconds(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeAutoNextSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setComposeDownloadLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeEpisodeKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodeKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeEpisodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeEpisodeItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeFullscreen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeFullscreen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposeHasNext(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeHasNext$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposeIsPlaying(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeIsPlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposeLineKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineKey$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeLineLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLineLabel$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jp/runtime/shell/ChromeLineItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposePlayWhenReady(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayWhenReady$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposePlaybackError(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackError$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposePlaybackState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlaybackState$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composePlayer$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setComposeProgressFraction(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeProgressFraction$delegate:Lcom/jp/bootstrap/internal/vg;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/qp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/qp;->yndsdvj(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setComposeRemainingMs(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeRemainingMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jp/bootstrap/internal/sp;->yndsdvj(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setComposeShowEpisodes(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowEpisodes$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposeShowLines(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeShowLines$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setComposeTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeTitle$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setControlsLocked(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsLocked$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setControlsVersion(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVersion$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setControlsVisible(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsVisible$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setEpisodeSheetOpen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->episodeSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setFullscreen(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGeneration:J

    .line 7
    .line 8
    const-wide/16 v2, 0x1

    .line 9
    .line 10
    add-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGeneration:J

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeFullscreen(Z)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    :goto_0
    iput-wide v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenEnteredAtMs:J

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iput-boolean v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retainOfflineHostInDecor:Z

    .line 34
    .line 35
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback:Ljava/lang/Runnable;

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback:Ljava/lang/Runnable;

    .line 48
    .line 49
    const-wide/16 v5, 0x7d0

    .line 50
    .line 51
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    iput-boolean v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 55
    .line 56
    new-instance p1, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    iget-object v6, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-direct {p1, v3, v4, v5, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;-><init>(IIFF)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->normalFrame:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    instance-of v3, p1, Landroid/view/ViewGroup;

    .line 94
    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    check-cast p1, Landroid/view/ViewGroup;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 p1, 0x0

    .line 101
    :goto_1
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast p1, Landroid/view/ViewGroup;

    .line 122
    .line 123
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .line 127
    const/4 v5, -0x1

    .line 128
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 135
    .line 136
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    .line 153
    .line 154
    .line 155
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 156
    .line 157
    invoke-static {v3, v2}, Lcom/jp/runtime/shell/FullscreenWindowKt;->applyPlaybackFullscreenOrientation(Landroid/app/Activity;Z)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 161
    .line 162
    sget-object v3, Lcom/jp/runtime/web/RuntimeWindowMode;->MEDIA_IMMERSIVE:Lcom/jp/runtime/web/RuntimeWindowMode;

    .line 163
    .line 164
    invoke-static {v2, v3}, Lcom/jp/runtime/web/RuntimeWindowKt;->applyRuntimeWindowMode(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 171
    .line 172
    new-instance v3, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 173
    .line 174
    const/4 v4, 0x3

    .line 175
    invoke-direct {v3, p0, v4}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 179
    .line 180
    .line 181
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate:Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

    .line 182
    .line 183
    invoke-virtual {v2, v0, v1, p1}, Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;->install(JLandroid/view/ViewGroup;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dismissChromeSheets()Z

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate:Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;->clear()V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 196
    .line 197
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeRevealFallback:Ljava/lang/Runnable;

    .line 198
    .line 199
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    invoke-direct {p0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeInputBlocker:Landroid/view/View;

    .line 206
    .line 207
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 208
    .line 209
    .line 210
    invoke-direct {p0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsLocked(Z)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_5

    .line 218
    .line 219
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 220
    .line 221
    const/16 v11, 0x3e

    .line 222
    .line 223
    const/4 v12, 0x0

    .line 224
    const-string v5, "stopDiscovery"

    .line 225
    .line 226
    const/4 v6, 0x0

    .line 227
    const/4 v7, 0x0

    .line 228
    const/4 v8, 0x0

    .line 229
    const/4 v9, 0x0

    .line 230
    const/4 v10, 0x0

    .line 231
    invoke-static/range {v4 .. v12}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    invoke-direct {p0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 235
    .line 236
    .line 237
    iput-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 238
    .line 239
    iput-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsOnPortrait:Z

    .line 240
    .line 241
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    const/4 v4, 0x4

    .line 244
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 251
    .line 252
    invoke-static {p1, v3}, Lcom/jp/runtime/shell/FullscreenWindowKt;->applyPlaybackFullscreenOrientation(Landroid/app/Activity;Z)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 256
    .line 257
    sget-object v3, Lcom/jp/runtime/web/RuntimeWindowMode;->CONTENT:Lcom/jp/runtime/web/RuntimeWindowMode;

    .line 258
    .line 259
    invoke-static {p1, v3}, Lcom/jp/runtime/web/RuntimeWindowKt;->applyRuntimeWindowMode(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V

    .line 260
    .line 261
    .line 262
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 263
    .line 264
    iput-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retainOfflineHostInDecor:Z

    .line 265
    .line 266
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 267
    .line 268
    new-instance v3, Lcom/jp/bootstrap/internal/wxehonpqfrc;

    .line 269
    .line 270
    invoke-direct {v3, v2, v0, v1, p0}, Lcom/jp/bootstrap/internal/wxehonpqfrc;-><init>(IJLjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 277
    .line 278
    new-instance v0, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 279
    .line 280
    invoke-direct {v0, p0, v4}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 281
    .line 282
    .line 283
    const-wide/16 v1, 0x140

    .line 284
    .line 285
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    .line 287
    .line 288
    :goto_2
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 291
    .line 292
    .line 293
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method private static final setFullscreen$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final setFullscreen$lambda$1(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGeneration:J

    .line 6
    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retainOfflineHostInDecor:Z

    .line 13
    .line 14
    if-nez p1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    check-cast p1, Landroid/view/ViewGroup;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->normalFrame:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 47
    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyFrame(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;)V

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 67
    .line 68
    sget-object p2, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_1
    return-void
.end method

.method private static final setFullscreen$lambda$2(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreenChromeSuppressed(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->normalFrame:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyFrame(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsCompositionAfterRotation()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final setFullscreenChromeSuppressed(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsEnabledMode:Z

    .line 20
    .line 21
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controlsAccessibilityMode:I

    .line 31
    .line 32
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeInputBlocker:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeInputBlocker:Landroid/view/View;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    const/16 v1, 0x8

    .line 46
    .line 47
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private final setLineSheetOpen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lineSheetOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setOfflineDurationMs(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineDurationMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jp/bootstrap/internal/sp;->yndsdvj(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setOfflinePlaying(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePlaying$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setOfflinePositionMs(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlinePositionMs$delegate:Lcom/jp/bootstrap/internal/fh;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/sp;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jp/bootstrap/internal/sp;->yndsdvj(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setOfflineUiActive(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineUiActive$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setOnlineFirstFrameRendered(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onlineFirstFrameRendered$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setPanelDismissRequest(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->panelDismissRequest$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setPlayerPanelOpen(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerPanelOpen$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setResizeFill(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resizeFill$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setSkipIntroOutro(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroOutro$delegate:Lcom/jp/bootstrap/internal/th;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/th;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setSkipIntroSeconds(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipIntroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setSkipOutroSeconds(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroSeconds$delegate:Lcom/jp/bootstrap/internal/ah;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/rp;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/rp;->yndsdvj(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final shareCurrentPlayback()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v0, "\u6b63\u5728\u64ad\u653e"

    .line 12
    .line 13
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "android.intent.action.SEND"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v2, "text/plain"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v2, "android.intent.extra.SUBJECT"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "\u6211\u6b63\u5728\u7b80\u7247\u89c2\u770b\u300a"

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\u300b"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "android.intent.extra.TEXT"

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 55
    .line 56
    const-string v0, "\u5206\u4eab\u89c6\u9891"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic sjeyvwgjn(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$9$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic sljpnfm(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$7$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ssdoyje(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$12$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final startOfflinePlayer(Lcom/jp/runtime/shell/PlaybackRequest;J)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_1
    move-object v6, v0

    .line 23
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v6}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->isCompleted(Landroid/content/Context;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    return v2

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 43
    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releasePlayer()V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 54
    .line 55
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 56
    .line 57
    invoke-virtual {v4, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 61
    .line 62
    invoke-virtual {v4, v3}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflineUiActive(Z)V

    .line 69
    .line 70
    .line 71
    iput v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealAttempts:I

    .line 72
    .line 73
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineRevealRunnable:Ljava/lang/Runnable;

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 84
    .line 85
    .line 86
    iput v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 87
    .line 88
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    new-instance v7, Lcom/jp/bootstrap/internal/p00;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getStartSeconds()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    const-wide/16 v3, 0x3e8

    .line 108
    .line 109
    mul-long/2addr v1, v3

    .line 110
    const-wide/16 v3, 0x0

    .line 111
    .line 112
    cmp-long v5, v1, v3

    .line 113
    .line 114
    if-gez v5, :cond_4

    .line 115
    .line 116
    move-wide v1, v3

    .line 117
    :cond_4
    iput-wide v1, v7, Lcom/jp/bootstrap/internal/p00;->sbmzsrkn:J

    .line 118
    .line 119
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 120
    .line 121
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$startOfflinePlayer$1;

    .line 122
    .line 123
    move-object v5, p0

    .line 124
    move-wide v3, p2

    .line 125
    move-object v8, v7

    .line 126
    move-object v7, v6

    .line 127
    move-object v6, p1

    .line 128
    invoke-direct/range {v2 .. v8}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$startOfflinePlayer$1;-><init>(JLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;Ljava/lang/String;Lcom/jp/bootstrap/internal/p00;)V

    .line 129
    .line 130
    .line 131
    move-object p0, v2

    .line 132
    move-wide v2, v3

    .line 133
    move-object v4, v5

    .line 134
    move-object v5, v6

    .line 135
    move-object v6, v7

    .line 136
    move-object v7, v8

    .line 137
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, v4, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-eqz v8, :cond_5

    .line 147
    .line 148
    invoke-static/range {v2 .. v8}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->startOfflinePlayer$bind(JLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;Ljava/lang/String;Lcom/jp/bootstrap/internal/p00;Landroid/graphics/SurfaceTexture;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    return v0
.end method

.method private static final startOfflinePlayer$bind(JLcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;Ljava/lang/String;Lcom/jp/bootstrap/internal/p00;Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .line 1
    iget-wide v0, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p3}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->filmPlaybackSelectionKey(Lcom/jp/runtime/shell/PlaybackRequest;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->release()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releaseOfflineSurface()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Landroid/view/Surface;

    .line 29
    .line 30
    invoke-direct {v3, p6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 31
    .line 32
    .line 33
    iput-object v3, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineSurface:Landroid/view/Surface;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    .line 36
    .line 37
    .line 38
    move-result p6

    .line 39
    if-nez p6, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 43
    .line 44
    iget-wide v5, p5, Lcom/jp/bootstrap/internal/p00;->sbmzsrkn:J

    .line 45
    .line 46
    move-object v4, p4

    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->play(Landroid/content/Context;Landroid/view/Surface;Ljava/lang/String;J)Z

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 52
    .line 53
    .line 54
    const/4 p5, 0x0

    .line 55
    if-nez p4, :cond_2

    .line 56
    .line 57
    const/4 p4, 0x0

    .line 58
    iput-boolean p4, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 59
    .line 60
    invoke-direct {p2, p4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflineUiActive(Z)V

    .line 61
    .line 62
    .line 63
    iget-object p6, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 64
    .line 65
    const/16 v0, 0x8

    .line 66
    .line 67
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p6, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 71
    .line 72
    invoke-virtual {p6, p5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 73
    .line 74
    .line 75
    const/4 p5, 0x0

    .line 76
    iput p5, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 77
    .line 78
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releaseOfflineSurface()V

    .line 79
    .line 80
    .line 81
    iget-object p5, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 82
    .line 83
    invoke-virtual {p5, p4}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p3, p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->handleOfflineUnavailable(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    const/4 p0, 0x1

    .line 91
    invoke-direct {p2, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOfflineUiActive(Z)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p2, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 95
    .line 96
    .line 97
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    add-int/2addr p1, p0

    .line 102
    invoke-direct {p2, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 103
    .line 104
    .line 105
    iget-object p0, p2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 106
    .line 107
    invoke-virtual {p0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 111
    .line 112
    .line 113
    invoke-direct {p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->revealOfflineWhenSized()V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    return-void
.end method

.method private final startPlayer(Lcom/jp/runtime/shell/ResolvedMedia;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_8

    .line 10
    .line 11
    :cond_0
    invoke-static {v2, v1}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->resolvedPlaybackRequest(Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/ResolvedMedia;)Lcom/jp/runtime/shell/PlaybackRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodeKey(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLineKey(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->filmPlaybackSelectionKey(Lcom/jp/runtime/shell/PlaybackRequest;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 42
    .line 43
    :cond_1
    invoke-direct {v0, v3, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackAccessReady(Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/ResolvedMedia;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 50
    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 58
    .line 59
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getRetryUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    const/4 v6, 0x0

    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_2

    .line 78
    .line 79
    const-string v7, "https://"

    .line 80
    .line 81
    invoke-static {v5, v7, v2}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getUrl()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    move-object v5, v6

    .line 99
    :goto_0
    iput-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryUrl:Ljava/lang/String;

    .line 100
    .line 101
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryHandled:Z

    .line 102
    .line 103
    iget-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecovery:Lcom/jp/runtime/shell/DecoderRecoveryBudget;

    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/jp/runtime/shell/DecoderRecoveryBudget;->reset()V

    .line 106
    .line 107
    .line 108
    iput-object v6, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->decoderRecoveryPending:Lcom/jp/bootstrap/internal/gt;

    .line 109
    .line 110
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeIsPlaying(Z)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setOnlineFirstFrameRendered(Z)V

    .line 117
    .line 118
    .line 119
    iget-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineTexture:Landroid/view/TextureView;

    .line 125
    .line 126
    invoke-virtual {v4, v6}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 127
    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    iput v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineAspectRatio:F

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releaseOfflineSurface()V

    .line 133
    .line 134
    .line 135
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 136
    .line 137
    invoke-virtual {v4, v2}, Landroidx/media3/ui/PlayerView;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    iget-boolean v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 141
    .line 142
    const/4 v5, 0x1

    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    iget-boolean v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 146
    .line 147
    if-eqz v4, :cond_3

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getAutoplay()Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_3

    .line 154
    .line 155
    iget-boolean v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 156
    .line 157
    if-nez v3, :cond_3

    .line 158
    .line 159
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/jp/runtime/shell/ShellActivity;->hasActiveCastDevice$shell_runtime()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-nez v3, :cond_3

    .line 166
    .line 167
    move v3, v5

    .line 168
    goto :goto_1

    .line 169
    :cond_3
    move v3, v2

    .line 170
    :goto_1
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 171
    .line 172
    const-wide/16 v7, 0x3e8

    .line 173
    .line 174
    if-eqz v4, :cond_6

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getUrl()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    sget v10, Lcom/jp/bootstrap/internal/yb;->mhirrjin:I

    .line 181
    .line 182
    new-instance v10, Lcom/jp/bootstrap/internal/qb;

    .line 183
    .line 184
    invoke-direct {v10}, Lcom/jp/bootstrap/internal/qb;-><init>()V

    .line 185
    .line 186
    .line 187
    sget-object v11, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 188
    .line 189
    sget-object v11, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 190
    .line 191
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 192
    .line 193
    sget-object v11, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 194
    .line 195
    sget-object v18, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 196
    .line 197
    new-instance v11, Lcom/jp/bootstrap/internal/tb;

    .line 198
    .line 199
    invoke-direct {v11}, Lcom/jp/bootstrap/internal/tb;-><init>()V

    .line 200
    .line 201
    .line 202
    sget-object v25, Lcom/jp/bootstrap/internal/wb;->syiqloeyp:Lcom/jp/bootstrap/internal/wb;

    .line 203
    .line 204
    if-nez v9, :cond_4

    .line 205
    .line 206
    :goto_2
    move-object v13, v6

    .line 207
    goto :goto_3

    .line 208
    :cond_4
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    goto :goto_2

    .line 213
    :goto_3
    const/4 v15, 0x0

    .line 214
    if-eqz v13, :cond_5

    .line 215
    .line 216
    new-instance v12, Lcom/jp/bootstrap/internal/vb;

    .line 217
    .line 218
    const/4 v14, 0x0

    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    invoke-direct/range {v12 .. v20}, Lcom/jp/bootstrap/internal/vb;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/jp/bootstrap/internal/ca;Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/ddpekhdiqe;J)V

    .line 227
    .line 228
    .line 229
    move-object/from16 v22, v12

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_5
    move-object/from16 v22, v15

    .line 233
    .line 234
    :goto_4
    new-instance v19, Lcom/jp/bootstrap/internal/yb;

    .line 235
    .line 236
    new-instance v6, Lcom/jp/bootstrap/internal/sb;

    .line 237
    .line 238
    invoke-direct {v6, v10}, Lcom/jp/bootstrap/internal/rb;-><init>(Lcom/jp/bootstrap/internal/qb;)V

    .line 239
    .line 240
    .line 241
    new-instance v9, Lcom/jp/bootstrap/internal/ub;

    .line 242
    .line 243
    invoke-direct {v9, v11}, Lcom/jp/bootstrap/internal/ub;-><init>(Lcom/jp/bootstrap/internal/tb;)V

    .line 244
    .line 245
    .line 246
    sget-object v24, Lcom/jp/bootstrap/internal/cc;->xizmfgbpnv:Lcom/jp/bootstrap/internal/cc;

    .line 247
    .line 248
    const-string v20, ""

    .line 249
    .line 250
    move-object/from16 v21, v6

    .line 251
    .line 252
    move-object/from16 v23, v9

    .line 253
    .line 254
    invoke-direct/range {v19 .. v25}, Lcom/jp/bootstrap/internal/yb;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/sb;Lcom/jp/bootstrap/internal/vb;Lcom/jp/bootstrap/internal/ub;Lcom/jp/bootstrap/internal/cc;Lcom/jp/bootstrap/internal/wb;)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v6, v19

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getStartSeconds()J

    .line 260
    .line 261
    .line 262
    move-result-wide v9

    .line 263
    mul-long/2addr v9, v7

    .line 264
    move-object v1, v4

    .line 265
    check-cast v1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 266
    .line 267
    invoke-virtual {v1, v6, v9, v10}, Lcom/jp/bootstrap/internal/mctadfgh;->wyjqgzdhz(Lcom/jp/bootstrap/internal/yb;J)V

    .line 268
    .line 269
    .line 270
    move-object v1, v4

    .line 271
    check-cast v1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dwcjxttbbo()V

    .line 277
    .line 278
    .line 279
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 283
    .line 284
    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 285
    .line 286
    .line 287
    invoke-direct {v0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 291
    .line 292
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    invoke-virtual {v1, v4, v3, v6}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->attach(Lcom/jp/bootstrap/internal/gt;Ljava/lang/String;Z)V

    .line 301
    .line 302
    .line 303
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 304
    .line 305
    .line 306
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    add-int/2addr v1, v5

    .line 311
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 312
    .line 313
    .line 314
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 315
    .line 316
    if-nez v1, :cond_a

    .line 317
    .line 318
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 319
    .line 320
    if-nez v1, :cond_a

    .line 321
    .line 322
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_6
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getUrl()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    sget v9, Lcom/jp/bootstrap/internal/yb;->mhirrjin:I

    .line 336
    .line 337
    new-instance v9, Lcom/jp/bootstrap/internal/qb;

    .line 338
    .line 339
    invoke-direct {v9}, Lcom/jp/bootstrap/internal/qb;-><init>()V

    .line 340
    .line 341
    .line 342
    sget-object v10, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 343
    .line 344
    sget-object v10, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 345
    .line 346
    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 347
    .line 348
    sget-object v10, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 349
    .line 350
    sget-object v17, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 351
    .line 352
    new-instance v10, Lcom/jp/bootstrap/internal/tb;

    .line 353
    .line 354
    invoke-direct {v10}, Lcom/jp/bootstrap/internal/tb;-><init>()V

    .line 355
    .line 356
    .line 357
    sget-object v24, Lcom/jp/bootstrap/internal/wb;->syiqloeyp:Lcom/jp/bootstrap/internal/wb;

    .line 358
    .line 359
    if-nez v4, :cond_7

    .line 360
    .line 361
    :goto_5
    move-object v12, v6

    .line 362
    goto :goto_6

    .line 363
    :cond_7
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    goto :goto_5

    .line 368
    :goto_6
    const/4 v14, 0x0

    .line 369
    if-eqz v12, :cond_8

    .line 370
    .line 371
    new-instance v11, Lcom/jp/bootstrap/internal/vb;

    .line 372
    .line 373
    const/4 v13, 0x0

    .line 374
    const/16 v16, 0x0

    .line 375
    .line 376
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    invoke-direct/range {v11 .. v19}, Lcom/jp/bootstrap/internal/vb;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/jp/bootstrap/internal/ca;Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/ddpekhdiqe;J)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v21, v11

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_8
    move-object/from16 v21, v14

    .line 388
    .line 389
    :goto_7
    new-instance v18, Lcom/jp/bootstrap/internal/yb;

    .line 390
    .line 391
    new-instance v4, Lcom/jp/bootstrap/internal/sb;

    .line 392
    .line 393
    invoke-direct {v4, v9}, Lcom/jp/bootstrap/internal/rb;-><init>(Lcom/jp/bootstrap/internal/qb;)V

    .line 394
    .line 395
    .line 396
    new-instance v6, Lcom/jp/bootstrap/internal/ub;

    .line 397
    .line 398
    invoke-direct {v6, v10}, Lcom/jp/bootstrap/internal/ub;-><init>(Lcom/jp/bootstrap/internal/tb;)V

    .line 399
    .line 400
    .line 401
    sget-object v23, Lcom/jp/bootstrap/internal/cc;->xizmfgbpnv:Lcom/jp/bootstrap/internal/cc;

    .line 402
    .line 403
    const-string v19, ""

    .line 404
    .line 405
    move-object/from16 v20, v4

    .line 406
    .line 407
    move-object/from16 v22, v6

    .line 408
    .line 409
    invoke-direct/range {v18 .. v24}, Lcom/jp/bootstrap/internal/yb;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/sb;Lcom/jp/bootstrap/internal/vb;Lcom/jp/bootstrap/internal/ub;Lcom/jp/bootstrap/internal/cc;Lcom/jp/bootstrap/internal/wb;)V

    .line 410
    .line 411
    .line 412
    move-object/from16 v4, v18

    .line 413
    .line 414
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ResolvedMedia;->getStartSeconds()J

    .line 415
    .line 416
    .line 417
    move-result-wide v9

    .line 418
    mul-long/2addr v9, v7

    .line 419
    invoke-direct {v0, v4, v9, v10, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createOnlinePlayer(Lcom/jp/bootstrap/internal/yb;JZ)Landroidx/media3/exoplayer/ExoPlayer;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 424
    .line 425
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playerView:Landroidx/media3/ui/PlayerView;

    .line 429
    .line 430
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 431
    .line 432
    invoke-virtual {v1, v3}, Landroidx/media3/ui/PlayerView;->setPlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 436
    .line 437
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayer(Lcom/jp/bootstrap/internal/gt;)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 441
    .line 442
    if-eqz v1, :cond_9

    .line 443
    .line 444
    iget-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 445
    .line 446
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeTitle()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposeHasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    invoke-virtual {v3, v1, v4, v6}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->attach(Lcom/jp/bootstrap/internal/gt;Ljava/lang/String;Z)V

    .line 455
    .line 456
    .line 457
    :cond_9
    invoke-direct {v0, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    add-int/2addr v1, v5

    .line 465
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 466
    .line 467
    .line 468
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 469
    .line 470
    if-nez v1, :cond_a

    .line 471
    .line 472
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 473
    .line 474
    if-nez v1, :cond_a

    .line 475
    .line 476
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    .line 480
    .line 481
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 482
    .line 483
    .line 484
    :cond_a
    :goto_8
    return-void
.end method

.method public static synthetic sthzwrr(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$4$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final switchToDirectRetry(Lcom/jp/bootstrap/internal/gt;)Z
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryUrl:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :goto_0
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-lez v3, :cond_5

    .line 29
    .line 30
    if-eqz p1, :cond_5

    .line 31
    .line 32
    iput-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryUrl:Ljava/lang/String;

    .line 33
    .line 34
    iput-boolean v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryHandled:Z

    .line 35
    .line 36
    invoke-direct {v0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackError(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 40
    .line 41
    const/16 v3, 0x8

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 49
    .line 50
    .line 51
    move-object/from16 v2, p1

    .line 52
    .line 53
    check-cast v2, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    const-wide/16 v8, 0x0

    .line 60
    .line 61
    cmp-long v3, v6, v8

    .line 62
    .line 63
    if-gez v3, :cond_2

    .line 64
    .line 65
    move-wide v6, v8

    .line 66
    :cond_2
    sget v3, Lcom/jp/bootstrap/internal/yb;->mhirrjin:I

    .line 67
    .line 68
    new-instance v3, Lcom/jp/bootstrap/internal/qb;

    .line 69
    .line 70
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/qb;-><init>()V

    .line 71
    .line 72
    .line 73
    sget-object v8, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 74
    .line 75
    sget-object v8, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 76
    .line 77
    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 78
    .line 79
    sget-object v8, Lcom/jp/bootstrap/internal/ddpekhdiqe;->tsodtn:Lcom/jp/bootstrap/internal/baxk;

    .line 80
    .line 81
    sget-object v15, Lcom/jp/bootstrap/internal/x00;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/x00;

    .line 82
    .line 83
    new-instance v8, Lcom/jp/bootstrap/internal/tb;

    .line 84
    .line 85
    invoke-direct {v8}, Lcom/jp/bootstrap/internal/tb;-><init>()V

    .line 86
    .line 87
    .line 88
    sget-object v22, Lcom/jp/bootstrap/internal/wb;->syiqloeyp:Lcom/jp/bootstrap/internal/wb;

    .line 89
    .line 90
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    const/4 v12, 0x0

    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    new-instance v9, Lcom/jp/bootstrap/internal/vb;

    .line 98
    .line 99
    const/4 v11, 0x0

    .line 100
    const/4 v14, 0x0

    .line 101
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-direct/range {v9 .. v17}, Lcom/jp/bootstrap/internal/vb;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/jp/bootstrap/internal/ca;Ljava/util/List;Ljava/lang/String;Lcom/jp/bootstrap/internal/ddpekhdiqe;J)V

    .line 107
    .line 108
    .line 109
    move-object/from16 v19, v9

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    move-object/from16 v19, v12

    .line 113
    .line 114
    :goto_1
    new-instance v16, Lcom/jp/bootstrap/internal/yb;

    .line 115
    .line 116
    new-instance v1, Lcom/jp/bootstrap/internal/sb;

    .line 117
    .line 118
    invoke-direct {v1, v3}, Lcom/jp/bootstrap/internal/rb;-><init>(Lcom/jp/bootstrap/internal/qb;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lcom/jp/bootstrap/internal/ub;

    .line 122
    .line 123
    invoke-direct {v3, v8}, Lcom/jp/bootstrap/internal/ub;-><init>(Lcom/jp/bootstrap/internal/tb;)V

    .line 124
    .line 125
    .line 126
    sget-object v21, Lcom/jp/bootstrap/internal/cc;->xizmfgbpnv:Lcom/jp/bootstrap/internal/cc;

    .line 127
    .line 128
    const-string v17, ""

    .line 129
    .line 130
    move-object/from16 v18, v1

    .line 131
    .line 132
    move-object/from16 v20, v3

    .line 133
    .line 134
    invoke-direct/range {v16 .. v22}, Lcom/jp/bootstrap/internal/yb;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/sb;Lcom/jp/bootstrap/internal/vb;Lcom/jp/bootstrap/internal/ub;Lcom/jp/bootstrap/internal/cc;Lcom/jp/bootstrap/internal/wb;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v1, v16

    .line 138
    .line 139
    move-object/from16 v3, p1

    .line 140
    .line 141
    check-cast v3, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 142
    .line 143
    invoke-virtual {v3, v1, v6, v7}, Lcom/jp/bootstrap/internal/mctadfgh;->wyjqgzdhz(Lcom/jp/bootstrap/internal/yb;J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->dwcjxttbbo()V

    .line 147
    .line 148
    .line 149
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 150
    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 154
    .line 155
    if-eqz v1, :cond_4

    .line 156
    .line 157
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 158
    .line 159
    if-nez v1, :cond_4

    .line 160
    .line 161
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity;->hasActiveCastDevice$shell_runtime()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_4

    .line 168
    .line 169
    move v4, v5

    .line 170
    :cond_4
    invoke-virtual {v2, v4}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 174
    .line 175
    new-instance v2, Lcom/jp/bootstrap/internal/sbijbnsbuf;

    .line 176
    .line 177
    const/4 v3, 0x2

    .line 178
    invoke-direct {v2, v0, v3}, Lcom/jp/bootstrap/internal/sbijbnsbuf;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    return v5

    .line 185
    :cond_5
    iget-boolean v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryHandled:Z

    .line 186
    .line 187
    if-eqz v0, :cond_6

    .line 188
    .line 189
    return v5

    .line 190
    :cond_6
    return v4
.end method

.method private static final switchToDirectRetry$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->directRetryHandled:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic syiqloeyp(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$6$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic syoolsrjr(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$23$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic taplwdejpie(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$14$2$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic tckmliv(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$8$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic tdbexscuqc(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$14$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final toggleCastMute()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 2
    .line 3
    const/16 v7, 0x3e

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    const-string v1, "mute"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v8}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final toggleCastPlayback()V
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v8, 0x3e

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    const-string v2, "pause"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    invoke-static/range {v1 .. v9}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/16 v8, 0x3e

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const-string v2, "resume"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static/range {v1 .. v9}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static synthetic tscplbdu(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$13(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic tsodtn(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$27$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic uaakwbmitdl(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;JLcom/jp/bootstrap/internal/yb;JZLcom/jp/bootstrap/internal/rs;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recoverPlaybackError$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/gt;JLcom/jp/bootstrap/internal/yb;JZLcom/jp/bootstrap/internal/rs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateDownloadTrackingContentId(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->clearDownloadOptimistic()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->queryDownloadSnapshot$shell_runtime(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic vbvia(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$11$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic vdoha(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic vzds(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$1$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic wigtqdo(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->switchToDirectRetry$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic wlmrcnbm(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$25$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic wyjqgzdhz(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->installWebViewTouchPassthrough$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic xizmfgbpnv(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->_init_$lambda$0(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic xjkx(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchHostReady$lambda$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/runtime/shell/PlaybackRequest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic xzyuqeb(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$5$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic ydkpabz(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate$lambda$1(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic yfqpbrvsm(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay$lambda$0$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yndsdvj(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$11$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic yxdrscromtp(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$26$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic zfrfwjkgqw(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->createControlsView$lambda$0$0$0$20$2$13$0(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final applyResizeFill(Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setResizeFill(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyPictureBox()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p1

    .line 16
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final applySkipIntroOutro(ZII)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setSkipIntroOutro(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x12c

    .line 6
    .line 7
    invoke-static {p2, v0, v1}, Lcom/jp/bootstrap/internal/vd;->yndsdvj(III)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-direct {p0, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setSkipIntroSeconds(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0, v1}, Lcom/jp/bootstrap/internal/vd;->yndsdvj(III)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-direct {p0, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setSkipOutroSeconds(I)V

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroConsumedKey:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p1, :cond_9

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    sget-object p2, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->positionMs()J

    .line 35
    .line 36
    .line 37
    move-result-wide p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    check-cast p2, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-wide p2, v0

    .line 51
    :goto_0
    cmp-long v2, p2, v0

    .line 52
    .line 53
    if-gez v2, :cond_2

    .line 54
    .line 55
    move-wide v4, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-wide v4, p2

    .line 58
    :goto_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipIntroSeconds()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    int-to-long v6, v3

    .line 63
    const-wide/16 v8, 0x3e8

    .line 64
    .line 65
    mul-long/2addr v6, v8

    .line 66
    iget-wide v8, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->furthestPositionMs:J

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-static/range {v3 .. v9}, Lcom/jp/runtime/shell/SkipCreditsKt;->introSeekMs(ZJJJ)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_4

    .line 74
    .line 75
    iget-boolean v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 76
    .line 77
    if-eqz v4, :cond_3

    .line 78
    .line 79
    sget-object v4, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    invoke-virtual {v4, v5, v6}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->seekTo(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    check-cast v4, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 98
    .line 99
    const/4 v3, 0x5

    .line 100
    invoke-virtual {v4, v3, v5, v6}, Lcom/jp/bootstrap/internal/mctadfgh;->gbcohonrle(IJ)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    sget-object v3, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->durationMs()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    goto :goto_3

    .line 114
    :cond_5
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 115
    .line 116
    if-eqz v3, :cond_6

    .line 117
    .line 118
    check-cast v3, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move-wide v3, v0

    .line 126
    :goto_3
    if-gez v2, :cond_7

    .line 127
    .line 128
    move-wide p2, v0

    .line 129
    :cond_7
    cmp-long v2, v3, v0

    .line 130
    .line 131
    if-gez v2, :cond_8

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    move-wide v0, v3

    .line 135
    :goto_4
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->maybeSkipOutro(JJ)V

    .line 136
    .line 137
    .line 138
    :cond_9
    new-instance p2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 139
    .line 140
    invoke-direct {p2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string p3, "enabled"

    .line 144
    .line 145
    invoke-virtual {p2, p3, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipIntroSeconds()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string p3, "introSeconds"

    .line 157
    .line 158
    invoke-virtual {p2, p1, p3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getSkipOutroSeconds()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p3, "outroSeconds"

    .line 170
    .line 171
    invoke-virtual {p2, p1, p3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string p1, "skipIntroOutro"

    .line 175
    .line 176
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final attachTo(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->installWebViewTouchPassthrough(Landroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenChromeGate:Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFullscreenChromeGate;->refreshInstalledTransition()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v0, v2

    .line 41
    :goto_0
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retainOfflineHostInDecor:Z

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-ne v1, v0, :cond_2

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    if-ne v0, p1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-ne v0, p1, :cond_3

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    move-object v2, v0

    .line 88
    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    .line 90
    :cond_4
    if-eqz v2, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final castStartPositionMs()J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->currentPositionMs()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    cmp-long v4, v4, v6

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v3, v5

    .line 36
    :goto_0
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 44
    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    check-cast p0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    cmp-long p0, v3, v6

    .line 54
    .line 55
    if-gez p0, :cond_2

    .line 56
    .line 57
    move-wide v3, v6

    .line 58
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    :cond_3
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    :cond_4
    :goto_1
    invoke-static {v0, v1, v2, v6, v7}, Lcom/jp/runtime/shell/CastPlaybackFollowKt;->castHandoffPositionMs(ZJJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    return-wide v0
.end method

.method public final checkpointProgress()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const-wide/16 v3, 0x3e8

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    cmp-long v2, v7, v5

    .line 27
    .line 28
    if-lez v2, :cond_4

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    div-long/2addr v7, v3

    .line 39
    cmp-long v2, v7, v5

    .line 40
    .line 41
    if-gez v2, :cond_1

    .line 42
    .line 43
    move-wide v7, v5

    .line 44
    :cond_1
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlayerCastUiState;->getDurationMs()J

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    cmp-long v2, v9, v5

    .line 53
    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    move-wide v9, v5

    .line 57
    :cond_2
    div-long/2addr v9, v3

    .line 58
    cmp-long v2, v9, v5

    .line 59
    .line 60
    if-gez v2, :cond_3

    .line 61
    .line 62
    :goto_0
    move-wide v9, v5

    .line 63
    :cond_3
    move-wide/from16 v17, v7

    .line 64
    .line 65
    move-wide/from16 v19, v9

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    iget-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    sget-object v2, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->positionMs()J

    .line 75
    .line 76
    .line 77
    move-result-wide v7

    .line 78
    div-long/2addr v7, v3

    .line 79
    cmp-long v9, v7, v5

    .line 80
    .line 81
    if-gez v9, :cond_5

    .line 82
    .line 83
    move-wide v7, v5

    .line 84
    :cond_5
    invoke-virtual {v2}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->durationMs()J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    cmp-long v2, v9, v5

    .line 89
    .line 90
    if-gez v2, :cond_6

    .line 91
    .line 92
    move-wide v9, v5

    .line 93
    :cond_6
    div-long/2addr v9, v3

    .line 94
    cmp-long v2, v9, v5

    .line 95
    .line 96
    if-gez v2, :cond_3

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 100
    .line 101
    if-nez v2, :cond_8

    .line 102
    .line 103
    :goto_1
    return-void

    .line 104
    :cond_8
    check-cast v2, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->lsqxopbhlw()J

    .line 107
    .line 108
    .line 109
    move-result-wide v7

    .line 110
    div-long/2addr v7, v3

    .line 111
    cmp-long v9, v7, v5

    .line 112
    .line 113
    if-gez v9, :cond_9

    .line 114
    .line 115
    move-wide v7, v5

    .line 116
    :cond_9
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->holm()J

    .line 117
    .line 118
    .line 119
    move-result-wide v9

    .line 120
    cmp-long v2, v9, v5

    .line 121
    .line 122
    if-gez v2, :cond_a

    .line 123
    .line 124
    move-wide v9, v5

    .line 125
    :cond_a
    div-long/2addr v9, v3

    .line 126
    cmp-long v2, v9, v5

    .line 127
    .line 128
    if-gez v2, :cond_3

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :goto_2
    sget-object v2, Lcom/jp/runtime/web/RuntimeProgressReporter;->INSTANCE:Lcom/jp/runtime/web/RuntimeProgressReporter;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 134
    .line 135
    new-instance v11, Lcom/jp/runtime/web/RuntimePlaybackProgress;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 138
    .line 139
    .line 140
    move-result-wide v12

    .line 141
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v16

    .line 153
    cmp-long v1, v19, v5

    .line 154
    .line 155
    if-lez v1, :cond_b

    .line 156
    .line 157
    const-wide/16 v3, 0x64

    .line 158
    .line 159
    mul-long v3, v3, v17

    .line 160
    .line 161
    const-wide/16 v5, 0x5f

    .line 162
    .line 163
    mul-long v5, v5, v19

    .line 164
    .line 165
    cmp-long v1, v3, v5

    .line 166
    .line 167
    if-ltz v1, :cond_b

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    :goto_3
    move/from16 v21, v1

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    const/4 v1, 0x0

    .line 174
    goto :goto_3

    .line 175
    :goto_4
    invoke-direct/range {v11 .. v21}, Lcom/jp/runtime/web/RuntimePlaybackProgress;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JJZ)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0, v11}, Lcom/jp/runtime/web/RuntimeProgressReporter;->enqueue(Landroid/content/Context;Lcom/jp/runtime/web/RuntimePlaybackProgress;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final chromeSheetsOpen()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getEpisodeSheetOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getLineSheetOpen()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastDrawerOpen()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getPlayerPanelOpen()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final close()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->retainOfflineHostInDecor:Z

    .line 16
    .line 17
    iput-boolean v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsOnPortrait:Z

    .line 18
    .line 19
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v1, v3}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 28
    .line 29
    iget-wide v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 30
    .line 31
    const-wide/16 v6, 0x1

    .line 32
    .line 33
    add-long/2addr v4, v6

    .line 34
    iput-wide v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releasePlayer()V

    .line 40
    .line 41
    .line 42
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 43
    .line 44
    const-string v1, ""

    .line 45
    .line 46
    iput-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsLocked(Z)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastSessionActive(Z)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 64
    .line 65
    const/16 v20, 0x1fff

    .line 66
    .line 67
    const/16 v21, 0x0

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x0

    .line 75
    const-wide/16 v11, 0x0

    .line 76
    .line 77
    const-wide/16 v13, 0x0

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    const/16 v17, 0x0

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    invoke-direct/range {v4 .. v21}, Lcom/jp/runtime/shell/PlayerCastUiState;-><init>(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZIZZILcom/jp/bootstrap/internal/hjiaf;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v3}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setAutoNextCancelledForKey(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 98
    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-interface {v1, v3}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 105
    .line 106
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 107
    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    invoke-interface {v1, v3}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 114
    .line 115
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 122
    .line 123
    .line 124
    const-wide/16 v4, -0x1

    .line 125
    .line 126
    iput-wide v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lastDownloadRevision:J

    .line 127
    .line 128
    const-string v1, "\u4e0b\u8f7d"

    .line 129
    .line 130
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeDownloadLabel(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroConsumedKey:Ljava/lang/String;

    .line 134
    .line 135
    const-wide/16 v3, 0x0

    .line 136
    .line 137
    iput-wide v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->furthestPositionMs:J

    .line 138
    .line 139
    sget-object v1, Lcom/jp/bootstrap/internal/ynthpuvskul;->sbmzsrkn:Lcom/jp/bootstrap/internal/ynthpuvskul;

    .line 140
    .line 141
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodes(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLines(Ljava/util/List;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 148
    .line 149
    const/16 v3, 0x8

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 170
    .line 171
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final currentPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public final destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->playbackMediaSession:Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/runtime/shell/JpFilmPlaybackMediaSession;->close()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progressTicker:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$progressTicker$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->close()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v2

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iput-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scope:Lcom/jp/bootstrap/internal/ssbfcea;

    .line 41
    .line 42
    invoke-static {p0, v2}, Lcom/jp/bootstrap/internal/mail;->yfqpbrvsm(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/je;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final dismissChromeSheets()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->chromeSheetsOpen()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setPlayerPanelOpen(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getPanelDismissRequest()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    add-int/2addr v0, v1

    .line 27
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setPanelDismissRequest(I)V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public final dismissOverlayIfVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setObscured(Z)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v1
.end method

.method public final embed(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->update(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final enterPictureInPicture()Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "android.software.picture_in_picture"

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ge v3, v4, :cond_1

    .line 41
    .line 42
    move v3, v4

    .line 43
    :cond_1
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ge v5, v4, :cond_2

    .line 50
    .line 51
    move v5, v4

    .line 52
    :cond_2
    invoke-static {}, Lcom/jp/bootstrap/internal/sorubhqdjfh;->syiqloeyp()Landroid/app/PictureInPictureParams$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v7, Landroid/util/Rational;

    .line 57
    .line 58
    invoke-direct {v7, v3, v5}, Landroid/util/Rational;-><init>(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3, v1}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/16 v3, 0x1f

    .line 70
    .line 71
    if-lt v0, v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/app/PictureInPictureParams$Builder;->setSeamlessResizeEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    return p0

    .line 90
    :cond_4
    :goto_0
    return v2
.end method

.method public final exitFullscreenIfNeeded()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-wide v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreenEnteredAtMs:J

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    invoke-static {v2, v3, v4, v5}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->shouldHoldFullscreenEnter(JJ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setFullscreen(Z)V

    .line 22
    .line 23
    .line 24
    return v2
.end method

.method public final isFullscreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 2
    .line 3
    return p0
.end method

.method public final layout(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$childWebView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v2, v1

    .line 23
    :goto_1
    const-string v3, "viewportWidth"

    .line 24
    .line 25
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 26
    .line 27
    invoke-virtual {p1, v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    const-string v3, "scale"

    .line 32
    .line 33
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 34
    .line 35
    invoke-virtual {p1, v3, v8, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    invoke-static {v2, v6, v7, v8, v9}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->embeddedWebViewScale(IDD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    const-string v6, "width"

    .line 44
    .line 45
    invoke-virtual {p1, v6, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    mul-double/2addr v6, v2

    .line 50
    invoke-static {v6, v7}, Lcom/jp/bootstrap/internal/ca;->ydkpabz(D)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v7, 0x1

    .line 55
    if-ge v6, v7, :cond_2

    .line 56
    .line 57
    move v12, v7

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v12, v6

    .line 60
    :goto_2
    const-string v6, "height"

    .line 61
    .line 62
    invoke-virtual {p1, v6, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    mul-double/2addr v8, v2

    .line 67
    invoke-static {v8, v9}, Lcom/jp/bootstrap/internal/ca;->ydkpabz(D)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v6, v7, :cond_3

    .line 72
    .line 73
    move v13, v7

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v13, v6

    .line 76
    :goto_3
    const/4 v6, 0x0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v8, v6

    .line 85
    :goto_4
    const-string v9, "x"

    .line 86
    .line 87
    invoke-virtual {p1, v9, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v9

    .line 91
    mul-double/2addr v9, v2

    .line 92
    double-to-float v9, v9

    .line 93
    add-float v10, v8, v9

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    :cond_5
    const-string v0, "y"

    .line 102
    .line 103
    invoke-virtual {p1, v0, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    mul-double/2addr v4, v2

    .line 108
    double-to-float p1, v4

    .line 109
    add-float v11, v6, p1

    .line 110
    .line 111
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->fullscreen:Z

    .line 112
    .line 113
    if-nez p1, :cond_9

    .line 114
    .line 115
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    move v8, p1

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    move v8, v1

    .line 126
    :goto_5
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 127
    .line 128
    if-eqz p1, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    move v9, p1

    .line 135
    goto :goto_6

    .line 136
    :cond_7
    move v9, v1

    .line 137
    :goto_6
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hasPlaybackSession()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    invoke-static/range {v8 .. v13}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->clampEmbeddedHostFrame(IIFFII)Lcom/jp/runtime/shell/EmbeddedHostFrame;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    new-instance v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedHostFrame;->getWidth()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedHostFrame;->getHeight()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedHostFrame;->getX()F

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    invoke-virtual {p1}, Lcom/jp/runtime/shell/EmbeddedHostFrame;->getY()F

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-direct {v0, v2, v3, v4, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;-><init>(IIFF)V

    .line 166
    .line 167
    .line 168
    goto :goto_7

    .line 169
    :cond_8
    new-instance v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 170
    .line 171
    invoke-direct {v0, v12, v13, v10, v11}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;-><init>(IIFF)V

    .line 172
    .line 173
    .line 174
    :goto_7
    iput-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->normalFrame:Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;

    .line 175
    .line 176
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyFrame(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$PlayerFrame;)V

    .line 177
    .line 178
    .line 179
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 180
    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    iput-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 184
    .line 185
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->recreateControlsCompositionAfterRotation()V

    .line 186
    .line 187
    .line 188
    :cond_9
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->container:Landroid/widget/FrameLayout;

    .line 189
    .line 190
    if-eqz p1, :cond_a

    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    :cond_a
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hasPlaybackSession()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-static {v1, v11, v13, p1}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->decideEmbeddedHostScreen(IFIZ)Lcom/jp/runtime/shell/EmbeddedHostScreenDecision;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget-object v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    aget p1, v0, p1

    .line 211
    .line 212
    if-eq p1, v7, :cond_d

    .line 213
    .line 214
    const/4 v0, 0x2

    .line 215
    if-eq p1, v0, :cond_c

    .line 216
    .line 217
    const/4 v0, 0x3

    .line 218
    if-ne p1, v0, :cond_b

    .line 219
    .line 220
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_b
    invoke-static {}, Lcom/jp/bootstrap/internal/fseadzoqiv;->tsodtn()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_c
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 229
    .line 230
    const/4 p1, 0x4

    .line 231
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_d
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 236
    .line 237
    const/16 p1, 0x8

    .line 238
    .line 239
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method public final onDownloadSnapshot(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getForceOffline()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v3

    .line 21
    :goto_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v2, v3

    .line 37
    :goto_1
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v4, v3

    .line 49
    :goto_2
    const-string v5, "event"

    .line 50
    .line 51
    const-string v6, ""

    .line 52
    .line 53
    invoke-virtual {v1, v5, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v7, "query"

    .line 58
    .line 59
    invoke-static {v5, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const-string v8, "content_id"

    .line 64
    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    iget-object v7, v1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-nez v7, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, v8, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {v7}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    move-object v7, v1

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    move-object v7, v3

    .line 97
    :goto_3
    if-eqz v7, :cond_4

    .line 98
    .line 99
    invoke-virtual {v7, v8, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    move-object v7, v3

    .line 105
    :goto_4
    const/4 v9, 0x0

    .line 106
    if-eqz v7, :cond_5

    .line 107
    .line 108
    const/4 v11, 0x1

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    move v11, v9

    .line 111
    :goto_5
    const-string v12, "revision"

    .line 112
    .line 113
    const-wide/16 v13, -0x1

    .line 114
    .line 115
    invoke-virtual {v1, v13, v14, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    const-wide/16 v14, 0x0

    .line 120
    .line 121
    cmp-long v14, v12, v14

    .line 122
    .line 123
    move/from16 v16, v11

    .line 124
    .line 125
    if-ltz v14, :cond_6

    .line 126
    .line 127
    iget-wide v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lastDownloadRevision:J

    .line 128
    .line 129
    cmp-long v10, v12, v10

    .line 130
    .line 131
    if-gez v10, :cond_6

    .line 132
    .line 133
    goto/16 :goto_e

    .line 134
    .line 135
    :cond_6
    if-ltz v14, :cond_7

    .line 136
    .line 137
    iput-wide v12, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lastDownloadRevision:J

    .line 138
    .line 139
    :cond_7
    const-string v10, "ok"

    .line 140
    .line 141
    invoke-virtual {v1, v10, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 142
    .line 143
    .line 144
    move-result v10

    .line 145
    if-nez v10, :cond_9

    .line 146
    .line 147
    const-string v1, "command_rejected"

    .line 148
    .line 149
    invoke-static {v5, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_1a

    .line 154
    .line 155
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-interface {v1, v3}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    if-eqz v16, :cond_b

    .line 169
    .line 170
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 171
    .line 172
    if-eqz v7, :cond_a

    .line 173
    .line 174
    invoke-virtual {v10, v7}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    const-string v0, "Required value was null."

    .line 179
    .line 180
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_b
    :goto_6
    const-string v7, "download_removed"

    .line 185
    .line 186
    invoke-static {v5, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_d

    .line 191
    .line 192
    invoke-virtual {v1, v8, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-nez v7, :cond_c

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_c
    move-object v6, v3

    .line 204
    :goto_7
    if-eqz v6, :cond_d

    .line 205
    .line 206
    iget-object v7, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 207
    .line 208
    invoke-virtual {v7, v6}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 213
    .line 214
    :cond_d
    const-string v6, "items"

    .line 215
    .line 216
    invoke-virtual {v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-nez v1, :cond_e

    .line 221
    .line 222
    new-instance v1, Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 223
    .line 224
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 225
    .line 226
    .line 227
    :cond_e
    iget-object v6, v1, Lcom/jp/bootstrap/internal/nxqsmsfr;->sbmzsrkn:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    move v7, v9

    .line 234
    :goto_8
    if-ge v7, v6, :cond_13

    .line 235
    .line 236
    invoke-virtual {v1, v7}, Lcom/jp/bootstrap/internal/nxqsmsfr;->mhirrjin(I)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    if-nez v8, :cond_f

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_f
    invoke-static {v8}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$toPlayerDownloadUiState(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    if-nez v8, :cond_10

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_10
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 251
    .line 252
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    move-object/from16 v16, v10

    .line 261
    .line 262
    check-cast v16, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 263
    .line 264
    iget-object v10, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 265
    .line 266
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getContentId()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    const-string v12, "progress"

    .line 271
    .line 272
    invoke-static {v5, v12}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v12

    .line 276
    if-eqz v12, :cond_12

    .line 277
    .line 278
    if-eqz v16, :cond_12

    .line 279
    .line 280
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getState()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v18

    .line 284
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getPercent()Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v19

    .line 288
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getUpdateTimeMs()J

    .line 289
    .line 290
    .line 291
    move-result-wide v21

    .line 292
    invoke-virtual {v8}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getEpisodeIndex()Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    if-nez v8, :cond_11

    .line 297
    .line 298
    invoke-virtual/range {v16 .. v16}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getEpisodeIndex()Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    :cond_11
    move-object/from16 v20, v8

    .line 303
    .line 304
    const/16 v23, 0x1

    .line 305
    .line 306
    const/16 v24, 0x0

    .line 307
    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    invoke-static/range {v16 .. v24}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->copy$default(Lcom/jp/runtime/shell/PlayerDownloadUiState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;JILjava/lang/Object;)Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    :cond_12
    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_13
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->currentDownloadState()Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-eqz v2, :cond_14

    .line 325
    .line 326
    iget-object v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadItems:Ljava/util/LinkedHashMap;

    .line 327
    .line 328
    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    check-cast v5, Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_14
    move-object v5, v3

    .line 336
    :goto_a
    iget-object v6, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 337
    .line 338
    if-eqz v6, :cond_15

    .line 339
    .line 340
    if-eqz v1, :cond_15

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->isRetryable()Z

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    const/4 v15, 0x1

    .line 347
    if-ne v6, v15, :cond_15

    .line 348
    .line 349
    const/4 v6, 0x1

    .line 350
    goto :goto_b

    .line 351
    :cond_15
    move v6, v9

    .line 352
    :goto_b
    if-eqz v1, :cond_16

    .line 353
    .line 354
    if-nez v6, :cond_16

    .line 355
    .line 356
    iput-object v3, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 357
    .line 358
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 359
    .line 360
    if-eqz v1, :cond_16

    .line 361
    .line 362
    invoke-interface {v1, v3}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 363
    .line 364
    .line 365
    :cond_16
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 366
    .line 367
    .line 368
    if-eqz v4, :cond_17

    .line 369
    .line 370
    invoke-virtual {v4}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getState()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    goto :goto_c

    .line 375
    :cond_17
    move-object v1, v3

    .line 376
    :goto_c
    if-eqz v5, :cond_18

    .line 377
    .line 378
    invoke-virtual {v5}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->getState()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    :cond_18
    iget-object v4, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 383
    .line 384
    if-eqz v4, :cond_19

    .line 385
    .line 386
    invoke-virtual {v4}, Lcom/jp/runtime/shell/PlaybackRequest;->getForceOffline()Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    const/4 v15, 0x1

    .line 391
    if-ne v4, v15, :cond_19

    .line 392
    .line 393
    move v10, v15

    .line 394
    goto :goto_d

    .line 395
    :cond_19
    move v10, v9

    .line 396
    :goto_d
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    iget-boolean v5, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 401
    .line 402
    invoke-static {v1, v3, v10, v4, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->shouldRetryForceOfflineAfterRepair(Ljava/lang/String;Ljava/lang/String;ZZZ)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_1a

    .line 407
    .line 408
    iget-object v1, v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 409
    .line 410
    new-instance v3, Lcom/jp/bootstrap/internal/sbgoakejgw;

    .line 411
    .line 412
    invoke-direct {v3, v0, v2, v9}, Lcom/jp/bootstrap/internal/sbgoakejgw;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    .line 417
    .line 418
    :cond_1a
    :goto_e
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->pause()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/mctadfgh;->yndsdvj()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iput-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 44
    .line 45
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    sget-object v0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->isPlaying()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->pause()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->rowxts()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v2, 0x1

    .line 77
    if-ne v0, v2, :cond_5

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    move v2, v1

    .line 85
    :goto_0
    iput-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 86
    .line 87
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    check-cast v0, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/mctadfgh;->yndsdvj()V

    .line 94
    .line 95
    .line 96
    :cond_6
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->resume()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    check-cast p0, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/mctadfgh;->yfqpbrvsm()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final openCastOverlay()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setEpisodeSheetOpen(Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setLineSheetOpen(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastDrawerOpen(Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastUiState()Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/16 v18, 0x1ff6

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const-wide/16 v9, 0x0

    .line 32
    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    invoke-static/range {v2 .. v19}, Lcom/jp/runtime/shell/PlayerCastUiState;->copy$default(Lcom/jp/runtime/shell/PlayerCastUiState;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZIZZILjava/lang/Object;)Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final requestDownload()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->currentDownloadState()Lcom/jp/runtime/shell/PlayerDownloadUiState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->isBusy()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_1
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->isComplete()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v1, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 29
    .line 30
    const-string v0, "\u5df2\u7f13\u5b58\uff0c\u53ef\u5728\u4e0b\u8f7d\u7ba1\u7406\u64cd\u4f5c"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    if-eqz v0, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/jp/runtime/shell/PlayerDownloadUiState;->isRetryable()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    const-string v0, "\u7ee7\u7eed\u4e2d"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string v0, "0%"

    .line 53
    .line 54
    :goto_1
    iput-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->optimisticDownloadLabel:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scope:Lcom/jp/bootstrap/internal/ssbfcea;

    .line 68
    .line 69
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$requestDownload$1;

    .line 70
    .line 71
    invoke-direct {v2, p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$requestDownload$1;-><init>(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x3

    .line 75
    invoke-static {v0, v1, v2, v3}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->downloadOptimisticJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 80
    .line 81
    const-string v0, "download"

    .line 82
    .line 83
    const/4 v2, 0x2

    .line 84
    invoke-static {p0, v0, v1, v2, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchChromeAction$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final setObscured(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->mainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveLoadingRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->progress:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hasPlaybackSession()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v2, v0

    .line 50
    :goto_0
    iget-boolean v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->awaitingPortraitLayout:Z

    .line 51
    .line 52
    invoke-static {p1, v2, v3}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->shouldExposeObscuredEmbeddedHost(ZZZ)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->placeHostUnderWebView()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    check-cast p1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-ne p1, v2, :cond_5

    .line 101
    .line 102
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scheduleResolveLoading()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->hideResolveLoading()V

    .line 111
    .line 112
    .line 113
    :goto_3
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->message:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->controls:Lcom/jp/bootstrap/internal/xnlsjhldp;

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVisible(Z)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getControlsVersion()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    add-int/2addr p1, v2

    .line 131
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setControlsVersion(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dimOverlay:Landroid/view/View;

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 140
    .line 141
    .line 142
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 143
    .line 144
    if-eqz p1, :cond_8

    .line 145
    .line 146
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    iput-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 151
    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    check-cast v0, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_8
    if-eqz p1, :cond_9

    .line 164
    .line 165
    iget-boolean p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 166
    .line 167
    if-eqz p1, :cond_9

    .line 168
    .line 169
    iput-boolean v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 170
    .line 171
    sget-object p0, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->INSTANCE:Lcom/jp/runtime/shell/OfflinePlaybackBridge;

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/jp/runtime/shell/OfflinePlaybackBridge;->resume()V

    .line 174
    .line 175
    .line 176
    :cond_9
    return-void
.end method

.method public final setSleepTimer(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object p1, v1

    .line 21
    :goto_0
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->scope:Lcom/jp/bootstrap/internal/ssbfcea;

    .line 28
    .line 29
    new-instance v2, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$setSleepTimer$1;

    .line 30
    .line 31
    invoke-direct {v2, p1, p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController$setSleepTimer$1;-><init>(ILcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    invoke-static {v0, v1, v2, p1}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->sleepTimerJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final shouldHoldBackgroundProcess()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final update(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 5
    .line 6
    const-string v1, "width"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->layout(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string v1, "workId"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "selectionWorkId"

    .line 30
    .line 31
    const-wide/16 v1, -0x1

    .line 32
    .line 33
    invoke-virtual {p1, v1, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iget-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    cmp-long v0, v0, v2

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$matchesPlayerMetadataSelection(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$matchesPlayerMetadataSelection(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyChromeMeta(Lcom/jp/bootstrap/internal/cjpbeith;Z)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x2

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {p0, p1, v0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->applyChromeMeta$default(Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;Lcom/jp/bootstrap/internal/cjpbeith;ZILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string v3, "selectionId"

    .line 83
    .line 84
    const-string v4, ""

    .line 85
    .line 86
    invoke-virtual {p1, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iput-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->webSelectionId:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->access$toPlaybackRequest(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/runtime/shell/PlaybackRequest;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v3, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getTitle()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-direct {p0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeTitle(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {p0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeEpisodeKey(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-direct {p0, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeLineKey(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getAutoNextCancelledForKey()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_4

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getAutoNextCancelledForKey()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-static {v4, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-nez v4, :cond_4

    .line 141
    .line 142
    invoke-direct {p0, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setAutoNextCancelledForKey(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-static {p1}, Lcom/jp/runtime/shell/StreamingMediaRuntimeKt;->filmPlaybackSelectionKey(Lcom/jp/runtime/shell/PlaybackRequest;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->presentHost()V

    .line 150
    .line 151
    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 159
    .line 160
    .line 161
    move-result-wide v7

    .line 162
    cmp-long v5, v5, v7

    .line 163
    .line 164
    if-nez v5, :cond_5

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_5

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-nez v5, :cond_6

    .line 193
    .line 194
    :cond_5
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->clearDownloadOptimistic()V

    .line 195
    .line 196
    .line 197
    :cond_6
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v5, v4}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    const/4 v6, 0x1

    .line 204
    if-eqz v5, :cond_a

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    move-object v7, v5

    .line 213
    goto :goto_1

    .line 214
    :cond_7
    move-object v7, v2

    .line 215
    :goto_1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getDownloadContentId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v8

    .line 219
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 220
    .line 221
    if-eqz v5, :cond_8

    .line 222
    .line 223
    move v9, v6

    .line 224
    goto :goto_2

    .line 225
    :cond_8
    move v9, v0

    .line 226
    :goto_2
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getOnlineFirstFrameRendered()Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    iget-boolean v11, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 231
    .line 232
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 233
    .line 234
    if-eqz v5, :cond_9

    .line 235
    .line 236
    invoke-interface {v5}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-ne v5, v6, :cond_9

    .line 241
    .line 242
    move v12, v6

    .line 243
    goto :goto_3

    .line 244
    :cond_9
    move v12, v0

    .line 245
    :goto_3
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getComposePlaybackError()Z

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    invoke-static/range {v7 .. v13}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerControllerKt;->shouldAdoptLateCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZZZZZ)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_a

    .line 254
    .line 255
    move v5, v6

    .line 256
    goto :goto_4

    .line 257
    :cond_a
    move v5, v0

    .line 258
    :goto_4
    iget-object v7, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v7, v4}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v7

    .line 264
    if-eqz v7, :cond_10

    .line 265
    .line 266
    if-nez v5, :cond_10

    .line 267
    .line 268
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 269
    .line 270
    if-nez v5, :cond_b

    .line 271
    .line 272
    iget-boolean v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 273
    .line 274
    if-nez v5, :cond_b

    .line 275
    .line 276
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 277
    .line 278
    if-eqz v5, :cond_10

    .line 279
    .line 280
    invoke-interface {v5}, Lcom/jp/bootstrap/internal/ezoyvkgk;->syiqloeyp()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-ne v5, v6, :cond_10

    .line 285
    .line 286
    :cond_b
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 287
    .line 288
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshHasNextFromEpisodes()V

    .line 289
    .line 290
    .line 291
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 292
    .line 293
    .line 294
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->lifecycleActive:Z

    .line 295
    .line 296
    if-eqz v1, :cond_f

    .line 297
    .line 298
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->overlayObscured:Z

    .line 299
    .line 300
    if-nez v1, :cond_f

    .line 301
    .line 302
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 303
    .line 304
    if-nez v1, :cond_f

    .line 305
    .line 306
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 307
    .line 308
    if-eqz v1, :cond_f

    .line 309
    .line 310
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity;->hasActiveCastDevice$shell_runtime()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_f

    .line 317
    .line 318
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getAutoplay()Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_d

    .line 323
    .line 324
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldResume:Z

    .line 325
    .line 326
    if-eqz v1, :cond_d

    .line 327
    .line 328
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 329
    .line 330
    if-eqz p1, :cond_c

    .line 331
    .line 332
    check-cast p1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 333
    .line 334
    invoke-virtual {p1, v6}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 335
    .line 336
    .line 337
    :cond_c
    invoke-direct {p0, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_d
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getAutoplay()Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-nez p1, :cond_f

    .line 346
    .line 347
    iget-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 348
    .line 349
    if-eqz p1, :cond_e

    .line 350
    .line 351
    check-cast p1, Lcom/jp/bootstrap/internal/xmpxuyqu;

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/xmpxuyqu;->sjeyvwgjn(Z)V

    .line 354
    .line 355
    .line 356
    :cond_e
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlayWhenReady(Z)V

    .line 357
    .line 358
    .line 359
    :cond_f
    return-void

    .line 360
    :cond_10
    iget-object v5, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v5, v4}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    if-nez v5, :cond_11

    .line 367
    .line 368
    const-wide/16 v7, 0x0

    .line 369
    .line 370
    iput-wide v7, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->furthestPositionMs:J

    .line 371
    .line 372
    iput-object v2, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->skipOutroConsumedKey:Ljava/lang/String;

    .line 373
    .line 374
    const-wide v7, 0x7fffffffffffffffL

    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    invoke-direct {p0, v7, v8}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeRemainingMs(J)V

    .line 380
    .line 381
    .line 382
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackState(I)V

    .line 383
    .line 384
    .line 385
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 386
    .line 387
    if-eqz v1, :cond_11

    .line 388
    .line 389
    check-cast v1, Lcom/jp/bootstrap/internal/mctadfgh;

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/mctadfgh;->yndsdvj()V

    .line 392
    .line 393
    .line 394
    :cond_11
    iput-object v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->selectionKey:Ljava/lang/String;

    .line 395
    .line 396
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 397
    .line 398
    if-eqz v1, :cond_12

    .line 399
    .line 400
    invoke-interface {v1, v2}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 401
    .line 402
    .line 403
    :cond_12
    iget-wide v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 404
    .line 405
    const-wide/16 v7, 0x1

    .line 406
    .line 407
    add-long/2addr v4, v7

    .line 408
    iput-wide v4, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveGeneration:J

    .line 409
    .line 410
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->player:Landroidx/media3/exoplayer/ExoPlayer;

    .line 411
    .line 412
    if-eqz v1, :cond_13

    .line 413
    .line 414
    move v0, v6

    .line 415
    :cond_13
    iget-boolean v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->offlineMode:Z

    .line 416
    .line 417
    if-eqz v3, :cond_14

    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 420
    .line 421
    .line 422
    move-result-wide v6

    .line 423
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    :cond_14
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 428
    .line 429
    .line 430
    move-result-wide v6

    .line 431
    invoke-static {v0, v1, v2, v6, v7}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->shouldReuseEmbeddedPlayerForMediaSwap(ZZLjava/lang/Long;J)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_15

    .line 436
    .line 437
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->releasePlayer()V

    .line 438
    .line 439
    .line 440
    :cond_15
    iput-object p1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->request:Lcom/jp/runtime/shell/PlaybackRequest;

    .line 441
    .line 442
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshHasNextFromEpisodes()V

    .line 443
    .line 444
    .line 445
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->refreshDownloadLabel()V

    .line 446
    .line 447
    .line 448
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 449
    .line 450
    iget-object v1, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->composeDownloadTrackingContentId:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v0, v1}, Lcom/jp/runtime/shell/ShellActivity;->queryDownloadSnapshot$shell_runtime(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    if-eqz v3, :cond_16

    .line 456
    .line 457
    invoke-static {v3, p1}, Lcom/jp/runtime/shell/CastPlaybackFollowKt;->playbackIdentityChanged(Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/PlaybackRequest;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_16

    .line 462
    .line 463
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->activity:Lcom/jp/runtime/shell/ShellActivity;

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity;->syncActiveCastPlayback$shell_runtime()V

    .line 466
    .line 467
    .line 468
    :cond_16
    invoke-direct {p0, p1, v4, v5}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resolveAndStart(Lcom/jp/runtime/shell/PlaybackRequest;J)V

    .line 469
    .line 470
    .line 471
    return-void
.end method

.method public final updateCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/jp/runtime/shell/FilmPlayerActivityKt;->playerCastUiState(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/runtime/shell/PlayerCastUiState;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPlaybackState()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getPositionMs()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getDurationMs()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->getCastSessionActive()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastUiState(Lcom/jp/runtime/shell/PlayerCastUiState;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getSessionActive()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-direct {p0, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setCastSessionActive(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getSessionActive()Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->pauseLocalForCast()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->host:Landroid/widget/FrameLayout;

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    invoke-virtual {v0, v5}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v5, 0x0

    .line 50
    .line 51
    cmp-long v0, v3, v5

    .line 52
    .line 53
    if-lez v0, :cond_1

    .line 54
    .line 55
    long-to-float v0, v1

    .line 56
    long-to-float v7, v3

    .line 57
    div-float/2addr v0, v7

    .line 58
    const/4 v7, 0x0

    .line 59
    const/high16 v8, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-static {v0, v7, v8}, Lcom/jp/bootstrap/internal/vd;->mhirrjin(FFF)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeProgressFraction(F)V

    .line 66
    .line 67
    .line 68
    sub-long v7, v3, v1

    .line 69
    .line 70
    cmp-long v0, v7, v5

    .line 71
    .line 72
    if-gez v0, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-wide v5, v7

    .line 76
    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposeRemainingMs(J)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerCastUiState;->getEnded()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    const/4 p1, 0x4

    .line 86
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setComposePlaybackState(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchCastPlaybackProgress(JJ)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    invoke-static {v5, v0}, Lcom/jp/runtime/shell/CastPlaybackFollowKt;->shouldResumeLocalAfterCast(ZLjava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    invoke-direct {p0, v1, v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->resumeLocalFromCast(J)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dispatchPlaybackState()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method

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

