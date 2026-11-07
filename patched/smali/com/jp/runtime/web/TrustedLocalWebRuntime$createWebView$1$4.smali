.class public final Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;
.super Landroid/webkit/WebChromeClient;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jp/runtime/web/TrustedLocalWebRuntime;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jp/runtime/web/TrustedLocalWebRuntime;


# direct methods
.method public constructor <init>(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;->this$0:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic jzphcv(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Lcom/jp/bootstrap/internal/bt0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;->onShowFileChooser$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Lcom/jp/bootstrap/internal/bt0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final onPermissionRequest$lambda$1(Landroid/webkit/PermissionRequest;Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "android.webkit.resource.VIDEO_CAPTURE"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/buafbkifn;->nehlzhe([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "https"

    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "appassets.androidplatform.net"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getActivity$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/app/Activity;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getRequestCameraPermission$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getActivity$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v2, "android.permission.CAMERA"

    .line 71
    .line 72
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/jmrkebxvwhf;->jzphcv(Landroid/content/Context;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    filled-new-array {v1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/PermissionRequest;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-static {p1, p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$setPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/PermissionRequest;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getRequestCameraPermission$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-interface {p0, v2}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private static final onShowFileChooser$lambda$0(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/net/Uri;)Lcom/jp/bootstrap/internal/bt0;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getPendingFileSelection$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/ValueCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    invoke-static {p0, v2}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$setPendingFileSelection$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/ValueCallback;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    new-array v2, p0, [Landroid/net/Uri;

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    aput-object p1, v2, p0

    .line 21
    .line 22
    :cond_1
    invoke-interface {v0, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method public static synthetic syiqloeyp(Landroid/webkit/PermissionRequest;Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;->onPermissionRequest$lambda$1(Landroid/webkit/PermissionRequest;Lcom/jp/runtime/web/TrustedLocalWebRuntime;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;->this$0:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$getPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;)Landroid/webkit/PermissionRequest;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/jp/runtime/web/TrustedLocalWebRuntime$createWebView$1$4;->this$0:Lcom/jp/runtime/web/TrustedLocalWebRuntime;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-static {p0, p1}, Lcom/jp/runtime/web/TrustedLocalWebRuntime;->access$setPendingCameraRequest$p(Lcom/jp/runtime/web/TrustedLocalWebRuntime;Landroid/webkit/PermissionRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    const/4 v0, 0x0
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    const/4 v0, 0x1
    return v0
.end method
