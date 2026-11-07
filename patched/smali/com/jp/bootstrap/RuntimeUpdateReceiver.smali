.class public final Lcom/jp/bootstrap/RuntimeUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# static fields
.field public static final $stable:I = 0x8

.field public static final ACTION_CHECK_RUNTIME_UPDATE:Ljava/lang/String; = "com.jp.runtime.action.CHECK_UPDATE"

.field public static final Companion:Lcom/jp/bootstrap/internal/i50;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jp/bootstrap/internal/i50;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jp/bootstrap/RuntimeUpdateReceiver;->Companion:Lcom/jp/bootstrap/internal/i50;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    return-void
.end method
