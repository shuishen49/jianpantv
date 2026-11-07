.class public final Lcom/jp/runtime/web/RuntimeWindowKt;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# static fields
.field public static final RUNTIME_BACKGROUND_COLOR:I = -0xededee


# direct methods
.method public static final applyRuntimeWindowMode(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V
    .locals 5

    # Use the original immersive window path for the TV presentation.
    sget-object p1, Lcom/jp/runtime/web/RuntimeWindowMode;->MEDIA_IMMERSIVE:Lcom/jp/runtime/web/RuntimeWindowMode;

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/jp/bootstrap/internal/lk;->ckyiuuu(Landroid/view/Window;Z)V

    .line 13
    .line 14
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1c

    .line 18
    .line 19
    const/16 v3, 0x1e

    .line 20
    .line 21
    if-lt v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-lt v0, v3, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    :goto_0
    invoke-static {v4, v0}, Lcom/jp/bootstrap/internal/fseadzoqiv;->uaakwbmitdl(Landroid/view/WindowManager$LayoutParams;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    new-instance v2, Lcom/jp/bootstrap/internal/mkppehvjls;

    .line 59
    .line 60
    invoke-direct {v2, p0}, Lcom/jp/bootstrap/internal/mkppehvjls;-><init>(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v4, 0x23

    .line 66
    .line 67
    if-lt p0, v4, :cond_2

    .line 68
    .line 69
    new-instance p0, Lcom/jp/bootstrap/internal/y01;

    .line 70
    .line 71
    invoke-direct {p0, v0, v2}, Lcom/jp/bootstrap/internal/x01;-><init>(Landroid/view/Window;Lcom/jp/bootstrap/internal/mkppehvjls;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-lt p0, v3, :cond_3

    .line 76
    .line 77
    new-instance p0, Lcom/jp/bootstrap/internal/x01;

    .line 78
    .line 79
    invoke-direct {p0, v0, v2}, Lcom/jp/bootstrap/internal/x01;-><init>(Landroid/view/Window;Lcom/jp/bootstrap/internal/mkppehvjls;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/16 v3, 0x1a

    .line 84
    .line 85
    if-lt p0, v3, :cond_4

    .line 86
    .line 87
    new-instance p0, Lcom/jp/bootstrap/internal/w01;

    .line 88
    .line 89
    invoke-direct {p0, v0, v2}, Lcom/jp/bootstrap/internal/v01;-><init>(Landroid/view/Window;Lcom/jp/bootstrap/internal/mkppehvjls;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    new-instance p0, Lcom/jp/bootstrap/internal/v01;

    .line 94
    .line 95
    invoke-direct {p0, v0, v2}, Lcom/jp/bootstrap/internal/v01;-><init>(Landroid/view/Window;Lcom/jp/bootstrap/internal/mkppehvjls;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-virtual {p0, v1}, Lcom/jp/bootstrap/internal/vd;->wigtqdo(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/jp/bootstrap/internal/vd;->ryrgde(Z)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lcom/jp/runtime/web/RuntimeWindowMode;->MEDIA_IMMERSIVE:Lcom/jp/runtime/web/RuntimeWindowMode;

    .line 105
    .line 106
    if-ne p1, v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/vd;->holm()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/vd;->jisccnqwqm()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/vd;->rowxts()V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public static final configureRuntimeWindow(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0xc000402

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    .line 23
    const v2, -0xededee

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    .line 31
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v1, 0x1d

    .line 35
    .line 36
    if-lt v0, v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance v0, Lcom/jp/bootstrap/internal/sk0;

    .line 54
    .line 55
    new-instance v1, Lcom/jp/bootstrap/internal/c70;

    .line 56
    .line 57
    const/16 v2, 0xa

    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/jp/bootstrap/internal/c70;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/sk0;-><init>(Lcom/jp/bootstrap/internal/c70;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/jp/bootstrap/internal/sk0;

    .line 66
    .line 67
    new-instance v3, Lcom/jp/bootstrap/internal/c70;

    .line 68
    .line 69
    invoke-direct {v3, v2}, Lcom/jp/bootstrap/internal/c70;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, v3}, Lcom/jp/bootstrap/internal/sk0;-><init>(Lcom/jp/bootstrap/internal/c70;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0, v1}, Lcom/jp/bootstrap/internal/scawsihah;->syiqloeyp(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/bootstrap/internal/sk0;Lcom/jp/bootstrap/internal/sk0;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, p1}, Lcom/jp/runtime/web/RuntimeWindowKt;->applyRuntimeWindowMode(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic configureRuntimeWindow$default(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/jp/runtime/web/RuntimeWindowMode;->CONTENT:Lcom/jp/runtime/web/RuntimeWindowMode;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/jp/runtime/web/RuntimeWindowKt;->configureRuntimeWindow(Lcom/jp/bootstrap/internal/umqafeb;Lcom/jp/runtime/web/RuntimeWindowMode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
