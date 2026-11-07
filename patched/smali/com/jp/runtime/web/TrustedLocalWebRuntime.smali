.class public final Lcom/jp/runtime/web/TrustedLocalWebRuntime;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;,
        Lcom/jp/runtime/web/TrustedLocalWebRuntime$LocalPathHandler;,
        Lcom/jp/runtime/web/TrustedLocalWebRuntime$WhenMappings;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_RUNTIME_UPDATE:Ljava/lang/String; = "com.jp.runtime.action.CHECK_UPDATE"

.field private static final ADULT_POLICY_ENABLED:Ljava/lang/String; = "adult_enabled"

.field public static final ADULT_POLICY_METHOD:Ljava/lang/String; = "adult.policy"

.field private static final ADULT_POLICY_PREFS:Ljava/lang/String; = "jp_content_policy"

.field private static final ALLOWED_API_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALLOWED_API_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final API_AUTH_MODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final API_CONNECT_TIMEOUT_MILLIS:I = 0x5dc

.field public static final API_ENDPOINT_METHOD:Ljava/lang/String; = "api.endpoint"

.field public static final API_INVALIDATE_ENROLLMENT_METHOD:Ljava/lang/String; = "api.invalidateEnrollment"

.field public static final API_INVALIDATE_METHOD:Ljava/lang/String; = "api.invalidateEndpoint"

.field public static final API_OBSERVATION_METHOD:Ljava/lang/String; = "api.observe"

.field private static final API_PATH:Ljava/lang/String; = "/api/"

.field private static final API_READ_TIMEOUT_MILLIS:I = 0x9c4

.field public static final API_REQUEST_METHOD:Ljava/lang/String; = "api.request"

.field public static final API_SECURE_REQUEST_METHOD:Ljava/lang/String; = "api.secureRequest"

.field public static final API_TRANSPORT_METHOD:Ljava/lang/String; = "api.transport"

.field public static final APP_EXIT_METHOD:Ljava/lang/String; = "app.exit"

.field public static final APP_HOST:Ljava/lang/String; = "appassets.androidplatform.net"

.field public static final APP_OPEN_SETTINGS_METHOD:Ljava/lang/String; = "app.openSettings"

.field public static final APP_ORIGIN:Ljava/lang/String; = "https://appassets.androidplatform.net"

.field public static final AUTH_RESTORE_METHOD:Ljava/lang/String; = "auth.restore"

.field public static final AUTH_SYNC_METHOD:Ljava/lang/String; = "auth.sync"

.field private static final BODYLESS_API_METHODS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BRIDGE_NAME:Ljava/lang/String; = "jpBridge"

.field private static final BRIDGE_TIMEOUT_MILLIS:J = 0x7530L

.field public static final CACHE_ADMIN_METHOD:Ljava/lang/String; = "cache.admin"

.field private static final CACHE_ADMIN_TARGETS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAST_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAST_COMMAND_METHOD:Ljava/lang/String; = "cast.command"

.field public static final CAST_OPEN_METHOD:Ljava/lang/String; = "cast.open"

.field public static final CONNECTIVITY_EVENT:Ljava/lang/String; = "connectivityChanged"

.field public static final Companion:Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

.field private static final DEFAULT_DOWNLOAD_QUERY_LIMIT:I = 0x64

.field public static final DEVICE_IDENTITY_METHOD:Ljava/lang/String; = "device.identity"

.field public static final DIAGNOSTICS_CONSUME_CRASH_METHOD:Ljava/lang/String; = "diagnostics.consumeNativeCrash"

.field public static final DIAGNOSTICS_EXPORT_METHOD:Ljava/lang/String; = "diagnostics.export"

.field public static final DOWNLOAD_BATCH_METHOD:Ljava/lang/String; = "downloads.enqueueBatch"

.field private static final DOWNLOAD_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOWNLOAD_COMMAND_BATCH_METHOD:Ljava/lang/String; = "downloads.commandBatch"

.field public static final DOWNLOAD_COMMAND_METHOD:Ljava/lang/String; = "downloads.command"

.field public static final DOWNLOAD_INTENT_BATCH_METHOD:Ljava/lang/String; = "downloads.enqueueIntents"

.field public static final DOWNLOAD_PROBE_METHOD:Ljava/lang/String; = "downloads.probe"

.field public static final DOWNLOAD_SETTINGS_METHOD:Ljava/lang/String; = "downloads.settings"

.field private static final DOWNLOAD_WORK_PREFIX:Lcom/jp/bootstrap/internal/u00;

.field private static final EXTERNAL_URL_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_APP_FRAME_POLL_MILLIS:J = 0x20L

.field private static final FIRST_APP_FRAME_SCRIPT:Ljava/lang/String; = "(function(){var app=document.getElementById(\'app\');return !!(app&&app.firstElementChild);})()"

.field private static final FOREGROUND_UPDATE_INTERVAL_MILLIS:J = 0xea60L

.field private static final HEADER_NAME:Lcom/jp/bootstrap/internal/u00;

.field private static final HEALTH_STABILITY_MILLIS:J = 0x1388L

.field public static final HELLO_METHOD:Ljava/lang/String; = "bridge.hello"

.field private static final HOP_BY_HOP_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYBOARD_HIDE_METHOD:Ljava/lang/String; = "keyboard.hide"

.field public static final LINE_LEARNING_METHOD:Ljava/lang/String; = "playback.lineLearning"

.field private static final LINE_LEARNING_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final LINE_LEARNING_PREFS:Ljava/lang/String; = "jp_line_learning"

.field private static final MAX_ACCESS_TOKEN_LENGTH:I = 0x4000

.field private static final MAX_API_HEADER_COUNT:I = 0x20

.field private static final MAX_API_HEADER_VALUE_LENGTH:I = 0x2000

.field private static final MAX_API_PATH_LENGTH:I = 0x1000

.field private static final MAX_API_REQUEST_BODY_BYTES:I = 0x600000

.field private static final MAX_API_RESPONSE_BODY_BYTES:I = 0x800000

.field private static final MAX_DIAGNOSTIC_EXPORT_BYTES:I = 0x80000

.field private static final MAX_DIAGNOSTIC_EXPORT_FILENAME_LENGTH:I = 0x78

.field private static final MAX_DOWNLOAD_BATCH_ITEMS:I = 0x14

.field private static final MAX_DOWNLOAD_COMMAND_BATCH_ITEMS:I = 0xc8

.field private static final MAX_DOWNLOAD_CONTENT_ID_LENGTH:I = 0x100

.field private static final MAX_DOWNLOAD_EXPORT_IDS:I = 0x50

.field private static final MAX_DOWNLOAD_METADATA_LENGTH:I = 0x78

.field private static final MAX_DOWNLOAD_PREFIXES:I = 0x64

.field private static final MAX_DOWNLOAD_QUERY_LIMIT:I = 0xc8

.field private static final MAX_DOWNLOAD_REQUEST_ID_LENGTH:I = 0x80

.field private static final MAX_DOWNLOAD_SCOPE_LENGTH:I = 0x10

.field private static final MAX_DOWNLOAD_TITLE_LENGTH:I = 0xf0

.field private static final MAX_DOWNLOAD_URL_LENGTH:I = 0x2000

.field private static final MAX_EXTERNAL_URL_LENGTH:I = 0x2000

.field private static final MAX_LINE_LEARNING_PAYLOAD:I = 0x20000

.field private static final MAX_MEDIA_SAVE_BASE64_CHARS:I = 0x600000

.field private static final MAX_MEDIA_SAVE_FILENAME_LENGTH:I = 0x78

.field private static final MAX_MEDIA_URL_LENGTH:I = 0x4000

.field private static final MAX_SHORT_PREVIEW_TOKEN_LENGTH:I = 0x140

.field public static final MEDIA_SAVE_IMAGE_METHOD:Ljava/lang/String; = "media.saveImage"

.field public static final OPEN_URL_METHOD:Ljava/lang/String; = "openUrlBySystem"

.field public static final PLAYER_CLOSE_METHOD:Ljava/lang/String; = "player.close"

.field public static final PLAYER_EMBED_METHOD:Ljava/lang/String; = "player.embed"

.field public static final PLAYER_LAYOUT_METHOD:Ljava/lang/String; = "player.layout"

.field public static final PLAYER_OPEN_METHOD:Ljava/lang/String; = "player.open"

.field public static final PLAYER_OVERLAY_METHOD:Ljava/lang/String; = "player.overlay"

.field public static final PLAYER_UPDATE_METHOD:Ljava/lang/String; = "player.update"

.field public static final RUNTIME_PATH:Ljava/lang/String; = "/runtime/"

.field public static final SHORTS_COMMAND_METHOD:Ljava/lang/String; = "shorts.command"

.field public static final SHORTS_LAYOUT_METHOD:Ljava/lang/String; = "shorts.layout"

.field public static final SHORTS_OPEN_METHOD:Ljava/lang/String; = "shorts.open"

.field public static final SHORTS_PREPARE_METHOD:Ljava/lang/String; = "shorts.prepare"

.field public static final SHORTS_VISIBILITY_METHOD:Ljava/lang/String; = "shorts.visibility"

.field public static final SHORTS_WARM_METHOD:Ljava/lang/String; = "shorts.warm"

.field private static final SHORT_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLASH_RELEASE_METHOD:Ljava/lang/String; = "splash.release"

.field private static final TAG:Ljava/lang/String; = "JpWebRuntime"

.field public static final UPDATE_APPLY_METHOD:Ljava/lang/String; = "update.apply"

.field public static final UPDATE_CHECK_METHOD:Ljava/lang/String; = "update.check"

.field private static final UPDATE_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.jp.bootstrap.RuntimeUpdateReceiver"

.field public static final UPDATE_STATUS_METHOD:Ljava/lang/String; = "update.status"

.field public static final WEBVIEW_OPAQUE_METHOD:Ljava/lang/String; = "ui.setWebViewOpaque"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final apiControlExecutor:Ljava/util/concurrent/ExecutorService;

.field private final apiExecutor:Ljava/util/concurrent/ExecutorService;

.field private final apiOriginListener:Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;

.field private final apiPayloadBudget:Lcom/jp/runtime/web/ApiBridgeBudget;

.field private final apiRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/jp/runtime/web/ApiRequestControl;",
            ">;"
        }
    .end annotation
.end field

.field private final appContext:Landroid/content/Context;

.field private final appUserAgent:Ljava/lang/String;

.field private final assetLoader:Lcom/jp/bootstrap/internal/qy0;

.field private volatile bridgeReady:Z

.field private final bridgeTimeout:Ljava/lang/Runnable;

.field private final connectivityCallback:Lcom/jp/runtime/web/TrustedLocalWebRuntime$connectivityCallback$1;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private currentRoute:Lcom/jp/runtime/web/WebRoute;

.field private destroyed:Z

.field private final firstAppFrameProbe:Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;

.field private firstAppFrameVisible:Z

.field private final foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

.field private final identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

.field private final issuedApiOrigins:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mainHandler:Landroid/os/Handler;

.field private onFirstAppFrameVisible:Lcom/jp/bootstrap/internal/mbwlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/mbwlg;"
        }
    .end annotation
.end field

.field private final onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/iiazsdqcp;"
        }
    .end annotation
.end field

.field private onSplashReleased:Lcom/jp/bootstrap/internal/mbwlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/mbwlg;"
        }
    .end annotation
.end field

.field private pendingCameraRequest:Landroid/webkit/PermissionRequest;

.field private pendingFileSelection:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final preparedApiTransport:Lcom/jp/runtime/web/PreparedApiTransport;

.field private final previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final requestCameraPermission:Lcom/jp/bootstrap/internal/iiazsdqcp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/iiazsdqcp;"
        }
    .end annotation
.end field

.field private final requestFileSelection:Lcom/jp/bootstrap/internal/tkwlkffmbu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jp/bootstrap/internal/tkwlkffmbu;"
        }
    .end annotation
.end field

.field private volatile resumed:Z

.field private final root:Ljava/io/File;

.field private safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

.field private splashReleased:Z

.field private final stableForeground:Ljava/lang/Runnable;

.field private volatile terminalSignalWritten:Z

.field private volatile webSessionObserved:Z

.field private final webView:Landroid/webkit/WebView;

