.class public final Lcom/jp/runtime/shell/ShellActivity;
.super Lcom/jp/bootstrap/internal/umqafeb;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jp/runtime/shell/ShellActivity$Companion;,
        Lcom/jp/runtime/shell/ShellActivity$PendingCast;,
        Lcom/jp/runtime/shell/ShellActivity$WhenMappings;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final ADULT_POLICY_ENABLED:Ljava/lang/String; = "adult_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADULT_POLICY_PREFS:Ljava/lang/String; = "jp_content_policy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CASTING_STATE_EVENT:Ljava/lang/String; = "castingState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/jp/runtime/shell/ShellActivity$Companion;

.field public static final DOWNLOAD_ACTION_SNAPSHOT:Ljava/lang/String; = "com.jp.download.action.SNAPSHOT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DOWNLOAD_BRIDGE_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNLOAD_EXPORT_EVENT:Ljava/lang/String; = "downloadExportProgress"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOWNLOAD_EXTRA_SNAPSHOT_JSON:Ljava/lang/String; = "jp.download.snapshotJson"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOWNLOAD_PROTOCOL_VERSION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOWNLOAD_SNAPSHOT_EVENT:Ljava/lang/String; = "downloadSnapshot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROCESS_CONTROL_PREFERENCES:Ljava/lang/String; = "jp-runtime-process-control"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RUNTIME_UPDATE_WAKE_POLL_MILLIS:J = 0x1f4L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SKIP_RECOVERY_UUID:Ljava/lang/String; = "skip-recovery-uuid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TASK_STATE_PREFERENCES:Ljava/lang/String; = "jp-task-state-v1"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TASK_STATE_RELEASE:Ljava/lang/String; = "release_set_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TASK_STATE_SAVED_AT:Ljava/lang/String; = "saved_at"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TASK_STATE_URL:Ljava/lang/String; = "runtime_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final cameraPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/bmimwtkmx;"
        }
    .end annotation
.end field

.field private castPlayJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private castingGateway:Lcom/jp/runtime/shell/CastingGateway;

.field private downloadReceiverRegistered:Z

.field private final downloadSnapshotReceiver:Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;

.field private final embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/n1;"
        }
    .end annotation
.end field

.field private exportPollJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private latestDownloadSnapshot:Lcom/jp/bootstrap/internal/cjpbeith;

.field private final notificationPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/bmimwtkmx;"
        }
    .end annotation
.end field

.field private pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

.field private final pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/virpgzwnh;"
        }
    .end annotation
.end field

.field private pendingShortLayout:Lcom/jp/bootstrap/internal/cjpbeith;

.field private pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/iiazsdqcp;"
        }
    .end annotation
.end field

.field private runtimeUpdateWakeJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

.field private final runtimeUpdateWakeView$delegate:Lcom/jp/bootstrap/internal/n1;

.field private final shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/n1;"
        }
    .end annotation
.end field

.field private storagePermissionInFlight:Z

.field private final storagePermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/bmimwtkmx;"
        }
    .end annotation
.end field

.field private final webFilePickerLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/bmimwtkmx;"
        }
    .end annotation
.end field

