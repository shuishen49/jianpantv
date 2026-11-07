.class public abstract Lcom/jp/bootstrap/internal/vs0;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# static fields
.field public static volatile jyozshuy:Lcom/jp/bootstrap/internal/hp;

.field public static final jzphcv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final syiqloeyp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/jp/bootstrap/internal/vs0;->syiqloeyp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/jp/bootstrap/internal/vs0;->jzphcv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method public static jzphcv(Landroid/app/Application;)V
    .locals 0
    return-void
.end method

.method public static syiqloeyp(Landroid/content/Context;Z)V
    .locals 0
    return-void
.end method