.field private webViewOpaqueRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;-><init>(Lcom/jp/bootstrap/internal/hjiaf;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->Companion:Lcom/jp/runtime/web/TrustedLocalWebRuntime$Companion;

    .line 8
    .line 9
    const-string v0, "tel"

    .line 10
    .line 11
    const-string v1, "mailto"

    .line 12
    .line 13
    const-string v2, "https"

    .line 14
    .line 15
    const-string v3, "http"

    .line 16
    .line 17
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->EXTERNAL_URL_SCHEMES:Ljava/util/Set;

    .line 26
    .line 27
    new-instance v0, Lcom/jp/bootstrap/internal/u00;

    .line 28
    .line 29
    const-string v1, "^(work|short|adult):[^:]+:$"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/u00;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->DOWNLOAD_WORK_PREFIX:Lcom/jp/bootstrap/internal/u00;

    .line 35
    .line 36
    const-string v6, "remove"

    .line 37
    .line 38
    const-string v7, "export"

    .line 39
    .line 40
    const-string v2, "add"

    .line 41
    .line 42
    const-string v3, "query"

    .line 43
    .line 44
    const-string v4, "pause"

    .line 45
    .line 46
    const-string v5, "resume"

    .line 47
    .line 48
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->DOWNLOAD_COMMANDS:Ljava/util/Set;

    .line 57
    .line 58
    const-string v0, "downloadsIncomplete"

    .line 59
    .line 60
    const-string v1, "downloadsAll"

    .line 61
    .line 62
    const-string v2, "streaming"

    .line 63
    .line 64
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->CACHE_ADMIN_TARGETS:Ljava/util/Set;

    .line 73
    .line 74
    const-string v14, "volumeBy"

    .line 75
    .line 76
    const-string v15, "mute"

    .line 77
    .line 78
    const-string v1, "state"

    .line 79
    .line 80
    const-string v2, "discover"

    .line 81
    .line 82
    const-string v3, "stopDiscovery"

    .line 83
    .line 84
    const-string v4, "selectRoute"

    .line 85
    .line 86
    const-string v5, "showChooser"

    .line 87
    .line 88
    const-string v6, "prepareSheet"

    .line 89
    .line 90
    const-string v7, "syncMedia"

    .line 91
    .line 92
    const-string v8, "play"

    .line 93
    .line 94
    const-string v9, "pause"

    .line 95
    .line 96
    const-string v10, "resume"

    .line 97
    .line 98
    const-string v11, "disconnect"

    .line 99
    .line 100
    const-string v12, "seek"

    .line 101
    .line 102
    const-string v13, "volume"

    .line 103
    .line 104
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->CAST_COMMANDS:Ljava/util/Set;

    .line 113
    .line 114
    const-string v10, "exitFullscreen"

    .line 115
    .line 116
    const-string v11, "setChrome"

    .line 117
    .line 118
    const-string v1, "play"

    .line 119
    .line 120
    const-string v2, "pause"

    .line 121
    .line 122
    const-string v3, "toggle"

    .line 123
    .line 124
    const-string v4, "retry"

    .line 125
    .line 126
    const-string v5, "seek"

    .line 127
    .line 128
    const-string v6, "seekRatio"

    .line 129
    .line 130
    const-string v7, "mute"

    .line 131
    .line 132
    const-string v8, "rate"

    .line 133
    .line 134
    const-string v9, "fullscreen"

    .line 135
    .line 136
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->SHORT_COMMANDS:Ljava/util/Set;

    .line 145
    .line 146
    new-instance v0, Lcom/jp/bootstrap/internal/u00;

    .line 147
    .line 148
    const-string v1, "^[A-Za-z0-9!#$%&\'*+.^_`|~-]+$"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/u00;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->HEADER_NAME:Lcom/jp/bootstrap/internal/u00;

    .line 154
    .line 155
    const-string v6, "DELETE"

    .line 156
    .line 157
    const-string v7, "HEAD"

    .line 158
    .line 159
    const-string v2, "GET"

    .line 160
    .line 161
    const-string v3, "POST"

    .line 162
    .line 163
    const-string v4, "PUT"

    .line 164
    .line 165
    const-string v5, "PATCH"

    .line 166
    .line 167
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->ALLOWED_API_METHODS:Ljava/util/Set;

    .line 176
    .line 177
    const-string v0, "optional"

    .line 178
    .line 179
    const-string v1, "required"

    .line 180
    .line 181
    const-string v2, "none"

    .line 182
    .line 183
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->API_AUTH_MODES:Ljava/util/Set;

    .line 192
    .line 193
    const-string v0, "GET"

    .line 194
    .line 195
    const-string v1, "HEAD"

    .line 196
    .line 197
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->BODYLESS_API_METHODS:Ljava/util/Set;

    .line 206
    .line 207
    const-string v9, "if-none-match"

    .line 208
    .line 209
    const-string v10, "if-unmodified-since"

    .line 210
    .line 211
    const-string v1, "accept"

    .line 212
    .line 213
    const-string v2, "accept-language"

    .line 214
    .line 215
    const-string v3, "authorization"

    .line 216
    .line 217
    const-string v4, "cache-control"

    .line 218
    .line 219
    const-string v5, "content-type"

    .line 220
    .line 221
    const-string v6, "idempotency-key"

    .line 222
    .line 223
    const-string v7, "if-match"

    .line 224
    .line 225
    const-string v8, "if-modified-since"

    .line 226
    .line 227
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->ALLOWED_API_HEADERS:Ljava/util/Set;

    .line 236
    .line 237
    const-string v9, "transfer-encoding"

    .line 238
    .line 239
    const-string v10, "upgrade"

    .line 240
    .line 241
    const-string v1, "connection"

    .line 242
    .line 243
    const-string v2, "content-length"

    .line 244
    .line 245
    const-string v3, "host"

    .line 246
    .line 247
    const-string v4, "keep-alive"

    .line 248
    .line 249
    const-string v5, "proxy-authenticate"

    .line 250
    .line 251
    const-string v6, "proxy-authorization"

    .line 252
    .line 253
    const-string v7, "te"

    .line 254
    .line 255
    const-string v8, "trailer"

    .line 256
    .line 257
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sput-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->HOP_BY_HOP_HEADERS:Ljava/util/Set;

    .line 266
    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jp/runtime/contract/WebRuntimeIdentity;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/jp/runtime/contract/WebRuntimeIdentity;",
            "Lcom/jp/bootstrap/internal/iiazsdqcp;",
            "Lcom/jp/bootstrap/internal/iiazsdqcp;",
            "Lcom/jp/bootstrap/internal/tkwlkffmbu;",
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
    iput-object p2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->requestCameraPermission:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->requestFileSelection:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p3}, Lcom/jp/bootstrap/internal/ptwpocqvsgu;->vzds(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appUserAgent:Ljava/lang/String;

    .line 32
    .line 33
    instance-of p3, p1, Landroid/app/Activity;

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    move-object p3, p1

    .line 39
    check-cast p3, Landroid/app/Activity;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object p3, p4

    .line 43
    :goto_0
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->activity:Landroid/app/Activity;

    .line 44
    .line 45
    new-instance p3, Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getRootPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_2

    .line 63
    .line 64
    new-instance p3, Ljava/io/File;

    .line 65
    .line 66
    const-string p5, "index.html"

    .line 67
    .line 68
    invoke-direct {p3, p2, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-eqz p3, :cond_2

    .line 76
    .line 77
    iput-object p2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->root:Ljava/io/File;

    .line 78
    .line 79
    new-instance p3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance p5, Lcom/jp/runtime/web/TrustedLocalWebRuntime$LocalPathHandler;

    .line 85
    .line 86
    invoke-direct {p5, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$LocalPathHandler;-><init>(Ljava/io/File;)V

    .line 87
    .line 88
    .line 89
    new-instance p2, Lcom/jp/bootstrap/internal/ip;

    .line 90
    .line 91
    invoke-direct {p2, p5}, Lcom/jp/bootstrap/internal/ip;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    const/4 v0, 0x0

    .line 107
    move v1, v0

    .line 108
    :goto_1
    if-ge v1, p5, :cond_1

    .line 109
    .line 110
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    check-cast v2, Lcom/jp/bootstrap/internal/ip;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lcom/jp/bootstrap/internal/ip;->syiqloeyp:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lcom/jp/bootstrap/internal/oy0;

    .line 124
    .line 125
    new-instance v3, Lcom/jp/bootstrap/internal/py0;

    .line 126
    .line 127
    invoke-direct {v3, v2}, Lcom/jp/bootstrap/internal/py0;-><init>(Lcom/jp/bootstrap/internal/oy0;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_1
    new-instance p3, Lcom/jp/bootstrap/internal/qy0;

    .line 135
    .line 136
    invoke-direct {p3, p2}, Lcom/jp/bootstrap/internal/qy0;-><init>(Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->assetLoader:Lcom/jp/bootstrap/internal/qy0;

    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 146
    .line 147
    new-instance p1, Landroid/os/Handler;

    .line 148
    .line 149
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 157
    .line 158
    invoke-static {}, Lcom/jp/runtime/web/ApiBridgeExecutorKt;->newApiBridgeExecutor()Ljava/util/concurrent/ExecutorService;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 163
    .line 164
    invoke-static {}, Lcom/jp/runtime/web/ApiBridgeExecutorKt;->newApiControlExecutor()Ljava/util/concurrent/ExecutorService;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiControlExecutor:Ljava/util/concurrent/ExecutorService;

    .line 169
    .line 170
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    .line 177
    new-instance p1, Lcom/jp/runtime/web/ApiBridgeBudget;

    .line 178
    .line 179
    const/4 p2, 0x1

    .line 180
    invoke-direct {p1, v0, p2, p4}, Lcom/jp/runtime/web/ApiBridgeBudget;-><init>(IILcom/jp/bootstrap/internal/hjiaf;)V

    .line 181
    .line 182
    .line 183
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiPayloadBudget:Lcom/jp/runtime/web/ApiBridgeBudget;

    .line 184
    .line 185
    new-instance p1, Lcom/jp/runtime/web/PreparedApiTransport;

    .line 186
    .line 187
    iget-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appUserAgent:Ljava/lang/String;

    .line 188
    .line 189
    invoke-direct {p1, p4, p3, p2, p4}, Lcom/jp/runtime/web/PreparedApiTransport;-><init>(Lcom/jp/bootstrap/internal/tl;Ljava/lang/String;ILcom/jp/bootstrap/internal/hjiaf;)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->preparedApiTransport:Lcom/jp/runtime/web/PreparedApiTransport;

    .line 193
    .line 194
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 200
    .line 201
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 202
    .line 203
    const-class p3, Landroid/net/ConnectivityManager;

    .line 204
    .line 205
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 210
    .line 211
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 212
    .line 213
    new-instance p3, Lcom/jp/runtime/web/TrustedLocalWebRuntime$connectivityCallback$1;

    .line 214
    .line 215
    invoke-direct {p3, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$connectivityCallback$1;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 216
    .line 217
    .line 218
    iput-object p3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityCallback:Lcom/jp/runtime/web/TrustedLocalWebRuntime$connectivityCallback$1;

    .line 219
    .line 220
    new-instance p4, Lcom/jp/bootstrap/internal/cr0;

    .line 221
    .line 222
    invoke-direct {p4, p0}, Lcom/jp/bootstrap/internal/cr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 223
    .line 224
    .line 225
    iput-object p4, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiOriginListener:Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;

    .line 226
    .line 227
    sget-object p5, Lcom/jp/runtime/web/RuntimeSafeArea;->Companion:Lcom/jp/runtime/web/RuntimeSafeArea$Companion;

    .line 228
    .line 229
    invoke-virtual {p5}, Lcom/jp/runtime/web/RuntimeSafeArea$Companion;->getZERO()Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 230
    .line 231
    .line 232
    move-result-object p5

    .line 233
    iput-object p5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 234
    .line 235
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 236
    .line 237
    .line 238
    move-result-object p5

    .line 239
    iput-object p5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 240
    .line 241
    new-instance p5, Lcom/jp/bootstrap/internal/dr0;

    .line 242
    .line 243
    invoke-direct {p5, p0}, Lcom/jp/bootstrap/internal/dr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 244
    .line 245
    .line 246
    iput-object p5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 247
    .line 248
    new-instance v0, Lcom/jp/bootstrap/internal/br0;

    .line 249
    .line 250
    invoke-direct {v0, p0, p2}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeTimeout:Ljava/lang/Runnable;

    .line 254
    .line 255
    new-instance v0, Lcom/jp/bootstrap/internal/br0;

    .line 256
    .line 257
    const/4 v1, 0x2

    .line 258
    invoke-direct {v0, p0, v1}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->stableForeground:Ljava/lang/Runnable;

    .line 262
    .line 263
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 269
    .line 270
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;

    .line 271
    .line 272
    invoke-direct {v0, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 273
    .line 274
    .line 275
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameProbe:Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;

    .line 276
    .line 277
    invoke-static {p5}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 278
    .line 279
    .line 280
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->installBridge()V

    .line 281
    .line 282
    .line 283
    sget-object p5, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 284
    .line 285
    invoke-virtual {p5, p4}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->setOriginListener(Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;)V

    .line 286
    .line 287
    .line 288
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .line 290
    .line 291
    :catchall_0
    iput-boolean p2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webViewOpaqueRequested:Z

    .line 292
    .line 293
    return-void

    .line 294
    :cond_2
    const-string p0, "Local Web runtime is incomplete"

    .line 295
    .line 296
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw p4
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/jp/runtime/contract/WebRuntimeIdentity;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tkwlkffmbu;ILcom/jp/bootstrap/internal/hjiaf;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p5, v0

    .line 300
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;-><init>(Landroid/content/Context;Lcom/jp/runtime/contract/WebRuntimeIdentity;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/tkwlkffmbu;)V

    return-void
.end method

.method private final acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 2

    .line 1
    new-instance p0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "runtime"

    .line 7
    .line 8
    const-string v1, "native"

    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "accepted"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static final synthetic access$apiFailureContext$lambda$0$put(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiFailureContext$lambda$0$put(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchBridgeMessage(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchBridgeMessage(Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$dispatchConnectivityState(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchConnectivityState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAssetLoader$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/qy0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->assetLoader:Lcom/jp/bootstrap/internal/qy0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDestroyed$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getFirstAppFrameProbe$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameProbe:Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFirstAppFrameVisible$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameVisible:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOnFirstAppFrameVisible$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/mbwlg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onFirstAppFrameVisible:Lcom/jp/bootstrap/internal/mbwlg;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/PermissionRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPendingFileSelection$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingFileSelection:Landroid/webkit/ValueCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestCameraPermission$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/iiazsdqcp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->requestCameraPermission:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRequestFileSelection$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/tkwlkffmbu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->requestFileSelection:Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getResumed$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isLocalApiUrl(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->isLocalApiUrl(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$isTrustedRuntimeUrl(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->isTrustedRuntimeUrl(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$methodNotAllowedApiResponse(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->methodNotAllowedApiResponse()Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$openExternalUri(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->openExternalUri(Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$proxyLocalApi(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->proxyLocalApi(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$reapplyWebViewPunch(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->reapplyWebViewPunch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$refreshLiveApiOrigin(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->refreshLiveApiOrigin()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$requestRuntimeUpdateCheck(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->requestRuntimeUpdateCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resetScrollPosition(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resetScrollPosition(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setFirstAppFrameVisible$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameVisible:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPendingFileSelection$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingFileSelection:Landroid/webkit/ValueCallback;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateSafeArea(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/u01;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic aescjqoa(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$7(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic amcmg(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$13(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final apiFailureContext(Ljava/io/IOException;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 3

    .line 1
    new-instance p0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/16 v1, 0x50

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/jp/bootstrap/internal/gi0;->vdoha(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "transport_type"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string v0, "[a-zA-Z0-9_:-]{1,100}"

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string v0, "transport_code"

    .line 55
    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    sget-object p1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->diagnosticContext()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$apiFailureContext$1$3;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$apiFailureContext$1$3;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/jp/bootstrap/internal/x40;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-direct {v1, v2, v0}, Lcom/jp/bootstrap/internal/x40;-><init>(ILcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 77
    .line 78
    .line 79
    return-object p0
.end method

.method private static final apiFailureContext$lambda$0$2(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final synthetic apiFailureContext$lambda$0$put(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final apiOriginListener$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
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
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "previous"

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "origin"

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->rememberIssuedOrigin(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "observationVersion"

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 42
    .line 43
    sget-object p2, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->diagnosticContext()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    const-string p2, "context"

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p1, "apiOriginChanged"

    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final applyWebViewOpaque(Z)V
    .locals 6

    .line 1
    iput-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webViewOpaqueRequested:Z

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/jp/runtime/web/WebViewOpaquePolicyKt;->webViewOpaquePresentation(ZI)Lcom/jp/runtime/web/WebViewOpaquePresentation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getBackgroundColor()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getBackgroundColor()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getBackgroundColor()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getLayerKind()Lcom/jp/runtime/web/WebViewLayerKind;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    sget-object v4, Lcom/jp/runtime/web/TrustedLocalWebRuntime$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    aget v3, v4, v3

    .line 69
    .line 70
    const/4 v4, 0x2

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eq v3, v5, :cond_2

    .line 73
    .line 74
    if-ne v3, v4, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/jp/bootstrap/internal/fseadzoqiv;->tsodtn()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    move v2, v4

    .line 82
    :goto_0
    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x21

    .line 87
    .line 88
    if-lt v0, v1, :cond_3

    .line 89
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getDisableForceDark()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    xor-int/2addr v2, v5

    .line 101
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAlgorithmicDarkeningAllowed(Z)V

    .line 102
    .line 103
    .line 104
    :cond_3
    const/16 v1, 0x1d

    .line 105
    .line 106
    if-lt v0, v1, :cond_4

    .line 107
    .line 108
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebViewOpaquePresentation;->getDisableForceDark()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    xor-int/2addr p1, v5

    .line 119
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setForceDark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    nop

    .line 123
    :catchall_0
    :cond_4
    return-void
.end method

.method public static synthetic arjuqebdx(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pauseDomMedia$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final attachTo$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    sget-object v1, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/jp/bootstrap/internal/rw0;->syiqloeyp(Landroid/view/View;)Lcom/jp/bootstrap/internal/u01;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/jp/bootstrap/internal/rw0;->syiqloeyp(Landroid/view/View;)Lcom/jp/bootstrap/internal/u01;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchSafeArea()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public static synthetic bmucqf(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final bridgeTimeout$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "web_bridge_timeout"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->writeCoreFailure(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private final cancelForegroundHealth()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeTimeout:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->stableForeground:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic cauva(B)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->fingerprint$lambda$1(B)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic cdsesehahek(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->crashHandler$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ckyiuuu(Lcom/jp/bootstrap/internal/wvveclfb;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->installBridge$lambda$0$0$0(Lcom/jp/bootstrap/internal/wvveclfb;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final consumeNativeCrash()Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 2

    .line 1
    sget-object v0, Lcom/jp/runtime/web/NativeCrashLog;->INSTANCE:Lcom/jp/runtime/web/NativeCrashLog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/jp/runtime/web/NativeCrashLog;->consume(Ljava/io/File;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/jp/bootstrap/internal/cjpbeith;->jyozshuy:Lcom/jp/bootstrap/internal/kwkwsporpa;

    .line 23
    .line 24
    :cond_0
    const-string v1, "crash"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method private final copyCastPlayParams(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 4

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedCastMediaUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x78

    .line 15
    .line 16
    const-string v1, "mimeType"

    .line 17
    .line 18
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const-string v0, "title"

    .line 28
    .line 29
    const/16 v1, 0xf0

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {p2, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const-string v0, "subtitle"

    .line 41
    .line 42
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    const/16 v0, 0x4000

    .line 52
    .line 53
    const-string v1, "artworkUrl"

    .line 54
    .line 55
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p2, p0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    const-wide/16 v0, 0x0

    .line 65
    .line 66
    const-string p0, "startPositionMs"

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    cmp-long p1, v2, v0

    .line 73
    .line 74
    if-ltz p1, :cond_4

    .line 75
    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    const-string p0, "Failed requirement."

    .line 85
    .line 86
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private final copyCastPrepareParams(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string v2, "work_id"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-string v4, "workId"

    .line 10
    .line 11
    invoke-virtual {p1, v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v5, v2, v0

    .line 16
    .line 17
    if-lez v5, :cond_0

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p2, v2, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const-string v2, "episodeKey"

    .line 27
    .line 28
    const/16 v3, 0x78

    .line 29
    .line 30
    invoke-direct {p0, p1, v2, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v2, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 40
    .line 41
    const-string v4, "episodeIndex"

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const-string v5, "Failed requirement."

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {p1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ltz v2, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {p2, v2, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-static {v5}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    :goto_0
    const-string v2, "lineKey"

    .line 76
    .line 77
    invoke-direct {p0, p1, v2, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-virtual {p2, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    const-string v2, "title"

    .line 87
    .line 88
    const/16 v4, 0xf0

    .line 89
    .line 90
    invoke-direct {p0, p1, v2, v4}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    invoke-virtual {p2, v6, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    const-string v2, "subtitle"

    .line 100
    .line 101
    invoke-direct {p0, p1, v2, v4}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_6

    .line 106
    .line 107
    invoke-virtual {p2, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    const/16 v2, 0x4000

    .line 111
    .line 112
    const-string v4, "artworkUrl"

    .line 113
    .line 114
    invoke-direct {p0, p1, v4, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    invoke-virtual {p2, v2, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    const-string v2, "mimeType"

    .line 124
    .line 125
    invoke-direct {p0, p1, v2, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-eqz p0, :cond_8

    .line 130
    .line 131
    invoke-virtual {p2, p0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_8
    const-string p0, "startPositionMs"

    .line 135
    .line 136
    invoke-virtual {p1, v0, v1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    cmp-long p1, v2, v0

    .line 141
    .line 142
    if-ltz p1, :cond_9

    .line 143
    .line 144
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p2, p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_9
    invoke-static {v5}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private final copyDownloadContentIds(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;I)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "contentIds"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p1, Lcom/jp/bootstrap/internal/nxqsmsfr;->sbmzsrkn:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const-string v3, "Failed requirement."

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    if-gt v4, v2, :cond_4

    .line 32
    .line 33
    if-gt v2, p3, :cond_4

    .line 34
    .line 35
    new-instance p3, Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 36
    .line 37
    invoke-direct {p3}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jyozshuy(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-gt v4, v6, :cond_2

    .line 64
    .line 65
    const/16 v7, 0x101

    .line 66
    .line 67
    if-ge v6, v7, :cond_2

    .line 68
    .line 69
    invoke-direct {p0, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_1

    .line 74
    .line 75
    invoke-virtual {p3, v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v2, v2, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {v3}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    invoke-static {v3}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {p2, p3, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    invoke-static {v3}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    :goto_1
    return-void
.end method

.method private final copyDownloadPrefix(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    const-string v1, "prefix"

    .line 4
    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget-object p1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->DOWNLOAD_WORK_PREFIX:Lcom/jp/bootstrap/internal/u00;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/u00;->syiqloeyp(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2, p0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string p0, "Failed requirement."

    .line 24
    .line 25
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final copyDownloadScope(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const-string v1, "scope"

    .line 4
    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    const-string p1, "active"

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, "completed"

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Failed requirement."

    .line 29
    .line 30
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p2, p0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private final copyDownloadTargets(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "prefixes"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, v0, Lcom/jp/bootstrap/internal/nxqsmsfr;->sbmzsrkn:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string v4, "Failed requirement."

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-gt v5, v3, :cond_2

    .line 31
    .line 32
    const/16 v5, 0x65

    .line 33
    .line 34
    if-ge v3, v5, :cond_2

    .line 35
    .line 36
    new-instance v3, Lcom/jp/bootstrap/internal/nxqsmsfr;

    .line 37
    .line 38
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_0
    if-ge v5, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jyozshuy(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->DOWNLOAD_WORK_PREFIX:Lcom/jp/bootstrap/internal/u00;

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Lcom/jp/bootstrap/internal/u00;->syiqloeyp(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    invoke-virtual {v3, v6}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-static {v4}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    invoke-virtual {p2, v3, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-static {v4}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadPrefix(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0x100

    .line 90
    .line 91
    const-string v1, "contentId"

    .line 92
    .line 93
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p2, p0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method private static final crashHandler$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    const-string v0, "plugin_crash_"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/jp/runtime/web/NativeCrashLog;->INSTANCE:Lcom/jp/runtime/web/NativeCrashLog;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x4

    .line 18
    const/4 v7, 0x0

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    move-object v3, p2

    .line 22
    :try_start_1
    invoke-static/range {v1 .. v7}, Lcom/jp/runtime/web/NativeCrashLog;->write$default(Lcom/jp/runtime/web/NativeCrashLog;Ljava/io/File;Ljava/lang/Throwable;JILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-object v3, p2

    .line 27
    :catchall_1
    :goto_0
    iget-boolean p2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 32
    .line 33
    if-nez p2, :cond_0

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->fingerprint(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p0, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->writeCoreFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    .line 56
    .line 57
    :catchall_2
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    invoke-interface {p0, p1, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method private final createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 5

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appUserAgent:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " "

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v4, 0x0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/4 v4, 0x0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/4 v4, 0x0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 v4, 0x0
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v1, 0x0

    .line 91
    const/4 v4, 0x1
    invoke-virtual {p1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 106
    .line 107
    .line 108
    const p1, -0xededee

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lcom/jp/bootstrap/internal/cr0;

    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/jp/bootstrap/internal/cr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 117
    .line 118
    .line 119
    sget-object v1, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 120
    .line 121
    invoke-static {v0, p1}, Lcom/jp/bootstrap/internal/qw0;->jzphcv(Landroid/view/View;Lcom/jp/bootstrap/internal/wl;)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$2;

    .line 125
    .line 126
    invoke-direct {p1, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$2;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0, p1}, Lcom/jp/bootstrap/internal/a01;->syiqloeyp(Landroid/view/View;Lcom/jp/bootstrap/internal/sz0;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/jp/bootstrap/internal/lr0;

    .line 133
    .line 134
    invoke-direct {p1, p0, v0}, Lcom/jp/bootstrap/internal/lr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$3;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$3;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method

.method private static final createWebView$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/view/View;Lcom/jp/bootstrap/internal/u01;)Lcom/jp/bootstrap/internal/u01;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method

.method private static final createWebView$lambda$0$1(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/jp/bootstrap/internal/rw0;->syiqloeyp(Landroid/view/View;)Lcom/jp/bootstrap/internal/u01;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic dhjfigsvwc(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/wvveclfb;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->installBridge$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/wvveclfb;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final dispatchBridgeMessage(Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jp/bootstrap/internal/iiazsdqcp;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p2

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    :try_start_1
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_1
    move-exception v0

    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    :goto_0
    new-instance v2, Lcom/jp/bootstrap/internal/y20;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v2

    .line 22
    :goto_1
    nop

    .line 23
    instance-of v2, v0, Lcom/jp/bootstrap/internal/y20;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v0, v3

    .line 29
    :cond_0
    move-object v4, v0

    .line 30
    check-cast v4, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    const/4 v5, 0x6

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v2, "invalid_request"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object/from16 v1, p0

    .line 41
    .line 42
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-interface {v7, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    move-object/from16 v1, p0

    .line 54
    .line 55
    const-string v0, "method"

    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v4, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v5, "id"

    .line 64
    .line 65
    invoke-virtual {v4, v5, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "api.cancel"

    .line 70
    .line 71
    invoke-static {v0, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const-string v8, "params"

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {v4, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_23

    .line 84
    .line 85
    const-string v4, "requestId"

    .line 86
    .line 87
    invoke-virtual {v0, v4, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    if-eqz v0, :cond_23

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-lez v2, :cond_2

    .line 98
    .line 99
    move-object v3, v0

    .line 100
    :cond_2
    if-eqz v3, :cond_23

    .line 101
    .line 102
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/jp/runtime/web/ApiRequestControl;

    .line 109
    .line 110
    if-eqz v0, :cond_23

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/jp/runtime/web/ApiRequestControl;->cancel()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_12

    .line 116
    .line 117
    :cond_3
    const-string v2, "api.request"

    .line 118
    .line 119
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const/4 v9, 0x0

    .line 124
    const/4 v10, 0x1

    .line 125
    if-nez v2, :cond_5

    .line 126
    .line 127
    const-string v2, "api.transport"

    .line 128
    .line 129
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_5

    .line 134
    .line 135
    const-string v2, "api.secureRequest"

    .line 136
    .line 137
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_5

    .line 142
    .line 143
    const-string v2, "downloads.probe"

    .line 144
    .line 145
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    move v2, v9

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    :goto_2
    move v2, v10

    .line 155
    :goto_3
    if-nez v2, :cond_7

    .line 156
    .line 157
    const-string v6, "api.invalidateEnrollment"

    .line 158
    .line 159
    const-string v11, "diagnostics.export"

    .line 160
    .line 161
    const-string v12, "api.endpoint"

    .line 162
    .line 163
    const-string v13, "api.invalidateEndpoint"

    .line 164
    .line 165
    const-string v14, "api.observe"

    .line 166
    .line 167
    filled-new-array {v12, v13, v14, v6, v11}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v6}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    invoke-direct {v1, v4}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v7, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    goto/16 :goto_12

    .line 190
    .line 191
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 192
    .line 193
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiPayloadBudget:Lcom/jp/runtime/web/ApiBridgeBudget;

    .line 194
    .line 195
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual {v0, v6}, Lcom/jp/runtime/web/ApiBridgeBudget;->acquire(I)Ljava/lang/AutoCloseable;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    move-object v6, v0

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    move-object v6, v3

    .line 206
    :goto_5
    if-eqz v2, :cond_9

    .line 207
    .line 208
    if-nez v6, :cond_9

    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-object v3, v5

    .line 214
    const/4 v5, 0x4

    .line 215
    const/4 v6, 0x0

    .line 216
    const-string v2, "api_busy"

    .line 217
    .line 218
    const/4 v4, 0x0

    .line 219
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-interface {v7, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_9
    if-eqz v2, :cond_b

    .line 231
    .line 232
    new-instance v11, Lcom/jp/runtime/web/ApiRequestControl;

    .line 233
    .line 234
    invoke-virtual {v4, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    const-wide/16 v12, 0x2ee0

    .line 239
    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    const-string v3, "timeoutMs"

    .line 243
    .line 244
    invoke-virtual {v0, v12, v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    .line 245
    .line 246
    .line 247
    move-result-wide v12

    .line 248
    :cond_a
    const/4 v15, 0x2

    .line 249
    const/16 v16, 0x0

    .line 250
    .line 251
    const/4 v14, 0x0

    .line 252
    invoke-direct/range {v11 .. v16}, Lcom/jp/runtime/web/ApiRequestControl;-><init>(JLcom/jp/bootstrap/internal/mbwlg;ILcom/jp/bootstrap/internal/hjiaf;)V

    .line 253
    .line 254
    .line 255
    move-object v3, v11

    .line 256
    :cond_b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 257
    .line 258
    const-wide/16 v11, 0x1

    .line 259
    .line 260
    if-eqz v3, :cond_16

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-gt v10, v0, :cond_c

    .line 267
    .line 268
    const/16 v13, 0x81

    .line 269
    .line 270
    if-ge v0, v13, :cond_c

    .line 271
    .line 272
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 273
    .line 274
    invoke-virtual {v0, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-eqz v0, :cond_16

    .line 279
    .line 280
    :cond_c
    invoke-virtual {v3}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 281
    .line 282
    .line 283
    if-eqz v6, :cond_14

    .line 284
    .line 285
    instance-of v0, v6, Ljava/lang/AutoCloseable;

    .line 286
    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_d
    instance-of v0, v6, Ljava/util/concurrent/ExecutorService;

    .line 294
    .line 295
    if-eqz v0, :cond_11

    .line 296
    .line 297
    check-cast v6, Ljava/util/concurrent/ExecutorService;

    .line 298
    .line 299
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-ne v6, v0, :cond_e

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_e
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_14

    .line 311
    .line 312
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 313
    .line 314
    .line 315
    :cond_f
    :goto_6
    if-nez v0, :cond_10

    .line 316
    .line 317
    :try_start_2
    invoke-interface {v6, v11, v12, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 318
    .line 319
    .line 320
    move-result v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 321
    goto :goto_6

    .line 322
    :catch_0
    if-nez v9, :cond_f

    .line 323
    .line 324
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move v9, v10

    .line 328
    goto :goto_6

    .line 329
    :cond_10
    if-eqz v9, :cond_14

    .line 330
    .line 331
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_11
    instance-of v0, v6, Landroid/content/res/TypedArray;

    .line 340
    .line 341
    if-eqz v0, :cond_12

    .line 342
    .line 343
    check-cast v6, Landroid/content/res/TypedArray;

    .line 344
    .line 345
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 346
    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_12
    instance-of v0, v6, Landroid/media/MediaMetadataRetriever;

    .line 350
    .line 351
    if-eqz v0, :cond_13

    .line 352
    .line 353
    check-cast v6, Landroid/media/MediaMetadataRetriever;

    .line 354
    .line 355
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_13
    instance-of v0, v6, Landroid/media/MediaDrm;

    .line 360
    .line 361
    if-eqz v0, :cond_15

    .line 362
    .line 363
    check-cast v6, Landroid/media/MediaDrm;

    .line 364
    .line 365
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V

    .line 366
    .line 367
    .line 368
    :cond_14
    :goto_7
    move-object v3, v5

    .line 369
    goto :goto_8

    .line 370
    :cond_15
    invoke-static {}, Lcom/jp/bootstrap/internal/ab;->hqaldusn()V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :goto_8
    const/4 v5, 0x4

    .line 375
    const/4 v6, 0x0

    .line 376
    const-string v2, "invalid_request"

    .line 377
    .line 378
    const/4 v4, 0x0

    .line 379
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-interface {v7, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :cond_16
    if-eqz v2, :cond_17

    .line 391
    .line 392
    :try_start_3
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 393
    .line 394
    :goto_9
    move-object v13, v0

    .line 395
    goto :goto_b

    .line 396
    :catchall_2
    move-exception v0

    .line 397
    move-object v2, v3

    .line 398
    :goto_a
    move-object v3, v5

    .line 399
    goto :goto_c

    .line 400
    :cond_17
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiControlExecutor:Ljava/util/concurrent/ExecutorService;

    .line 401
    .line 402
    goto :goto_9

    .line 403
    :goto_b
    new-instance v0, Lcom/jp/bootstrap/internal/kr0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 404
    .line 405
    move-object v2, v3

    .line 406
    move-object v3, v1

    .line 407
    move-object v1, v7

    .line 408
    :try_start_4
    invoke-direct/range {v0 .. v6}, Lcom/jp/bootstrap/internal/kr0;-><init>(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/web/ApiRequestControl;Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 409
    .line 410
    .line 411
    move-object v7, v1

    .line 412
    move-object v1, v3

    .line 413
    move-object v3, v5

    .line 414
    :try_start_5
    invoke-interface {v13, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    .line 416
    .line 417
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :catchall_3
    move-exception v0

    .line 421
    goto :goto_c

    .line 422
    :catchall_4
    move-exception v0

    .line 423
    move-object v7, v1

    .line 424
    move-object v1, v3

    .line 425
    goto :goto_a

    .line 426
    :goto_c
    new-instance v4, Lcom/jp/bootstrap/internal/y20;

    .line 427
    .line 428
    invoke-direct {v4, v0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 429
    .line 430
    .line 431
    move-object v0, v4

    .line 432
    :goto_d
    invoke-static {v0}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    if-eqz v0, :cond_23

    .line 437
    .line 438
    if-eqz v2, :cond_18

    .line 439
    .line 440
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 441
    .line 442
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 446
    .line 447
    .line 448
    :cond_18
    if-eqz v6, :cond_21

    .line 449
    .line 450
    instance-of v0, v6, Ljava/lang/AutoCloseable;

    .line 451
    .line 452
    if-eqz v0, :cond_19

    .line 453
    .line 454
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    .line 455
    .line 456
    .line 457
    goto :goto_f

    .line 458
    :cond_19
    instance-of v0, v6, Ljava/util/concurrent/ExecutorService;

    .line 459
    .line 460
    if-eqz v0, :cond_1d

    .line 461
    .line 462
    check-cast v6, Ljava/util/concurrent/ExecutorService;

    .line 463
    .line 464
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    if-ne v6, v0, :cond_1a

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_1a
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-nez v0, :cond_21

    .line 476
    .line 477
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 478
    .line 479
    .line 480
    :cond_1b
    :goto_e
    if-nez v0, :cond_1c

    .line 481
    .line 482
    :try_start_6
    invoke-interface {v6, v11, v12, v8}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 483
    .line 484
    .line 485
    move-result v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 486
    goto :goto_e

    .line 487
    :catch_1
    if-nez v9, :cond_1b

    .line 488
    .line 489
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 490
    .line 491
    .line 492
    move v9, v10

    .line 493
    goto :goto_e

    .line 494
    :cond_1c
    if-eqz v9, :cond_21

    .line 495
    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 501
    .line 502
    .line 503
    goto :goto_f

    .line 504
    :cond_1d
    instance-of v0, v6, Landroid/content/res/TypedArray;

    .line 505
    .line 506
    if-eqz v0, :cond_1e

    .line 507
    .line 508
    check-cast v6, Landroid/content/res/TypedArray;

    .line 509
    .line 510
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 511
    .line 512
    .line 513
    goto :goto_f

    .line 514
    :cond_1e
    instance-of v0, v6, Landroid/media/MediaMetadataRetriever;

    .line 515
    .line 516
    if-eqz v0, :cond_1f

    .line 517
    .line 518
    check-cast v6, Landroid/media/MediaMetadataRetriever;

    .line 519
    .line 520
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 521
    .line 522
    .line 523
    goto :goto_f

    .line 524
    :cond_1f
    instance-of v0, v6, Landroid/media/MediaDrm;

    .line 525
    .line 526
    if-eqz v0, :cond_20

    .line 527
    .line 528
    check-cast v6, Landroid/media/MediaDrm;

    .line 529
    .line 530
    invoke-virtual {v6}, Landroid/media/MediaDrm;->release()V

    .line 531
    .line 532
    .line 533
    goto :goto_f

    .line 534
    :cond_20
    invoke-static {}, Lcom/jp/bootstrap/internal/ab;->hqaldusn()V

    .line 535
    .line 536
    .line 537
    return-void

    .line 538
    :cond_21
    :goto_f
    iget-boolean v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 539
    .line 540
    if-eqz v0, :cond_22

    .line 541
    .line 542
    const-string v0, "runtime_destroyed"

    .line 543
    .line 544
    :goto_10
    move-object v2, v0

    .line 545
    goto :goto_11

    .line 546
    :cond_22
    const-string v0, "api_busy"

    .line 547
    .line 548
    goto :goto_10

    .line 549
    :goto_11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    const/4 v5, 0x4

    .line 553
    const/4 v6, 0x0

    .line 554
    const/4 v4, 0x0

    .line 555
    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-interface {v7, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    :cond_23
    :goto_12
    return-void
.end method

.method private static final dispatchBridgeMessage$lambda$4$0(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/web/ApiRequestControl;Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    const-wide/16 v2, 0x1

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p2, p3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :catch_0
    move-exception p3

    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    new-instance v5, Lcom/jp/bootstrap/internal/tvyvc;

    .line 21
    .line 22
    const/16 v6, 0x12

    .line 23
    .line 24
    invoke-direct {v5, v6, p2, p3}, Lcom/jp/bootstrap/internal/tvyvc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v5}, Lcom/jp/runtime/web/ApiRequestControl;->run(Lcom/jp/bootstrap/internal/mbwlg;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 32
    .line 33
    :goto_0
    invoke-interface {p0, p3}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object p0, p2, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {p0, p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 44
    .line 45
    .line 46
    :cond_1
    if-eqz p5, :cond_13

    .line 47
    .line 48
    instance-of p0, p5, Ljava/lang/AutoCloseable;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    :goto_1
    invoke-interface {p5}, Ljava/lang/AutoCloseable;->close()V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_9

    .line 56
    .line 57
    :cond_2
    instance-of p0, p5, Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    if-eqz p0, :cond_6

    .line 60
    .line 61
    check-cast p5, Ljava/util/concurrent/ExecutorService;

    .line 62
    .line 63
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-ne p5, p0, :cond_3

    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_3
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_13

    .line 76
    .line 77
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_2
    if-nez p0, :cond_5

    .line 81
    .line 82
    :try_start_1
    invoke-interface {p5, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 83
    .line 84
    .line 85
    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    if-nez v4, :cond_4

    .line 88
    .line 89
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move v4, v0

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    if-eqz v4, :cond_13

    .line 95
    .line 96
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_9

    .line 104
    .line 105
    :cond_6
    instance-of p0, p5, Landroid/content/res/TypedArray;

    .line 106
    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    :goto_4
    check-cast p5, Landroid/content/res/TypedArray;

    .line 110
    .line 111
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_7
    instance-of p0, p5, Landroid/media/MediaMetadataRetriever;

    .line 117
    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    :goto_5
    check-cast p5, Landroid/media/MediaMetadataRetriever;

    .line 121
    .line 122
    invoke-virtual {p5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_9

    .line 126
    .line 127
    :cond_8
    instance-of p0, p5, Landroid/media/MediaDrm;

    .line 128
    .line 129
    if-eqz p0, :cond_9

    .line 130
    .line 131
    :goto_6
    check-cast p5, Landroid/media/MediaDrm;

    .line 132
    .line 133
    invoke-virtual {p5}, Landroid/media/MediaDrm;->release()V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_9
    invoke-static {}, Lcom/jp/bootstrap/internal/ab;->hqaldusn()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_7
    :try_start_2
    const-string v5, "api_request_cancelled"

    .line 143
    .line 144
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-direct {p2, p3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiFailureContext(Ljava/io/IOException;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    invoke-direct {p2, v5, p4, p3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-interface {p0, p3}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .line 160
    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    iget-object p0, p2, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    .line 165
    invoke-virtual {p0, p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 169
    .line 170
    .line 171
    :cond_a
    if-eqz p5, :cond_13

    .line 172
    .line 173
    instance-of p0, p5, Ljava/lang/AutoCloseable;

    .line 174
    .line 175
    if-eqz p0, :cond_b

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_b
    instance-of p0, p5, Ljava/util/concurrent/ExecutorService;

    .line 179
    .line 180
    if-eqz p0, :cond_f

    .line 181
    .line 182
    check-cast p5, Ljava/util/concurrent/ExecutorService;

    .line 183
    .line 184
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    if-ne p5, p0, :cond_c

    .line 189
    .line 190
    goto :goto_9

    .line 191
    :cond_c
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-nez p0, :cond_13

    .line 196
    .line 197
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 198
    .line 199
    .line 200
    :cond_d
    :goto_8
    if-nez p0, :cond_e

    .line 201
    .line 202
    :try_start_3
    invoke-interface {p5, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 203
    .line 204
    .line 205
    move-result p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 206
    goto :goto_8

    .line 207
    :catch_2
    if-nez v4, :cond_d

    .line 208
    .line 209
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move v4, v0

    .line 213
    goto :goto_8

    .line 214
    :cond_e
    if-eqz v4, :cond_13

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_f
    instance-of p0, p5, Landroid/content/res/TypedArray;

    .line 218
    .line 219
    if-eqz p0, :cond_10

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_10
    instance-of p0, p5, Landroid/media/MediaMetadataRetriever;

    .line 223
    .line 224
    if-eqz p0, :cond_11

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_11
    instance-of p0, p5, Landroid/media/MediaDrm;

    .line 228
    .line 229
    if-eqz p0, :cond_12

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_12
    invoke-static {}, Lcom/jp/bootstrap/internal/ab;->hqaldusn()V

    .line 233
    .line 234
    .line 235
    :cond_13
    :goto_9
    return-void

    .line 236
    :goto_a
    if-eqz p1, :cond_14

    .line 237
    .line 238
    iget-object p2, p2, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 239
    .line 240
    invoke-virtual {p2, p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 244
    .line 245
    .line 246
    :cond_14
    if-eqz p5, :cond_1c

    .line 247
    .line 248
    instance-of p1, p5, Ljava/lang/AutoCloseable;

    .line 249
    .line 250
    if-nez p1, :cond_1b

    .line 251
    .line 252
    instance-of p1, p5, Ljava/util/concurrent/ExecutorService;

    .line 253
    .line 254
    if-eqz p1, :cond_17

    .line 255
    .line 256
    check-cast p5, Ljava/util/concurrent/ExecutorService;

    .line 257
    .line 258
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-eq p5, p1, :cond_1c

    .line 263
    .line 264
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_1c

    .line 269
    .line 270
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 271
    .line 272
    .line 273
    :cond_15
    :goto_b
    if-nez p1, :cond_16

    .line 274
    .line 275
    :try_start_4
    invoke-interface {p5, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 276
    .line 277
    .line 278
    move-result p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    goto :goto_b

    .line 280
    :catch_3
    if-nez v4, :cond_15

    .line 281
    .line 282
    invoke-interface {p5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move v4, v0

    .line 286
    goto :goto_b

    .line 287
    :cond_16
    if-eqz v4, :cond_1c

    .line 288
    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 294
    .line 295
    .line 296
    goto :goto_c

    .line 297
    :cond_17
    instance-of p1, p5, Landroid/content/res/TypedArray;

    .line 298
    .line 299
    if-nez p1, :cond_1a

    .line 300
    .line 301
    instance-of p1, p5, Landroid/media/MediaMetadataRetriever;

    .line 302
    .line 303
    if-nez p1, :cond_19

    .line 304
    .line 305
    instance-of p1, p5, Landroid/media/MediaDrm;

    .line 306
    .line 307
    if-nez p1, :cond_18

    .line 308
    .line 309
    invoke-static {}, Lcom/jp/bootstrap/internal/ab;->hqaldusn()V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_18
    check-cast p5, Landroid/media/MediaDrm;

    .line 314
    .line 315
    invoke-virtual {p5}, Landroid/media/MediaDrm;->release()V

    .line 316
    .line 317
    .line 318
    goto :goto_c

    .line 319
    :cond_19
    check-cast p5, Landroid/media/MediaMetadataRetriever;

    .line 320
    .line 321
    invoke-virtual {p5}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 322
    .line 323
    .line 324
    goto :goto_c

    .line 325
    :cond_1a
    check-cast p5, Landroid/content/res/TypedArray;

    .line 326
    .line 327
    invoke-virtual {p5}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    .line 329
    .line 330
    goto :goto_c

    .line 331
    :cond_1b
    invoke-interface {p5}, Ljava/lang/AutoCloseable;->close()V

    .line 332
    .line 333
    .line 334
    :cond_1c
    :goto_c
    throw p0
.end method

.method private static final dispatchBridgeMessage$lambda$4$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final dispatchConnectivityState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/jp/bootstrap/internal/br0;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final dispatchConnectivityState$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/16 v4, 0xc

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    move v4, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v4, v2

    .line 37
    :goto_0
    const-string v5, "connected"

    .line 38
    .line 39
    invoke-virtual {v1, v5, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const/16 v4, 0x10

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v3, :cond_2

    .line 51
    .line 52
    move v5, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v5, v2

    .line 55
    :goto_1
    const-string v6, "validated"

    .line 56
    .line 57
    invoke-virtual {v1, v6, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 61
    .line 62
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const-string v6, "metered"

    .line 67
    .line 68
    invoke-virtual {v1, v6, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    const-string v5, "connectivityChanged"

    .line 72
    .line 73
    invoke-virtual {p0, v5, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-ne v1, v3, :cond_6

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    const-string v0, "wifi"

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    const-string v0, "cellular"

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const/4 v1, 0x3

    .line 107
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    const-string v0, "ethernet"

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const-string v0, "unknown"

    .line 117
    .line 118
    :goto_2
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiControlExecutor:Ljava/util/concurrent/ExecutorService;

    .line 129
    .line 130
    new-instance v4, Lcom/jp/bootstrap/internal/er0;

    .line 131
    .line 132
    invoke-direct {v4, p0, v0, v1, v3}, Lcom/jp/bootstrap/internal/er0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    :catchall_0
    :cond_6
    :goto_3
    return-void
.end method

.method private static final dispatchConnectivityState$lambda$0$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, p2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->onNetworkChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :catchall_0
    return-void
.end method

.method public static synthetic dispatchEvent$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static final dispatchEvent$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "window.dispatchEvent(new CustomEvent("

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ",{detail:"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, "}))"

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private final dispatchSafeArea()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeSafeArea;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "top"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeSafeArea;->getBottom()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "bottom"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeSafeArea;->getLeft()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "left"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeSafeArea;->getRight()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "right"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeSafeArea;->getImeBottom()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "imeBottom"

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v1, "setSafeArea"

    .line 87
    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static synthetic dujeewwyska(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->createWebView$lambda$0$1(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic dwcjxttbbo(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiOriginListener$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ealgnqalat(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->sendUpstream$lambda$0$0(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic edtsi(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$15(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final endpointReply(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "origin"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->rememberIssuedOrigin(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "observationVersion"

    .line 20
    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "transportVersion"

    .line 25
    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method private final errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 1

    .line 1
    new-instance p0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "id"

    .line 13
    .line 14
    invoke-virtual {p0, p2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const-string p2, "ok"

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 24
    .line 25
    invoke-direct {p2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "code"

    .line 29
    .line 30
    invoke-virtual {p2, p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    iget-object p1, p3, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    const-string p1, "context"

    .line 44
    .line 45
    invoke-virtual {p2, p3, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string p1, "error"

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static synthetic errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private final executeBridgeApiRequest(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 12

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x5

    .line 14
    const/4 v4, 0x0

    .line 15
    if-gt v3, v2, :cond_12

    .line 16
    .line 17
    const/16 v3, 0x1001

    .line 18
    .line 19
    if-ge v2, v3, :cond_12

    .line 20
    .line 21
    new-instance v7, Ljava/net/URI;

    .line 22
    .line 23
    invoke-direct {v7, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, ""

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    move-object v0, v2

    .line 35
    :cond_0
    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_11

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_11

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_11

    .line 52
    .line 53
    invoke-virtual {v7}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v5, "/api/"

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-static {v3, v5, v6}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_11

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const-string v8, "\\"

    .line 77
    .line 78
    invoke-static {v3, v8, v6}, Lcom/jp/bootstrap/internal/gi0;->gbursjlv(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_11

    .line 83
    .line 84
    invoke-static {v0, v5, v6}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_11

    .line 89
    .line 90
    invoke-static {v0, v8, v6}, Lcom/jp/bootstrap/internal/gi0;->gbursjlv(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_11

    .line 95
    .line 96
    const/4 v3, 0x1

    .line 97
    new-array v3, v3, [C

    .line 98
    .line 99
    const/16 v5, 0x2f

    .line 100
    .line 101
    aput-char v5, v3, v6

    .line 102
    .line 103
    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/gi0;->taplwdejpie(Ljava/lang/String;[C)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Ljava/lang/String;

    .line 129
    .line 130
    const-string v5, "."

    .line 131
    .line 132
    invoke-static {v3, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-nez v5, :cond_11

    .line 137
    .line 138
    const-string v5, ".."

    .line 139
    .line 140
    invoke-static {v3, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_11

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    :goto_1
    const-string v0, "method"

    .line 148
    .line 149
    const-string v3, "GET"

    .line 150
    .line 151
    invoke-virtual {p1, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->ALLOWED_API_METHODS:Ljava/util/Set;

    .line 168
    .line 169
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_10

    .line 174
    .line 175
    const-string v0, "body"

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    const-string v5, "bodyBase64"

    .line 182
    .line 183
    if-eqz v3, :cond_4

    .line 184
    .line 185
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-nez v3, :cond_3

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_3
    const-string p0, "api_body_ambiguous"

    .line 193
    .line 194
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v4

    .line 198
    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    invoke-virtual {p1, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :goto_3
    move-object v10, v0

    .line 213
    goto :goto_4

    .line 214
    :cond_5
    invoke-virtual {p1, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    sget-object v1, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :goto_4
    array-length v0, v10

    .line 232
    const/high16 v1, 0x600000

    .line 233
    .line 234
    if-gt v0, v1, :cond_f

    .line 235
    .line 236
    sget-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->BODYLESS_API_METHODS:Ljava/util/Set;

    .line 237
    .line 238
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_7

    .line 243
    .line 244
    array-length v0, v10

    .line 245
    if-nez v0, :cond_6

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_6
    const-string p0, "api_body_not_allowed"

    .line 249
    .line 250
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-object v4

    .line 254
    :cond_7
    :goto_5
    const-string v0, "headers"

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-nez p1, :cond_8

    .line 261
    .line 262
    new-instance p1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 263
    .line 264
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 265
    .line 266
    .line 267
    :cond_8
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    const/16 v1, 0x20

    .line 274
    .line 275
    if-gt v0, v1, :cond_e

    .line 276
    .line 277
    new-instance v0, Lcom/jp/bootstrap/internal/k9;

    .line 278
    .line 279
    invoke-direct {v0}, Lcom/jp/bootstrap/internal/k9;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/cjpbeith;->wyjqgzdhz()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_d

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    check-cast v2, Ljava/lang/String;

    .line 300
    .line 301
    sget-object v3, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->HEADER_NAME:Lcom/jp/bootstrap/internal/u00;

    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v2}, Lcom/jp/bootstrap/internal/u00;->syiqloeyp(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-eqz v3, :cond_c

    .line 311
    .line 312
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 313
    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    sget-object v5, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->ALLOWED_API_HEADERS:Ljava/util/Set;

    .line 322
    .line 323
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-nez v5, :cond_a

    .line 328
    .line 329
    const-string v5, "x-"

    .line 330
    .line 331
    invoke-static {v3, v5, v6}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_9

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_9
    const-string p0, "api_header_not_allowed"

    .line 339
    .line 340
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return-object v4

    .line 344
    :cond_a
    :goto_7
    invoke-virtual {p1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    const/16 v9, 0x2000

    .line 353
    .line 354
    if-gt v5, v9, :cond_b

    .line 355
    .line 356
    const/16 v5, 0xd

    .line 357
    .line 358
    invoke-static {v3, v5}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-nez v5, :cond_b

    .line 363
    .line 364
    const/16 v5, 0xa

    .line 365
    .line 366
    invoke-static {v3, v5}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_b

    .line 371
    .line 372
    invoke-virtual {v0, v2, v3}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_b
    const-string p0, "api_header_value_invalid"

    .line 377
    .line 378
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    return-object v4

    .line 382
    :cond_c
    const-string p0, "api_header_name_invalid"

    .line 383
    .line 384
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    return-object v4

    .line 388
    :cond_d
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/k9;->jzphcv()Lcom/jp/bootstrap/internal/k9;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    new-instance v5, Lcom/jp/bootstrap/internal/rfnzlh;

    .line 393
    .line 394
    const/4 v11, 0x1

    .line 395
    move-object v6, p0

    .line 396
    invoke-direct/range {v5 .. v11}, Lcom/jp/bootstrap/internal/rfnzlh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 397
    .line 398
    .line 399
    invoke-direct {v6, v8, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->recoverUpstream(Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 400
    .line 401
    .line 402
    move-result-object p0

    .line 403
    return-object p0

    .line 404
    :cond_e
    const-string p0, "api_headers_too_many"

    .line 405
    .line 406
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    return-object v4

    .line 410
    :cond_f
    const-string p0, "api_body_too_large"

    .line 411
    .line 412
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    return-object v4

    .line 416
    :cond_10
    const-string p0, "api_method_invalid"

    .line 417
    .line 418
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-object v4

    .line 422
    :cond_11
    const-string p0, "api_path_invalid"

    .line 423
    .line 424
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-object v4

    .line 428
    :cond_12
    const-string p0, "api_path_length"

    .line 429
    .line 430
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    return-object v4
.end method

.method private static final executeBridgeApiRequest$lambda$9(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;[B)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->sendUpstream(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;[B)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private final executeSecureBridgeApiRequest(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "path"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    iget-object v2, v1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x5

    .line 18
    const/4 v6, 0x0

    .line 19
    if-gt v4, v3, :cond_1c

    .line 20
    .line 21
    const/16 v4, 0x1001

    .line 22
    .line 23
    if-ge v3, v4, :cond_1c

    .line 24
    .line 25
    new-instance v3, Ljava/net/URI;

    .line 26
    .line 27
    invoke-direct {v3, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v7, ""

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    move-object v4, v7

    .line 39
    :cond_0
    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    if-nez v8, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    if-nez v8, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const-string v9, "/api/v1/"

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    invoke-static {v8, v9, v10}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    const-string v8, "\\"

    .line 81
    .line 82
    invoke-static {v3, v8, v10}, Lcom/jp/bootstrap/internal/gi0;->gbursjlv(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    invoke-static {v4, v9, v10}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    invoke-static {v4, v8, v10}, Lcom/jp/bootstrap/internal/gi0;->gbursjlv(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_2

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    new-array v8, v3, [C

    .line 102
    .line 103
    const/16 v9, 0x2f

    .line 104
    .line 105
    aput-char v9, v8, v10

    .line 106
    .line 107
    invoke-static {v4, v8}, Lcom/jp/bootstrap/internal/gi0;->taplwdejpie(Ljava/lang/String;[C)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Ljava/lang/String;

    .line 133
    .line 134
    const-string v9, "."

    .line 135
    .line 136
    invoke-static {v8, v9}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-nez v9, :cond_2

    .line 141
    .line 142
    const-string v9, ".."

    .line 143
    .line 144
    invoke-static {v8, v9}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-nez v8, :cond_2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    move-object/from16 v17, v6

    .line 152
    .line 153
    goto/16 :goto_e

    .line 154
    .line 155
    :cond_3
    :goto_1
    const-string v4, "method"

    .line 156
    .line 157
    const-string v8, "GET"

    .line 158
    .line 159
    invoke-virtual {v1, v4, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 167
    .line 168
    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    sget-object v9, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->ALLOWED_API_METHODS:Ljava/util/Set;

    .line 176
    .line 177
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-eqz v9, :cond_1b

    .line 182
    .line 183
    const-string v9, "auth"

    .line 184
    .line 185
    const-string v11, "none"

    .line 186
    .line 187
    invoke-virtual {v1, v9, v11}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget-object v9, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->API_AUTH_MODES:Ljava/util/Set;

    .line 202
    .line 203
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-eqz v9, :cond_1a

    .line 208
    .line 209
    const-string v9, "body"

    .line 210
    .line 211
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    const-string v13, "bodyBase64"

    .line 216
    .line 217
    if-eqz v12, :cond_5

    .line 218
    .line 219
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-nez v12, :cond_4

    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_4
    const-string v0, "api_body_ambiguous"

    .line 227
    .line 228
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-object v6

    .line 232
    :cond_5
    :goto_2
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-eqz v12, :cond_6

    .line 237
    .line 238
    invoke-virtual {v1, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-static {v7, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    goto :goto_3

    .line 247
    :cond_6
    invoke-virtual {v1, v9, v7}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    sget-object v12, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 255
    .line 256
    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    :goto_3
    array-length v12, v7

    .line 264
    const/high16 v14, 0x600000

    .line 265
    .line 266
    if-gt v12, v14, :cond_19

    .line 267
    .line 268
    sget-object v12, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->BODYLESS_API_METHODS:Ljava/util/Set;

    .line 269
    .line 270
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v12

    .line 274
    if-eqz v12, :cond_8

    .line 275
    .line 276
    array-length v12, v7

    .line 277
    if-nez v12, :cond_7

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_7
    const-string v0, "api_body_not_allowed"

    .line 281
    .line 282
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-object v6

    .line 286
    :cond_8
    :goto_4
    const-string v12, "headers"

    .line 287
    .line 288
    invoke-virtual {v1, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-nez v1, :cond_9

    .line 293
    .line 294
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 295
    .line 296
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 297
    .line 298
    .line 299
    :cond_9
    iget-object v14, v1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 300
    .line 301
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    const/16 v15, 0x20

    .line 306
    .line 307
    if-gt v14, v15, :cond_18

    .line 308
    .line 309
    new-instance v14, Lcom/jp/bootstrap/internal/k9;

    .line 310
    .line 311
    invoke-direct {v14}, Lcom/jp/bootstrap/internal/k9;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/cjpbeith;->wyjqgzdhz()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v16

    .line 325
    if-eqz v16, :cond_c

    .line 326
    .line 327
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v16

    .line 331
    move-object/from16 v17, v6

    .line 332
    .line 333
    move-object/from16 v6, v16

    .line 334
    .line 335
    check-cast v6, Ljava/lang/String;

    .line 336
    .line 337
    sget-object v3, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->HEADER_NAME:Lcom/jp/bootstrap/internal/u00;

    .line 338
    .line 339
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v6}, Lcom/jp/bootstrap/internal/u00;->syiqloeyp(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_b

    .line 347
    .line 348
    invoke-virtual {v1, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    move-object/from16 p1, v1

    .line 357
    .line 358
    const/16 v1, 0x2000

    .line 359
    .line 360
    if-gt v10, v1, :cond_a

    .line 361
    .line 362
    const/16 v1, 0xd

    .line 363
    .line 364
    invoke-static {v3, v1}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_a

    .line 369
    .line 370
    const/16 v1, 0xa

    .line 371
    .line 372
    invoke-static {v3, v1}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-nez v1, :cond_a

    .line 377
    .line 378
    invoke-virtual {v14, v6, v3}, Lcom/jp/bootstrap/internal/k9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    move-object/from16 v6, v17

    .line 384
    .line 385
    const/4 v3, 0x1

    .line 386
    const/4 v10, 0x0

    .line 387
    goto :goto_5

    .line 388
    :cond_a
    const-string v0, "api_header_value_invalid"

    .line 389
    .line 390
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    return-object v17

    .line 394
    :cond_b
    const-string v0, "api_header_name_invalid"

    .line 395
    .line 396
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-object v17

    .line 400
    :cond_c
    move-object/from16 v17, v6

    .line 401
    .line 402
    invoke-virtual {v14}, Lcom/jp/bootstrap/internal/k9;->jzphcv()Lcom/jp/bootstrap/internal/k9;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/k9;->entrySet()Ljava/util/Set;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-eqz v6, :cond_e

    .line 419
    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    move-object v10, v6

    .line 425
    check-cast v10, Ljava/util/Map$Entry;

    .line 426
    .line 427
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    check-cast v10, Ljava/lang/String;

    .line 432
    .line 433
    const-string v14, "Content-Type"

    .line 434
    .line 435
    invoke-static {v10, v14}, Lcom/jp/bootstrap/internal/ni0;->nawz(Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    if-eqz v10, :cond_d

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_e
    move-object/from16 v6, v17

    .line 443
    .line 444
    :goto_6
    check-cast v6, Ljava/util/Map$Entry;

    .line 445
    .line 446
    if-eqz v6, :cond_f

    .line 447
    .line 448
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    check-cast v3, Ljava/lang/String;

    .line 453
    .line 454
    if-eqz v3, :cond_f

    .line 455
    .line 456
    invoke-static {v3}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    goto :goto_7

    .line 465
    :cond_f
    move-object/from16 v3, v17

    .line 466
    .line 467
    :goto_7
    if-eqz v3, :cond_11

    .line 468
    .line 469
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 470
    .line 471
    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    const-string v10, "multipart/form-data; boundary="

    .line 479
    .line 480
    const/4 v14, 0x0

    .line 481
    invoke-static {v6, v10, v14}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 482
    .line 483
    .line 484
    move-result v6

    .line 485
    const/4 v10, 0x1

    .line 486
    if-ne v6, v10, :cond_10

    .line 487
    .line 488
    const/4 v10, 0x1

    .line 489
    goto :goto_9

    .line 490
    :cond_10
    :goto_8
    move v10, v14

    .line 491
    goto :goto_9

    .line 492
    :cond_11
    const/4 v14, 0x0

    .line 493
    goto :goto_8

    .line 494
    :goto_9
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_13

    .line 499
    .line 500
    const-string v2, "/api/v1/me/avatar"

    .line 501
    .line 502
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    if-eqz v2, :cond_12

    .line 507
    .line 508
    const-string v2, "POST"

    .line 509
    .line 510
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    if-eqz v2, :cond_12

    .line 515
    .line 516
    if-eqz v10, :cond_12

    .line 517
    .line 518
    array-length v2, v7

    .line 519
    if-eqz v2, :cond_12

    .line 520
    .line 521
    goto :goto_a

    .line 522
    :cond_12
    const-string v0, "api_raw_body_not_allowed"

    .line 523
    .line 524
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    return-object v17

    .line 528
    :cond_13
    :goto_a
    if-eqz v10, :cond_15

    .line 529
    .line 530
    move-object v2, v9

    .line 531
    move-object v9, v3

    .line 532
    sget-object v3, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->INSTANCE:Lcom/jp/runtime/web/RuntimeEncryptedApiClient;

    .line 533
    .line 534
    move-object v6, v4

    .line 535
    iget-object v4, v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 536
    .line 537
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    if-eqz v9, :cond_14

    .line 541
    .line 542
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    const/16 v16, 0x1

    .line 547
    .line 548
    xor-int/lit8 v11, v0, 0x1

    .line 549
    .line 550
    const/16 v14, 0x340

    .line 551
    .line 552
    const/4 v15, 0x0

    .line 553
    const/4 v10, 0x0

    .line 554
    move-object v0, v12

    .line 555
    const/4 v12, 0x0

    .line 556
    const/4 v13, 0x0

    .line 557
    move-object v8, v1

    .line 558
    move-object v1, v0

    .line 559
    invoke-static/range {v3 .. v15}, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->exchangeRaw$default(Lcom/jp/runtime/web/RuntimeEncryptedApiClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;ZZZZILjava/lang/Object;)Lcom/jp/runtime/web/RuntimeApiResponse;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    goto :goto_d

    .line 564
    :cond_14
    const-string v0, "Required value was null."

    .line 565
    .line 566
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    return-object v17

    .line 570
    :cond_15
    move-object v3, v1

    .line 571
    move-object v6, v4

    .line 572
    move-object v2, v9

    .line 573
    move-object v1, v12

    .line 574
    array-length v4, v7

    .line 575
    if-nez v4, :cond_16

    .line 576
    .line 577
    move-object/from16 v7, v17

    .line 578
    .line 579
    :cond_16
    if-eqz v7, :cond_17

    .line 580
    .line 581
    new-instance v4, Ljava/lang/String;

    .line 582
    .line 583
    sget-object v9, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 584
    .line 585
    invoke-direct {v4, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 586
    .line 587
    .line 588
    new-instance v7, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 589
    .line 590
    invoke-direct {v7, v4}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :goto_b
    move-object v4, v3

    .line 594
    goto :goto_c

    .line 595
    :cond_17
    move-object/from16 v7, v17

    .line 596
    .line 597
    goto :goto_b

    .line 598
    :goto_c
    sget-object v3, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->INSTANCE:Lcom/jp/runtime/web/RuntimeEncryptedApiClient;

    .line 599
    .line 600
    iget-object v0, v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    const/16 v16, 0x1

    .line 610
    .line 611
    xor-int/lit8 v10, v8, 0x1

    .line 612
    .line 613
    const/16 v13, 0x1a0

    .line 614
    .line 615
    const/4 v14, 0x0

    .line 616
    const/4 v9, 0x0

    .line 617
    const/4 v11, 0x0

    .line 618
    const/4 v12, 0x0

    .line 619
    move-object v8, v4

    .line 620
    move-object v4, v0

    .line 621
    invoke-static/range {v3 .. v14}, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->exchange$default(Lcom/jp/runtime/web/RuntimeEncryptedApiClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;Ljava/util/Map;ZZZZILjava/lang/Object;)Lcom/jp/runtime/web/RuntimeApiResponse;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    :goto_d
    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 626
    .line 627
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Lcom/jp/runtime/web/RuntimeApiResponse;->getStatus()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    .line 636
    .line 637
    move-result-object v4

    .line 638
    const-string v5, "status"

    .line 639
    .line 640
    invoke-virtual {v3, v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v4, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 644
    .line 645
    invoke-virtual {v0}, Lcom/jp/runtime/web/RuntimeApiResponse;->getHeaders()Ljava/util/Map;

    .line 646
    .line 647
    .line 648
    move-result-object v5

    .line 649
    invoke-direct {v4, v5}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/util/Map;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v3, v4, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    new-instance v1, Ljava/lang/String;

    .line 656
    .line 657
    invoke-virtual {v0}, Lcom/jp/runtime/web/RuntimeApiResponse;->getBody()[B

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    sget-object v4, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 662
    .line 663
    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v3, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    .line 668
    .line 669
    return-object v3

    .line 670
    :cond_18
    move-object/from16 v17, v6

    .line 671
    .line 672
    const-string v0, "api_headers_too_many"

    .line 673
    .line 674
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    return-object v17

    .line 678
    :cond_19
    move-object/from16 v17, v6

    .line 679
    .line 680
    const-string v0, "api_body_too_large"

    .line 681
    .line 682
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    return-object v17

    .line 686
    :cond_1a
    move-object/from16 v17, v6

    .line 687
    .line 688
    const-string v0, "api_auth_mode_invalid"

    .line 689
    .line 690
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    return-object v17

    .line 694
    :cond_1b
    move-object/from16 v17, v6

    .line 695
    .line 696
    const-string v0, "api_method_invalid"

    .line 697
    .line 698
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    return-object v17

    .line 702
    :goto_e
    const-string v0, "api_path_invalid"

    .line 703
    .line 704
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    return-object v17

    .line 708
    :cond_1c
    move-object/from16 v17, v6

    .line 709
    .line 710
    const-string v0, "api_path_length"

    .line 711
    .line 712
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    return-object v17
.end method

.method private final exportDiagnosticLog(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const-string v2, "Failed requirement."

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-lt v0, v1, :cond_5

    .line 9
    .line 10
    const-string v0, "filename"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    if-gt v5, v4, :cond_4

    .line 30
    .line 31
    const/16 v6, 0x79

    .line 32
    .line 33
    if-ge v4, v6, :cond_4

    .line 34
    .line 35
    const-string v4, ".json"

    .line 36
    .line 37
    invoke-static {v1, v4, v5}, Lcom/jp/bootstrap/internal/ni0;->punn(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_4

    .line 42
    .line 43
    const-string v4, "^[A-Za-z0-9._-]+$"

    .line 44
    .line 45
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    const-string v4, "content"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v4, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    array-length v4, p1

    .line 78
    if-gt v5, v4, :cond_3

    .line 79
    .line 80
    const v6, 0x80001

    .line 81
    .line 82
    .line 83
    if-ge v4, v6, :cond_3

    .line 84
    .line 85
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v4, Landroid/content/ContentValues;

    .line 92
    .line 93
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "_display_name"

    .line 97
    .line 98
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v6, "mime_type"

    .line 102
    .line 103
    const-string v7, "application/json"

    .line 104
    .line 105
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v6, "relative_path"

    .line 109
    .line 110
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "is_pending"

    .line 120
    .line 121
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    .line 123
    .line 124
    sget-object v5, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 125
    .line 126
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_2

    .line 131
    .line 132
    :try_start_0
    const-string v5, "w"

    .line 133
    .line 134
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v5, :cond_1

    .line 139
    .line 140
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    .line 142
    .line 143
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroid/content/ContentValues;

    .line 147
    .line 148
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .line 150
    .line 151
    const/4 v5, 0x0

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {p1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v4, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    if-lez p1, :cond_0

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object p0

    .line 173
    :cond_0
    :try_start_3
    const-string p0, "diagnostic_export_publish_failed"

    .line 174
    .line 175
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_0

    .line 183
    :catchall_1
    move-exception p0

    .line 184
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 185
    :catchall_2
    move-exception p1

    .line 186
    :try_start_5
    invoke-static {v5, p0}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    const-string p1, "diagnostic_export_open_failed"

    .line 193
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    :goto_0
    :try_start_6
    invoke-virtual {v2, v4, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    .line 200
    .line 201
    :catchall_3
    throw p0

    .line 202
    :cond_2
    const-string p0, "Required value was null."

    .line 203
    .line 204
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v3

    .line 208
    :cond_3
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object v3

    .line 212
    :cond_4
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_5
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v3
.end method

.method private final fingerprint(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    array-length v0, p0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-lt v1, v0, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lcom/jp/bootstrap/internal/buafbkifn;->qjftdstsck([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    move-object v3, p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/jp/bootstrap/internal/buafbkifn;->vdoha([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    new-instance v7, Lcom/jp/bootstrap/internal/c70;

    .line 33
    .line 34
    const/16 p0, 0xc

    .line 35
    .line 36
    invoke-direct {v7, p0}, Lcom/jp/bootstrap/internal/c70;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/16 v8, 0x1e

    .line 40
    .line 41
    const-string v4, "|"

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-static/range {v3 .. v8}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->odgej(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "SHA-256"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v3, "|"

    .line 64
    .line 65
    invoke-static {p1, v3, p0}, Lcom/jp/bootstrap/internal/pzmovkl;->gbcohonrle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object p1, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    array-length p1, p0

    .line 86
    const/4 v0, 0x1

    .line 87
    if-lt v1, p1, :cond_4

    .line 88
    .line 89
    array-length p1, p0

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    if-eq p1, v0, :cond_2

    .line 93
    .line 94
    new-instance p1, Ljava/util/ArrayList;

    .line 95
    .line 96
    array-length v0, p0

    .line 97
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    array-length v0, p0

    .line 101
    :goto_2
    if-ge v2, v0, :cond_1

    .line 102
    .line 103
    aget-byte v1, p0, v2

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_3
    move-object v5, p1

    .line 116
    goto :goto_5

    .line 117
    :cond_2
    aget-byte p0, p0, v2

    .line 118
    .line 119
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Lcom/jp/bootstrap/internal/zatkzfy;->dwcjxttbbo(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    sget-object p1, Lcom/jp/bootstrap/internal/ynthpuvskul;->sbmzsrkn:Lcom/jp/bootstrap/internal/ynthpuvskul;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .line 135
    .line 136
    array-length v3, p0

    .line 137
    move v4, v2

    .line 138
    :goto_4
    if-ge v2, v3, :cond_1

    .line 139
    .line 140
    aget-byte v5, p0, v2

    .line 141
    .line 142
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    add-int/2addr v4, v0

    .line 150
    if-ne v4, v1, :cond_5

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :goto_5
    new-instance v9, Lcom/jp/bootstrap/internal/c70;

    .line 157
    .line 158
    const/16 p0, 0xd

    .line 159
    .line 160
    invoke-direct {v9, p0}, Lcom/jp/bootstrap/internal/c70;-><init>(I)V

    .line 161
    .line 162
    .line 163
    const/16 v10, 0x1e

    .line 164
    .line 165
    const-string v6, ""

    .line 166
    .line 167
    const/4 v7, 0x0

    .line 168
    const/4 v8, 0x0

    .line 169
    invoke-static/range {v5 .. v10}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->odgej(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0
.end method

.method private static final fingerprint$lambda$0(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, "."

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private static final fingerprint$lambda$1(B)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "%02x"

    .line 15
    .line 16
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic fugymz(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$6(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic gbcohonrle(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic gbursjlv(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->fingerprint$lambda$0(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic gfcrkryqbn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchConnectivityState$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic gtnruhk(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$42(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final handleMessage(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v0, "libraryScope"

    const-string v3, "work"

    const-string v4, "rollup"

    const-string v5, "limit"

    const-string v6, "offset"

    const-string v7, "params"

    const-string v8, "method"

    const-string v9, "obscured"

    const-string v10, "visible"

    const-string v11, "volume"

    const-string v12, "maxParallel"

    const-string v13, "wifiOnly"

    const-string v14, "muted"

    const-string v15, "systemChooser"

    move-object/from16 v16, v9

    const-string v9, "batch"

    move-object/from16 v17, v12

    const-string v12, "includeAdult"

    move-object/from16 v18, v13

    const-string v13, "id"

    move-object/from16 v19, v10

    const-string v10, "enabled"

    const/16 v20, 0x0

    move-object/from16 v21, v10

    .line 2
    :try_start_0
    invoke-virtual {v2, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v10

    .line 3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v23, v13

    const/4 v13, 0x1

    move-object/from16 v24, v11

    const-string v11, "Failed requirement."

    if-gt v13, v10, :cond_9c

    const/16 v13, 0x81

    if-ge v10, v13, :cond_9c

    .line 4
    :try_start_1
    const-string v10, "protocol"

    invoke-virtual {v2, v10}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "2."

    invoke-static {v10, v13}, Lcom/jp/bootstrap/internal/ni0;->tscplbdu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 5
    invoke-virtual {v2, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-virtual {v2, v7}, Lcom/jp/bootstrap/internal/cjpbeith;->yfqpbrvsm(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v13

    if-eqz v10, :cond_9a

    .line 7
    invoke-static {v10}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->isTvBlockedCommand(Ljava/lang/String;)Z
    move-result v27
    if-eqz v27, :tv_command_allowed
    invoke-direct {v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->tvDisabledReply(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    move-result-object v27
    return-object v27
    :tv_command_allowed
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v28, v7

    const-string v7, "resume"

    const-string v2, "pause"

    move-object/from16 v29, v8

    const-string v8, "phase"

    move-object/from16 v32, v14

    const-string v14, "workId"

    move-object/from16 v33, v14

    const-string v14, "items"

    move-object/from16 v34, v15

    const-string v15, "https"

    move-object/from16 v35, v14

    const-string v14, "http"

    move-object/from16 v36, v9

    const-string v9, "contentIds"

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    const-string v14, "mimeType"

    const-string v15, "requestId"

    move-object/from16 v41, v9

    const-string v9, "title"

    move-object/from16 v42, v7

    const-string v7, "url"

    move-object/from16 v43, v14

    const-string v14, "action"

    move-object/from16 v44, v9

    const-string v9, "Required value was null."

    move-object/from16 v45, v7

    sparse-switch v27, :sswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v3, v23

    goto/16 :goto_1f

    :sswitch_0
    :try_start_2
    const-string v0, "keyboard.hide"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/br0;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v3, v23

    goto/16 :goto_20

    .line 10
    :sswitch_1
    const-string v0, "player.layout"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatePlayerFrame(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 13
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 14
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :sswitch_2
    const-string v7, "downloads.command"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 18
    iget-object v7, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v7, :cond_33

    .line 19
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v46, v10

    .line 20
    sget-object v10, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->DOWNLOAD_COMMANDS:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 21
    invoke-virtual {v13, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v9

    .line 22
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v30, v2

    const/4 v2, 0x1

    if-gt v2, v9, :cond_31

    const/16 v2, 0x81

    if-ge v9, v2, :cond_31

    invoke-direct {v1, v10}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 23
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 24
    invoke-virtual {v2, v7, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v10, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, "prefixes"

    const-string v14, "lineName"

    const-string v15, "workKind"

    move/from16 v17, v9

    const-string v9, "episodeTitle"

    move-object/from16 v18, v10

    const-string v10, "episodeNumber"

    move-object/from16 v19, v14

    const-string v14, "posterUrl"

    move-object/from16 v21, v15

    const-string v15, "contentId"

    move-object/from16 v26, v9

    const-string v9, "isAdult"

    move-object/from16 v31, v9

    const-string v9, "episodeIndex"

    sparse-switch v17, :sswitch_data_1

    goto/16 :goto_c

    :sswitch_3
    :try_start_3
    const-string v9, "query"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_c

    :cond_2
    const/4 v7, 0x0

    .line 27
    invoke-virtual {v13, v7, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    move-result v7

    const/16 v9, 0x64

    .line 28
    invoke-virtual {v13, v9, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    move-result v9

    if-ltz v7, :cond_b

    const/4 v10, 0x1

    if-gt v10, v9, :cond_b

    const/16 v10, 0xc9

    if-ge v9, v10, :cond_b

    .line 29
    invoke-virtual {v2, v7, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    invoke-virtual {v2, v9, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    const/16 v5, 0x100

    .line 30
    invoke-direct {v1, v13, v15, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 31
    invoke-virtual {v2, v5, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_3
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadPrefix(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 33
    invoke-virtual {v13, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 34
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/16 v3, 0x10

    .line 35
    invoke-direct {v1, v13, v0, v3}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "completed"

    const-string v5, "active"

    if-eqz v4, :cond_7

    .line 36
    :try_start_4
    invoke-static {v4, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v4, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_6
    :goto_2
    invoke-virtual {v2, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :cond_7
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 39
    invoke-virtual {v13, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v12, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    :cond_8
    const/16 v0, 0x10

    .line 40
    invoke-direct {v1, v13, v8, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 41
    invoke-static {v0, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_a
    :goto_3
    invoke-virtual {v2, v0, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 43
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    move-object/from16 v0, v30

    .line 44
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_c

    .line 45
    :cond_c
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadTargets(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    goto/16 :goto_c

    .line 46
    :sswitch_5
    const-string v0, "add"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_c

    :cond_d
    move-object/from16 v0, v45

    .line 47
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2000

    if-gt v5, v6, :cond_17

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    .line 50
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    move-object/from16 v8, v16

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_e
    move-object/from16 v6, v20

    :goto_4
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->vdoha(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 51
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 52
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    .line 53
    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    .line 54
    invoke-virtual {v2, v3, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x100

    .line 55
    invoke-direct {v1, v13, v15, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, v44

    const/16 v0, 0xf0

    .line 56
    invoke-direct {v1, v13, v3, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x2000

    .line 57
    invoke-direct {v1, v13, v14, v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 58
    invoke-virtual {v2, v0, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :cond_f
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 60
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    .line 61
    invoke-virtual {v2, v0, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    :cond_10
    const/16 v0, 0x78

    goto :goto_5

    .line 62
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :goto_5
    invoke-direct {v1, v13, v10, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 64
    invoke-virtual {v2, v3, v10}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v4, v26

    .line 65
    invoke-direct {v1, v13, v4, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 66
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v12, v21

    .line 67
    invoke-direct {v1, v13, v12, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 68
    invoke-virtual {v2, v3, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v15, v19

    .line 69
    invoke-direct {v1, v13, v15, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 70
    invoke-virtual {v2, v3, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    move-object/from16 v3, v43

    .line 71
    invoke-direct {v1, v13, v3, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 72
    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, v31

    .line 73
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 74
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 75
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    move-object/from16 v8, v16

    move-object/from16 v12, v21

    move-object/from16 v4, v26

    move-object/from16 v48, v31

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v15, v42

    move-object/from16 v47, v43

    move-object/from16 v3, v44

    move-object/from16 v0, v45

    .line 76
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_c

    .line 77
    :cond_18
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadTargets(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 78
    const-string v7, "queueOnly"

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 79
    const-string v7, "queueOnly"

    const/4 v15, 0x1

    invoke-virtual {v2, v7, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 80
    :cond_19
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_1a

    goto :goto_6

    :cond_1a
    move-object/from16 v7, v20

    :goto_6
    if-eqz v7, :cond_2f

    .line 81
    new-instance v15, Ljava/net/URI;

    invoke-direct {v15, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v15

    .line 82
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v21, v12

    const/16 v12, 0x2000

    if-gt v15, v12, :cond_25

    .line 83
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_1b
    move-object/from16 v6, v20

    :goto_7
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->vdoha(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 84
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 85
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_25

    .line 86
    invoke-virtual/range {v16 .. v16}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_25

    .line 87
    invoke-virtual {v2, v7, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf0

    .line 88
    invoke-direct {v1, v13, v3, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 89
    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1c
    const/16 v6, 0x2000

    .line 90
    invoke-direct {v1, v13, v14, v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 91
    invoke-virtual {v2, v0, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :cond_1d
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 93
    invoke-virtual {v13, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 94
    invoke-virtual {v2, v0, v9}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    :cond_1e
    const/16 v0, 0x78

    goto :goto_8

    .line 95
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :goto_8
    invoke-direct {v1, v13, v10, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 97
    invoke-virtual {v2, v3, v10}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_20
    invoke-direct {v1, v13, v4, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 99
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_21
    move-object/from16 v12, v21

    .line 100
    invoke-direct {v1, v13, v12, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 101
    invoke-virtual {v2, v3, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_22
    move-object/from16 v15, v19

    .line 102
    invoke-direct {v1, v13, v15, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 103
    invoke-virtual {v2, v3, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    move-object/from16 v4, v47

    .line 104
    invoke-direct {v1, v13, v4, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 105
    invoke-virtual {v2, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_24
    move-object/from16 v0, v48

    .line 106
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 107
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 108
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :sswitch_7
    const-string v0, "remove"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_c

    .line 110
    :cond_26
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadTargets(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 111
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadScope(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    const/16 v0, 0xc8

    .line 112
    invoke-direct {v1, v13, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadContentIds(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    move-object/from16 v0, v18

    .line 113
    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 114
    const-string v0, "prefix"

    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 115
    const-string v0, "scope"

    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    move-object/from16 v3, v41

    .line 116
    invoke-virtual {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_c

    :cond_27
    const/16 v5, 0x100

    .line 117
    invoke-direct {v1, v13, v15, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v2, v0, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c

    :sswitch_8
    move-object/from16 v0, v18

    move-object/from16 v3, v41

    .line 119
    const-string v4, "export"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_c

    .line 120
    :cond_28
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 121
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyDownloadTargets(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 122
    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_9
    move-object/from16 v0, v36

    goto :goto_b

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2a
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v4

    const/4 v15, 0x1

    if-gt v15, v4, :cond_30

    const/16 v5, 0x51

    if-ge v4, v5, :cond_30

    .line 125
    new-instance v4, Lcom/jp/bootstrap/internal/nxqsmsfr;

    invoke-direct {v4}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 126
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v5, :cond_2d

    .line 127
    invoke-virtual {v0, v7}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jyozshuy(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v15, 0x1

    if-gt v15, v8, :cond_2c

    const/16 v9, 0x101

    if-ge v8, v9, :cond_2c

    .line 129
    invoke-direct {v1, v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2b

    .line 130
    invoke-virtual {v4, v6}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 131
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2d
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 134
    :goto_b
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 135
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2e

    .line 136
    invoke-virtual {v2, v3, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    goto :goto_c

    .line 137
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2f
    :goto_c
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/gr0;

    move-object/from16 v7, v46

    const/4 v4, 0x2

    invoke-direct {v3, v1, v7, v2, v4}, Lcom/jp/bootstrap/internal/gr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 140
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    move-object v7, v10

    move-object/from16 v0, v45

    .line 144
    const-string v2, "shorts.warm"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_38

    .line 146
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v2, "https://"

    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/ni0;->tscplbdu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x4000

    if-gt v0, v2, :cond_37

    .line 148
    const-string v0, "index"

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_36

    .line 149
    const-string v0, "decodePreview"

    invoke-virtual {v13, v0, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 150
    const-string v0, "previewToken"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    if-gt v15, v0, :cond_34

    const/16 v2, 0x141

    if-ge v0, v2, :cond_34

    goto :goto_d

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_35
    :goto_d
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 152
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 154
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_a
    move-object v7, v10

    .line 157
    const-string v0, "shorts.open"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_39

    .line 159
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 160
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/16 v4, 0xc

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 162
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    move-object v7, v10

    .line 163
    const-string v0, "diagnostics.consumeNativeCrash"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->consumeNativeCrash()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_c
    move-object v7, v10

    .line 165
    const-string v0, "api.observe"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "samples"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->bmucqf(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 167
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v2, :cond_3b

    .line 168
    invoke-virtual {v0, v7}, Lcom/jp/bootstrap/internal/nxqsmsfr;->mhirrjin(I)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v3

    if-nez v3, :cond_3a

    goto :goto_f

    .line 169
    :cond_3a
    sget-object v8, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 170
    iget-object v9, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "origin"

    invoke-virtual {v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "requestClass"

    invoke-virtual {v3, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    const-string v4, "latencyMs"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v5, v6, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    move-result-wide v12

    .line 172
    invoke-virtual/range {v8 .. v13}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->reportObservedSuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 173
    :cond_3b
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_d
    move-object v7, v10

    .line 174
    const-string v0, "app.openSettings"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_3c

    .line 176
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/ir0;

    const/4 v15, 0x1

    invoke-direct {v2, v1, v7, v15}, Lcom/jp/bootstrap/internal/ir0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 178
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    move-object v7, v10

    .line 179
    const-string v0, "splash.release"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->releaseSplashOverlay()V

    .line 181
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_f
    move-object v7, v10

    .line 182
    const-string v0, "bridge.hello"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "bundleVersion"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getBundleVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v15, 0x1

    .line 184
    iput-boolean v15, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 185
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/br0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 187
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_10
    move-object v7, v10

    .line 188
    const-string v0, "ui.setWebViewOpaque"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "opaque"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 190
    const-string v0, "opaque"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v0

    .line 191
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fcecda;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1, v0}, Lcom/jp/bootstrap/internal/fcecda;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 193
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11
    move-object v7, v10

    .line 194
    const-string v0, "auth.sync"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "accessToken"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x4000

    if-gt v0, v2, :cond_44

    const/16 v0, 0xd

    invoke-static {v4, v0}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_44

    const/16 v0, 0xa

    invoke-static {v4, v0}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-nez v2, :cond_44

    .line 197
    const-string v0, "deviceId"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x10

    if-gt v3, v0, :cond_43

    const/16 v10, 0xc9

    if-ge v0, v10, :cond_43

    const/16 v0, 0xd

    invoke-static {v5, v0}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_43

    const/16 v0, 0xa

    invoke-static {v5, v0}, Lcom/jp/bootstrap/internal/gi0;->lglrfgmg(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_43

    .line 199
    const-string v0, "logout"

    const/4 v15, 0x0

    invoke-virtual {v13, v0, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 200
    const-string v0, "logout"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webSessionObserved:Z

    if-eqz v0, :cond_3f

    goto :goto_10

    :cond_3f
    const/4 v7, 0x0

    goto :goto_11

    :cond_40
    :goto_10
    const/4 v7, 0x1

    .line 201
    :goto_11
    sget-object v2, Lcom/jp/runtime/web/RuntimeClientSession;->INSTANCE:Lcom/jp/runtime/web/RuntimeClientSession;

    iget-object v3, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "session"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/jp/runtime/web/RuntimeClientSession;->sync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;Z)V

    .line 202
    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz v7, :cond_42

    :cond_41
    const/16 v25, 0x1

    xor-int/lit8 v0, v7, 0x1

    iput-boolean v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webSessionObserved:Z

    .line 203
    :cond_42
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 204
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_12
    move-object v7, v10

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v0, v45

    .line 206
    const-string v2, "openUrlBySystem"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v15, 0x1

    if-gt v15, v2, :cond_4d

    const/16 v3, 0x2001

    if-ge v2, v3, :cond_4d

    .line 209
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_12

    :cond_45
    move-object/from16 v2, v20

    :goto_12
    if-nez v2, :cond_46

    const-string v2, ""

    .line 211
    :cond_46
    sget-object v3, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->EXTERNAL_URL_SCHEMES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 212
    invoke-static {v2, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-static {v2, v5}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 213
    :cond_47
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 214
    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_13

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_49
    :goto_13
    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->openExternalUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 216
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 217
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_13
    move-object v7, v10

    move-object v2, v15

    .line 221
    const-string v0, "downloads.enqueueBatch"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_51

    .line 223
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x1

    if-gt v15, v3, :cond_50

    const/16 v4, 0x81

    if-ge v3, v4, :cond_50

    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    move-object/from16 v3, v35

    .line 225
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    move-result-object v4

    .line 226
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v5

    if-gt v15, v5, :cond_4f

    const/16 v6, 0x15

    if-ge v5, v6, :cond_4f

    .line 227
    new-instance v5, Lcom/jp/bootstrap/internal/nxqsmsfr;

    invoke-direct {v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 228
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v6

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v6, :cond_4e

    .line 229
    invoke-virtual {v4, v7}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jzphcv(I)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadAddParams(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 230
    :cond_4e
    new-instance v4, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v4}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 231
    const-string v6, "add_batch"

    invoke-virtual {v4, v6, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v4, v5, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/hr0;

    const/4 v15, 0x0

    invoke-direct {v2, v1, v4, v15}, Lcom/jp/bootstrap/internal/hr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 236
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14
    move-object v7, v10

    .line 239
    const-string v0, "api.endpoint"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    const-string v2, "transportVersion"

    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->jpgq(Ljava/lang/String;)I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_52

    const/4 v2, 0x1

    goto :goto_15

    :cond_52
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->configurePreparedTransport(Z)V

    .line 241
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->endpointReply(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_15
    move-object v0, v2

    move-object v7, v10

    move-object v2, v15

    move-object/from16 v3, v41

    move-object/from16 v15, v42

    .line 242
    const-string v4, "downloads.commandBatch"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    iget-object v4, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v4, :cond_59

    .line 244
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    filled-new-array {v0, v15}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 246
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v15, 0x1

    if-gt v15, v5, :cond_57

    const/16 v6, 0x81

    if-ge v5, v6, :cond_57

    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 248
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    move-result-object v5

    .line 249
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v6

    if-gt v15, v6, :cond_56

    const/16 v10, 0xc9

    if-ge v6, v10, :cond_56

    .line 250
    new-instance v6, Lcom/jp/bootstrap/internal/nxqsmsfr;

    invoke-direct {v6}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 251
    invoke-virtual {v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v7

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v7, :cond_55

    .line 252
    invoke-virtual {v5, v8}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jyozshuy(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 253
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v15, 0x1

    if-gt v15, v10, :cond_54

    const/16 v12, 0x101

    if-ge v10, v12, :cond_54

    .line 254
    invoke-direct {v1, v9}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 255
    invoke-virtual {v6, v9}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 256
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_55
    new-instance v5, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v5}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_batch"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5, v6, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/hr0;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v5, v4}, Lcom/jp/bootstrap/internal/hr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 264
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_16
    move-object v7, v10

    .line 268
    const-string v0, "diagnostics.export"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->exportDiagnosticLog(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_17
    move-object v7, v10

    .line 270
    const-string v0, "api.invalidateEnrollment"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->INSTANCE:Lcom/jp/runtime/web/RuntimeEncryptedApiClient;

    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->recoverEnrollment(Landroid/content/Context;)V

    .line 272
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_18
    move-object v7, v10

    .line 273
    const-string v0, "app.exit"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_5a

    .line 275
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/ir0;

    const/4 v15, 0x0

    invoke-direct {v2, v1, v7, v15}, Lcom/jp/bootstrap/internal/ir0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 277
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_19
    move-object v7, v10

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v4, v43

    move-object/from16 v3, v44

    move-object/from16 v0, v45

    .line 278
    const-string v2, "cast.open"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_63

    .line 280
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x4000

    if-gt v9, v10, :cond_62

    .line 283
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5b

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_17

    :cond_5b
    move-object/from16 v6, v20

    :goto_17
    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->vdoha(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 284
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-static {v5}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 285
    invoke-virtual {v8}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_62

    .line 286
    invoke-virtual {v8}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_62

    .line 287
    new-instance v5, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v5}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v5, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x78

    .line 288
    invoke-direct {v1, v13, v4, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 289
    invoke-virtual {v5, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5c
    const/16 v0, 0xf0

    .line 290
    invoke-direct {v1, v13, v3, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 291
    invoke-virtual {v5, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    :cond_5d
    const-string v2, "subtitle"

    invoke-direct {v1, v13, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 293
    const-string v2, "subtitle"

    invoke-virtual {v5, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    :cond_5e
    const-string v0, "artworkUrl"

    const/16 v2, 0x4000

    invoke-direct {v1, v13, v0, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 295
    const-string v2, "artworkUrl"

    invoke-virtual {v5, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    :cond_5f
    const-string v0, "startPositionMs"

    const-wide/16 v2, 0x0

    invoke-virtual {v13, v2, v3, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-ltz v0, :cond_61

    .line 297
    const-string v0, "startPositionMs"

    invoke-virtual {v5, v8, v9, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->wigtqdo(JLjava/lang/String;)V

    move-object/from16 v0, v34

    .line 298
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 299
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v5, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 300
    :cond_60
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/gr0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v7, v5, v3}, Lcom/jp/bootstrap/internal/gr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 302
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1a
    move-object v7, v10

    .line 305
    const-string v0, "cast.command"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_6e

    .line 307
    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    sget-object v2, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->CAST_COMMANDS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 309
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v2, v0, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_18

    :sswitch_1b
    const-string v3, "syncMedia"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_18

    :sswitch_1c
    const-string v3, "selectRoute"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_18

    .line 311
    :cond_64
    const-string v0, "routeId"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x100

    if-gt v3, v5, :cond_65

    .line 313
    const-string v3, "routeId"

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 314
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :sswitch_1d
    const-string v3, "seek"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 316
    const-string v0, "positionMs"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v39, 0x0

    cmp-long v0, v3, v39

    if-ltz v0, :cond_66

    .line 317
    const-string v0, "positionMs"

    invoke-virtual {v2, v3, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->wigtqdo(JLjava/lang/String;)V

    goto/16 :goto_18

    .line 318
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :sswitch_1e
    const-string v3, "play"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_18

    .line 320
    :cond_67
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyCastPlayParams(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    goto :goto_18

    .line 321
    :sswitch_1f
    const-string v3, "mute"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_18

    :cond_68
    move-object/from16 v0, v32

    .line 322
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 323
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    goto :goto_18

    :sswitch_20
    move-object/from16 v3, v24

    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_18

    .line 325
    :cond_69
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v0

    const/16 v9, 0x64

    const/4 v15, 0x0

    invoke-static {v0, v15, v9}, Lcom/jp/bootstrap/internal/vd;->yndsdvj(III)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    goto :goto_18

    .line 326
    :sswitch_21
    const-string v3, "volumeBy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_18

    .line 327
    :cond_6a
    const-string v0, "volumeDelta"

    const-string v3, "volumeDelta"

    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    goto :goto_18

    .line 328
    :sswitch_22
    const-string v3, "prepareSheet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_18

    .line 329
    :cond_6b
    invoke-direct {v1, v13, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->copyCastPrepareParams(Lcom/jp/bootstrap/internal/cjpbeith;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 330
    :cond_6c
    :goto_18
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/gr0;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v7, v2, v4}, Lcom/jp/bootstrap/internal/gr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 332
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_23
    move-object v7, v10

    .line 334
    const-string v0, "shorts.command"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_70

    .line 336
    sget-object v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->SHORT_COMMANDS:Ljava/util/Set;

    invoke-virtual {v13, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 337
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 338
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v15, 0x1

    invoke-direct {v3, v1, v0, v15}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 340
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    move-object v7, v10

    .line 342
    const-string v0, "shorts.visibility"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_72

    move-object/from16 v0, v19

    .line 344
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 345
    new-instance v2, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    invoke-direct {v2, v7, v3}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 346
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x3

    invoke-direct {v3, v1, v2, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 348
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_25
    move-object v7, v10

    move-object/from16 v3, v44

    .line 350
    const-string v0, "player.open"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_75

    move-object/from16 v0, v33

    const-wide/16 v4, 0x0

    .line 352
    invoke-virtual {v13, v4, v5, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-lez v0, :cond_74

    .line 353
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    if-gt v15, v0, :cond_73

    const/16 v10, 0xc9

    if-ge v0, v10, :cond_73

    .line 354
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 355
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 357
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_26
    move-object v7, v10

    .line 360
    const-string v0, "media.saveImage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->saveImageToGallery(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_27
    move-object v7, v10

    .line 362
    const-string v0, "api.request"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->executeBridgeApiRequest(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_28
    move-object v7, v10

    .line 364
    const-string v0, "api.transport"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->preparedApiTransport:Lcom/jp/runtime/web/PreparedApiTransport;

    sget-object v2, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    invoke-virtual {v2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->peekOrigin()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/jp/bootstrap/internal/jr0;

    const/4 v15, 0x0

    invoke-direct {v3, v1, v15}, Lcom/jp/bootstrap/internal/jr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    invoke-virtual {v0, v13, v2, v3}, Lcom/jp/runtime/web/PreparedApiTransport;->exchange(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_29
    move-object v7, v10

    move-object v2, v15

    move-object/from16 v3, v35

    .line 366
    const-string v0, "downloads.enqueueIntents"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_79

    .line 368
    invoke-virtual {v13, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v15, 0x1

    if-gt v15, v4, :cond_78

    const/16 v6, 0x81

    if-ge v4, v6, :cond_78

    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 370
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->yndsdvj(Ljava/lang/String;)Lcom/jp/bootstrap/internal/nxqsmsfr;

    move-result-object v4

    .line 371
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v5

    if-gt v15, v5, :cond_77

    const/16 v6, 0x15

    if-ge v5, v6, :cond_77

    .line 372
    new-instance v5, Lcom/jp/bootstrap/internal/nxqsmsfr;

    invoke-direct {v5}, Lcom/jp/bootstrap/internal/nxqsmsfr;-><init>()V

    .line 373
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/nxqsmsfr;->cauva()I

    move-result v6

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v6, :cond_76

    .line 374
    invoke-virtual {v4, v7}, Lcom/jp/bootstrap/internal/nxqsmsfr;->jzphcv(I)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadIntentParams(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/jp/bootstrap/internal/nxqsmsfr;->put(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 375
    :cond_76
    new-instance v4, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v4}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 376
    const-string v6, "add_intent_batch"

    invoke-virtual {v4, v6, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v4, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v4, v5, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/hr0;

    const/4 v15, 0x1

    invoke-direct {v2, v1, v4, v15}, Lcom/jp/bootstrap/internal/hr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 381
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2a
    move-object v7, v10

    .line 384
    const-string v0, "api.invalidateEndpoint"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->invalidateBridgeApiEndpoint(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_2b
    move-object v7, v10

    move-object/from16 v0, v45

    .line 386
    const-string v2, "shorts.prepare"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_7e

    .line 388
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    const-string v2, "https://"

    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/ni0;->tscplbdu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x4000

    if-gt v0, v2, :cond_7d

    .line 390
    const-string v0, "index"

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7c

    .line 391
    const-string v0, "mediaToken"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 392
    const-string v0, "mediaToken"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    if-gt v15, v0, :cond_7a

    const/16 v2, 0x141

    if-ge v0, v2, :cond_7a

    goto :goto_1a

    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_7b
    :goto_1a
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 394
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v15, 0x0

    invoke-direct {v3, v1, v0, v15}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 396
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2c
    move-object v7, v10

    .line 399
    const-string v0, "cache.admin"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_81

    .line 401
    const-string v0, "clear"

    invoke-virtual {v13, v14, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    const-string v2, "clear"

    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 403
    const-string v2, "target"

    const-string v3, "streaming"

    invoke-virtual {v13, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    sget-object v3, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->CACHE_ADMIN_TARGETS:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 405
    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 406
    invoke-virtual {v3, v0, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const-string v0, "target"

    invoke-virtual {v3, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    const-string v0, "includeCompleted"

    const-string v4, "downloadsAll"

    invoke-static {v2, v4}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 409
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/gr0;

    const/4 v15, 0x1

    invoke-direct {v2, v1, v7, v3, v15}, Lcom/jp/bootstrap/internal/gr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 411
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2d
    move-object v7, v10

    .line 414
    const-string v0, "device.identity"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->INSTANCE:Lcom/jp/runtime/web/RuntimeEncryptedApiClient;

    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/RuntimeEncryptedApiClient;->identitySummary(Landroid/content/Context;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_2e
    move-object v7, v10

    .line 416
    const-string v0, "auth.restore"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/jp/runtime/web/RuntimeClientSession;->INSTANCE:Lcom/jp/runtime/web/RuntimeClientSession;

    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/jp/runtime/web/RuntimeClientSession;->snapshot(Landroid/content/Context;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_2f
    move-object v7, v10

    move-object/from16 v0, v45

    .line 418
    const-string v2, "downloads.probe"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    sget-object v2, Lcom/jp/runtime/web/NativeDownloadProbe;->INSTANCE:Lcom/jp/runtime/web/NativeDownloadProbe;

    .line 420
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->gtnruhk()Z

    move-result v3

    .line 421
    iget-object v4, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appUserAgent:Ljava/lang/String;

    .line 422
    const-string v5, "latencyOnly"

    const/4 v15, 0x0

    invoke-virtual {v13, v5, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    move-result v5

    .line 423
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/jp/runtime/web/NativeDownloadProbe;->probe(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_30
    move-object v7, v10

    .line 424
    const-string v0, "api.secureRequest"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->executeSecureBridgeApiRequest(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_31
    move-object v7, v10

    .line 426
    const-string v0, "downloads.settings"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_86

    .line 428
    const-string v0, "get"

    invoke-virtual {v13, v14, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    const-string v2, "get"

    const-string v3, "update"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 430
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v2, v0, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    const-string v3, "update"

    invoke-static {v0, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    move-object/from16 v0, v18

    .line 432
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 433
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    :cond_82
    move-object/from16 v0, v17

    .line 434
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 435
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v3

    const/4 v15, 0x1

    if-gt v15, v3, :cond_83

    const/4 v4, 0x4

    if-ge v3, v4, :cond_83

    .line 436
    invoke-virtual {v2, v3, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->ryrgde(ILjava/lang/String;)V

    goto :goto_1b

    .line 437
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_84
    :goto_1b
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/gr0;

    const/4 v15, 0x0

    invoke-direct {v3, v1, v7, v2, v15}, Lcom/jp/bootstrap/internal/gr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 440
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_32
    move-object v7, v10

    .line 442
    const-string v0, "shorts.layout"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_89

    .line 444
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatePlayerFrame(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 445
    const-string v0, "previewDirection"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 446
    const-string v0, "previewDirection"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-gt v2, v0, :cond_87

    const/4 v4, 0x2

    if-ge v0, v4, :cond_87

    goto :goto_1c

    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_88
    :goto_1c
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 448
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 450
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_33
    move-object v7, v10

    move-object/from16 v0, v33

    move-object/from16 v3, v44

    .line 451
    const-string v2, "player.embed"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_8c

    const-wide/16 v4, 0x0

    .line 453
    invoke-virtual {v13, v4, v5, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-lez v0, :cond_8b

    .line 454
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    if-gt v15, v0, :cond_8a

    const/16 v10, 0xc9

    if-ge v0, v10, :cond_8a

    .line 455
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatePlayerFrame(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 456
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 457
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x7

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 459
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_8c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_34
    move-object v7, v10

    .line 462
    const-string v0, "player.close"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_8d

    .line 464
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 465
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/16 v4, 0xa

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 467
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_35
    move-object v7, v10

    .line 468
    const-string v0, "adult.policy"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v0, v21

    .line 469
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->jzphcv(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_8f

    .line 470
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_8e

    .line 471
    new-instance v2, Lcom/jp/runtime/web/NativeWebCommand;

    .line 472
    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 473
    invoke-direct {v2, v7, v3}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 474
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v2, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 476
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_8f
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 478
    const-string v3, "jp_content_policy"

    const/4 v15, 0x0

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 479
    const-string v3, "adult_enabled"

    invoke-interface {v2, v3, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 480
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    move-object v0, v3

    goto/16 :goto_1e

    :sswitch_36
    move-object v7, v10

    .line 481
    const-string v0, "playback.lineLearning"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->lineLearningResult(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_37
    move-object v7, v10

    .line 483
    const-string v0, "update.status"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->runtimeUpdateStatusSnapshot()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_38
    move-object v7, v10

    .line 485
    const-string v0, "player.overlay"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_91

    move-object/from16 v0, v16

    .line 487
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 488
    new-instance v2, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

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


    invoke-direct {v2, v7, v3}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 489
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v2, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto/16 :goto_1e

    .line 491
    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_39
    move-object v7, v10

    move-object/from16 v0, v33

    move-object/from16 v3, v44

    .line 493
    const-string v2, "player.update"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v2, :cond_96

    .line 495
    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    const-wide/16 v4, 0x0

    .line 496
    invoke-virtual {v13, v4, v5, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhpayc(JLjava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v8, v4

    if-lez v0, :cond_93

    .line 497
    invoke-virtual {v13, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    if-gt v15, v0, :cond_92

    const/16 v10, 0xc9

    if-ge v0, v10, :cond_92

    .line 498
    const-string v0, "width"

    invoke-virtual {v13, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->sbmzsrkn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-direct {v1, v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatePlayerFrame(Lcom/jp/bootstrap/internal/cjpbeith;)V

    goto :goto_1d

    .line 499
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_94
    invoke-static {v13}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->validatePlayerMetadataUpdate(Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 502
    :cond_95
    :goto_1d
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-virtual {v13}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, v2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 503
    iget-object v2, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/jp/bootstrap/internal/fr0;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v0, v4}, Lcom/jp/bootstrap/internal/fr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto :goto_1e

    .line 505
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3a
    move-object v7, v10

    .line 506
    const-string v0, "update.check"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_97

    .line 508
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/ir0;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v7, v4}, Lcom/jp/bootstrap/internal/ir0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto :goto_1e

    .line 510
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3b
    move-object v7, v10

    .line 511
    const-string v0, "update.apply"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    if-eqz v0, :cond_99

    .line 513
    invoke-virtual {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->runtimeUpdateStatusSnapshot()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ready"

    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 514
    iget-object v0, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/jp/bootstrap/internal/ir0;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v7, v3}, Lcom/jp/bootstrap/internal/ir0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    invoke-direct {v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    .line 516
    :goto_1e
    new-instance v2, Lcom/jp/bootstrap/internal/cjpbeith;

    invoke-direct {v2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v4, v22

    move-object/from16 v3, v23

    .line 517
    :try_start_5
    invoke-virtual {v2, v4, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    const-string v4, "ok"

    const/4 v15, 0x1

    invoke-virtual {v2, v4, v15}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 519
    const-string v4, "result"

    invoke-virtual {v2, v0, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_21

    :catchall_1
    move-exception v0

    goto :goto_20

    :cond_98
    move-object/from16 v3, v23

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    move-object/from16 v3, v23

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    goto/16 :goto_1

    :cond_9a
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    goto/16 :goto_0

    .line 522
    :goto_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 523
    const-string v2, "unsupported_method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v3, v23

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v3, v23

    .line 525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_3
    move-exception v0

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object v3, v13

    .line 526
    :goto_20
    invoke-static {v0}, Lcom/jp/bootstrap/internal/bl;->dhjfigsvwc(Ljava/lang/Throwable;)Lcom/jp/bootstrap/internal/y20;

    move-result-object v2

    .line 527
    :goto_21
    invoke-static {v2}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9d

    goto/16 :goto_25

    :cond_9d
    move-object/from16 v2, p1

    move-object/from16 v4, v29

    .line 528
    invoke-virtual {v2, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v28

    .line 529
    invoke-virtual {v2, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v5

    if-eqz v5, :cond_9e

    const-string v6, "path"

    invoke-virtual {v5, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_22

    :cond_9e
    move-object/from16 v5, v20

    :goto_22
    if-nez v5, :cond_9f

    const-string v5, ""

    :cond_9f
    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/jp/bootstrap/internal/gi0;->mcxjpbyqnoz(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 530
    const-string v6, "downloads.probe"

    invoke-static {v4, v6}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 531
    invoke-virtual {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "download_probe_failed"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    :goto_23
    move-object v2, v0

    goto :goto_25

    .line 532
    :cond_a0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bridge request failed method="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JpWebRuntime"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    instance-of v4, v0, Ljava/io/IOException;

    if-eqz v4, :cond_a1

    const-string v5, "api_unavailable"

    goto :goto_24

    :cond_a1
    const-string v5, "invalid_request"

    .line 534
    :goto_24
    invoke-virtual {v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_a2

    .line 535
    check-cast v0, Ljava/io/IOException;

    invoke-direct {v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiFailureContext(Ljava/io/IOException;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v20

    :cond_a2
    move-object/from16 v0, v20

    .line 536
    invoke-direct {v1, v5, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    move-result-object v0

    goto :goto_23

    .line 537
    :goto_25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/jp/bootstrap/internal/cjpbeith;

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x783ad1f7 -> :sswitch_3b
        -0x7822705d -> :sswitch_3a
        -0x75b88b8a -> :sswitch_39
        -0x746b81bd -> :sswitch_38
        -0x70368749 -> :sswitch_37
        -0x68ea53db -> :sswitch_36
        -0x61165c1a -> :sswitch_35
        -0x4f1e0755 -> :sswitch_34
        -0x4f019674 -> :sswitch_33
        -0x4ab7ee7f -> :sswitch_32
        -0x4773c23a -> :sswitch_31
        -0x402d55bc -> :sswitch_30
        -0x33609f13 -> :sswitch_2f
        -0x303567b8 -> :sswitch_2e
        -0x1fe8faaa -> :sswitch_2d
        -0x1eef8a1d -> :sswitch_2c
        -0x1cc43e70 -> :sswitch_2b
        -0x1af41bbc -> :sswitch_2a
        -0x1281366e -> :sswitch_29
        -0xcdf93ab -> :sswitch_28
        0x69fc2bb -> :sswitch_27
        0xb929454 -> :sswitch_26
        0x1e806937 -> :sswitch_25
        0x277275e9 -> :sswitch_24
        0x2edb93d4 -> :sswitch_23
        0x3376bb9c -> :sswitch_1a
        0x3ee41399 -> :sswitch_19
        0x42e2a4cb -> :sswitch_18
        0x461939f3 -> :sswitch_17
        0x4a052636 -> :sswitch_16
        0x4c52d6d2 -> :sswitch_15
        0x4c9052e9 -> :sswitch_14
        0x4d9fd635 -> :sswitch_13
        0x5215674b -> :sswitch_12
        0x5460bf21 -> :sswitch_11
        0x55bbdc72 -> :sswitch_10
        0x5b8a1e2d -> :sswitch_f
        0x5dd00b80 -> :sswitch_e
        0x5eaa4b3a -> :sswitch_d
        0x62e3a148 -> :sswitch_c
        0x65a58fb6 -> :sswitch_b
        0x6bd0e661 -> :sswitch_a
        0x6bd4529c -> :sswitch_9
        0x6d641d48 -> :sswitch_2
        0x7a2236d7 -> :sswitch_1
        0x7ff1fae9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4cd6ec4c -> :sswitch_8
        -0x37b5077c -> :sswitch_7
        -0x37b237d3 -> :sswitch_6
        0x178a1 -> :sswitch_5
        0x65825f6 -> :sswitch_4
        0x66f18c8 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x79919368 -> :sswitch_22
        -0x6f726eef -> :sswitch_21
        -0x305518e6 -> :sswitch_20
        0x335219 -> :sswitch_1f
        0x348b34 -> :sswitch_1e
        0x35ce78 -> :sswitch_1d
        0xc1e4aad -> :sswitch_1c
        0x1c75ce09 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static final handleMessage$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchSafeArea()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->scheduleForegroundHealth()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final handleMessage$lambda$0$1(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->applyWebViewOpaque(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final handleMessage$lambda$0$10(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$11(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$12(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$13(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$14(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final handleMessage$lambda$0$15(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final handleMessage$lambda$0$16(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "downloads.command"

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$17(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "downloads.command"

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$18(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "downloads.command"

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$2(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$3(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$30(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final handleMessage$lambda$0$35(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final handleMessage$lambda$0$36(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final handleMessage$lambda$0$37(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$38(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$39(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$4(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$40(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$41(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    new-instance v0, Lcom/jp/runtime/web/NativeWebCommand;

    .line 4
    .line 5
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/jp/runtime/web/NativeWebCommand;-><init>(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final handleMessage$lambda$0$42(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static final handleMessage$lambda$0$43(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    .line 17
    throw p0
.end method

.method private static final handleMessage$lambda$0$5(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$6(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$7(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$8(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final handleMessage$lambda$0$9(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onNativeCommand:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final hasControlCharacters(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return p0
.end method

.method public static synthetic holm(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->stableForeground$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic hqaldusn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$3(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final installBridge()V
    .locals 6

    .line 1
    const-string v0, "WEB_MESSAGE_LISTENER"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/jp/bootstrap/internal/uy0;->syiqloeyp(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 8
    .line 9
    const-string v2, "jpBridge"

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const-string v0, "https://appassets.androidplatform.net"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/jp/bootstrap/internal/ge;->zfrfwjkgqw(Ljava/lang/Object;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v3, Lcom/jp/bootstrap/internal/cr0;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/jp/bootstrap/internal/cr0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lcom/jp/bootstrap/internal/ry0;->syiqloeyp:Ljava/util/WeakHashMap;

    .line 25
    .line 26
    sget-object p0, Lcom/jp/bootstrap/internal/uy0;->cauva:Lcom/jp/bootstrap/internal/eijpuxl;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/zhrfeuxgdxd;->jzphcv()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    sget-object p0, Lcom/jp/bootstrap/internal/uy0;->dhjfigsvwc:Lcom/jp/bootstrap/internal/eijpuxl;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/zhrfeuxgdxd;->jzphcv()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    sget-object p0, Lcom/jp/bootstrap/internal/ry0;->syiqloeyp:Ljava/util/WeakHashMap;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/jp/bootstrap/internal/xy0;

    .line 49
    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    new-instance v4, Lcom/jp/bootstrap/internal/xy0;

    .line 53
    .line 54
    sget-object v5, Lcom/jp/bootstrap/internal/wy0;->syiqloeyp:Lcom/jp/bootstrap/internal/yy0;

    .line 55
    .line 56
    invoke-interface {v5, v1}, Lcom/jp/bootstrap/internal/yy0;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v4, v5}, Lcom/jp/bootstrap/internal/xy0;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance v4, Lcom/jp/bootstrap/internal/xy0;

    .line 68
    .line 69
    sget-object p0, Lcom/jp/bootstrap/internal/wy0;->syiqloeyp:Lcom/jp/bootstrap/internal/yy0;

    .line 70
    .line 71
    invoke-interface {p0, v1}, Lcom/jp/bootstrap/internal/yy0;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v4, p0}, Lcom/jp/bootstrap/internal/xy0;-><init>(Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 79
    new-array v1, p0, [Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, [Ljava/lang/String;

    .line 86
    .line 87
    iget-object v1, v4, Lcom/jp/bootstrap/internal/xy0;->syiqloeyp:Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 88
    .line 89
    new-instance v4, Lcom/jp/bootstrap/internal/ly0;

    .line 90
    .line 91
    invoke-direct {v4, p0, v3}, Lcom/jp/bootstrap/internal/ly0;-><init>(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance p0, Lcom/jp/bootstrap/internal/rlvva;

    .line 95
    .line 96
    invoke-direct {p0, v4}, Lcom/jp/bootstrap/internal/rlvva;-><init>(Lcom/jp/bootstrap/internal/ly0;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v1, v2, v0, p0}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 104
    .line 105
    const-string v0, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 106
    .line 107
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_3
    return-void
.end method

.method private static final installBridge$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;Lcom/jp/bootstrap/internal/ky0;Landroid/net/Uri;ZLcom/jp/bootstrap/internal/wvveclfb;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    if-eqz p4, :cond_5

    .line 14
    .line 15
    const-string p1, "https://appassets.androidplatform.net"

    .line 16
    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget p1, p2, Lcom/jp/bootstrap/internal/ky0;->jzphcv:I

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p2, Lcom/jp/bootstrap/internal/ky0;->syiqloeyp:Ljava/lang/String;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    :cond_1
    new-instance p2, Lcom/jp/bootstrap/internal/a80;

    .line 39
    .line 40
    const/4 p3, 0x5

    .line 41
    invoke-direct {p2, p3, p0, p5}, Lcom/jp/bootstrap/internal/a80;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchBridgeMessage(Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p3, "Wrong data accessor type detected. "

    .line 53
    .line 54
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p3, "String"

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    const/4 p4, 0x1

    .line 62
    if-eq p1, p4, :cond_3

    .line 63
    .line 64
    const-string p1, "Unknown"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string p1, "ArrayBuffer"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    move-object p1, p3

    .line 71
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, " expected, but got "

    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_5
    :goto_1
    const/4 v4, 0x6

    .line 91
    const/4 v5, 0x0

    .line 92
    const-string v1, "untrusted_origin"

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    move-object v0, p0

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p5, Lcom/jp/bootstrap/internal/bzrkkpg;

    .line 106
    .line 107
    sget-object p1, Lcom/jp/bootstrap/internal/uy0;->cauva:Lcom/jp/bootstrap/internal/eijpuxl;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/zhrfeuxgdxd;->jzphcv()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    iget-object p1, p5, Lcom/jp/bootstrap/internal/bzrkkpg;->syiqloeyp:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 116
    .line 117
    invoke-interface {p1, p0}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 122
    .line 123
    const-string p1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0
.end method

.method private static final installBridge$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/wvveclfb;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/bt0;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lcom/jp/bootstrap/internal/dc;

    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    invoke-direct {v0, v1, p1, p2}, Lcom/jp/bootstrap/internal/dc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final installBridge$lambda$0$0$0(Lcom/jp/bootstrap/internal/wvveclfb;Ljava/lang/String;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/jp/bootstrap/internal/bzrkkpg;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/jp/bootstrap/internal/uy0;->cauva:Lcom/jp/bootstrap/internal/eijpuxl;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/zhrfeuxgdxd;->jzphcv()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/jp/bootstrap/internal/bzrkkpg;->syiqloeyp:Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;

    .line 15
    .line 16
    invoke-interface {p0, p1}, Lorg/chromium/support_lib_boundary/JsReplyProxyBoundaryInterface;->postMessage(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method private final invalidateBridgeApiEndpoint(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 6

    .line 1
    const-string v0, "failedOrigin"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    :goto_0
    move-object v2, p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    sget-object v0, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->invalidate$default(Lcom/jp/runtime/web/RuntimeApiEndpoint;Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;ILjava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->endpointReply(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private final isLocalApiUrl(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "https"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "appassets.androidplatform.net"

    .line 19
    .line 20
    invoke-static {p0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const-string p0, ""

    .line 33
    .line 34
    :cond_0
    const-string p1, "/api/"

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    return v0
.end method

.method private final isTrustedRuntimeUrl(Landroid/net/Uri;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "https"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "appassets.androidplatform.net"

    .line 19
    .line 20
    invoke-static {p0, v1}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_0

    .line 31
    .line 32
    const-string p0, ""

    .line 33
    .line 34
    :cond_0
    const-string p1, "/runtime/"

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_1
    return v0
.end method

.method private final isTrustedRuntimeUrl(Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->isTrustedRuntimeRestoreUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic jisccnqwqm(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$4(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic jpgq(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$36(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic jyozshuy(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$30(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic jzphcv(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resetScrollPosition$lambda$0(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic lglrfgmg(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$10(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final lineLearningResult(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "jp_line_learning"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "action"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v3, "set"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v3, "payload"

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v2, p1

    .line 60
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {p1, v3, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/high16 v2, 0x20000

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    if-gt v1, v2, :cond_4

    .line 76
    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->acceptedResult()Lcom/jp/bootstrap/internal/cjpbeith;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    const-string p0, "Unable to persist line learning"

    .line 100
    .line 101
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->yfqpbrvsm(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-object v4

    .line 105
    :cond_4
    const-string p0, "Failed requirement."

    .line 106
    .line 107
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object v4
.end method

.method public static synthetic lsqxopbhlw(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$43(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic mbkvlevkkf(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onResume$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final methodNotAllowedApiResponse()Landroid/webkit/WebResourceResponse;
    .locals 7

    .line 1
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 2
    .line 3
    new-instance p0, Lcom/jp/bootstrap/internal/hp;

    .line 4
    .line 5
    const-string v1, "Allow"

    .line 6
    .line 7
    const-string v2, "GET"

    .line 8
    .line 9
    invoke-direct {p0, v1, v2}, Lcom/jp/bootstrap/internal/hp;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/jp/bootstrap/internal/hp;

    .line 13
    .line 14
    const-string v2, "Cache-Control"

    .line 15
    .line 16
    const-string v3, "no-store"

    .line 17
    .line 18
    invoke-direct {v1, v2, v3}, Lcom/jp/bootstrap/internal/hp;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    filled-new-array {p0, v1}, [Lcom/jp/bootstrap/internal/hp;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/jp/bootstrap/internal/r9;->fekqvc([Lcom/jp/bootstrap/internal/hp;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    const-string p0, "{\"error\":\"api_method_not_supported\"}"

    .line 32
    .line 33
    sget-object v1, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .line 44
    .line 45
    const-string v1, "application/json"

    .line 46
    .line 47
    const-string v2, "UTF-8"

    .line 48
    .line 49
    const/16 v3, 0x195

    .line 50
    .line 51
    const-string v4, "Method Not Allowed"

    .line 52
    .line 53
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public static synthetic mhirrjin(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$9(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic mhpayc(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$41(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic nawz(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$40(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic nvbyrnefqdi(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/web/ApiRequestControl;Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchBridgeMessage$lambda$4$0(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/runtime/web/ApiRequestControl;Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onResume$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->reapplyWebViewPunch()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final openExternalUri(Landroid/net/Uri;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_1
    sget-object v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->EXTERNAL_URL_SCHEMES:Ljava/util/Set;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    const-string v1, "http"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    const-string v1, "https"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_7

    .line 53
    .line 54
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    :cond_5
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 74
    .line 75
    const-string v1, "android.intent.action.VIEW"

    .line 76
    .line 77
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .line 79
    .line 80
    const/high16 p1, 0x10000000

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    .line 93
    .line 94
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    new-instance p1, Lcom/jp/bootstrap/internal/y20;

    .line 99
    .line 100
    invoke-direct {p1, p0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    move-object p0, p1

    .line 104
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 105
    .line 106
    instance-of v0, p0, Lcom/jp/bootstrap/internal/y20;

    .line 107
    .line 108
    if-eqz v0, :cond_6

    .line 109
    .line 110
    move-object p0, p1

    .line 111
    :cond_6
    check-cast p0, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_7
    :goto_2
    return v2
.end method

.method private final optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-gt p2, p3, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-lez p0, :cond_2

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    const-string p0, "Failed requirement."

    .line 49
    .line 50
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static synthetic ospb(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/net/URI;Ljava/lang/String;Lcom/jp/bootstrap/internal/k9;[B)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->executeBridgeApiRequest$lambda$9(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;[B)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final pauseDomMedia$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 15
    .line 16
    const-string v0, "(function(){\n  try {\n    document.querySelectorAll(\'video,audio\').forEach(function(m){\n      try { m.pause(); } catch (e) {}\n    });\n    window.dispatchEvent(new CustomEvent(\'jp:app-background\'));\n  } catch (e) {}\n})();"

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic pcqerka(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->releaseSplashOverlay$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final proxyLocalApi(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, v2

    .line 20
    :cond_0
    const/16 v5, 0x20

    .line 21
    .line 22
    if-ge v3, v5, :cond_1

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->proxyLocalApiOnce(Landroid/webkit/WebResourceRequest;)Lcom/jp/runtime/web/ProxiedApiResponse;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Lcom/jp/runtime/web/ProxiedApiResponse;->getStatus()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v4}, Lcom/jp/runtime/web/ProxiedApiResponse;->getContentType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v4}, Lcom/jp/runtime/web/ProxiedApiResponse;->getBody()[B

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/16 v9, 0x8

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-static/range {v5 .. v10}, Lcom/jp/runtime/web/RuntimeApiEndpointKt;->shouldSwitchApiOrigin$default(ILjava/lang/String;[BZILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    iget-object v5, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v1, v0}, Lcom/jp/runtime/web/RuntimeApiEndpointKt;->failoverToNextOrigin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    :cond_1
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4}, Lcom/jp/runtime/web/ProxiedApiResponse;->toWebResponse()Landroid/webkit/WebResourceResponse;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_2
    const-string p0, "Required value was null."

    .line 74
    .line 75
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v2
.end method

.method private final proxyLocalApiOnce(Landroid/webkit/WebResourceRequest;)Lcom/jp/runtime/web/ProxiedApiResponse;
    .locals 7

    .line 1
    const-string v0, "application/json"

    .line 2
    .line 3
    const-string v1, "Accept"

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->upstreamApiUrl(Landroid/net/Uri;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :try_start_0
    new-instance v2, Ljava/net/URL;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    const-string v2, "GET"

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x5dc

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0x9c4

    .line 41
    .line 42
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 50
    .line 51
    .line 52
    const-string v3, "Cache-Control"

    .line 53
    .line 54
    const-string v4, "no-cache"

    .line 55
    .line 56
    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/Map$Entry;

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 97
    .line 98
    sget-object v5, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->HOP_BY_HOP_HEADERS:Ljava/util/Set;

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-nez v5, :cond_0

    .line 117
    .line 118
    invoke-virtual {p0, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_1
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    invoke-static {p1}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_3

    .line 136
    .line 137
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    const-string p1, "X-Client-App"

    .line 141
    .line 142
    const-string v1, "jp"

    .line 143
    .line 144
    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string p1, "X-Client-Platform"

    .line 148
    .line 149
    const-string v1, "android"

    .line 150
    .line 151
    invoke-virtual {p0, p1, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/16 v1, 0x12c

    .line 159
    .line 160
    const/16 v3, 0xc8

    .line 161
    .line 162
    if-gt v3, p1, :cond_4

    .line 163
    .line 164
    if-ge p1, v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_1

    .line 171
    :catchall_1
    move-exception p1

    .line 172
    goto :goto_4

    .line 173
    :cond_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 174
    .line 175
    .line 176
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :goto_1
    if-eqz v4, :cond_5

    .line 178
    .line 179
    const/high16 v5, 0x800000

    .line 180
    .line 181
    :try_start_2
    invoke-static {v4, v5}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->access$readBounded(Ljava/io/InputStream;I)[B

    .line 182
    .line 183
    .line 184
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 185
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    if-eqz v5, :cond_5

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :catchall_2
    move-exception p1

    .line 192
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 193
    :catchall_3
    move-exception v1

    .line 194
    :try_start_5
    invoke-static {v4, p1}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    throw v1

    .line 198
    :cond_5
    new-array v5, v2, [B

    .line 199
    .line 200
    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    if-nez v2, :cond_7

    .line 205
    .line 206
    if-gt v3, p1, :cond_6

    .line 207
    .line 208
    if-ge p1, v1, :cond_6

    .line 209
    .line 210
    const-string v2, "OK"

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_6
    const-string v2, "Upstream error"

    .line 214
    .line 215
    :cond_7
    :goto_3
    new-instance v1, Lcom/jp/runtime/web/ProxiedApiResponse;

    .line 216
    .line 217
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-direct {v1, p1, v3, v5, v2}, Lcom/jp/runtime/web/ProxiedApiResponse;-><init>(ILjava/lang/String;[BLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    .line 223
    .line 224
    :try_start_6
    sget-object p1, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_8

    .line 231
    .line 232
    invoke-virtual {p1, p0}, Lcom/jp/runtime/web/ApiRequestControl;->detach(Ljava/net/HttpURLConnection;)V

    .line 233
    .line 234
    .line 235
    :cond_8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 236
    .line 237
    .line 238
    goto :goto_6

    .line 239
    :goto_4
    sget-object v1, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 240
    .line 241
    invoke-virtual {v1}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_9

    .line 246
    .line 247
    invoke-virtual {v1, p0}, Lcom/jp/runtime/web/ApiRequestControl;->detach(Ljava/net/HttpURLConnection;)V

    .line 248
    .line 249
    .line 250
    :cond_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    .line 252
    .line 253
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 254
    :goto_5
    new-instance v1, Lcom/jp/bootstrap/internal/y20;

    .line 255
    .line 256
    invoke-direct {v1, p0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    :goto_6
    invoke-static {v1}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    if-nez p0, :cond_a

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_a
    new-instance v1, Lcom/jp/runtime/web/ProxiedApiResponse;

    .line 267
    .line 268
    const-string p0, "{\"error\":\"api_unavailable\"}"

    .line 269
    .line 270
    sget-object p1, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 271
    .line 272
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const-string p1, "Bad Gateway"

    .line 280
    .line 281
    const/16 v2, 0x1f6

    .line 282
    .line 283
    invoke-direct {v1, v2, v0, p0, p1}, Lcom/jp/runtime/web/ProxiedApiResponse;-><init>(ILjava/lang/String;[BLjava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :goto_7
    check-cast v1, Lcom/jp/runtime/web/ProxiedApiResponse;

    .line 287
    .line 288
    return-object v1
.end method

.method public static synthetic punn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$1(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic qwcilfgin(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$11(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final reapplyWebViewPunch()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webViewOpaqueRequested:Z

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
    invoke-direct {p0, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->applyWebViewOpaque(Z)V

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method private final recoverUpstream(Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jp/bootstrap/internal/mbwlg;",
            ")",
            "Lcom/jp/bootstrap/internal/cjpbeith;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/jp/runtime/web/RuntimeEncryptedApiClientKt;->isReplayableApiMethod(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 22
    .line 23
    iget-object v3, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v5, v0

    .line 35
    move v0, v3

    .line 36
    move-object v6, v4

    .line 37
    move-object v7, v6

    .line 38
    :goto_0
    const/16 v8, 0x20

    .line 39
    .line 40
    if-ge v0, v8, :cond_4

    .line 41
    .line 42
    add-int/lit8 v6, v0, 0x1

    .line 43
    .line 44
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 52
    .line 53
    const-string v7, "headers"

    .line 54
    .line 55
    invoke-virtual {v0, v7}, Lcom/jp/bootstrap/internal/cjpbeith;->edtsi(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const-string v8, "Content-Type"

    .line 60
    .line 61
    invoke-static {v7, v8}, Lcom/jp/runtime/web/RuntimeApiEndpointKt;->headerValueIgnoreCase(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    const-string v7, "body"

    .line 66
    .line 67
    const-string v8, ""

    .line 68
    .line 69
    invoke-virtual {v0, v7, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->sljpnfm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object v8, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    const-string v7, "status"

    .line 86
    .line 87
    invoke-virtual {v0, v3, v7}, Lcom/jp/bootstrap/internal/cjpbeith;->jisccnqwqm(ILjava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    const/16 v13, 0x8

    .line 92
    .line 93
    const/4 v14, 0x0

    .line 94
    const/4 v12, 0x0

    .line 95
    invoke-static/range {v9 .. v14}, Lcom/jp/runtime/web/RuntimeApiEndpointKt;->shouldSwitchApiOrigin$default(ILjava/lang/String;[BZILjava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-nez v7, :cond_1

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_1
    move-object v7, v0

    .line 103
    move-object v0, v4

    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    move-object v7, v4

    .line 107
    :goto_1
    iget-object v8, v1, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v8, v5, v2}, Lcom/jp/runtime/web/RuntimeApiEndpointKt;->failoverToNextOrigin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    if-nez v5, :cond_2

    .line 117
    .line 118
    move-object v6, v0

    .line 119
    goto :goto_2

    .line 120
    :cond_2
    sget-object v8, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 121
    .line 122
    invoke-virtual {v8}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-eqz v8, :cond_3

    .line 127
    .line 128
    invoke-virtual {v8}, Lcom/jp/runtime/web/ApiRequestControl;->checkActive()V

    .line 129
    .line 130
    .line 131
    :cond_3
    move v15, v6

    .line 132
    move-object v6, v0

    .line 133
    move v0, v15

    .line 134
    goto :goto_0

    .line 135
    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 136
    .line 137
    return-object v7

    .line 138
    :cond_5
    if-eqz v6, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    new-instance v6, Ljava/io/IOException;

    .line 142
    .line 143
    const-string v0, "api_unavailable"

    .line 144
    .line 145
    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    throw v6
.end method

.method public static synthetic recoverUpstream$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;ILjava/lang/Object;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p1, "GET"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->recoverUpstream(Ljava/lang/String;Lcom/jp/bootstrap/internal/mbwlg;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private final refreshLiveApiOrigin()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiControlExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance v1, Lcom/jp/bootstrap/internal/br0;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static final refreshLiveApiOrigin$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static final releaseSplashOverlay$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onSplashReleased:Lcom/jp/bootstrap/internal/mbwlg;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final rememberIssuedOrigin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x20

    .line 21
    .line 22
    if-le v1, v2, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->issuedApiOrigins:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->dzseq(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-object p1

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    throw p0
.end method

.method private final requestRuntimeUpdateCheck()V
    .locals 0
    return-void
.end method

.method private final resetScrollPosition(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0, p0}, Landroid/view/View;->scrollTo(II)V

    .line 3
    .line 4
    .line 5
    new-instance p0, Lcom/jp/bootstrap/internal/a9;

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Lcom/jp/bootstrap/internal/a9;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic resetScrollPosition$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resetScrollPosition(Landroid/webkit/WebView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final resetScrollPosition$lambda$0(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 10
    .line 11
    .line 12
    const-string v0, "window.scrollTo(0,0)"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static synthetic rowxts(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$39(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ryrgde(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$37(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final saveImageToGallery(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;
    const-string v1, "Image export disabled in TV build"
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static synthetic sbmzsrkn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->attachTo$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/widget/FrameLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final scheduleForegroundHealth()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->cancelForegroundHealth()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->stableForeground:Ljava/lang/Runnable;

    .line 20
    .line 21
    const-wide/16 v2, 0x1388

    .line 22
    .line 23
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeTimeout:Ljava/lang/Runnable;

    .line 28
    .line 29
    const-wide/16 v2, 0x7530

    .line 30
    .line 31
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method private final sendUpstream(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;[B)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/jp/bootstrap/internal/cjpbeith;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->upstreamApiUrl(Ljava/net/URI;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 p2, 0x5dc

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 25
    .line 26
    .line 27
    const/16 p2, 0x9c4

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 30
    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "Cache-Control"

    .line 40
    .line 41
    const-string v1, "no-cache"

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$sendUpstream$connection$1$1;

    .line 47
    .line 48
    invoke-direct {v0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$sendUpstream$connection$1$1;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/jp/bootstrap/internal/x40;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v1, v2, v0}, Lcom/jp/bootstrap/internal/x40;-><init>(ILcom/jp/bootstrap/internal/tkwlkffmbu;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p3, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 58
    .line 59
    .line 60
    const-string p3, "User-Agent"

    .line 61
    .line 62
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appUserAgent:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, p3, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "Accept"

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    if-eqz p3, :cond_0

    .line 74
    .line 75
    invoke-static {p3}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_1

    .line 80
    .line 81
    :cond_0
    const-string p3, "application/json"

    .line 82
    .line 83
    invoke-virtual {p1, p0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const-string p0, "X-Client-App"

    .line 87
    .line 88
    const-string p3, "jp"

    .line 89
    .line 90
    invoke-virtual {p1, p0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "X-Client-Platform"

    .line 94
    .line 95
    const-string p3, "android"

    .line 96
    .line 97
    invoke-virtual {p1, p0, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    array-length p0, p4

    .line 101
    const/4 p3, 0x1

    .line 102
    if-nez p0, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 106
    .line 107
    .line 108
    array-length p0, p4

    .line 109
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 110
    .line 111
    .line 112
    :goto_0
    sget-object p0, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/jp/runtime/web/ApiRequestControl;->attach(Ljava/net/HttpURLConnection;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    :try_start_0
    array-length p0, p4

    .line 124
    if-nez p0, :cond_4

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 128
    .line 129
    .line 130
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :try_start_1
    invoke-virtual {p0, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 132
    .line 133
    .line 134
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 135
    .line 136
    .line 137
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    const/16 p4, 0xc8

    .line 142
    .line 143
    if-gt p4, p0, :cond_5

    .line 144
    .line 145
    const/16 p4, 0x190

    .line 146
    .line 147
    if-ge p0, p4, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    move-object p0, v0

    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 159
    .line 160
    .line 161
    move-result-object p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :goto_2
    if-eqz p4, :cond_6

    .line 163
    .line 164
    const/high16 v0, 0x800000

    .line 165
    .line 166
    :try_start_3
    invoke-static {p4, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->access$readBounded(Ljava/io/InputStream;I)[B

    .line 167
    .line 168
    .line 169
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    :try_start_4
    invoke-interface {p4}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .line 172
    .line 173
    if-eqz v0, :cond_6

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    move-object p0, v0

    .line 178
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 179
    :catchall_2
    move-exception v0

    .line 180
    move-object p2, v0

    .line 181
    :try_start_6
    invoke-static {p4, p0}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    throw p2

    .line 185
    :cond_6
    new-array v0, p2, [B

    .line 186
    .line 187
    :goto_3
    new-instance p2, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 188
    .line 189
    invoke-direct {p2}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object p4

    .line 196
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    check-cast p4, Ljava/lang/Iterable;

    .line 201
    .line 202
    invoke-static {p4}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->hwrol(Ljava/lang/Iterable;)Lcom/jp/bootstrap/internal/gvelsjffwjg;

    .line 203
    .line 204
    .line 205
    move-result-object p4

    .line 206
    new-instance v1, Lcom/jp/bootstrap/internal/c70;

    .line 207
    .line 208
    const/16 v2, 0xb

    .line 209
    .line 210
    invoke-direct {v1, v2}, Lcom/jp/bootstrap/internal/c70;-><init>(I)V

    .line 211
    .line 212
    .line 213
    new-instance v2, Lcom/jp/bootstrap/internal/pwsemjxr;

    .line 214
    .line 215
    invoke-direct {v2, p4, p3, v1}, Lcom/jp/bootstrap/internal/pwsemjxr;-><init>(Lcom/jp/bootstrap/internal/ia0;ZLcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 216
    .line 217
    .line 218
    const/16 p3, 0x20

    .line 219
    .line 220
    invoke-static {v2, p3}, Lcom/jp/bootstrap/internal/pa0;->edtsi(Lcom/jp/bootstrap/internal/ia0;I)Lcom/jp/bootstrap/internal/ia0;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    invoke-interface {p3}, Lcom/jp/bootstrap/internal/ia0;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result p4

    .line 232
    if-eqz p4, :cond_8

    .line 233
    .line 234
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p4

    .line 238
    check-cast p4, Ljava/util/Map$Entry;

    .line 239
    .line 240
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    check-cast v1, Ljava/lang/String;

    .line 245
    .line 246
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    check-cast p4, Ljava/util/List;

    .line 251
    .line 252
    if-nez p4, :cond_7

    .line 253
    .line 254
    sget-object p4, Lcom/jp/bootstrap/internal/ynthpuvskul;->sbmzsrkn:Lcom/jp/bootstrap/internal/ynthpuvskul;

    .line 255
    .line 256
    :cond_7
    move-object v2, p4

    .line 257
    const-string v3, ", "

    .line 258
    .line 259
    const/4 v6, 0x0

    .line 260
    const/16 v7, 0x3e

    .line 261
    .line 262
    const/4 v4, 0x0

    .line 263
    const/4 v5, 0x0

    .line 264
    invoke-static/range {v2 .. v7}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->odgej(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/iiazsdqcp;I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p4

    .line 268
    const/16 v2, 0x2000

    .line 269
    .line 270
    invoke-static {v2, p4}, Lcom/jp/bootstrap/internal/gi0;->vdoha(ILjava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p4

    .line 274
    invoke-virtual {p2, p4, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_8
    new-instance p3, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 279
    .line 280
    invoke-direct {p3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string p4, "status"

    .line 284
    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p3, p0, p4}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string p0, "headers"

    .line 293
    .line 294
    invoke-virtual {p3, p2, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string p0, "body"

    .line 298
    .line 299
    new-instance p2, Ljava/lang/String;

    .line 300
    .line 301
    sget-object p4, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 302
    .line 303
    invoke-direct {p2, v0, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, p2, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    .line 308
    .line 309
    sget-object p0, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    if-eqz p0, :cond_9

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lcom/jp/runtime/web/ApiRequestControl;->detach(Ljava/net/HttpURLConnection;)V

    .line 318
    .line 319
    .line 320
    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 321
    .line 322
    .line 323
    return-object p3

    .line 324
    :catchall_3
    move-exception v0

    .line 325
    move-object p2, v0

    .line 326
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 327
    :catchall_4
    move-exception v0

    .line 328
    move-object p3, v0

    .line 329
    :try_start_8
    invoke-static {p0, p2}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 333
    :goto_5
    sget-object p2, Lcom/jp/runtime/web/ApiRequestControl;->Companion:Lcom/jp/runtime/web/ApiRequestControl$Companion;

    .line 334
    .line 335
    invoke-virtual {p2}, Lcom/jp/runtime/web/ApiRequestControl$Companion;->current()Lcom/jp/runtime/web/ApiRequestControl;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    if-eqz p2, :cond_a

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Lcom/jp/runtime/web/ApiRequestControl;->detach(Ljava/net/HttpURLConnection;)V

    .line 342
    .line 343
    .line 344
    :cond_a
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 345
    .line 346
    .line 347
    throw p0
.end method

.method private static final sendUpstream$lambda$0$0(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final sendUpstream$lambda$3(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static synthetic show$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/jp/bootstrap/internal/uiifjeoil;->sbmzsrkn:Lcom/jp/bootstrap/internal/uiifjeoil;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->show(Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic sjeyvwgjn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/view/View;Lcom/jp/bootstrap/internal/u01;)Lcom/jp/bootstrap/internal/u01;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->createWebView$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/view/View;Lcom/jp/bootstrap/internal/u01;)Lcom/jp/bootstrap/internal/u01;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic sljpnfm(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchConnectivityState$lambda$0$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final stableForeground$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/jp/runtime/contract/WebRuntimeHealthProof;->INSTANCE:Lcom/jp/runtime/contract/WebRuntimeHealthProof;

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getHealthProofPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getBundleVersion()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/jp/runtime/contract/WebRuntimeHealthProof;->writeAtomically(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public static synthetic syiqloeyp(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$12(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic syoolsrjr(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$35(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tckmliv(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;Lcom/jp/bootstrap/internal/ky0;Landroid/net/Uri;ZLcom/jp/bootstrap/internal/bzrkkpg;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->installBridge$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;Lcom/jp/bootstrap/internal/ky0;Landroid/net/Uri;ZLcom/jp/bootstrap/internal/wvveclfb;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tscplbdu(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiFailureContext$lambda$0$2(Lcom/jp/bootstrap/internal/tkwlkffmbu;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tsodtn(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$2(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic uaakwbmitdl(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$8(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    sget-object v1, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/jp/bootstrap/internal/rw0;->syiqloeyp(Landroid/view/View;)Lcom/jp/bootstrap/internal/u01;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v0

    .line 13
    :goto_0
    const/16 v0, 0x287

    .line 14
    .line 15
    iget-object v1, p1, Lcom/jp/bootstrap/internal/u01;->syiqloeyp:Lcom/jp/bootstrap/internal/r01;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/r01;->hqaldusn(I)Lcom/jp/bootstrap/internal/nhenkeqxqm;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    iget-object v2, p1, Lcom/jp/bootstrap/internal/u01;->syiqloeyp:Lcom/jp/bootstrap/internal/r01;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/r01;->yfqpbrvsm(I)Lcom/jp/bootstrap/internal/nhenkeqxqm;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/jp/runtime/web/PxInsets;

    .line 36
    .line 37
    iget v3, v0, Lcom/jp/bootstrap/internal/nhenkeqxqm;->jzphcv:I

    .line 38
    .line 39
    iget v4, v0, Lcom/jp/bootstrap/internal/nhenkeqxqm;->cauva:I

    .line 40
    .line 41
    iget v5, v0, Lcom/jp/bootstrap/internal/nhenkeqxqm;->syiqloeyp:I

    .line 42
    .line 43
    iget v0, v0, Lcom/jp/bootstrap/internal/nhenkeqxqm;->jyozshuy:I

    .line 44
    .line 45
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/jp/runtime/web/PxInsets;-><init>(IIII)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/jp/runtime/web/PxInsets;

    .line 49
    .line 50
    iget v3, v1, Lcom/jp/bootstrap/internal/nhenkeqxqm;->jzphcv:I

    .line 51
    .line 52
    iget v4, v1, Lcom/jp/bootstrap/internal/nhenkeqxqm;->cauva:I

    .line 53
    .line 54
    iget v5, v1, Lcom/jp/bootstrap/internal/nhenkeqxqm;->syiqloeyp:I

    .line 55
    .line 56
    iget v1, v1, Lcom/jp/bootstrap/internal/nhenkeqxqm;->jyozshuy:I

    .line 57
    .line 58
    invoke-direct {v0, v3, v4, v5, v1}, Lcom/jp/runtime/web/PxInsets;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v0}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->contentSafeInsetsPx(Lcom/jp/runtime/web/PxInsets;Lcom/jp/runtime/web/PxInsets;)Lcom/jp/runtime/web/PxInsets;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .line 77
    const/high16 v2, 0x3f800000    # 1.0f

    .line 78
    .line 79
    cmpg-float v3, v1, v2

    .line 80
    .line 81
    if-gez v3, :cond_1

    .line 82
    .line 83
    move v1, v2

    .line 84
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    const/16 v3, 0x8

    .line 95
    .line 96
    iget-object p1, p1, Lcom/jp/bootstrap/internal/u01;->syiqloeyp:Lcom/jp/bootstrap/internal/r01;

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Lcom/jp/bootstrap/internal/r01;->yfqpbrvsm(I)Lcom/jp/bootstrap/internal/nhenkeqxqm;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget p1, p1, Lcom/jp/bootstrap/internal/nhenkeqxqm;->cauva:I

    .line 103
    .line 104
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    const/high16 v4, 0x42c80000    # 100.0f

    .line 117
    .line 118
    mul-float/2addr v4, v1

    .line 119
    float-to-int v4, v4

    .line 120
    invoke-static {p1, v3, v2, v4}, Lcom/jp/runtime/web/ImeOcclusionKt;->resolveImeBottomPx(IIII)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    new-instance v2, Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/jp/runtime/web/PxInsets;->getTop()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-static {v3, v1}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->pxToCss(IF)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v0}, Lcom/jp/runtime/web/PxInsets;->getBottom()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-static {v4, v1}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->pxToCss(IF)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-virtual {v0}, Lcom/jp/runtime/web/PxInsets;->getLeft()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-static {v5, v1}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->pxToCss(IF)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v0}, Lcom/jp/runtime/web/PxInsets;->getRight()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-static {v0, v1}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->pxToCss(IF)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    invoke-static {p1, v1}, Lcom/jp/runtime/web/ContentSafeInsetsKt;->pxToCss(IF)I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    invoke-direct/range {v2 .. v7}, Lcom/jp/runtime/web/RuntimeSafeArea;-><init>(IIIII)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 166
    .line 167
    invoke-static {p1, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_2
    iput-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->safeArea:Lcom/jp/runtime/web/RuntimeSafeArea;

    .line 175
    .line 176
    iget-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 177
    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchSafeArea()V

    .line 181
    .line 182
    .line 183
    :cond_3
    :goto_1
    return-void
.end method

.method private final upstreamApiUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    const-string p0, ""

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-static {p0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 p0, 0x3f

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method private final upstreamApiUrl(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->origin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final validatePlayerFrame(Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 9

    .line 1
    const-string p0, "x"

    .line 2
    .line 3
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4
    .line 5
    invoke-virtual {p1, p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmpg-double p0, v2, v4

    .line 19
    .line 20
    const-string v2, "Failed requirement."

    .line 21
    .line 22
    if-gtz p0, :cond_4

    .line 23
    .line 24
    const-string p0, "y"

    .line 25
    .line 26
    invoke-virtual {p1, p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    cmpg-double p0, v6, v4

    .line 35
    .line 36
    if-gtz p0, :cond_3

    .line 37
    .line 38
    const-string p0, "width"

    .line 39
    .line 40
    invoke-virtual {p1, p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 45
    .line 46
    cmpg-double p0, v5, v3

    .line 47
    .line 48
    if-gtz p0, :cond_2

    .line 49
    .line 50
    const-wide v7, 0x40c3880000000000L    # 10000.0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    cmpg-double p0, v3, v7

    .line 56
    .line 57
    if-gtz p0, :cond_2

    .line 58
    .line 59
    const-string p0, "height"

    .line 60
    .line 61
    invoke-virtual {p1, p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    cmpg-double p0, v5, v3

    .line 66
    .line 67
    if-gtz p0, :cond_1

    .line 68
    .line 69
    cmpg-double p0, v3, v7

    .line 70
    .line 71
    if-gtz p0, :cond_1

    .line 72
    .line 73
    const-string p0, "scale"

    .line 74
    .line 75
    invoke-virtual {p1, p0, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->zfrfwjkgqw(Ljava/lang/String;D)D

    .line 76
    .line 77
    .line 78
    move-result-wide p0

    .line 79
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 80
    .line 81
    cmpg-double v0, v0, p0

    .line 82
    .line 83
    if-gtz v0, :cond_0

    .line 84
    .line 85
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 86
    .line 87
    cmpg-double p0, p0, v0

    .line 88
    .line 89
    if-gtz p0, :cond_0

    .line 90
    .line 91
    return-void

    .line 92
    :cond_0
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-static {v2}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private final validatedCastMediaUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/net/URI;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x4000

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-gt v0, v1, :cond_1

    .line 22
    .line 23
    const-string v0, "http"

    .line 24
    .line 25
    const-string v1, "https"

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v2

    .line 54
    :goto_0
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->vdoha(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-static {v0}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_1

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_1
    const-string p0, "Failed requirement."

    .line 86
    .line 87
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method

.method private final validatedDownloadAddParams(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v3, Ljava/net/URI;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    const-string v6, "Failed requirement."

    .line 28
    .line 29
    const/16 v7, 0x2000

    .line 30
    .line 31
    if-gt v4, v7, :cond_a

    .line 32
    .line 33
    const-string v4, "http"

    .line 34
    .line 35
    const-string v8, "https"

    .line 36
    .line 37
    filled-new-array {v4, v8}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    move-object v8, v5

    .line 64
    :goto_0
    invoke-static {v4, v8}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->vdoha(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_a

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_a

    .line 75
    .line 76
    invoke-static {v4}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_a

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-nez v4, :cond_a

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_a

    .line 93
    .line 94
    new-instance v3, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 95
    .line 96
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/16 v0, 0x100

    .line 103
    .line 104
    const-string v1, "contentId"

    .line 105
    .line 106
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v3, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/16 v0, 0xf0

    .line 114
    .line 115
    const-string v1, "title"

    .line 116
    .line 117
    invoke-direct {p0, p1, v1, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v3, v0, v1}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v0, "posterUrl"

    .line 125
    .line 126
    invoke-direct {p0, p1, v0, v7}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    invoke-virtual {v3, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    const-string v0, "episodeIndex"

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-ltz v1, :cond_2

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v3, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_2
    invoke-static {v6}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v5

    .line 167
    :cond_3
    :goto_1
    const-string v0, "episodeNumber"

    .line 168
    .line 169
    const/16 v1, 0x78

    .line 170
    .line 171
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-eqz v4, :cond_4

    .line 176
    .line 177
    invoke-virtual {v3, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    const-string v0, "episodeTitle"

    .line 181
    .line 182
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-eqz v4, :cond_5

    .line 187
    .line 188
    invoke-virtual {v3, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_5
    const-string v0, "workKind"

    .line 192
    .line 193
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    invoke-virtual {v3, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    const-string v0, "lineName"

    .line 203
    .line 204
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    if-eqz v4, :cond_7

    .line 209
    .line 210
    invoke-virtual {v3, v4, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    const-string v0, "mimeType"

    .line 214
    .line 215
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    if-eqz p0, :cond_8

    .line 220
    .line 221
    invoke-virtual {v3, p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    :cond_8
    const-string p0, "isAdult"

    .line 225
    .line 226
    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {v3, p0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 243
    .line 244
    .line 245
    :cond_9
    return-object v3

    .line 246
    :cond_a
    invoke-static {v6}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-object v5
.end method

.method private final validatedDownloadIntentParams(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 9

    .line 1
    const-string v0, "workId"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p1, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v4, v1, v4

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const-string v6, "Failed requirement."

    .line 15
    .line 16
    if-lez v4, :cond_a

    .line 17
    .line 18
    new-instance v4, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 19
    .line 20
    invoke-direct {v4}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v7, 0x100

    .line 24
    .line 25
    const-string v8, "contentId"

    .line 26
    .line 27
    invoke-direct {p0, p1, v8, v7}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-virtual {v4, v7, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v4, v1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "lineKey"

    .line 42
    .line 43
    const/16 v1, 0x78

    .line 44
    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0xf0

    .line 53
    .line 54
    const-string v2, "title"

    .line 55
    .line 56
    invoke-direct {p0, p1, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v4, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "episodeKey"

    .line 64
    .line 65
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const-string v0, "episodeIndex"

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-ltz v2, :cond_1

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v6}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 107
    const-string v2, "forceRefresh"

    .line 108
    .line 109
    invoke-virtual {p1, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->ckyiuuu(Ljava/lang/String;Z)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    :cond_3
    const/16 v0, 0x2000

    .line 120
    .line 121
    const-string v2, "posterUrl"

    .line 122
    .line 123
    invoke-direct {p0, p1, v2, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {v4, v0, v2}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    const-string v0, "episodeNumber"

    .line 133
    .line 134
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    .line 140
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    const-string v0, "episodeTitle"

    .line 144
    .line 145
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-eqz v2, :cond_6

    .line 150
    .line 151
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    const-string v0, "workKind"

    .line 155
    .line 156
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    invoke-virtual {v4, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    const-string v0, "lineName"

    .line 166
    .line 167
    invoke-direct {p0, p1, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->optionalDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    if-eqz p0, :cond_8

    .line 172
    .line 173
    invoke-virtual {v4, p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->holm(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    const-string p0, "isAdult"

    .line 177
    .line 178
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_9

    .line 183
    .line 184
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->tckmliv(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-nez v0, :cond_9

    .line 189
    .line 190
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/cjpbeith;->dhjfigsvwc(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-virtual {v4, p0, p1}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 195
    .line 196
    .line 197
    :cond_9
    return-object v4

    .line 198
    :cond_a
    invoke-static {v6}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-object v5
.end method

.method private final validatedDownloadText(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v0, 0x1

    .line 18
    if-gt v0, p2, :cond_0

    .line 19
    .line 20
    if-gt p2, p3, :cond_0

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->hasControlCharacters(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    const-string p0, "Failed requirement."

    .line 30
    .line 31
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static synthetic vzds(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$16(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic wigtqdo(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$18(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic wlmrcnbm(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeTimeout$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final writeCoreFailure(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/jp/runtime/contract/WebRuntimeHealthProof;->INSTANCE:Lcom/jp/runtime/contract/WebRuntimeHealthProof;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getHealthProofPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getReleaseSetId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getBundleVersion()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/jp/runtime/contract/WebRuntimeHealthProof;->writeFailureAtomically(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->terminalSignalWritten:Z

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->cancelForegroundHealth()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static synthetic wyjqgzdhz(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchBridgeMessage$lambda$4$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic xizmfgbpnv(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$14(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic ydkpabz(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$17(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yfqpbrvsm(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->refreshLiveApiOrigin$lambda$0$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yndsdvj(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->sendUpstream$lambda$3(Ljava/util/Map$Entry;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic yxdrscromtp(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$5(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Lcom/jp/runtime/web/NativeWebCommand;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic zfrfwjkgqw(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->handleMessage$lambda$0$38(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final attachTo(Landroid/widget/FrameLayout;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-eq v0, p1, :cond_2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 32
    .line 33
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 43
    .line 44
    sget-object v1, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 50
    .line 51
    new-instance v1, Lcom/jp/bootstrap/internal/dc;

    .line 52
    .line 53
    const/16 v3, 0x12

    .line 54
    .line 55
    invoke-direct {v1, v3, p0, p1}, Lcom/jp/bootstrap/internal/dc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-static {p0, v2, p1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resetScrollPosition$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final currentAppUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->isRecoverableRuntimeRestoreUrl(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    return-object v0
.end method

.method public final destroy()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 6
    .line 7
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->setForeground(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingFileSelection:Landroid/webkit/ValueCallback;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingFileSelection:Landroid/webkit/ValueCallback;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameProbe:Lcom/jp/runtime/web/TrustedLocalWebRuntime$firstAppFrameProbe$1;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->cancelForegroundHealth()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->connectivityCallback:Lcom/jp/runtime/web/TrustedLocalWebRuntime$connectivityCallback$1;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :catchall_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 60
    .line 61
    if-ne v1, v2, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iput-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    check-cast v1, Landroid/view/ViewGroup;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    move-object v1, v0

    .line 103
    :goto_0
    if-eqz v1, :cond_5

    .line 104
    .line 105
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 113
    .line 114
    .line 115
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 116
    .line 117
    const-string v2, "jpBridge"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    check-cast v1, Ljava/lang/Iterable;

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_6

    .line 142
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/jp/runtime/web/ApiRequestControl;

    .line 148
    .line 149
    invoke-virtual {v2}, Lcom/jp/runtime/web/ApiRequestControl;->close()V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    .line 160
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiControlExecutor:Ljava/util/concurrent/ExecutorService;

    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->getOriginListener()Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->apiOriginListener:Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;

    .line 175
    .line 176
    if-ne v2, v3, :cond_7

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->setOriginListener(Lcom/jp/runtime/web/RuntimeApiEndpoint$OriginListener;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public final dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "^[A-Za-z][A-Za-z0-9]{0,63}$"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Lcom/jp/bootstrap/internal/cjpbeith;->ospb(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2}, Lcom/jp/bootstrap/internal/cjpbeith;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v1, Lcom/jp/bootstrap/internal/er0;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jp/bootstrap/internal/er0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    const-string p0, "Failed requirement."

    .line 50
    .line 51
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final getIdentity()Lcom/jp/runtime/contract/WebRuntimeIdentity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onCameraPermissionResult(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pendingCameraRequest:Landroid/webkit/PermissionRequest;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const-string p0, "android.webkit.resource.VIDEO_CAPTURE"

    .line 12
    .line 13
    filled-new-array {p0}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 3
    .line 4
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->setForeground(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->cancelForegroundHealth()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->pauseDomMedia()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resumed:Z

    .line 3
    .line 4
    sget-object v1, Lcom/jp/runtime/web/RuntimeApiEndpoint;->INSTANCE:Lcom/jp/runtime/web/RuntimeApiEndpoint;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/jp/runtime/web/RuntimeApiEndpoint;->setForeground(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v2, Lcom/jp/bootstrap/internal/br0;

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-direct {v2, p0, v3}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->scheduleForegroundHealth()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->foregroundUpdatePulse:Lcom/jp/runtime/web/TrustedLocalWebRuntime$foregroundUpdatePulse$1;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->refreshLiveApiOrigin()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchConnectivityState()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "resumed"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->rowxts(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v0, "didEnterForeground"

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchEvent(Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final pauseDomMedia()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Lcom/jp/bootstrap/internal/br0;

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final refreshSafeArea()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->destroyed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 7
    .line 8
    sget-object v1, Lcom/jp/bootstrap/internal/xw0;->syiqloeyp:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/jp/bootstrap/internal/rw0;->syiqloeyp(Landroid/view/View;)Lcom/jp/bootstrap/internal/u01;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->updateSafeArea(Lcom/jp/bootstrap/internal/u01;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->bridgeReady:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->dispatchSafeArea()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public final releaseSplashOverlay()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->splashReleased:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->splashReleased:Z

    .line 8
    .line 9
    const-string v0, "JpWebRuntime"

    .line 10
    .line 11
    const-string v1, "startup stage=splash_released"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->mainHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance v1, Lcom/jp/bootstrap/internal/br0;

    .line 19
    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/br0;-><init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final restoreAppUrl(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->showTvWebViewRequirement()Z
    move-result v0
    if-eqz v0, :tv_supported_engine
    const/4 v0, 0x1
    return v0
    :tv_supported_engine
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->isRecoverableRuntimeRestoreUrl(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, v1

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iput-object v1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->currentRoute:Lcom/jp/runtime/web/WebRoute;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final runtimeUpdateStatusSnapshot()Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getHostExternalFilesRootPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->identity:Lcom/jp/runtime/contract/WebRuntimeIdentity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/jp/runtime/contract/WebRuntimeIdentity;->getRuntimeUpdateStatusPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v1

    .line 32
    :goto_1
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->appContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, v3, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->resolveRuntimeUpdateStatusLocation(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Lcom/jp/runtime/web/RuntimeUpdateStatusLocation;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lcom/jp/runtime/web/RuntimeUpdateStatusLocation;->getHostExternalRoot()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/jp/runtime/web/RuntimeUpdateStatusLocation;->getStatusFile()Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {v0, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->readRuntimeUpdateStatusFile(Ljava/io/File;Ljava/io/File;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final setOnFirstAppFrameVisibleListener(Lcom/jp/bootstrap/internal/mbwlg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/mbwlg;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onFirstAppFrameVisible:Lcom/jp/bootstrap/internal/mbwlg;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->firstAppFrameVisible:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setOnSplashReleasedListener(Lcom/jp/bootstrap/internal/mbwlg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/bootstrap/internal/mbwlg;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->onSplashReleased:Lcom/jp/bootstrap/internal/mbwlg;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->splashReleased:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final show(Lcom/jp/runtime/web/WebRoute;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jp/runtime/web/WebRoute;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->showTvWebViewRequirement()Z
    move-result v0
    if-eqz v0, :tv_supported_engine
    return-void
    :tv_supported_engine
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "https://appassets.androidplatform.net/runtime/index.html"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "view"

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/jp/runtime/web/WebRoute;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/TreeMap;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/jp/runtime/web/WebRoute;->SHORTS:Lcom/jp/runtime/web/WebRoute;

    .line 69
    .line 70
    if-ne p1, v1, :cond_1

    .line 71
    .line 72
    invoke-static {p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntimeKt;->shortRouteFragment(Ljava/util/Map;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->currentRoute:Lcom/jp/runtime/web/WebRoute;

    .line 91
    .line 92
    if-ne v0, p1, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, p2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    const/4 p2, 0x0

    .line 108
    invoke-static {p0, p2, p1, p2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->resetScrollPosition$default(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/WebView;ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_2
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->currentRoute:Lcom/jp/runtime/web/WebRoute;

    .line 113
    .line 114
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;

    .line 126
    .line 127
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

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



.method private final showTvWebViewRequirement()Z
    .locals 4
    const-string v0, "WEB_MESSAGE_LISTENER"
    invoke-static {v0}, Lcom/jp/bootstrap/internal/uy0;->syiqloeyp(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :tv_unsupported
    const/4 v0, 0x0
    return v0
    :tv_unsupported
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->webView:Landroid/webkit/WebView;
    const-string v1, "<html><meta charset='utf-8'><body style='background:#15191f;color:white;font:28px sans-serif;padding:64px'><h2>请更新电视的 Android System WebView</h2><p>当前网页内核不支持安全通信，无法启动此版本。</p><p>更新系统网页内核后，重新打开应用。</p></body></html>"
    const-string v2, "text/html"
    const-string v3, "UTF-8"
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    const/4 v0, 0x1
    return v0
.end method


.method private static isTvBlockedCommand(Ljava/lang/String;)Z
    .locals 1
    const-string v0, "downloads."
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const-string v0, "update.check"
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const-string v0, "update.apply"
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const-string v0, "diagnostics.export"
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const-string v0, "media.saveImage"
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const-string v0, "openUrlBySystem"
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-nez v0, :tv_blocked
    const/4 v0, 0x0
    return v0
    :tv_blocked
    const/4 v0, 0x1
    return v0
.end method

.method private final tvDisabledReply(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    .locals 3
    const-string v0, "id"
    invoke-virtual {p1, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->lsqxopbhlw(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v0, "disabled_in_tv_build"
    const/4 v2, 0x0
    invoke-direct {p0, v0, v1, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->errorReply(Ljava/lang/String;Ljava/lang/String;Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/cjpbeith;
    move-result-object v0
    return-object v0
.end method