.field private webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/jp/runtime/shell/ShellActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/shell/ShellActivity$Companion;-><init>(Lcom/jp/bootstrap/internal/hjiaf;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jp/runtime/shell/ShellActivity;->Companion:Lcom/jp/runtime/shell/ShellActivity$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/jp/runtime/shell/ShellActivity;->$stable:I

    .line 12
    .line 13
    const-string v8, "resume_batch"

    .line 14
    .line 15
    const-string v9, "remove"

    .line 16
    .line 17
    const-string v1, "add"

    .line 18
    .line 19
    const-string v2, "add_batch"

    .line 20
    .line 21
    const-string v3, "add_intent_batch"

    .line 22
    .line 23
    const-string v4, "query"

    .line 24
    .line 25
    const-string v5, "pause"

    .line 26
    .line 27
    const-string v6, "pause_batch"

    .line 28
    .line 29
    const-string v7, "resume"

    .line 30
    .line 31
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/jp/runtime/shell/ShellActivity;->DOWNLOAD_BRIDGE_ACTIONS:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/bootstrap/internal/umqafeb;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jp/bootstrap/internal/fgvecflm;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/fgvecflm;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/jp/bootstrap/internal/sb0;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/sb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/umqafeb;->registerForActivityResult(Lcom/jp/bootstrap/internal/dnqvrzby;Lcom/jp/bootstrap/internal/vdsvljaphab;)Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webFilePickerLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 21
    .line 22
    new-instance v0, Lcom/jp/bootstrap/internal/fgvecflm;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/fgvecflm;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/jp/bootstrap/internal/sb0;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/sb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/umqafeb;->registerForActivityResult(Lcom/jp/bootstrap/internal/dnqvrzby;Lcom/jp/bootstrap/internal/vdsvljaphab;)Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->cameraPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 39
    .line 40
    new-instance v0, Lcom/jp/bootstrap/internal/fgvecflm;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/fgvecflm;-><init>(I)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/jp/bootstrap/internal/ab;

    .line 47
    .line 48
    const/16 v2, 0x15

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/jp/bootstrap/internal/ab;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/umqafeb;->registerForActivityResult(Lcom/jp/bootstrap/internal/dnqvrzby;Lcom/jp/bootstrap/internal/vdsvljaphab;)Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->notificationPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 58
    .line 59
    new-instance v0, Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 60
    .line 61
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/virpgzwnh;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 65
    .line 66
    new-instance v0, Lcom/jp/bootstrap/internal/fgvecflm;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/fgvecflm;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/jp/bootstrap/internal/sb0;

    .line 73
    .line 74
    const/4 v2, 0x2

    .line 75
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/sb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/umqafeb;->registerForActivityResult(Lcom/jp/bootstrap/internal/dnqvrzby;Lcom/jp/bootstrap/internal/vdsvljaphab;)Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 83
    .line 84
    new-instance v0, Lcom/jp/bootstrap/internal/tb0;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-direct {v0, p0, v1}, Lcom/jp/bootstrap/internal/tb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Lcom/jp/bootstrap/internal/qk0;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Lcom/jp/bootstrap/internal/qk0;-><init>(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 96
    .line 97
    new-instance v0, Lcom/jp/bootstrap/internal/tb0;

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    invoke-direct {v0, p0, v1}, Lcom/jp/bootstrap/internal/tb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/jp/bootstrap/internal/qk0;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Lcom/jp/bootstrap/internal/qk0;-><init>(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 109
    .line 110
    new-instance v0, Lcom/jp/bootstrap/internal/tb0;

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    invoke-direct {v0, p0, v1}, Lcom/jp/bootstrap/internal/tb0;-><init>(Lcom/jp/runtime/shell/ShellActivity;I)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/jp/bootstrap/internal/qk0;

    .line 117
    .line 118
    invoke-direct {v1, v0}, Lcom/jp/bootstrap/internal/qk0;-><init>(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeView$delegate:Lcom/jp/bootstrap/internal/n1;

    .line 122
    .line 123
    new-instance v0, Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadSnapshotReceiver:Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;

    .line 129
    .line 130
    return-void
.end method

.method public static final synthetic access$attachContainer(Lcom/jp/runtime/shell/ShellActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->attachContainer(Landroid/widget/FrameLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$deliverDownloadSnapshot(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->deliverDownloadSnapshot(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchCastingState(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchDownloadExport(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCastingGateway$p(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/CastingGateway;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDOWNLOAD_BRIDGE_ACTIONS$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/ShellActivity;->DOWNLOAD_BRIDGE_ACTIONS:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getRuntimeUpdateWakeView(Lcom/jp/runtime/shell/ShellActivity;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getWebRuntime$p(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/web/TrustedLocalWebRuntime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$handleBack(Lcom/jp/runtime/shell/ShellActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->handleBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$handleCastingState(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$handleDownloadCommand(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleDownloadCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$handleNativeCommand(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleNativeCommand(Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$requestOptionalDownloadNotificationPermission(Lcom/jp/runtime/shell/ShellActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->requestOptionalDownloadNotificationPermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$requestWebFileSelection(Lcom/jp/runtime/shell/ShellActivity;[Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/ShellActivity;->requestWebFileSelection([Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$startExportPollIfNeeded(Lcom/jp/runtime/shell/ShellActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->startExportPollIfNeeded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final attachAndEmbedFilmPlayer(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    const-string v1, "webRuntime"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->getWebView()Landroid/webkit/WebView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v3, v0, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->embed(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->getWebView()Landroid/webkit/WebView;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/jp/bootstrap/internal/dc;

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    invoke-direct {v1, v2, p1, p0}, Lcom/jp/bootstrap/internal/dc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-static {v1}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2

    .line 64
    :cond_3
    invoke-static {v1}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v2
.end method

.method private static final attachAndEmbedFilmPlayer$lambda$0(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/runtime/shell/ShellActivity;)V
    .locals 3

    .line 1
    invoke-direct {p1}, Lcom/jp/runtime/shell/ShellActivity;->nativeAdultContentEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0, v0}, Lcom/jp/runtime/shell/ShellActivityKt;->adultPlaybackAllowed(Lcom/jp/bootstrap/internal/cjpbeith;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->getWebView()Landroid/webkit/WebView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v2, v0, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    check-cast v1, Landroid/widget/FrameLayout;

    .line 31
    .line 32
    :cond_1
    if-nez v1, :cond_2

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_2
    invoke-direct {p1}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->embed(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const-string p0, "webRuntime"

    .line 51
    .line 52
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method private final attachContainer(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq v0, p1, :cond_2

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 65
    .line 66
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method private static final cameraPermissionLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onCameraPermissionResult(Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "webRuntime"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    return-void
.end method

.method public static synthetic commandEmbeddedCast$shell_runtime$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p8, p7, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p8, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x4

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    and-int/lit8 p8, p7, 0x8

    .line 13
    .line 14
    if-eqz p8, :cond_2

    .line 15
    .line 16
    move-object p4, v0

    .line 17
    :cond_2
    and-int/lit8 p8, p7, 0x10

    .line 18
    .line 19
    if-eqz p8, :cond_3

    .line 20
    .line 21
    move-object p5, v0

    .line 22
    :cond_3
    and-int/lit8 p7, p7, 0x20

    .line 23
    .line 24
    if-eqz p7, :cond_4

    .line 25
    .line 26
    move-object p6, v0

    .line 27
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lcom/jp/runtime/shell/ShellActivity;->commandEmbeddedCast$shell_runtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final currentCastPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->currentPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->toPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    return-object v2
.end method

.method private final currentCastStartPositionMs(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->castStartPositionMs()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    cmp-long v3, v3, v1

    .line 24
    .line 25
    if-lez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide p0

    .line 35
    return-wide p0

    .line 36
    :cond_1
    cmp-long v0, p1, v1

    .line 37
    .line 38
    if-ltz v0, :cond_2

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getStartPositionMs()J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0

    .line 50
    :cond_3
    return-wide v1
.end method

.method public static synthetic currentCastStartPositionMs$default(Lcom/jp/runtime/shell/ShellActivity;JILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, -0x1

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/ShellActivity;->currentCastStartPositionMs(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final deliverDownloadSnapshot(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "protocol"

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/jp/runtime/shell/StreamingMediaRuntime;->INSTANCE:Lcom/jp/runtime/shell/StreamingMediaRuntime;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/jp/runtime/shell/StreamingMediaRuntime;->cacheBytesSnapshot()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "streaming_cache_bytes"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->latestDownloadSnapshot:Lcom/jp/bootstrap/internal/cjpbeith;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 44
    .line 45
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onDownloadSnapshot(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 59
    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    const-string v0, "downloadSnapshot"

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const-string p0, "webRuntime"

    .line 69
    .line 70
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    throw p0
.end method

.method private final dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/jp/runtime/shell/CastDisplayTextKt;->sanitizeCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->updateCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    const-string v0, "castingState"

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private final dispatchDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    const-string v1, "ok"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    const-string v0, "downloadExportProgress"

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final embeddedPlayerDelegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    .locals 3

    .line 1
    new-instance v0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 2
    .line 3
    new-instance v1, Lcom/jp/runtime/shell/ShellActivity$embeddedPlayerDelegate$1$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/jp/runtime/shell/ShellActivity$embeddedPlayerDelegate$1$1;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->latestDownloadSnapshot:Lcom/jp/bootstrap/internal/cjpbeith;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onDownloadSnapshot(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v0

    .line 23
    :cond_1
    const-string p0, "webRuntime"

    .line 24
    .line 25
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method

.method private final enqueueDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/jp/runtime/shell/ShellActivity$enqueueDownloadExport$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/jp/runtime/shell/ShellActivity$enqueueDownloadExport$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    invoke-static {v0, v2, v1, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final exitApplicationTasks()V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/app/ActivityManager;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_1
    if-nez v2, :cond_2

    .line 23
    .line 24
    sget-object v2, Lcom/jp/bootstrap/internal/ynthpuvskul;->sbmzsrkn:Lcom/jp/bootstrap/internal/ynthpuvskul;

    .line 25
    .line 26
    :cond_2
    new-instance v0, Lcom/jp/runtime/shell/ShellActivity$exitApplicationTasks$$inlined$sortedBy$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/jp/runtime/shell/ShellActivity$exitApplicationTasks$$inlined$sortedBy$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v0}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->unnzrwgygxw(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :catchall_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/app/ActivityManager$AppTask;

    .line 50
    .line 51
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .line 63
    .line 64
    :catchall_1
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    .line 73
    .line 74
    :catchall_2
    :cond_5
    return-void
.end method

.method private final flushPendingExportCommands()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->wgnctvg(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/virpgzwnh;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/ShellActivity;->enqueueDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic gbcohonrle(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/ShellActivity;->notificationPermissionLauncher$lambda$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/n1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 8
    .line 9
    return-object p0
.end method

.method private static getEmbeddedPlayer$delegate(Lcom/jp/runtime/shell/ShellActivity;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getRuntimeUpdateWakeView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeView$delegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/n1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/View;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/n1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 8
    .line 9
    return-object p0
.end method

.method private static getShortPlayer$delegate(Lcom/jp/runtime/shell/ShellActivity;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gtnruhk(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/runtime/shell/ShellActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->attachAndEmbedFilmPlayer$lambda$0(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/runtime/shell/ShellActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final handleBack()V
    .locals 3

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


    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->isFullscreen()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->chromeSheetsOpen()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v0, v2}, Lcom/jp/runtime/shell/PlayerChromePolicyKt;->decideEmbeddedPlayerBack(ZZ)Lcom/jp/runtime/shell/EmbeddedPlayerBackDecision;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v2, Lcom/jp/runtime/shell/ShellActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    aget v0, v2, v0

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    if-ne v0, v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/jp/bootstrap/internal/fseadzoqiv;->tsodtn()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->dismissChromeSheets()Z

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->exitFullscreenIfNeeded()Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 68
    .line 69
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->exitFullscreenIfNeeded()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_4
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    const-string v2, "onBackPressed"

    .line 92
    .line 93
    invoke-static {p0, v2, v0, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    const-string p0, "webRuntime"

    .line 98
    .line 99
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method private final handleCacheAdmin(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/jp/runtime/shell/ShellActivityKt;->cacheAdminTarget(Lcom/jp/bootstrap/internal/cjpbeith;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/jp/runtime/shell/ShellActivity$handleCacheAdmin$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lcom/jp/runtime/shell/ShellActivity$handleCacheAdmin$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x3

    .line 16
    invoke-static {v0, v2, v1, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final handleCastCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 13

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "castingGateway"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    sparse-switch v1, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto/16 :goto_6

    .line 19
    .line 20
    :sswitch_0
    const-string v1, "syncMedia"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->rememberPendingCast(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 34
    .line 35
    if-eqz p1, :cond_2a

    .line 36
    .line 37
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/jp/runtime/shell/CastingGateway;->hasSelectedDevice()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2a

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getStartPositionMs()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->toPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/jp/runtime/shell/ShellActivity;->playFreshCastMedia(Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v4

    .line 67
    :sswitch_1
    const-string v1, "selectRoute"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const-string v1, "routeId"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/CastingGateway;->selectRoute(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "accepted"

    .line 95
    .line 96
    invoke-virtual {p1, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2a

    .line 101
    .line 102
    const/4 p1, 0x3

    .line 103
    invoke-static {p0, v4, v4, p1, v4}, Lcom/jp/runtime/shell/ShellActivity;->playFreshCastMedia$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v4

    .line 111
    :sswitch_2
    const-string v1, "play"

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 122
    .line 123
    iget-object v5, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 124
    .line 125
    if-eqz v5, :cond_f

    .line 126
    .line 127
    const-string v1, "url"

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v1, "mimeType"

    .line 134
    .line 135
    const-string v2, ""

    .line 136
    .line 137
    invoke-virtual {p1, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_5

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_5
    move-object v1, v4

    .line 149
    :goto_0
    if-nez v1, :cond_6

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getMimeType()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :cond_6
    move-object v7, v1

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    move-object v7, v4

    .line 160
    :goto_1
    const-string v1, "title"

    .line 161
    .line 162
    invoke-static {p1, v1}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getTitle()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :cond_8
    move-object v8, v1

    .line 175
    goto :goto_2

    .line 176
    :cond_9
    move-object v8, v4

    .line 177
    :goto_2
    const-string v1, "subtitle"

    .line 178
    .line 179
    invoke-static {p1, v1}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-nez v1, :cond_a

    .line 184
    .line 185
    if-eqz v0, :cond_b

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getSubtitle()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :cond_a
    move-object v9, v1

    .line 192
    goto :goto_3

    .line 193
    :cond_b
    move-object v9, v4

    .line 194
    :goto_3
    const-string v1, "artworkUrl"

    .line 195
    .line 196
    invoke-virtual {p1, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_c

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_c
    move-object v1, v4

    .line 208
    :goto_4
    if-nez v1, :cond_e

    .line 209
    .line 210
    if-eqz v0, :cond_d

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getArtworkUrl()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    :cond_d
    move-object v10, v4

    .line 217
    goto :goto_5

    .line 218
    :cond_e
    move-object v10, v1

    .line 219
    :goto_5
    const-string v0, "startPositionMs"

    .line 220
    .line 221
    const-wide/16 v1, -0x1

    .line 222
    .line 223
    invoke-virtual {p1, v1, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v0

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/jp/runtime/shell/ShellActivity;->currentCastStartPositionMs(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    invoke-virtual/range {v5 .. v12}, Lcom/jp/runtime/shell/CastingGateway;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_f
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v4

    .line 243
    :sswitch_3
    const-string v1, "prepareSheet"

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_29

    .line 250
    .line 251
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    sparse-switch v1, :sswitch_data_1

    .line 256
    .line 257
    .line 258
    goto/16 :goto_8

    .line 259
    .line 260
    :sswitch_4
    const-string p1, "showChooser"

    .line 261
    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_10

    .line 267
    .line 268
    goto/16 :goto_8

    .line 269
    .line 270
    :cond_10
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 271
    .line 272
    if-eqz p1, :cond_11

    .line 273
    .line 274
    invoke-virtual {p1, p0}, Lcom/jp/runtime/shell/CastingGateway;->showChooser(Landroid/app/Activity;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    goto/16 :goto_7

    .line 279
    .line 280
    :cond_11
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v4

    .line 284
    :sswitch_5
    const-string p1, "disconnect"

    .line 285
    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    if-nez p1, :cond_12

    .line 291
    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :cond_12
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castPlayJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 295
    .line 296
    if-eqz p1, :cond_13

    .line 297
    .line 298
    invoke-interface {p1, v4}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 299
    .line 300
    .line 301
    :cond_13
    iput-object v4, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 302
    .line 303
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 304
    .line 305
    if-eqz p1, :cond_14

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->disconnect()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    goto/16 :goto_7

    .line 312
    .line 313
    :cond_14
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v4

    .line 317
    :sswitch_6
    const-string p1, "discover"

    .line 318
    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-nez p1, :cond_15

    .line 324
    .line 325
    goto/16 :goto_8

    .line 326
    .line 327
    :cond_15
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 328
    .line 329
    if-eqz p1, :cond_16

    .line 330
    .line 331
    const/4 v0, 0x1

    .line 332
    invoke-static {p1, v2, v0, v4}, Lcom/jp/runtime/shell/CastingGateway;->startDiscovery$default(Lcom/jp/runtime/shell/CastingGateway;ZILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto/16 :goto_7

    .line 337
    .line 338
    :cond_16
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v4

    .line 342
    :sswitch_7
    const-string p1, "state"

    .line 343
    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-nez p1, :cond_17

    .line 349
    .line 350
    goto/16 :goto_8

    .line 351
    .line 352
    :cond_17
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 353
    .line 354
    if-eqz p1, :cond_18

    .line 355
    .line 356
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->state()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    goto/16 :goto_7

    .line 361
    .line 362
    :cond_18
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v4

    .line 366
    :sswitch_8
    const-string p1, "pause"

    .line 367
    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_19

    .line 373
    .line 374
    goto/16 :goto_8

    .line 375
    .line 376
    :cond_19
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 377
    .line 378
    if-eqz p1, :cond_1a

    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->pause()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    goto/16 :goto_7

    .line 385
    .line 386
    :cond_1a
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v4

    .line 390
    :sswitch_9
    const-string v1, "seek"

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_1b

    .line 397
    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :cond_1b
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 401
    .line 402
    if-eqz v0, :cond_1c

    .line 403
    .line 404
    const-string v1, "positionMs"

    .line 405
    .line 406
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 407
    .line 408
    .line 409
    move-result-wide v1

    .line 410
    invoke-virtual {v0, v1, v2}, Lcom/jp/runtime/shell/CastingGateway;->seek(J)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    goto/16 :goto_7

    .line 415
    .line 416
    :cond_1c
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v4

    .line 420
    :sswitch_a
    const-string v1, "mute"

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-nez v0, :cond_1d

    .line 427
    .line 428
    goto/16 :goto_8

    .line 429
    .line 430
    :cond_1d
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 431
    .line 432
    const-string v1, "muted"

    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_1f

    .line 439
    .line 440
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-nez v0, :cond_1f

    .line 445
    .line 446
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 447
    .line 448
    if-eqz v0, :cond_1e

    .line 449
    .line 450
    invoke-virtual {p1, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/CastingGateway;->setMute(Z)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    goto/16 :goto_7

    .line 459
    .line 460
    :cond_1e
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw v4

    .line 464
    :cond_1f
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 465
    .line 466
    if-eqz p1, :cond_20

    .line 467
    .line 468
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->toggleMute()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    goto :goto_7

    .line 473
    :cond_20
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw v4

    .line 477
    :sswitch_b
    const-string v1, "volume"

    .line 478
    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-nez v0, :cond_21

    .line 484
    .line 485
    goto/16 :goto_8

    .line 486
    .line 487
    :cond_21
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 488
    .line 489
    if-eqz v0, :cond_22

    .line 490
    .line 491
    const/16 v2, 0x32

    .line 492
    .line 493
    invoke-virtual {p1, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/CastingGateway;->setVolume(I)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    goto :goto_7

    .line 502
    :cond_22
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v4

    .line 506
    :sswitch_c
    const-string p1, "resume"

    .line 507
    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    if-nez p1, :cond_23

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :cond_23
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 516
    .line 517
    if-eqz p1, :cond_24

    .line 518
    .line 519
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->resume()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    goto :goto_7

    .line 524
    :cond_24
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    throw v4

    .line 528
    :sswitch_d
    const-string v1, "volumeBy"

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    if-nez v0, :cond_25

    .line 535
    .line 536
    goto :goto_8

    .line 537
    :cond_25
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 538
    .line 539
    if-eqz v0, :cond_26

    .line 540
    .line 541
    const-string v1, "volumeDelta"

    .line 542
    .line 543
    invoke-virtual {p1, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result p1

    .line 547
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/CastingGateway;->changeVolume(I)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    goto :goto_7

    .line 552
    :cond_26
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    throw v4

    .line 556
    :sswitch_e
    const-string p1, "stopDiscovery"

    .line 557
    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    move-result p1

    .line 562
    if-nez p1, :cond_27

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_27
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 566
    .line 567
    if-eqz p1, :cond_28

    .line 568
    .line 569
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->stopDiscovery()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    :goto_7
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :cond_28
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw v4

    .line 581
    :cond_29
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->rememberPendingCast(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 582
    .line 583
    .line 584
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 585
    .line 586
    if-eqz p1, :cond_2b

    .line 587
    .line 588
    invoke-virtual {p1}, Lcom/jp/runtime/shell/CastingGateway;->prepareSheet()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 589
    .line 590
    .line 591
    move-result-object p1

    .line 592
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 593
    .line 594
    .line 595
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 596
    .line 597
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    if-eqz p1, :cond_2a

    .line 602
    .line 603
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->openCastOverlay()V

    .line 608
    .line 609
    .line 610
    :cond_2a
    :goto_8
    return-void

    .line 611
    :cond_2b
    invoke-static {v3}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    throw v4

    .line 615
    :sswitch_data_0
    .sparse-switch
        -0x79919368 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0xc1e4aad -> :sswitch_1
        0x1c75ce09 -> :sswitch_0
    .end sparse-switch

    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :sswitch_data_1
    .sparse-switch
        -0x7f218032 -> :sswitch_e
        -0x6f726eef -> :sswitch_d
        -0x37b237d3 -> :sswitch_c
        -0x305518e6 -> :sswitch_b
        0x335219 -> :sswitch_a
        0x35ce78 -> :sswitch_9
        0x65825f6 -> :sswitch_8
        0x68ac491 -> :sswitch_7
        0x104877e9 -> :sswitch_6
        0x1f9d589c -> :sswitch_5
        0x43f4237e -> :sswitch_4
    .end sparse-switch
.end method

.method private final handleCastOpen(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->rememberPendingCast(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "systemChooser"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "castingGateway"

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/jp/runtime/shell/CastingGateway;->showChooser(Landroid/app/Activity;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v1

    .line 29
    :cond_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/jp/runtime/shell/CastingGateway;->prepareSheet()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 36
    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->openCastOverlay()V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    :cond_3
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method private final handleCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchCastingState(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final handleDownloadCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 8

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v2, Lcom/jp/runtime/shell/ShellActivity;->DOWNLOAD_BRIDGE_ACTIONS:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v2, "query"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    const-string v2, "contentId"

    .line 28
    .line 29
    invoke-virtual {p1, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object v2, v3

    .line 41
    :goto_0
    const/4 v4, 0x1

    .line 42
    const-string v5, "limit"

    .line 43
    .line 44
    invoke-virtual {p1, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v6, "prefix"

    .line 49
    .line 50
    invoke-virtual {p1, v6, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move-object v6, v3

    .line 62
    :goto_1
    const-string v7, "rollup"

    .line 63
    .line 64
    invoke-virtual {p1, v7, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v7, "work"

    .line 69
    .line 70
    invoke-static {v1, v7}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-static {v2, v4, v6, v1}, Lcom/jp/runtime/shell/ShellActivityKt;->effectiveDownloadQueryLimit(Ljava/lang/String;ILjava/lang/String;Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-instance v2, Lcom/jp/runtime/shell/ShellActivity$handleDownloadCommand$2;

    .line 90
    .line 91
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/jp/runtime/shell/ShellActivity$handleDownloadCommand$2;-><init>(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x3

    .line 95
    invoke-static {v1, v3, v2, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final handleDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/jp/runtime/shell/GalleryWritePermission;->INSTANCE:Lcom/jp/runtime/shell/GalleryWritePermission;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p0, v1, v2, v3}, Lcom/jp/runtime/shell/GalleryWritePermission;->isGranted$default(Lcom/jp/runtime/shell/GalleryWritePermission;Landroid/content/Context;IILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->enqueueDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v4, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 17
    .line 18
    new-instance v5, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v5, p1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lcom/jp/bootstrap/internal/virpgzwnh;->addLast(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionInFlight:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-static {v0, p0, v1, v2, v3}, Lcom/jp/runtime/shell/GalleryWritePermission;->missing$default(Lcom/jp/runtime/shell/GalleryWritePermission;Landroid/content/Context;IILjava/lang/Object;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    array-length v0, p1

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->flushPendingExportCommands()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionInFlight:Z

    .line 48
    .line 49
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/bmimwtkmx;->syiqloeyp(Ljava/io/Serializable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private final handleDownloadSettings(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 4

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    const-string v1, "get"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/jp/runtime/shell/ShellActivity$handleDownloadSettings$1;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-direct {v2, p0, v0, p1, v3}, Lcom/jp/runtime/shell/ShellActivity$handleDownloadSettings$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x3

    .line 20
    invoke-static {v1, v3, v2, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final handleNativeCommand(Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 9

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


    .line 1
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getMethod()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "adult.policy"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "enabled"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string v0, "jp_content_policy"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "adult_enabled"

    .line 35
    .line 36
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .line 42
    .line 43
    if-nez p1, :cond_28

    .line 44
    .line 45
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_28

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->close()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getMethod()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "shorts.open"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-string v2, "webRuntime"

    .line 72
    .line 73
    const-wide/16 v3, 0x0

    .line 74
    .line 75
    const-string v5, "workId"

    .line 76
    .line 77
    const-string v6, ""

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    if-eqz v0, :cond_b

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    new-instance v8, Lcom/jp/bootstrap/internal/k9;

    .line 91
    .line 92
    invoke-direct {v8}, Lcom/jp/bootstrap/internal/k9;-><init>()V

    .line 93
    .line 94
    .line 95
    cmp-long v3, v0, v3

    .line 96
    .line 97
    if-lez v3, :cond_1

    .line 98
    .line 99
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v8, v5, v0}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v1, "channel"

    .line 111
    .line 112
    invoke-virtual {v0, v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v3, "comic"

    .line 117
    .line 118
    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    const-string v3, "live_action"

    .line 125
    .line 126
    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move-object v0, v7

    .line 134
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {v8, v1, v0}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    .line 142
    :cond_4
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "category"

    .line 147
    .line 148
    invoke-virtual {v0, v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    const-string v3, "^[a-z][a-z0-9_-]{1,62}$"

    .line 156
    .line 157
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_5

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    move-object v0, v7

    .line 176
    :goto_1
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-virtual {v8, v1, v0}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/String;

    .line 183
    .line 184
    :cond_6
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    const-string v0, "sort"

    .line 189
    .line 190
    invoke-virtual {p1, v0, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    const-string v1, "recommended"

    .line 195
    .line 196
    invoke-static {p1, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_8

    .line 201
    .line 202
    const-string v1, "latest"

    .line 203
    .line 204
    invoke-static {p1, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_8

    .line 209
    .line 210
    const-string v1, "popular"

    .line 211
    .line 212
    invoke-static {p1, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_7

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_7
    move-object p1, v7

    .line 220
    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    .line 221
    .line 222
    invoke-virtual {v8, v0, p1}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/k9;->jzphcv()Lcom/jp/bootstrap/internal/k9;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 230
    .line 231
    if-eqz p0, :cond_a

    .line 232
    .line 233
    sget-object v0, Lcom/jp/runtime/web/WebRoute;->SHORTS:Lcom/jp/runtime/web/WebRoute;

    .line 234
    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->show(Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_a
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v7

    .line 243
    :cond_b
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getMethod()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    sparse-switch v8, :sswitch_data_0

    .line 252
    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :sswitch_0
    const-string v2, "player.layout"

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_c

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :cond_c
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 267
    .line 268
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_28

    .line 273
    .line 274
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->layout(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 283
    .line 284
    .line 285
    return-void

    .line 286
    :sswitch_1
    const-string v2, "downloads.command"

    .line 287
    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_d

    .line 293
    .line 294
    goto/16 :goto_3

    .line 295
    .line 296
    :cond_d
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v1, "action"

    .line 301
    .line 302
    invoke-virtual {v0, v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    const-string v1, "export"

    .line 307
    .line 308
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_e

    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_e
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleDownloadCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :sswitch_2
    const-string v8, "shorts.warm"

    .line 331
    .line 332
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-nez v0, :cond_f

    .line 337
    .line 338
    goto/16 :goto_3

    .line 339
    .line 340
    :cond_f
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 341
    .line 342
    if-eqz v0, :cond_12

    .line 343
    .line 344
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->getWebView()Landroid/webkit/WebView;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 353
    .line 354
    if-eqz v1, :cond_10

    .line 355
    .line 356
    move-object v7, v0

    .line 357
    check-cast v7, Landroid/widget/FrameLayout;

    .line 358
    .line 359
    :cond_10
    if-nez v7, :cond_11

    .line 360
    .line 361
    goto/16 :goto_4

    .line 362
    .line 363
    :cond_11
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0, v7}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->warm(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :cond_12
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw v7

    .line 386
    :sswitch_3
    const-string v2, "app.openSettings"

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_13

    .line 393
    .line 394
    goto/16 :goto_3

    .line 395
    .line 396
    :cond_13
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->openApplicationSettings()V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :sswitch_4
    const-string v2, "app.exit"

    .line 401
    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-nez v0, :cond_14

    .line 407
    .line 408
    goto/16 :goto_3

    .line 409
    .line 410
    :cond_14
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->exitApplicationTasks()V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :sswitch_5
    const-string v2, "cast.open"

    .line 415
    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-nez v0, :cond_15

    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_15
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleCastOpen(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 429
    .line 430
    .line 431
    return-void

    .line 432
    :sswitch_6
    const-string v2, "cast.command"

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_16

    .line 439
    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :cond_16
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleCastCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :sswitch_7
    const-string v2, "shorts.command"

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-nez v0, :cond_17

    .line 457
    .line 458
    goto/16 :goto_3

    .line 459
    .line 460
    :cond_17
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 461
    .line 462
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_28

    .line 467
    .line 468
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->command(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :sswitch_8
    const-string v2, "shorts.visibility"

    .line 481
    .line 482
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_18

    .line 487
    .line 488
    goto/16 :goto_3

    .line 489
    .line 490
    :cond_18
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 491
    .line 492
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-eqz v0, :cond_28

    .line 497
    .line 498
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    const-string v0, "visible"

    .line 507
    .line 508
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 509
    .line 510
    .line 511
    move-result p1

    .line 512
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->setVisible(Z)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :sswitch_9
    const-string v8, "shorts.prepare"

    .line 517
    .line 518
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-nez v0, :cond_19

    .line 523
    .line 524
    goto/16 :goto_3

    .line 525
    .line 526
    :cond_19
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 527
    .line 528
    if-eqz v0, :cond_1c

    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->getWebView()Landroid/webkit/WebView;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    instance-of v1, v0, Landroid/widget/FrameLayout;

    .line 539
    .line 540
    if-eqz v1, :cond_1a

    .line 541
    .line 542
    move-object v7, v0

    .line 543
    check-cast v7, Landroid/widget/FrameLayout;

    .line 544
    .line 545
    :cond_1a
    if-nez v7, :cond_1b

    .line 546
    .line 547
    goto/16 :goto_4

    .line 548
    .line 549
    :cond_1b
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    invoke-virtual {v0, v7}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->attachTo(Landroid/widget/FrameLayout;)V

    .line 554
    .line 555
    .line 556
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-virtual {v0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->prepare(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 565
    .line 566
    .line 567
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingShortLayout:Lcom/jp/bootstrap/internal/cjpbeith;

    .line 568
    .line 569
    if-eqz p1, :cond_28

    .line 570
    .line 571
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->layout(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :cond_1c
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v7

    .line 583
    :sswitch_a
    const-string v2, "cache.admin"

    .line 584
    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v0

    .line 589
    if-nez v0, :cond_1d

    .line 590
    .line 591
    goto/16 :goto_3

    .line 592
    .line 593
    :cond_1d
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleCacheAdmin(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :sswitch_b
    const-string v2, "downloads.settings"

    .line 602
    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-nez v0, :cond_1e

    .line 608
    .line 609
    goto/16 :goto_3

    .line 610
    .line 611
    :cond_1e
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->handleDownloadSettings(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :sswitch_c
    const-string v2, "shorts.layout"

    .line 620
    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-nez v0, :cond_1f

    .line 626
    .line 627
    goto/16 :goto_3

    .line 628
    .line 629
    :cond_1f
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 630
    .line 631
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingShortLayout:Lcom/jp/bootstrap/internal/cjpbeith;

    .line 643
    .line 644
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 645
    .line 646
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    if-eqz v0, :cond_28

    .line 651
    .line 652
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 653
    .line 654
    .line 655
    move-result-object p0

    .line 656
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 657
    .line 658
    .line 659
    move-result-object p1

    .line 660
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->layout(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 661
    .line 662
    .line 663
    return-void

    .line 664
    :sswitch_d
    const-string v2, "player.embed"

    .line 665
    .line 666
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v0

    .line 670
    if-nez v0, :cond_20

    .line 671
    .line 672
    goto/16 :goto_3

    .line 673
    .line 674
    :cond_20
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->nativeAdultContentEnabled()Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    invoke-static {v0, v1}, Lcom/jp/runtime/shell/ShellActivityKt;->adultPlaybackAllowed(Lcom/jp/bootstrap/internal/cjpbeith;Z)Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-nez v0, :cond_21

    .line 687
    .line 688
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 689
    .line 690
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-eqz p1, :cond_28

    .line 695
    .line 696
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 697
    .line 698
    .line 699
    move-result-object p0

    .line 700
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->close()V

    .line 701
    .line 702
    .line 703
    return-void

    .line 704
    :cond_21
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 705
    .line 706
    .line 707
    move-result-object p1

    .line 708
    invoke-direct {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->attachAndEmbedFilmPlayer(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 709
    .line 710
    .line 711
    return-void

    .line 712
    :sswitch_e
    const-string v2, "player.close"

    .line 713
    .line 714
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v0

    .line 718
    if-nez v0, :cond_22

    .line 719
    .line 720
    goto/16 :goto_3

    .line 721
    .line 722
    :cond_22
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 723
    .line 724
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 725
    .line 726
    .line 727
    move-result p1

    .line 728
    if-eqz p1, :cond_28

    .line 729
    .line 730
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->close()V

    .line 735
    .line 736
    .line 737
    return-void

    .line 738
    :sswitch_f
    const-string v2, "player.overlay"

    .line 739
    .line 740
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-nez v0, :cond_23

    .line 745
    .line 746
    goto/16 :goto_3

    .line 747
    .line 748
    :cond_23
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 749
    .line 750
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 751
    .line 752
    .line 753
    move-result v0

    .line 754
    if-eqz v0, :cond_28

    .line 755
    .line 756
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 757
    .line 758
    .line 759
    move-result-object p0

    .line 760
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    const-string v0, "obscured"

    .line 765
    .line 766
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 767
    .line 768
    .line 769
    move-result p1

    .line 770
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setObscured(Z)V

    .line 771
    .line 772
    .line 773
    return-void

    .line 774
    :sswitch_10
    const-string v2, "player.update"

    .line 775
    .line 776
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-nez v0, :cond_24

    .line 781
    .line 782
    goto :goto_3

    .line 783
    :cond_24
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->nativeAdultContentEnabled()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    invoke-static {v0, v1}, Lcom/jp/runtime/shell/ShellActivityKt;->adultPlaybackAllowed(Lcom/jp/bootstrap/internal/cjpbeith;Z)Z

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    if-nez v0, :cond_25

    .line 796
    .line 797
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 798
    .line 799
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    if-eqz p1, :cond_28

    .line 804
    .line 805
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    invoke-virtual {p0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->close()V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :cond_25
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 814
    .line 815
    .line 816
    move-result-object p0

    .line 817
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    invoke-virtual {p0, p1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->update(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 822
    .line 823
    .line 824
    return-void

    .line 825
    :sswitch_11
    const-string v2, "update.check"

    .line 826
    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    if-nez v0, :cond_26

    .line 832
    .line 833
    goto :goto_3

    .line 834
    :cond_26
    new-instance p1, Landroid/content/Intent;

    .line 835
    .line 836
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 837
    .line 838
    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    const-string v1, "com.jp.bootstrap.RuntimeUpdateReceiver"

    .line 844
    .line 845
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    .line 847
    .line 848
    move-result-object p1

    .line 849
    const-string v0, "com.jp.runtime.action.CHECK_UPDATE"

    .line 850
    .line 851
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    .line 853
    .line 854
    move-result-object p1

    .line 855
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 856
    .line 857
    .line 858
    return-void

    .line 859
    :sswitch_12
    const-string v2, "update.apply"

    .line 860
    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v0

    .line 865
    if-nez v0, :cond_2b

    .line 866
    .line 867
    :goto_3
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getMethod()Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const-string v2, "player.open"

    .line 872
    .line 873
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    if-nez v0, :cond_27

    .line 878
    .line 879
    goto :goto_4

    .line 880
    :cond_27
    invoke-virtual {p1}, Lcom/jp/runtime/web/NativeWebCommand;->getParams()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->nativeAdultContentEnabled()Z

    .line 885
    .line 886
    .line 887
    move-result v0

    .line 888
    invoke-static {p1, v0}, Lcom/jp/runtime/shell/ShellActivityKt;->adultPlaybackAllowed(Lcom/jp/bootstrap/internal/cjpbeith;Z)Z

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-nez v0, :cond_29

    .line 893
    .line 894
    :cond_28
    :goto_4
    return-void

    .line 895
    :cond_29
    new-instance v0, Landroid/content/Intent;

    .line 896
    .line 897
    const-class v2, Lcom/jp/runtime/shell/FilmPlayerActivity;

    .line 898
    .line 899
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {p1, v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 903
    .line 904
    .line 905
    move-result-wide v7

    .line 906
    invoke-virtual {v0, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    const-string v2, "episodeKey"

    .line 911
    .line 912
    invoke-virtual {p1, v2, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v5

    .line 916
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    const/4 v2, -0x1

    .line 921
    const-string v5, "episodeIndex"

    .line 922
    .line 923
    invoke-virtual {p1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    const-string v2, "lineKey"

    .line 932
    .line 933
    invoke-virtual {p1, v2, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v5

    .line 937
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    const-string v2, "title"

    .line 942
    .line 943
    invoke-static {p1, v2}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    if-nez v5, :cond_2a

    .line 948
    .line 949
    const-string v5, "\u6b63\u5728\u64ad\u653e"

    .line 950
    .line 951
    :cond_2a
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    const-string v2, "poster"

    .line 956
    .line 957
    invoke-virtual {p1, v2, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v5

    .line 961
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    const-string v2, "startSeconds"

    .line 966
    .line 967
    invoke-virtual {p1, v3, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 968
    .line 969
    .line 970
    move-result-wide v3

    .line 971
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    const-string v2, "portrait"

    .line 976
    .line 977
    invoke-virtual {p1, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 978
    .line 979
    .line 980
    move-result p1

    .line 981
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 982
    .line 983
    .line 984
    move-result-object p1

    .line 985
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 986
    .line 987
    .line 988
    return-void

    .line 989
    :cond_2b
    :try_start_0
    const-string p1, "jp-runtime-process-control"

    .line 990
    .line 991
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 992
    .line 993
    .line 994
    move-result-object p1

    .line 995
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 996
    .line 997
    .line 998
    move-result-object p1

    .line 999
    const-string v0, "skip-recovery-uuid"

    .line 1000
    .line 1001
    const-string v1, "apply-restart"

    .line 1002
    .line 1003
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1004
    .line 1005
    .line 1006
    move-result-object p1

    .line 1007
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    .line 1009
    .line 1010
    :catchall_0
    new-instance p1, Landroid/content/Intent;

    .line 1011
    .line 1012
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    const-string v1, "com.jp.bootstrap.MainActivity"

    .line 1020
    .line 1021
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    .line 1023
    .line 1024
    move-result-object p1

    .line 1025
    const v0, 0x10018000

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1029
    .line 1030
    .line 1031
    move-result-object p1

    .line 1032
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1036
    .line 1037
    .line 1038
    move-result-object p0

    .line 1039
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1040
    .line 1041
    .line 1042
    move-result-object p0

    .line 1043
    new-instance p1, Lcom/jp/bootstrap/internal/iqhsboxnu;

    .line 1044
    .line 1045
    const/4 v0, 0x5

    .line 1046
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/iqhsboxnu;-><init>(I)V

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1050
    .line 1051
    .line 1052
    return-void

    .line 1053
    :sswitch_data_0
    .sparse-switch
        -0x783ad1f7 -> :sswitch_12
        -0x7822705d -> :sswitch_11
        -0x75b88b8a -> :sswitch_10
        -0x746b81bd -> :sswitch_f
        -0x4f1e0755 -> :sswitch_e
        -0x4f019674 -> :sswitch_d
        -0x4ab7ee7f -> :sswitch_c
        -0x4773c23a -> :sswitch_b
        -0x1eef8a1d -> :sswitch_a
        -0x1cc43e70 -> :sswitch_9
        0x277275e9 -> :sswitch_8
        0x2edb93d4 -> :sswitch_7
        0x3376bb9c -> :sswitch_6
        0x3ee41399 -> :sswitch_5
        0x42e2a4cb -> :sswitch_4
        0x5eaa4b3a -> :sswitch_3
        0x6bd4529c -> :sswitch_2
        0x6d641d48 -> :sswitch_1
        0x7a2236d7 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final handleNativeCommand$lambda$2()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic hqaldusn(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedShortPlayerController;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic mhirrjin(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/pvyfbfzy;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Lcom/jp/bootstrap/internal/k9;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/jp/runtime/shell/ShellActivity;->onCreate$lambda$4(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/pvyfbfzy;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final nativeAdultContentEnabled()Z
    .locals 2

    .line 1
    const-string v0, "jp_content_policy"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "adult_enabled"

    .line 9
    .line 10
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static final notificationPermissionLauncher$lambda$0(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic nvbyrnefqdi(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final onCreate$lambda$4(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/pvyfbfzy;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;Lcom/jp/bootstrap/internal/tjht;I)Lcom/jp/bootstrap/internal/bt0;
    .locals 10

    .line 1
    and-int/lit8 v0, p6, 0x3

    .line 2
    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/lit8 v2, p6, 0x1

    .line 11
    .line 12
    move-object v8, p5

    .line 13
    check-cast v8, Lcom/jp/bootstrap/internal/pawugmt;

    .line 14
    .line 15
    invoke-virtual {v8, v2, v0}, Lcom/jp/bootstrap/internal/pawugmt;->tscplbdu(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    iget-object v6, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 22
    .line 23
    if-eqz v6, :cond_7

    .line 24
    .line 25
    invoke-virtual {v8, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v8, p2}, Lcom/jp/bootstrap/internal/pawugmt;->uaakwbmitdl(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    or-int/2addr v0, v3

    .line 34
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v8, v3}, Lcom/jp/bootstrap/internal/pawugmt;->cauva(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    or-int/2addr v0, v3

    .line 43
    invoke-virtual {v8, p4}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    or-int/2addr v0, v3

    .line 48
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v7, Lcom/jp/bootstrap/internal/aeeo;->syiqloeyp:Lcom/jp/bootstrap/internal/bawnozqr;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    if-ne v3, v7, :cond_2

    .line 57
    .line 58
    :cond_1
    new-instance v0, Lcom/jp/bootstrap/internal/wgksivx;

    .line 59
    .line 60
    const/4 v5, 0x4

    .line 61
    move-object v1, p0

    .line 62
    move-object v2, p2

    .line 63
    move-object v3, p3

    .line 64
    move-object v4, p4

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/jp/bootstrap/internal/wgksivx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8, v0}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object v3, v0

    .line 72
    :cond_2
    move-object v5, v3

    .line 73
    check-cast v5, Lcom/jp/bootstrap/internal/mbwlg;

    .line 74
    .line 75
    invoke-virtual {v8, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    if-ne v2, v7, :cond_4

    .line 86
    .line 87
    :cond_3
    new-instance v2, Lcom/jp/runtime/shell/ShellActivity$onCreate$6$2$1;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/jp/runtime/shell/ShellActivity$onCreate$6$2$1;-><init>(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v2}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    check-cast v2, Lcom/jp/bootstrap/internal/c;

    .line 96
    .line 97
    check-cast v2, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 98
    .line 99
    invoke-virtual {v8, p0}, Lcom/jp/bootstrap/internal/pawugmt;->yndsdvj(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/pawugmt;->pcqerka()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-nez v0, :cond_5

    .line 108
    .line 109
    if-ne v3, v7, :cond_6

    .line 110
    .line 111
    :cond_5
    new-instance v3, Lcom/jp/runtime/shell/ShellActivity$onCreate$6$3$1;

    .line 112
    .line 113
    invoke-direct {v3, p0}, Lcom/jp/runtime/shell/ShellActivity$onCreate$6$3$1;-><init>(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v3}, Lcom/jp/bootstrap/internal/pawugmt;->taplwdejpie(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_6
    check-cast v3, Lcom/jp/bootstrap/internal/c;

    .line 120
    .line 121
    move-object v7, v3

    .line 122
    check-cast v7, Lcom/jp/bootstrap/internal/mbwlg;

    .line 123
    .line 124
    const/4 v9, 0x0

    .line 125
    move-object v4, p1

    .line 126
    move-object v3, v6

    .line 127
    move-object v6, v2

    .line 128
    invoke-static/range {v3 .. v9}, Lcom/jp/runtime/shell/ShellActivityKt;->access$AppShell(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/pvyfbfzy;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/mbwlg;Lcom/jp/bootstrap/internal/tjht;I)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_7
    const-string v0, "webRuntime"

    .line 133
    .line 134
    invoke-static {v0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    throw v0

    .line 139
    :cond_8
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/pawugmt;->gbursjlv()V

    .line 140
    .line 141
    .line 142
    :goto_1
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 143
    .line 144
    return-object v0
.end method

.method private static final onCreate$lambda$4$0$0(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "webRuntime"

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->restoreAppUrl(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p2, p3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->show(Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    invoke-static {v2}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method private final onGalleryWritePermissionResult()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionInFlight:Z

    .line 3
    .line 4
    sget-object v1, Lcom/jp/runtime/shell/GalleryWritePermission;->INSTANCE:Lcom/jp/runtime/shell/GalleryWritePermission;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v1, p0, v0, v2, v3}, Lcom/jp/runtime/shell/GalleryWritePermission;->isGranted$default(Lcom/jp/runtime/shell/GalleryWritePermission;Landroid/content/Context;IILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->flushPendingExportCommands()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingExportCommands:Lcom/jp/bootstrap/internal/virpgzwnh;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/virpgzwnh;->clear()V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "event"

    .line 29
    .line 30
    const-string v3, "export"

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "state"

    .line 36
    .line 37
    const-string v3, "permission_denied"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v2, "error"

    .line 43
    .line 44
    const-string v3, "storage_permission_denied"

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v2, "needs_settings"

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string v2, "ok"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v1}, Lcom/jp/runtime/shell/ShellActivity;->dispatchDownloadExport(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private final openApplicationSettings()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const-string v3, "package"

    .line 14
    .line 15
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :catchall_0
    return-void
.end method

.method private final pauseForegroundPlayback()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onPause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->onPause()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onPause()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method private final persistTaskState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "jp-task-state-v1"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->currentAppUrl()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "saved_at"

    .line 26
    .line 27
    const-string v3, "runtime_url"

    .line 28
    .line 29
    const-string v4, "release_set_id"

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    sget-object v5, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->Companion:Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v5, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;->identityFrom(Landroid/os/Bundle;)Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {v0, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    const-string p0, "webRuntime"

    .line 88
    .line 89
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    throw p0
.end method

.method private final playFreshCastMedia(Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;)V
    .locals 8

    .line 1
    iget-object v3, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :goto_0
    move-wide v4, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-static {p0, v0, v1, p1, v7}, Lcom/jp/runtime/shell/ShellActivity;->currentCastStartPositionMs$default(Lcom/jp/runtime/shell/ShellActivity;JILjava/lang/Object;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/jp/runtime/shell/ShellActivity;->castPlayJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, v7}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/jp/runtime/shell/ShellActivity$playFreshCastMedia$1;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v1, p0

    .line 35
    move-object v2, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/jp/runtime/shell/ShellActivity$playFreshCastMedia$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/runtime/shell/PlaybackRequest;Lcom/jp/runtime/shell/ShellActivity$PendingCast;JLcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x3

    .line 40
    invoke-static {p1, v7, v0, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iput-object p0, v1, Lcom/jp/runtime/shell/ShellActivity;->castPlayJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic playFreshCastMedia$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->currentCastPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/shell/ShellActivity;->playFreshCastMedia(Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final registerDownloadSnapshotReceiver()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.jp.download.action.SNAPSHOT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadSnapshotReceiver:Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x21

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    if-lt v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static {p0, v1, v0, v4}, Lcom/jp/bootstrap/internal/yehcadiu;->bmucqf(Lcom/jp/runtime/shell/ShellActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v3, 0x1a

    .line 22
    .line 23
    if-lt v2, v3, :cond_1

    .line 24
    .line 25
    invoke-static {p0, v1, v0, v4}, Lcom/jp/bootstrap/internal/yehcadiu;->jpgq(Lcom/jp/runtime/shell/ShellActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/jp/bootstrap/internal/jmrkebxvwhf;->sljpnfm(Lcom/jp/runtime/shell/ShellActivity;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadReceiverRegistered:Z

    .line 39
    .line 40
    return-void
.end method

.method private final rememberPendingCast(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 6
    .line 7
    invoke-interface {v2}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->currentPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    const-string v4, "workId"

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    invoke-virtual {v1, v5, v6, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    cmp-long v7, v7, v5

    .line 36
    .line 37
    if-lez v7, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_1
    if-eqz v4, :cond_3

    .line 42
    .line 43
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    :cond_2
    move-wide v8, v5

    .line 48
    goto :goto_4

    .line 49
    :cond_3
    if-eqz v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 52
    .line 53
    .line 54
    move-result-wide v7

    .line 55
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/4 v4, 0x0

    .line 61
    :goto_3
    if-eqz v4, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_4
    const-string v4, "episodeKey"

    .line 65
    .line 66
    const-string v5, ""

    .line 67
    .line 68
    invoke-virtual {v1, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_5

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    const/4 v4, 0x0

    .line 80
    :goto_5
    if-nez v4, :cond_6

    .line 81
    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :cond_6
    move-object v10, v4

    .line 89
    goto :goto_6

    .line 90
    :cond_7
    const/4 v10, 0x0

    .line 91
    :goto_6
    iget-object v4, v1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 92
    .line 93
    const-string v6, "episodeIndex"

    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v7, 0x0

    .line 100
    if-eqz v4, :cond_9

    .line 101
    .line 102
    invoke-virtual {v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_9

    .line 107
    .line 108
    invoke-virtual {v1, v7, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-ltz v4, :cond_8

    .line 117
    .line 118
    :goto_7
    move-object v11, v6

    .line 119
    goto :goto_8

    .line 120
    :cond_8
    const/4 v11, 0x0

    .line 121
    goto :goto_8

    .line 122
    :cond_9
    if-eqz v2, :cond_8

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    goto :goto_7

    .line 129
    :goto_8
    const-string v4, "lineKey"

    .line 130
    .line 131
    invoke-virtual {v1, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_a

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_a
    const/4 v4, 0x0

    .line 143
    :goto_9
    if-nez v4, :cond_b

    .line 144
    .line 145
    if-eqz v2, :cond_c

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    :cond_b
    move-object v12, v4

    .line 152
    goto :goto_a

    .line 153
    :cond_c
    const/4 v12, 0x0

    .line 154
    :goto_a
    const-string v4, "title"

    .line 155
    .line 156
    invoke-static {v1, v4}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    if-nez v4, :cond_e

    .line 161
    .line 162
    sget-object v4, Lcom/jp/runtime/shell/CastDisplayText;->INSTANCE:Lcom/jp/runtime/shell/CastDisplayText;

    .line 163
    .line 164
    if-eqz v2, :cond_d

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/jp/runtime/shell/PlaybackRequest;->getTitle()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    goto :goto_b

    .line 171
    :cond_d
    const/4 v2, 0x0

    .line 172
    :goto_b
    invoke-virtual {v4, v2}, Lcom/jp/runtime/shell/CastDisplayText;->clean(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    :cond_e
    move-object v13, v4

    .line 177
    const-string v2, "subtitle"

    .line 178
    .line 179
    invoke-static {v1, v2}, Lcom/jp/runtime/shell/CastDisplayTextKt;->displayText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    const-string v2, "artworkUrl"

    .line 184
    .line 185
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_f

    .line 194
    .line 195
    move-object v15, v2

    .line 196
    goto :goto_c

    .line 197
    :cond_f
    const/4 v15, 0x0

    .line 198
    :goto_c
    const-string v2, "mimeType"

    .line 199
    .line 200
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-nez v4, :cond_10

    .line 209
    .line 210
    move-object/from16 v16, v2

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_10
    const/16 v16, 0x0

    .line 214
    .line 215
    :goto_d
    const-string v2, "startPositionMs"

    .line 216
    .line 217
    const-wide/16 v3, -0x1

    .line 218
    .line 219
    invoke-virtual {v1, v3, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 220
    .line 221
    .line 222
    move-result-wide v2

    .line 223
    invoke-direct {v0, v2, v3}, Lcom/jp/runtime/shell/ShellActivity;->currentCastStartPositionMs(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v17

    .line 227
    const-string v2, "url"

    .line 228
    .line 229
    invoke-virtual {v1, v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    const-string v2, "http"

    .line 237
    .line 238
    invoke-static {v1, v2, v7}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_11

    .line 243
    .line 244
    move-object/from16 v19, v1

    .line 245
    .line 246
    goto :goto_e

    .line 247
    :cond_11
    const/16 v19, 0x0

    .line 248
    .line 249
    :goto_e
    new-instance v7, Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 250
    .line 251
    invoke-direct/range {v7 .. v19}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iput-object v7, v0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 255
    .line 256
    return-void
.end method

.method private final requestOptionalDownloadNotificationPermission()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/jmrkebxvwhf;->jzphcv(Landroid/content/Context;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->notificationPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/bmimwtkmx;->syiqloeyp(Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final requestWebFileSelection([Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/jp/bootstrap/internal/iiazsdqcp;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object p2, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 10
    .line 11
    array-length p2, p1

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p2, :cond_2

    .line 14
    .line 15
    aget-object v2, p1, v0

    .line 16
    .line 17
    const-string v3, "^[A-Za-z0-9.+*-]+/[A-Za-z0-9.+*-]+$"

    .line 18
    .line 19
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    move-object v1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 45
    .line 46
    const-string v1, "image/*"

    .line 47
    .line 48
    :cond_3
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webFilePickerLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/jp/bootstrap/internal/bmimwtkmx;->syiqloeyp(Ljava/io/Serializable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private static final runtimeUpdateWakeView_delegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static synthetic sbmzsrkn()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/jp/runtime/shell/ShellActivity;->handleNativeCommand$lambda$2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final shortPlayerDelegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Lcom/jp/runtime/shell/EmbeddedShortPlayerController;
    .locals 3

    .line 1
    new-instance v0, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 2
    .line 3
    new-instance v1, Lcom/jp/runtime/shell/ShellActivity$shortPlayerDelegate$1$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/jp/runtime/shell/ShellActivity$shortPlayerDelegate$1$1;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const-string p0, "webRuntime"

    .line 17
    .line 18
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method private final startExportPollIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->exportPollJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

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
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/jp/runtime/shell/ShellActivity$startExportPollIfNeeded$1;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, v2}, Lcom/jp/runtime/shell/ShellActivity$startExportPollIfNeeded$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v0, v2, v1, v3}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->exportPollJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 29
    .line 30
    return-void
.end method

.method private final startRuntimeUpdateWakeMonitor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

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
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Lcom/jp/runtime/shell/ShellActivity$startRuntimeUpdateWakeMonitor$1;

    .line 14
    .line 15
    invoke-direct {v2, p0, v1}, Lcom/jp/runtime/shell/ShellActivity$startRuntimeUpdateWakeMonitor$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 24
    .line 25
    return-void
.end method

.method private final stopRuntimeUpdateWakeMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

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
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getRuntimeUpdateWakeView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final storagePermissionLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->onGalleryWritePermissionResult()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic tckmliv(Lcom/jp/runtime/shell/ShellActivity;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/shell/ShellActivity;->runtimeUpdateWakeView_delegate$lambda$0(Lcom/jp/runtime/shell/ShellActivity;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic tsodtn(Lcom/jp/runtime/shell/ShellActivity;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->cameraPermissionLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final webFilePickerLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static synthetic wyjqgzdhz(Lcom/jp/runtime/shell/ShellActivity;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->webFilePickerLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yfqpbrvsm(Lcom/jp/runtime/shell/ShellActivity;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/shell/ShellActivity;->storagePermissionLauncher$lambda$0(Lcom/jp/runtime/shell/ShellActivity;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yndsdvj(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/jp/runtime/shell/ShellActivity;->onCreate$lambda$4$0$0(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final commandEmbeddedCast$shell_runtime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "action"

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, p1

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const-string v1, "routeId"

    .line 28
    .line 29
    invoke-virtual {v0, p2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    if-eqz p3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    cmp-long p2, v1, v3

    .line 41
    .line 42
    if-ltz p2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object p3, p1

    .line 46
    :goto_1
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    const-string p3, "positionMs"

    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1, p3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    if-eqz p4, :cond_4

    .line 62
    .line 63
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const/4 p2, 0x0

    .line 68
    const/16 p3, 0x64

    .line 69
    .line 70
    invoke-static {p1, p2, p3}, Lcom/jp/bootstrap/internal/vd;->yndsdvj(III)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string p2, "volume"

    .line 79
    .line 80
    invoke-virtual {v0, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    if-eqz p5, :cond_5

    .line 84
    .line 85
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const-string p2, "volumeDelta"

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_5
    if-eqz p6, :cond_6

    .line 99
    .line 100
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const-string p2, "muted"

    .line 105
    .line 106
    invoke-virtual {v0, p2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/ShellActivity;->handleCastCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final dismissPlayerOverlay$shell_runtime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->setObscured(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string v1, "dismissPlayerOverlay"

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-static {p0, v1, v0, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "webRuntime"

    .line 30
    .line 31
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final hasActiveCastDevice$shell_runtime()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jp/runtime/shell/CastingGateway;->hasSelectedDevice()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const-string p0, "castingGateway"

    .line 16
    .line 17
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    throw p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Lcom/jp/bootstrap/internal/umqafeb;->onCreate(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/jp/runtime/web/RuntimeLaunchHandoffKt;->requireActiveRuntimeLaunch(Landroid/app/Activity;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v1}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v2, Lcom/jp/bootstrap/internal/eito;->syiqloeyp:Lcom/jp/bootstrap/internal/ulvfo;

    .line 20
    .line 21
    sget-object v2, Lcom/jp/bootstrap/internal/nrskyrhzt;->tckmliv:Lcom/jp/bootstrap/internal/nrskyrhzt;

    .line 22
    .line 23
    new-instance v3, Lcom/jp/runtime/shell/ShellActivity$onCreate$1;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-direct {v3, v1, v7}, Lcom/jp/runtime/shell/ShellActivity$onCreate$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    invoke-static {v0, v2, v3, v4}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 31
    .line 32
    .line 33
    const/4 v8, 0x1

    .line 34
    invoke-static {v1, v7, v8, v7}, Lcom/jp/runtime/web/RuntimeWindowKt;->configureRuntimeWindow$default(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    sget v0, Lcom/jp/runtime/shell/R$drawable;->jp_splash_brand:I

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lcom/jp/bootstrap/internal/pobbkg;->arjuqebdx(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    new-instance v2, Lcom/jp/bootstrap/internal/ozgawtnmo;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/jp/bootstrap/internal/ozgawtnmo;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v2, v7

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    new-instance v2, Lcom/jp/bootstrap/internal/y20;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    instance-of v0, v2, Lcom/jp/bootstrap/internal/y20;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    move-object v2, v7

    .line 71
    :cond_2
    move-object v9, v2

    .line 72
    check-cast v9, Lcom/jp/bootstrap/internal/pvyfbfzy;

    .line 73
    .line 74
    sget-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->Companion:Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;->identityFrom(Landroid/os/Bundle;)Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 89
    .line 90
    new-instance v3, Lcom/jp/runtime/shell/ShellActivity$onCreate$2;

    .line 91
    .line 92
    invoke-direct {v3, v1}, Lcom/jp/runtime/shell/ShellActivity$onCreate$2;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lcom/jp/runtime/shell/ShellActivity$onCreate$3;

    .line 96
    .line 97
    iget-object v5, v1, Lcom/jp/runtime/shell/ShellActivity;->cameraPermissionLauncher:Lcom/jp/bootstrap/internal/bmimwtkmx;

    .line 98
    .line 99
    invoke-direct {v4, v5}, Lcom/jp/runtime/shell/ShellActivity$onCreate$3;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v5, Lcom/jp/runtime/shell/ShellActivity$onCreate$4;

    .line 103
    .line 104
    invoke-direct {v5, v1}, Lcom/jp/runtime/shell/ShellActivity$onCreate$4;-><init>(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;-><init>(Landroid/content/Context;Lcom/jp/runtime/contract/WebRuntimeIdentity;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 108
    .line 109
    .line 110
    iput-object v0, v1, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 111
    .line 112
    new-instance v0, Lcom/jp/runtime/shell/CastingGateway;

    .line 113
    .line 114
    new-instance v3, Lcom/jp/runtime/shell/ShellActivity$onCreate$5;

    .line 115
    .line 116
    invoke-direct {v3, v1}, Lcom/jp/runtime/shell/ShellActivity$onCreate$5;-><init>(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v1, v3}, Lcom/jp/runtime/shell/CastingGateway;-><init>(Landroid/content/Context;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, v1, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 123
    .line 124
    invoke-direct {v1}, Lcom/jp/runtime/shell/ShellActivity;->registerDownloadSnapshotReceiver()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v3, "route"

    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v3, "jp://shorts"

    .line 138
    .line 139
    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    sget-object v0, Lcom/jp/runtime/web/WebRoute;->SHORTS:Lcom/jp/runtime/web/WebRoute;

    .line 146
    .line 147
    :goto_2
    move-object v4, v0

    .line 148
    goto :goto_3

    .line 149
    :cond_3
    sget-object v0, Lcom/jp/runtime/web/WebRoute;->HOME:Lcom/jp/runtime/web/WebRoute;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :goto_3
    sget-object v0, Lcom/jp/runtime/web/WebRoute;->HOME:Lcom/jp/runtime/web/WebRoute;

    .line 153
    .line 154
    if-ne v4, v0, :cond_6

    .line 155
    .line 156
    const-wide/16 v10, 0x0

    .line 157
    .line 158
    const-string v0, "saved_at"

    .line 159
    .line 160
    const-string v3, "runtime_url"

    .line 161
    .line 162
    const-string v5, "release_set_id"

    .line 163
    .line 164
    if-eqz v6, :cond_5

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-virtual {v6, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-virtual {v6, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual {v6, v0, v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v15

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide v17

    .line 186
    invoke-static/range {v12 .. v18}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->selectRuntimeTaskRestoreUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-nez v6, :cond_4

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_4
    :goto_4
    move-object v3, v6

    .line 194
    goto :goto_6

    .line 195
    :cond_5
    :goto_5
    const-string v6, "jp-task-state-v1"

    .line 196
    .line 197
    const/4 v12, 0x0

    .line 198
    invoke-virtual {v1, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-interface {v6, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v15

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v17

    .line 222
    invoke-static/range {v12 .. v18}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->selectRuntimeTaskRestoreUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    goto :goto_4

    .line 227
    :cond_6
    move-object v3, v7

    .line 228
    :goto_6
    new-instance v0, Lcom/jp/bootstrap/internal/k9;

    .line 229
    .line 230
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/k9;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v2, "category"

    .line 234
    .line 235
    const-string v5, "sort"

    .line 236
    .line 237
    const-string v6, "workId"

    .line 238
    .line 239
    const-string v10, "channel"

    .line 240
    .line 241
    filled-new-array {v6, v10, v2, v5}, [Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2}, Lcom/jp/bootstrap/internal/zatkzfy;->cdsesehahek([Ljava/lang/Object;)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_9

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    if-eqz v6, :cond_7

    .line 274
    .line 275
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-nez v10, :cond_8

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_8
    move-object v6, v7

    .line 283
    :goto_8
    if-eqz v6, :cond_7

    .line 284
    .line 285
    invoke-virtual {v0, v5, v6}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Ljava/lang/String;

    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_9
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/k9;->jzphcv()Lcom/jp/bootstrap/internal/k9;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    new-instance v0, Lcom/jp/bootstrap/internal/ub0;

    .line 297
    .line 298
    move-object v2, v9

    .line 299
    invoke-direct/range {v0 .. v5}, Lcom/jp/bootstrap/internal/ub0;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/pvyfbfzy;Ljava/lang/String;Lcom/jp/runtime/web/WebRoute;Lcom/jp/bootstrap/internal/k9;)V

    .line 300
    .line 301
    .line 302
    new-instance v2, Lcom/jp/bootstrap/internal/ntdhbhlf;

    .line 303
    .line 304
    const v3, 0x49aafb07

    .line 305
    .line 306
    .line 307
    invoke-direct {v2, v3, v0, v8}, Lcom/jp/bootstrap/internal/ntdhbhlf;-><init>(ILjava/lang/Object;Z)V

    .line 308
    .line 309
    .line 310
    invoke-static {v1, v2}, Lcom/jp/bootstrap/internal/yjeduoga;->syiqloeyp(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/ntdhbhlf;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v1}, Lcom/jp/runtime/web/RuntimeLaunchHandoffKt;->reportRuntimeVisibleAfterFirstFrame(Landroid/app/Activity;)V

    .line 314
    .line 315
    .line 316
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->pendingWebFileSelection:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 10
    .line 11
    sget-object v0, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->INSTANCE:Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p0, v2}, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->setHeld(Landroid/content/Context;Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->stopRuntimeUpdateWakeMonitor()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadReceiverRegistered:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadSnapshotReceiver:Lcom/jp/runtime/shell/ShellActivity$downloadSnapshotReceiver$1;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/jp/runtime/shell/ShellActivity;->downloadReceiverRegistered:Z

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->exportPollJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->destroy()V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->destroy()V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castPlayJob:Lcom/jp/bootstrap/internal/ezoyvkgk;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/ezoyvkgk;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->castingGateway:Lcom/jp/runtime/shell/CastingGateway;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/jp/runtime/shell/CastingGateway;->close()V

    .line 80
    .line 81
    .line 82
    :cond_6
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroy()V

    .line 87
    .line 88
    .line 89
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->stopRuntimeUpdateWakeMonitor()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->pauseForegroundPlayback()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->INSTANCE:Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->setHeld(Landroid/content/Context;Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onResume()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->startRuntimeUpdateWakeMonitor()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->onResume()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->onResume()V

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->lsqxopbhlw(Lcom/jp/bootstrap/internal/umqafeb;)Lcom/jp/bootstrap/internal/f5;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Lcom/jp/bootstrap/internal/eito;->syiqloeyp:Lcom/jp/bootstrap/internal/ulvfo;

    .line 59
    .line 60
    sget-object v1, Lcom/jp/bootstrap/internal/nrskyrhzt;->tckmliv:Lcom/jp/bootstrap/internal/nrskyrhzt;

    .line 61
    .line 62
    new-instance v2, Lcom/jp/runtime/shell/ShellActivity$onResume$1;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-direct {v2, p0, v3}, Lcom/jp/runtime/shell/ShellActivity$onResume$1;-><init>(Lcom/jp/runtime/shell/ShellActivity;Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x2

    .line 69
    invoke-static {v0, v1, v2, p0}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->currentAppUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->Companion:Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;->identityFrom(Landroid/os/Bundle;)Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "release_set_id"

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "runtime_url"

    .line 40
    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "saved_at"

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string p0, "webRuntime"

    .line 55
    .line 56
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    throw p0

    .line 61
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jp/bootstrap/internal/umqafeb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onStop()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->persistTaskState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->checkpointProgress()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->pauseForegroundPlayback()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->INSTANCE:Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/jp/runtime/shell/ShellActivity;->embeddedPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 31
    .line 32
    invoke-interface {v1}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getEmbeddedPlayer()Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/jp/runtime/shell/EmbeddedFilmPlayerController;->shouldHoldBackgroundProcess()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v1, v3

    .line 53
    :goto_0
    iget-object v4, p0, Lcom/jp/runtime/shell/ShellActivity;->shortPlayerDelegate:Lcom/jp/bootstrap/internal/n1;

    .line 54
    .line 55
    invoke-interface {v4}, Lcom/jp/bootstrap/internal/n1;->uaakwbmitdl()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/jp/runtime/shell/ShellActivity;->getShortPlayer()Lcom/jp/runtime/shell/EmbeddedShortPlayerController;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/jp/runtime/shell/EmbeddedShortPlayerController;->shouldHoldBackgroundProcess()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v2, v3

    .line 73
    :goto_1
    invoke-static {v3, v1, v2}, Lcom/jp/runtime/shell/PluginPlaybackKeepAliveKt;->shouldHoldPluginPlaybackProcess(ZZZ)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, p0, v1}, Lcom/jp/runtime/shell/PluginPlaybackKeepAlive;->setHeld(Landroid/content/Context;Z)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final queryDownloadSnapshot$shell_runtime(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/jp/runtime/shell/ShellActivityKt;->playerDownloadQuery(Ljava/lang/String;)Lcom/jp/runtime/shell/PlayerDownloadQuery;

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
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "action"

    .line 14
    .line 15
    const-string v2, "query"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "player-query-"

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "requestId"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "offset"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerDownloadQuery;->getLimit()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "limit"

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "contentId"

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/jp/runtime/shell/PlayerDownloadQuery;->getContentId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0}, Lcom/jp/runtime/shell/ShellActivity;->handleDownloadCommand(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final refreshWebSafeArea$shell_runtime()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/shell/ShellActivity;->webRuntime:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->refreshSafeArea()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string p0, "webRuntime"

    .line 12
    .line 13
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    return-void
.end method

.method public final syncActiveCastPlayback$shell_runtime()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/runtime/shell/ShellActivity;->hasActiveCastDevice$shell_runtime()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {v0}, Lcom/jp/runtime/shell/ShellActivity;->currentCastPlaybackRequest()Lcom/jp/runtime/shell/PlaybackRequest;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    if-nez v6, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getWorkId()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-wide v4, v2

    .line 29
    :goto_1
    const/4 v9, 0x0

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getEpisodeKey()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move-object v7, v9

    .line 38
    :goto_2
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getEpisodeIndex()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    goto :goto_3

    .line 45
    :cond_4
    move-object v8, v9

    .line 46
    :goto_3
    const/4 v10, 0x1

    .line 47
    invoke-static {v0, v2, v3, v10, v9}, Lcom/jp/runtime/shell/ShellActivity;->currentCastStartPositionMs$default(Lcom/jp/runtime/shell/ShellActivity;JILjava/lang/Object;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    move-wide/from16 v23, v4

    .line 52
    .line 53
    move-object v4, v7

    .line 54
    move-object v5, v8

    .line 55
    move-wide v7, v2

    .line 56
    move-wide/from16 v2, v23

    .line 57
    .line 58
    invoke-static/range {v2 .. v8}, Lcom/jp/runtime/shell/CastPlaybackFollowKt;->castFollowStartPositionMs(JLjava/lang/String;Ljava/lang/Integer;Lcom/jp/runtime/shell/PlaybackRequest;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v20

    .line 62
    new-instance v10, Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/jp/runtime/shell/PlaybackRequest;->getWorkId()J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    invoke-virtual {v6}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeKey()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v13

    .line 72
    invoke-virtual {v6}, Lcom/jp/runtime/shell/PlaybackRequest;->getEpisodeIndex()Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    invoke-virtual {v6}, Lcom/jp/runtime/shell/PlaybackRequest;->getLineKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v15

    .line 80
    invoke-virtual {v6}, Lcom/jp/runtime/shell/PlaybackRequest;->getTitle()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v16

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getSubtitle()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    move-object/from16 v17, v2

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move-object/from16 v17, v9

    .line 94
    .line 95
    :goto_4
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getArtworkUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    move-object/from16 v18, v2

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_6
    move-object/from16 v18, v9

    .line 105
    .line 106
    :goto_5
    if-eqz v1, :cond_7

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;->getMimeType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object/from16 v19, v1

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_7
    move-object/from16 v19, v9

    .line 116
    .line 117
    :goto_6
    const/16 v22, 0x0

    .line 118
    .line 119
    invoke-direct/range {v10 .. v22}, Lcom/jp/runtime/shell/ShellActivity$PendingCast;-><init>(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput-object v10, v0, Lcom/jp/runtime/shell/ShellActivity;->pendingCast:Lcom/jp/runtime/shell/ShellActivity$PendingCast;

    .line 123
    .line 124
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const/4 v2, 0x2

    .line 129
    invoke-static {v0, v1, v9, v2, v9}, Lcom/jp/runtime/shell/ShellActivity;->playFreshCastMedia$default(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/Long;Lcom/jp/runtime/shell/PlaybackRequest;ILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
