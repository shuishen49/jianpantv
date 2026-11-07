.class public abstract Lcom/jp/bootstrap/internal/fj;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# direct methods
.method public static final bmucqf(Lcom/jp/bootstrap/internal/cwnacmyrsob;Lcom/jp/bootstrap/internal/itipisgoc;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->dhjfigsvwc:Lcom/jp/bootstrap/internal/up;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/up;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/jp/bootstrap/internal/itipisgoc;->tsodtn:Lcom/jp/bootstrap/internal/up;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/up;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lcom/jp/bootstrap/internal/itipisgoc;->tckmliv:Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->uaakwbmitdl:Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/kmstupatsly;->jzphcv()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lcom/jp/bootstrap/internal/kmstupatsly;->syiqloeyp(I)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v0, v4, v3}, Lcom/jp/bootstrap/internal/kmstupatsly;->dhjfigsvwc(FI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-wide v0, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yndsdvj:J

    .line 34
    .line 35
    iput-wide v0, p1, Lcom/jp/bootstrap/internal/itipisgoc;->nvbyrnefqdi:J

    .line 36
    .line 37
    iget-wide v0, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->mhirrjin:J

    .line 38
    .line 39
    iput-wide v0, p1, Lcom/jp/bootstrap/internal/itipisgoc;->wyjqgzdhz:J

    .line 40
    .line 41
    iget-object p0, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yfqpbrvsm:Lcom/jp/bootstrap/internal/up;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/up;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    iput-boolean p0, p1, Lcom/jp/bootstrap/internal/itipisgoc;->gtnruhk:Z

    .line 54
    .line 55
    return-void
.end method

.method public static cauva(Lcom/jp/bootstrap/JpApplication;Lcom/jp/release/ReleaseSlotStore;)Lcom/jp/bootstrap/internal/h50;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method

.method public static final ckyiuuu(Lcom/jp/bootstrap/internal/ae0;Lcom/jp/bootstrap/internal/xmlvl;I)V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lcom/jp/bootstrap/internal/ae0;->bmucqf:I

    .line 2
    .line 3
    if-le p2, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/jp/bootstrap/internal/ae0;->jpgq:I

    .line 6
    .line 7
    if-lt p2, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-nez p2, :cond_2

    .line 12
    .line 13
    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ae0;->syoolsrjr()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/jp/bootstrap/internal/ae0;->bmucqf:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/ae0;->mhpayc(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/xmlvl;->tsodtn()V

    .line 26
    .line 27
    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ae0;->yfqpbrvsm()V

    .line 29
    .line 30
    .line 31
    goto :goto_0
.end method

.method public static final dhjfigsvwc()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static edtsi(ILcom/jp/bootstrap/internal/wp;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p2, "too short header: "

    .line 15
    .line 16
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v2, p0}, Lcom/jp/bootstrap/internal/yp;->syiqloeyp(Ljava/lang/RuntimeException;Ljava/lang/String;)Lcom/jp/bootstrap/internal/yp;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eq v0, p0, :cond_3

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p2, "expected header type "

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v2, p0}, Lcom/jp/bootstrap/internal/yp;->syiqloeyp(Ljava/lang/RuntimeException;Ljava/lang/String;)Lcom/jp/bootstrap/internal/yp;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    throw p0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/16 v0, 0x76

    .line 72
    .line 73
    if-ne p0, v0, :cond_5

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    const/16 v0, 0x6f

    .line 80
    .line 81
    if-ne p0, v0, :cond_5

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const/16 v0, 0x72

    .line 88
    .line 89
    if-ne p0, v0, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    const/16 v0, 0x62

    .line 96
    .line 97
    if-ne p0, v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    const/16 v0, 0x69

    .line 104
    .line 105
    if-ne p0, v0, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    const/16 p1, 0x73

    .line 112
    .line 113
    if-eq p0, p1, :cond_4

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    const/4 p0, 0x1

    .line 117
    return p0

    .line 118
    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    .line 119
    .line 120
    :goto_1
    const/4 p0, 0x0

    .line 121
    return p0

    .line 122
    :cond_6
    const-string p0, "expected characters \'vorbis\'"

    .line 123
    .line 124
    invoke-static {v2, p0}, Lcom/jp/bootstrap/internal/yp;->syiqloeyp(Ljava/lang/RuntimeException;Ljava/lang/String;)Lcom/jp/bootstrap/internal/yp;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    throw p0
.end method

.method public static final gbcohonrle(II)I
    .locals 0

    .line 1
    shr-int/2addr p0, p1

    .line 2
    and-int/lit8 p0, p0, 0x1f

    .line 3
    .line 4
    return p0
.end method

.method public static gtnruhk(Ljava/util/List;)Lcom/jp/bootstrap/internal/nd;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v4, Lcom/jp/bootstrap/internal/yt0;->syiqloeyp:Ljava/lang/String;

    .line 21
    .line 22
    const-string v4, "="

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    array-length v6, v4

    .line 30
    const-string v7, "VorbisUtil"

    .line 31
    .line 32
    if-eq v6, v5, :cond_0

    .line 33
    .line 34
    const-string v4, "Failed to parse Vorbis comment: "

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v7, v3}, Lcom/jp/bootstrap/internal/sm;->gbursjlv(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    aget-object v3, v4, v1

    .line 45
    .line 46
    const-string v5, "METADATA_BLOCK_PICTURE"

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v5, 0x1

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    :try_start_0
    aget-object v3, v4, v5

    .line 56
    .line 57
    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lcom/jp/bootstrap/internal/wp;

    .line 62
    .line 63
    invoke-direct {v4, v3}, Lcom/jp/bootstrap/internal/wp;-><init>([B)V

    .line 64
    .line 65
    .line 66
    invoke-static {v4}, Lcom/jp/bootstrap/internal/tr;->cauva(Lcom/jp/bootstrap/internal/wp;)Lcom/jp/bootstrap/internal/tr;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v3

    .line 75
    const-string v4, "Failed to parse vorbis picture"

    .line 76
    .line 77
    invoke-static {v7, v4, v3}, Lcom/jp/bootstrap/internal/sm;->lglrfgmg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    new-instance v3, Lcom/jp/bootstrap/internal/xx0;

    .line 82
    .line 83
    aget-object v6, v4, v1

    .line 84
    .line 85
    aget-object v4, v4, v5

    .line 86
    .line 87
    invoke-direct {v3, v6, v4}, Lcom/jp/bootstrap/internal/xx0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    const/4 p0, 0x0

    .line 103
    goto :goto_2

    .line 104
    :cond_3
    new-instance p0, Lcom/jp/bootstrap/internal/nd;

    .line 105
    .line 106
    invoke-direct {p0, v0}, Lcom/jp/bootstrap/internal/nd;-><init>(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    :goto_2
    return-object p0
.end method

.method public static final hqaldusn(Landroid/text/Spanned;Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-interface {p0, v0, v1, p1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eq p1, p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static jisccnqwqm(Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 0

    .line 1
    if-ne p0, p1, :cond_2

    .line 2
    .line 3
    instance-of p1, p0, Lcom/jp/bootstrap/internal/kq0;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/kq0;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of p1, p0, Lcom/jp/bootstrap/internal/lq0;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p0, Lcom/jp/bootstrap/internal/lq0;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/jp/bootstrap/internal/lq0;->yndsdvj:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string p1, "Non-transparent snapshot was reused: "

    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/jp/bootstrap/internal/skrzqsjuc;->yndsdvj(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/jp/bootstrap/internal/ge0;->gtnruhk(Lcom/jp/bootstrap/internal/ge0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/ge0;->jyozshuy()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final jpgq(Ljava/lang/Float;Lcom/jp/bootstrap/internal/fzkwq;)Lcom/jp/bootstrap/internal/hp;
    .locals 1

    .line 1
    new-instance v0, Lcom/jp/bootstrap/internal/hp;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/jp/bootstrap/internal/hp;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static jyozshuy(Lcom/jp/runtime/shell/ShellActivity;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    if-nez v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    array-length v4, v2

    .line 43
    if-gtz v4, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    aget-object v2, v2, v0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    return v3

    .line 50
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-class v5, Landroid/app/AppOpsManager;

    .line 59
    .line 60
    if-ne v3, v1, :cond_9

    .line 61
    .line 62
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_9

    .line 67
    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .line 70
    const/16 v4, 0x1d

    .line 71
    .line 72
    if-lt v3, v4, :cond_8

    .line 73
    .line 74
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroid/app/AppOpsManager;

    .line 79
    .line 80
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v5, 0x1

    .line 85
    if-nez v3, :cond_5

    .line 86
    .line 87
    move v2, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_2
    if-eqz v2, :cond_6

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    invoke-static {p0}, Lcom/jp/bootstrap/internal/jmrkebxvwhf;->jisccnqwqm(Lcom/jp/runtime/shell/ShellActivity;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    :goto_3
    move v2, v5

    .line 108
    goto :goto_4

    .line 109
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Landroid/app/AppOpsManager;

    .line 114
    .line 115
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Landroid/app/AppOpsManager;

    .line 125
    .line 126
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    :goto_4
    if-nez v2, :cond_a

    .line 131
    .line 132
    :goto_5
    return v0

    .line 133
    :cond_a
    const/4 p0, -0x2

    .line 134
    return p0
.end method

.method public static final jzphcv(Lcom/jp/bootstrap/internal/itipisgoc;Ljava/lang/Float;Lcom/jp/bootstrap/internal/deeiio;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/fk0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/jp/bootstrap/internal/itipisgoc;->tsodtn:Lcom/jp/bootstrap/internal/up;

    .line 2
    .line 3
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/up;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    iget-object v4, p0, Lcom/jp/bootstrap/internal/itipisgoc;->sbmzsrkn:Lcom/jp/bootstrap/internal/t3;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/jp/bootstrap/internal/itipisgoc;->tckmliv:Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 10
    .line 11
    new-instance v1, Lcom/jp/bootstrap/internal/kl0;

    .line 12
    .line 13
    move-object v6, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v2, v1

    .line 16
    invoke-direct/range {v2 .. v7}, Lcom/jp/bootstrap/internal/kl0;-><init>(Lcom/jp/bootstrap/internal/kzfamgos;Lcom/jp/bootstrap/internal/t3;Ljava/lang/Object;Ljava/lang/Object;Lcom/jp/bootstrap/internal/kmstupatsly;)V

    .line 17
    .line 18
    .line 19
    iget-wide v2, p0, Lcom/jp/bootstrap/internal/itipisgoc;->wyjqgzdhz:J

    .line 20
    .line 21
    move-object v0, p0

    .line 22
    move-object v4, p3

    .line 23
    move-object v5, p4

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/jp/bootstrap/internal/fj;->syiqloeyp(Lcom/jp/bootstrap/internal/itipisgoc;Lcom/jp/bootstrap/internal/gynph;JLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/ffbjuiar;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/jp/bootstrap/internal/umrbjww;->sbmzsrkn:Lcom/jp/bootstrap/internal/umrbjww;

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 34
    .line 35
    return-object v0
.end method

.method public static final mhirrjin(Lcom/jp/bootstrap/internal/ee;ZZ)Lcom/jp/bootstrap/internal/lz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/ee;->sbmzsrkn:Lcom/jp/bootstrap/internal/ee;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/jp/bootstrap/internal/ee;->vzds:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/jp/bootstrap/internal/lz;->dhjfigsvwc:Lcom/jp/bootstrap/internal/lz;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/16 v0, 0x8

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/yr0;->gbursjlv(Lcom/jp/bootstrap/internal/scjncqnk;I)Lcom/jp/bootstrap/internal/kk;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/jp/bootstrap/internal/xegxz;->jisccnqwqm(Lcom/jp/bootstrap/internal/f0;)Lcom/jp/bootstrap/internal/f0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1, p0, p2}, Lcom/jp/bootstrap/internal/f0;->yndsdvj(Lcom/jp/bootstrap/internal/f0;Z)Lcom/jp/bootstrap/internal/lz;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/yr0;->gbursjlv(Lcom/jp/bootstrap/internal/scjncqnk;I)Lcom/jp/bootstrap/internal/kk;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/kk;->vztrtxdq()Lcom/jp/bootstrap/internal/lz;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static nvbyrnefqdi(Lcom/jp/bootstrap/internal/wp;)Ljava/util/ArrayList;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object/from16 v20, v2

    .line 11
    .line 12
    goto/16 :goto_d

    .line 13
    .line 14
    :cond_1
    const/4 v1, 0x7

    .line 15
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const v4, 0x64666c38

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    new-instance v3, Lcom/jp/bootstrap/internal/wp;

    .line 29
    .line 30
    invoke-direct {v3}, Lcom/jp/bootstrap/internal/wp;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v4, Ljava/util/zip/Inflater;

    .line 34
    .line 35
    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-static {v0, v3, v4}, Lcom/jp/bootstrap/internal/yt0;->syoolsrjr(Lcom/jp/bootstrap/internal/wp;Lcom/jp/bootstrap/internal/wp;Ljava/util/zip/Inflater;)Z

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_2
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 49
    .line 50
    .line 51
    move-object v0, v3

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_3
    const v4, 0x72617720

    .line 59
    .line 60
    .line 61
    if-eq v3, v4, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iget v4, v0, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 70
    .line 71
    iget v6, v0, Lcom/jp/bootstrap/internal/wp;->jyozshuy:I

    .line 72
    .line 73
    :goto_2
    if-ge v4, v6, :cond_14

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    add-int/2addr v7, v4

    .line 80
    if-le v7, v4, :cond_0

    .line 81
    .line 82
    if-le v7, v6, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const v8, 0x6d657368

    .line 90
    .line 91
    .line 92
    if-ne v4, v8, :cond_13

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    const/16 v8, 0x2710

    .line 99
    .line 100
    if-le v4, v8, :cond_6

    .line 101
    .line 102
    :goto_3
    move/from16 v16, v1

    .line 103
    .line 104
    move-object v1, v2

    .line 105
    move-object/from16 v20, v1

    .line 106
    .line 107
    move/from16 v17, v5

    .line 108
    .line 109
    move/from16 v24, v6

    .line 110
    .line 111
    goto/16 :goto_b

    .line 112
    .line 113
    :cond_6
    new-array v8, v4, [F

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    :goto_4
    if-ge v10, v4, :cond_7

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    aput v11, v8, v10

    .line 127
    .line 128
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_7
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/wp;->tsodtn()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    const/16 v11, 0x7d00

    .line 136
    .line 137
    if-le v10, v11, :cond_8

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 141
    .line 142
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 143
    .line 144
    .line 145
    move-result-wide v13

    .line 146
    move/from16 v16, v1

    .line 147
    .line 148
    move-object v15, v2

    .line 149
    int-to-double v1, v4

    .line 150
    mul-double/2addr v1, v11

    .line 151
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    div-double/2addr v1, v13

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    double-to-int v1, v1

    .line 161
    new-instance v2, Lcom/jp/bootstrap/internal/ipqjlti;

    .line 162
    .line 163
    move/from16 v17, v5

    .line 164
    .line 165
    iget-object v5, v0, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 166
    .line 167
    array-length v9, v5

    .line 168
    invoke-direct {v2, v9, v5}, Lcom/jp/bootstrap/internal/ipqjlti;-><init>(I[B)V

    .line 169
    .line 170
    .line 171
    iget v5, v0, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 172
    .line 173
    const/16 v9, 0x8

    .line 174
    .line 175
    mul-int/2addr v5, v9

    .line 176
    invoke-virtual {v2, v5}, Lcom/jp/bootstrap/internal/ipqjlti;->tsodtn(I)V

    .line 177
    .line 178
    .line 179
    mul-int/lit8 v5, v10, 0x5

    .line 180
    .line 181
    new-array v5, v5, [F

    .line 182
    .line 183
    move-wide/from16 v18, v11

    .line 184
    .line 185
    const/4 v11, 0x5

    .line 186
    new-array v12, v11, [I

    .line 187
    .line 188
    move-object/from16 v20, v15

    .line 189
    .line 190
    const/4 v15, 0x0

    .line 191
    const/16 v21, 0x0

    .line 192
    .line 193
    :goto_5
    if-ge v15, v10, :cond_d

    .line 194
    .line 195
    const/4 v9, 0x0

    .line 196
    :goto_6
    if-ge v9, v11, :cond_c

    .line 197
    .line 198
    aget v22, v12, v9

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 201
    .line 202
    .line 203
    move-result v23

    .line 204
    shr-int/lit8 v24, v23, 0x1

    .line 205
    .line 206
    and-int/lit8 v11, v23, 0x1

    .line 207
    .line 208
    neg-int v11, v11

    .line 209
    xor-int v11, v24, v11

    .line 210
    .line 211
    add-int v11, v11, v22

    .line 212
    .line 213
    if-ge v11, v4, :cond_a

    .line 214
    .line 215
    if-gez v11, :cond_9

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_9
    add-int/lit8 v22, v21, 0x1

    .line 219
    .line 220
    aget v23, v8, v11

    .line 221
    .line 222
    aput v23, v5, v21

    .line 223
    .line 224
    aput v11, v12, v9

    .line 225
    .line 226
    add-int/lit8 v9, v9, 0x1

    .line 227
    .line 228
    move/from16 v21, v22

    .line 229
    .line 230
    const/4 v11, 0x5

    .line 231
    goto :goto_6

    .line 232
    :cond_a
    :goto_7
    move/from16 v24, v6

    .line 233
    .line 234
    :cond_b
    :goto_8
    move-object/from16 v1, v20

    .line 235
    .line 236
    goto/16 :goto_b

    .line 237
    .line 238
    :cond_c
    add-int/lit8 v15, v15, 0x1

    .line 239
    .line 240
    const/16 v9, 0x8

    .line 241
    .line 242
    const/4 v11, 0x5

    .line 243
    goto :goto_5

    .line 244
    :cond_d
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/ipqjlti;->dhjfigsvwc()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    add-int/lit8 v1, v1, 0x7

    .line 249
    .line 250
    and-int/lit8 v1, v1, -0x8

    .line 251
    .line 252
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/ipqjlti;->tsodtn(I)V

    .line 253
    .line 254
    .line 255
    const/16 v1, 0x20

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    new-array v8, v4, [Lcom/jp/bootstrap/internal/gcursct;

    .line 262
    .line 263
    const/4 v9, 0x0

    .line 264
    :goto_9
    if-ge v9, v4, :cond_11

    .line 265
    .line 266
    const/16 v11, 0x8

    .line 267
    .line 268
    invoke-virtual {v2, v11}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 269
    .line 270
    .line 271
    move-result v12

    .line 272
    invoke-virtual {v2, v11}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 273
    .line 274
    .line 275
    move-result v15

    .line 276
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 277
    .line 278
    .line 279
    move-result v11

    .line 280
    const v1, 0x1f400

    .line 281
    .line 282
    .line 283
    if-le v11, v1, :cond_e

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_e
    move/from16 v22, v4

    .line 287
    .line 288
    move-object v1, v5

    .line 289
    int-to-double v4, v10

    .line 290
    mul-double v4, v4, v18

    .line 291
    .line 292
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    div-double/2addr v4, v13

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 298
    .line 299
    .line 300
    move-result-wide v4

    .line 301
    double-to-int v4, v4

    .line 302
    mul-int/lit8 v5, v11, 0x3

    .line 303
    .line 304
    new-array v5, v5, [F

    .line 305
    .line 306
    move-object/from16 v23, v1

    .line 307
    .line 308
    mul-int/lit8 v1, v11, 0x2

    .line 309
    .line 310
    new-array v1, v1, [F

    .line 311
    .line 312
    move/from16 v24, v6

    .line 313
    .line 314
    const/4 v6, 0x0

    .line 315
    const/16 v25, 0x0

    .line 316
    .line 317
    :goto_a
    if-ge v6, v11, :cond_10

    .line 318
    .line 319
    invoke-virtual {v2, v4}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 320
    .line 321
    .line 322
    move-result v26

    .line 323
    shr-int/lit8 v27, v26, 0x1

    .line 324
    .line 325
    move-object/from16 v28, v2

    .line 326
    .line 327
    and-int/lit8 v2, v26, 0x1

    .line 328
    .line 329
    neg-int v2, v2

    .line 330
    xor-int v2, v27, v2

    .line 331
    .line 332
    add-int v2, v2, v25

    .line 333
    .line 334
    if-ltz v2, :cond_b

    .line 335
    .line 336
    if-lt v2, v10, :cond_f

    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_f
    mul-int/lit8 v25, v6, 0x3

    .line 340
    .line 341
    mul-int/lit8 v26, v2, 0x5

    .line 342
    .line 343
    aget v27, v23, v26

    .line 344
    .line 345
    aput v27, v5, v25

    .line 346
    .line 347
    add-int/lit8 v27, v25, 0x1

    .line 348
    .line 349
    add-int/lit8 v29, v26, 0x1

    .line 350
    .line 351
    aget v29, v23, v29

    .line 352
    .line 353
    aput v29, v5, v27

    .line 354
    .line 355
    add-int/lit8 v25, v25, 0x2

    .line 356
    .line 357
    add-int/lit8 v27, v26, 0x2

    .line 358
    .line 359
    aget v27, v23, v27

    .line 360
    .line 361
    aput v27, v5, v25

    .line 362
    .line 363
    mul-int/lit8 v25, v6, 0x2

    .line 364
    .line 365
    add-int/lit8 v27, v26, 0x3

    .line 366
    .line 367
    aget v27, v23, v27

    .line 368
    .line 369
    aput v27, v1, v25

    .line 370
    .line 371
    add-int/lit8 v25, v25, 0x1

    .line 372
    .line 373
    add-int/lit8 v26, v26, 0x4

    .line 374
    .line 375
    aget v26, v23, v26

    .line 376
    .line 377
    aput v26, v1, v25

    .line 378
    .line 379
    add-int/lit8 v6, v6, 0x1

    .line 380
    .line 381
    move/from16 v25, v2

    .line 382
    .line 383
    move-object/from16 v2, v28

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_10
    move-object/from16 v28, v2

    .line 387
    .line 388
    new-instance v2, Lcom/jp/bootstrap/internal/gcursct;

    .line 389
    .line 390
    invoke-direct {v2, v12, v15, v5, v1}, Lcom/jp/bootstrap/internal/gcursct;-><init>(II[F[F)V

    .line 391
    .line 392
    .line 393
    aput-object v2, v8, v9

    .line 394
    .line 395
    add-int/lit8 v9, v9, 0x1

    .line 396
    .line 397
    move/from16 v4, v22

    .line 398
    .line 399
    move-object/from16 v5, v23

    .line 400
    .line 401
    move/from16 v6, v24

    .line 402
    .line 403
    move-object/from16 v2, v28

    .line 404
    .line 405
    const/16 v1, 0x20

    .line 406
    .line 407
    goto/16 :goto_9

    .line 408
    .line 409
    :cond_11
    move/from16 v24, v6

    .line 410
    .line 411
    new-instance v1, Lcom/jp/bootstrap/internal/qx;

    .line 412
    .line 413
    invoke-direct {v1, v8}, Lcom/jp/bootstrap/internal/qx;-><init>([Lcom/jp/bootstrap/internal/gcursct;)V

    .line 414
    .line 415
    .line 416
    :goto_b
    if-nez v1, :cond_12

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_12
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto :goto_c

    .line 423
    :cond_13
    move/from16 v16, v1

    .line 424
    .line 425
    move-object/from16 v20, v2

    .line 426
    .line 427
    move/from16 v17, v5

    .line 428
    .line 429
    move/from16 v24, v6

    .line 430
    .line 431
    :goto_c
    invoke-virtual {v0, v7}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 432
    .line 433
    .line 434
    move v4, v7

    .line 435
    move/from16 v1, v16

    .line 436
    .line 437
    move/from16 v5, v17

    .line 438
    .line 439
    move-object/from16 v2, v20

    .line 440
    .line 441
    move/from16 v6, v24

    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :goto_d
    return-object v20

    .line 446
    :cond_14
    return-object v3
.end method

.method public static final sbmzsrkn(Lcom/jp/bootstrap/internal/o90;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/jp/bootstrap/internal/yr0;->wlmrcnbm(Lcom/jp/bootstrap/internal/scjncqnk;)Lcom/jp/bootstrap/internal/v0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/v0;->rowxts()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final syiqloeyp(Lcom/jp/bootstrap/internal/itipisgoc;Lcom/jp/bootstrap/internal/gynph;JLcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/ffbjuiar;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v3, p1

    .line 2
    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    sget-object v8, Lcom/jp/bootstrap/internal/mgevwcjmy;->ssdoyje:Lcom/jp/bootstrap/internal/mgevwcjmy;

    .line 6
    .line 7
    instance-of v1, v0, Lcom/jp/bootstrap/internal/ek0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/jp/bootstrap/internal/ek0;

    .line 13
    .line 14
    iget v2, v1, Lcom/jp/bootstrap/internal/ek0;->gtnruhk:I

    .line 15
    .line 16
    const/high16 v4, -0x80000000

    .line 17
    .line 18
    and-int v5, v2, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v4

    .line 23
    iput v2, v1, Lcom/jp/bootstrap/internal/ek0;->gtnruhk:I

    .line 24
    .line 25
    :goto_0
    move-object v9, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v1, Lcom/jp/bootstrap/internal/ek0;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/jp/bootstrap/internal/uxoytboqn;-><init>(Lcom/jp/bootstrap/internal/ffbjuiar;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_1
    iget-object v0, v9, Lcom/jp/bootstrap/internal/ek0;->nvbyrnefqdi:Ljava/lang/Object;

    .line 34
    .line 35
    iget v1, v9, Lcom/jp/bootstrap/internal/ek0;->gtnruhk:I

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x2

    .line 40
    const/4 v13, 0x1

    .line 41
    sget-object v14, Lcom/jp/bootstrap/internal/umrbjww;->sbmzsrkn:Lcom/jp/bootstrap/internal/umrbjww;

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    if-eq v1, v13, :cond_1

    .line 46
    .line 47
    if-ne v1, v12, :cond_2

    .line 48
    .line 49
    :cond_1
    iget-object v1, v9, Lcom/jp/bootstrap/internal/ek0;->wyjqgzdhz:Lcom/jp/bootstrap/internal/q00;

    .line 50
    .line 51
    iget-object v2, v9, Lcom/jp/bootstrap/internal/ek0;->tckmliv:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 52
    .line 53
    iget-object v3, v9, Lcom/jp/bootstrap/internal/ek0;->tsodtn:Lcom/jp/bootstrap/internal/gynph;

    .line 54
    .line 55
    iget-object v4, v9, Lcom/jp/bootstrap/internal/ek0;->sbmzsrkn:Lcom/jp/bootstrap/internal/itipisgoc;

    .line 56
    .line 57
    :try_start_0
    invoke-static {v0}, Lcom/jp/bootstrap/internal/bl;->gtnruhk(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_7

    .line 61
    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto/16 :goto_a

    .line 64
    .line 65
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->yfqpbrvsm(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    return-object v0

    .line 72
    :cond_3
    invoke-static {v0}, Lcom/jp/bootstrap/internal/bl;->gtnruhk(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    invoke-interface {v3, v0, v1}, Lcom/jp/bootstrap/internal/gynph;->jyozshuy(J)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v16

    .line 81
    invoke-interface {v3, v0, v1}, Lcom/jp/bootstrap/internal/gynph;->mhirrjin(J)Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 82
    .line 83
    .line 84
    move-result-object v18

    .line 85
    new-instance v1, Lcom/jp/bootstrap/internal/q00;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const-wide/high16 v4, -0x8000000000000000L

    .line 91
    .line 92
    cmp-long v0, p2, v4

    .line 93
    .line 94
    if-nez v0, :cond_7

    .line 95
    .line 96
    :try_start_1
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/jp/bootstrap/internal/fj;->yfqpbrvsm(Lcom/jp/bootstrap/internal/rpdfws;)F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    new-instance v0, Lcom/jp/bootstrap/internal/bk0;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 105
    .line 106
    move-object/from16 v5, p0

    .line 107
    .line 108
    move-object/from16 v7, p4

    .line 109
    .line 110
    move-object/from16 v2, v16

    .line 111
    .line 112
    move-object/from16 v4, v18

    .line 113
    .line 114
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/jp/bootstrap/internal/bk0;-><init>(Lcom/jp/bootstrap/internal/q00;Ljava/lang/Object;Lcom/jp/bootstrap/internal/gynph;Lcom/jp/bootstrap/internal/kmstupatsly;Lcom/jp/bootstrap/internal/itipisgoc;FLcom/jp/bootstrap/internal/iiazsdqcp;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .line 116
    .line 117
    move-object v7, v1

    .line 118
    :try_start_3
    iput-object v5, v9, Lcom/jp/bootstrap/internal/ek0;->sbmzsrkn:Lcom/jp/bootstrap/internal/itipisgoc;

    .line 119
    .line 120
    iput-object v3, v9, Lcom/jp/bootstrap/internal/ek0;->tsodtn:Lcom/jp/bootstrap/internal/gynph;

    .line 121
    .line 122
    move-object/from16 v6, p4

    .line 123
    .line 124
    iput-object v6, v9, Lcom/jp/bootstrap/internal/ek0;->tckmliv:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 125
    .line 126
    iput-object v7, v9, Lcom/jp/bootstrap/internal/ek0;->wyjqgzdhz:Lcom/jp/bootstrap/internal/q00;

    .line 127
    .line 128
    iput v13, v9, Lcom/jp/bootstrap/internal/ek0;->gtnruhk:I

    .line 129
    .line 130
    invoke-interface {v3}, Lcom/jp/bootstrap/internal/gynph;->jzphcv()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v1, v8}, Lcom/jp/bootstrap/internal/rpdfws;->nvbyrnefqdi(Lcom/jp/bootstrap/internal/cjuoogy;)Lcom/jp/bootstrap/internal/kvvd;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-nez v1, :cond_4

    .line 145
    .line 146
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/jp/bootstrap/internal/le;->jyozshuy(Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/mgbj;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v0, v9}, Lcom/jp/bootstrap/internal/mgbj;->jzphcv(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/uxoytboqn;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_5
    new-instance v1, Lcom/jp/bootstrap/internal/urwivh;

    .line 166
    .line 167
    invoke-direct {v1, v0, v10}, Lcom/jp/bootstrap/internal/urwivh;-><init>(Lcom/jp/bootstrap/internal/iiazsdqcp;I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/jp/bootstrap/internal/le;->jyozshuy(Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/mgbj;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v1, v9}, Lcom/jp/bootstrap/internal/mgbj;->jzphcv(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/uxoytboqn;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 182
    :goto_2
    if-ne v0, v14, :cond_6

    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :cond_6
    move-object v4, v5

    .line 187
    move-object v2, v6

    .line 188
    goto :goto_6

    .line 189
    :goto_3
    move-object v4, v5

    .line 190
    :goto_4
    move-object v1, v7

    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :catch_1
    move-exception v0

    .line 194
    goto :goto_3

    .line 195
    :catch_2
    move-exception v0

    .line 196
    :goto_5
    move-object v7, v1

    .line 197
    move-object v4, v5

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :catch_3
    move-exception v0

    .line 201
    move-object/from16 v5, p0

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_7
    move-object/from16 v5, p0

    .line 205
    .line 206
    move-object/from16 v6, p4

    .line 207
    .line 208
    move-object v7, v1

    .line 209
    :try_start_4
    new-instance v15, Lcom/jp/bootstrap/internal/cwnacmyrsob;

    .line 210
    .line 211
    invoke-interface {v3}, Lcom/jp/bootstrap/internal/gynph;->dhjfigsvwc()Lcom/jp/bootstrap/internal/t3;

    .line 212
    .line 213
    .line 214
    move-result-object v17

    .line 215
    invoke-interface {v3}, Lcom/jp/bootstrap/internal/gynph;->uaakwbmitdl()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v21

    .line 219
    new-instance v0, Lcom/jp/bootstrap/internal/ck0;

    .line 220
    .line 221
    invoke-direct {v0, v5, v11}, Lcom/jp/bootstrap/internal/ck0;-><init>(Lcom/jp/bootstrap/internal/itipisgoc;I)V

    .line 222
    .line 223
    .line 224
    move-wide/from16 v22, p2

    .line 225
    .line 226
    move-wide/from16 v19, p2

    .line 227
    .line 228
    move-object/from16 v24, v0

    .line 229
    .line 230
    invoke-direct/range {v15 .. v24}, Lcom/jp/bootstrap/internal/cwnacmyrsob;-><init>(Ljava/lang/Object;Lcom/jp/bootstrap/internal/t3;Lcom/jp/bootstrap/internal/kmstupatsly;JLjava/lang/Object;JLcom/jp/bootstrap/internal/mbwlg;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/jp/bootstrap/internal/fj;->yfqpbrvsm(Lcom/jp/bootstrap/internal/rpdfws;)F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    move-wide/from16 v1, p2

    .line 242
    .line 243
    move-object v4, v3

    .line 244
    move v3, v0

    .line 245
    move-object v0, v15

    .line 246
    invoke-static/range {v0 .. v6}, Lcom/jp/bootstrap/internal/fj;->uaakwbmitdl(Lcom/jp/bootstrap/internal/cwnacmyrsob;JFLcom/jp/bootstrap/internal/gynph;Lcom/jp/bootstrap/internal/itipisgoc;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 247
    .line 248
    .line 249
    move-object v15, v0

    .line 250
    iput-object v15, v7, Lcom/jp/bootstrap/internal/q00;->sbmzsrkn:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5

    .line 251
    .line 252
    move-object/from16 v4, p0

    .line 253
    .line 254
    move-object/from16 v3, p1

    .line 255
    .line 256
    move-object/from16 v2, p4

    .line 257
    .line 258
    :goto_6
    move-object v1, v7

    .line 259
    :cond_8
    :goto_7
    :try_start_5
    iget-object v0, v1, Lcom/jp/bootstrap/internal/q00;->sbmzsrkn:Ljava/lang/Object;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    check-cast v0, Lcom/jp/bootstrap/internal/cwnacmyrsob;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yfqpbrvsm:Lcom/jp/bootstrap/internal/up;

    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/up;->getValue()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    check-cast v0, Ljava/lang/Boolean;

    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_b

    .line 279
    .line 280
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/jp/bootstrap/internal/fj;->yfqpbrvsm(Lcom/jp/bootstrap/internal/rpdfws;)F

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    new-instance v5, Lcom/jp/bootstrap/internal/dk0;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 289
    .line 290
    move/from16 p2, v0

    .line 291
    .line 292
    move-object/from16 p1, v1

    .line 293
    .line 294
    move-object/from16 p5, v2

    .line 295
    .line 296
    move-object/from16 p3, v3

    .line 297
    .line 298
    move-object/from16 p4, v4

    .line 299
    .line 300
    move-object/from16 p0, v5

    .line 301
    .line 302
    :try_start_6
    invoke-direct/range {p0 .. p5}, Lcom/jp/bootstrap/internal/dk0;-><init>(Lcom/jp/bootstrap/internal/q00;FLcom/jp/bootstrap/internal/gynph;Lcom/jp/bootstrap/internal/itipisgoc;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_4

    .line 303
    .line 304
    .line 305
    move-object/from16 v0, p0

    .line 306
    .line 307
    move-object/from16 v1, p1

    .line 308
    .line 309
    move-object/from16 v3, p3

    .line 310
    .line 311
    move-object/from16 v4, p4

    .line 312
    .line 313
    move-object/from16 v2, p5

    .line 314
    .line 315
    :try_start_7
    iput-object v4, v9, Lcom/jp/bootstrap/internal/ek0;->sbmzsrkn:Lcom/jp/bootstrap/internal/itipisgoc;

    .line 316
    .line 317
    iput-object v3, v9, Lcom/jp/bootstrap/internal/ek0;->tsodtn:Lcom/jp/bootstrap/internal/gynph;

    .line 318
    .line 319
    iput-object v2, v9, Lcom/jp/bootstrap/internal/ek0;->tckmliv:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 320
    .line 321
    iput-object v1, v9, Lcom/jp/bootstrap/internal/ek0;->wyjqgzdhz:Lcom/jp/bootstrap/internal/q00;

    .line 322
    .line 323
    iput v12, v9, Lcom/jp/bootstrap/internal/ek0;->gtnruhk:I

    .line 324
    .line 325
    invoke-interface {v3}, Lcom/jp/bootstrap/internal/gynph;->jzphcv()Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-eqz v5, :cond_a

    .line 330
    .line 331
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-interface {v5, v8}, Lcom/jp/bootstrap/internal/rpdfws;->nvbyrnefqdi(Lcom/jp/bootstrap/internal/cjuoogy;)Lcom/jp/bootstrap/internal/kvvd;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-nez v5, :cond_9

    .line 340
    .line 341
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {v5}, Lcom/jp/bootstrap/internal/le;->jyozshuy(Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/mgbj;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v5, v0, v9}, Lcom/jp/bootstrap/internal/mgbj;->jzphcv(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/uxoytboqn;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    goto :goto_8

    .line 354
    :cond_9
    new-instance v0, Ljava/lang/ClassCastException;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 357
    .line 358
    .line 359
    throw v0

    .line 360
    :cond_a
    new-instance v5, Lcom/jp/bootstrap/internal/urwivh;

    .line 361
    .line 362
    invoke-direct {v5, v0, v10}, Lcom/jp/bootstrap/internal/urwivh;-><init>(Lcom/jp/bootstrap/internal/iiazsdqcp;I)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v9}, Lcom/jp/bootstrap/internal/ffbjuiar;->getContext()Lcom/jp/bootstrap/internal/rpdfws;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-static {v0}, Lcom/jp/bootstrap/internal/le;->jyozshuy(Lcom/jp/bootstrap/internal/rpdfws;)Lcom/jp/bootstrap/internal/mgbj;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v5, v9}, Lcom/jp/bootstrap/internal/mgbj;->jzphcv(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/uxoytboqn;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_0

    .line 377
    :goto_8
    if-ne v0, v14, :cond_8

    .line 378
    .line 379
    :goto_9
    return-object v14

    .line 380
    :catch_4
    move-exception v0

    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    move-object/from16 v4, p4

    .line 384
    .line 385
    goto :goto_a

    .line 386
    :cond_b
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;

    .line 387
    .line 388
    return-object v0

    .line 389
    :catch_5
    move-exception v0

    .line 390
    move-object/from16 v4, p0

    .line 391
    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :goto_a
    iget-object v2, v1, Lcom/jp/bootstrap/internal/q00;->sbmzsrkn:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v2, Lcom/jp/bootstrap/internal/cwnacmyrsob;

    .line 397
    .line 398
    if-eqz v2, :cond_c

    .line 399
    .line 400
    iget-object v2, v2, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yfqpbrvsm:Lcom/jp/bootstrap/internal/up;

    .line 401
    .line 402
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Lcom/jp/bootstrap/internal/up;->setValue(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    iget-object v1, v1, Lcom/jp/bootstrap/internal/q00;->sbmzsrkn:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v1, Lcom/jp/bootstrap/internal/cwnacmyrsob;

    .line 410
    .line 411
    if-eqz v1, :cond_d

    .line 412
    .line 413
    iget-wide v1, v1, Lcom/jp/bootstrap/internal/cwnacmyrsob;->mhirrjin:J

    .line 414
    .line 415
    iget-wide v5, v4, Lcom/jp/bootstrap/internal/itipisgoc;->wyjqgzdhz:J

    .line 416
    .line 417
    cmp-long v1, v1, v5

    .line 418
    .line 419
    if-nez v1, :cond_d

    .line 420
    .line 421
    iput-boolean v11, v4, Lcom/jp/bootstrap/internal/itipisgoc;->gtnruhk:Z

    .line 422
    .line 423
    :cond_d
    throw v0
.end method

.method public static tckmliv(Lcom/jp/bootstrap/internal/spcgufnhv;Lcom/jp/bootstrap/internal/mbwlg;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/jp/bootstrap/internal/me0;->jzphcv:Lcom/jp/bootstrap/internal/zzgzbmdwfi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/zzgzbmdwfi;->fugymz()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/jp/bootstrap/internal/ge0;

    .line 8
    .line 9
    instance-of v1, v0, Lcom/jp/bootstrap/internal/kq0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Lcom/jp/bootstrap/internal/kq0;

    .line 15
    .line 16
    iget-wide v2, v1, Lcom/jp/bootstrap/internal/kq0;->jisccnqwqm:J

    .line 17
    .line 18
    invoke-static {}, Lcom/jp/bootstrap/internal/fj;->dhjfigsvwc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    cmp-long v2, v2, v4

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, v1, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/jp/bootstrap/internal/kq0;->zfrfwjkgqw:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 29
    .line 30
    :try_start_0
    move-object v4, v0

    .line 31
    check-cast v4, Lcom/jp/bootstrap/internal/kq0;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-static {p0, v2, v5}, Lcom/jp/bootstrap/internal/me0;->yfqpbrvsm(Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;Z)Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, v4, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 39
    .line 40
    check-cast v0, Lcom/jp/bootstrap/internal/kq0;

    .line 41
    .line 42
    iput-object v3, v0, Lcom/jp/bootstrap/internal/kq0;->zfrfwjkgqw:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iput-object v2, v1, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 49
    .line 50
    iput-object v3, v1, Lcom/jp/bootstrap/internal/kq0;->zfrfwjkgqw:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 51
    .line 52
    return-object p0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    iput-object v2, v1, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 56
    .line 57
    iput-object v3, v1, Lcom/jp/bootstrap/internal/kq0;->zfrfwjkgqw:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    .line 62
    instance-of v1, v0, Lcom/jp/bootstrap/internal/sh;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    :cond_1
    move-object v1, v0

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, p0}, Lcom/jp/bootstrap/internal/ge0;->jpgq(Lcom/jp/bootstrap/internal/iiazsdqcp;)Lcom/jp/bootstrap/internal/ge0;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_2

    .line 73
    :goto_0
    new-instance v0, Lcom/jp/bootstrap/internal/kq0;

    .line 74
    .line 75
    instance-of v2, v1, Lcom/jp/bootstrap/internal/sh;

    .line 76
    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    check-cast v1, Lcom/jp/bootstrap/internal/sh;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v1, 0x0

    .line 83
    :goto_1
    const/4 v4, 0x1

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    move-object v2, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/jp/bootstrap/internal/kq0;-><init>(Lcom/jp/bootstrap/internal/sh;Lcom/jp/bootstrap/internal/iiazsdqcp;Lcom/jp/bootstrap/internal/iiazsdqcp;ZZ)V

    .line 88
    .line 89
    .line 90
    move-object p0, v0

    .line 91
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ge0;->hqaldusn()Lcom/jp/bootstrap/internal/ge0;

    .line 92
    .line 93
    .line 94
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :try_start_2
    invoke-interface {p1}, Lcom/jp/bootstrap/internal/mbwlg;->invoke()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    :try_start_3
    invoke-static {v1}, Lcom/jp/bootstrap/internal/ge0;->gtnruhk(Lcom/jp/bootstrap/internal/ge0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ge0;->jyozshuy()V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    goto :goto_3

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    move-object p1, v0

    .line 111
    :try_start_4
    invoke-static {v1}, Lcom/jp/bootstrap/internal/ge0;->gtnruhk(Lcom/jp/bootstrap/internal/ge0;)V

    .line 112
    .line 113
    .line 114
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :goto_3
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ge0;->jyozshuy()V

    .line 116
    .line 117
    .line 118
    throw p1
.end method

.method public static tsodtn(Lcom/jp/bootstrap/internal/ge0;)Lcom/jp/bootstrap/internal/ge0;
    .locals 6

    .line 1
    instance-of v0, p0, Lcom/jp/bootstrap/internal/kq0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Lcom/jp/bootstrap/internal/kq0;

    .line 8
    .line 9
    iget-wide v2, v0, Lcom/jp/bootstrap/internal/kq0;->jisccnqwqm:J

    .line 10
    .line 11
    invoke-static {}, Lcom/jp/bootstrap/internal/fj;->dhjfigsvwc()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iput-object v1, v0, Lcom/jp/bootstrap/internal/kq0;->ckyiuuu:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    instance-of v0, p0, Lcom/jp/bootstrap/internal/lq0;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    check-cast v0, Lcom/jp/bootstrap/internal/lq0;

    .line 28
    .line 29
    iget-wide v2, v0, Lcom/jp/bootstrap/internal/lq0;->yfqpbrvsm:J

    .line 30
    .line 31
    invoke-static {}, Lcom/jp/bootstrap/internal/fj;->dhjfigsvwc()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    cmp-long v2, v2, v4

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iput-object v1, v0, Lcom/jp/bootstrap/internal/lq0;->yndsdvj:Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    invoke-static {p0, v1, v0}, Lcom/jp/bootstrap/internal/me0;->dhjfigsvwc(Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/iiazsdqcp;Z)Lcom/jp/bootstrap/internal/ge0;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/ge0;->hqaldusn()Lcom/jp/bootstrap/internal/ge0;

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public static final uaakwbmitdl(Lcom/jp/bootstrap/internal/cwnacmyrsob;JFLcom/jp/bootstrap/internal/gynph;Lcom/jp/bootstrap/internal/itipisgoc;Lcom/jp/bootstrap/internal/iiazsdqcp;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p3, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-interface {p4}, Lcom/jp/bootstrap/internal/gynph;->cauva()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->jyozshuy:J

    .line 12
    .line 13
    sub-long v0, p1, v0

    .line 14
    .line 15
    long-to-float v0, v0

    .line 16
    div-float/2addr v0, p3

    .line 17
    float-to-long v0, v0

    .line 18
    :goto_0
    iput-wide p1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->mhirrjin:J

    .line 19
    .line 20
    invoke-interface {p4, v0, v1}, Lcom/jp/bootstrap/internal/gynph;->jyozshuy(J)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->dhjfigsvwc:Lcom/jp/bootstrap/internal/up;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/jp/bootstrap/internal/up;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p4, v0, v1}, Lcom/jp/bootstrap/internal/gynph;->mhirrjin(J)Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->uaakwbmitdl:Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 34
    .line 35
    invoke-interface {p4, v0, v1}, Lcom/jp/bootstrap/internal/gynph;->yndsdvj(J)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-wide p1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->mhirrjin:J

    .line 42
    .line 43
    iput-wide p1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yndsdvj:J

    .line 44
    .line 45
    iget-object p1, p0, Lcom/jp/bootstrap/internal/cwnacmyrsob;->yfqpbrvsm:Lcom/jp/bootstrap/internal/up;

    .line 46
    .line 47
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/jp/bootstrap/internal/up;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p0, p5}, Lcom/jp/bootstrap/internal/fj;->bmucqf(Lcom/jp/bootstrap/internal/cwnacmyrsob;Lcom/jp/bootstrap/internal/itipisgoc;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p6, p0}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static wyjqgzdhz(Lcom/jp/bootstrap/internal/cjpbeith;)Lcom/jp/bootstrap/internal/n10;
    .locals 10

    .line 1
    const-string v0, "event_id"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "sequence"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sget-object v0, Lcom/jp/bootstrap/internal/o10;->lsqxopbhlw:Lcom/jp/bootstrap/internal/kspbw;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/jp/bootstrap/internal/punn;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-direct {v1, v5, v0}, Lcom/jp/bootstrap/internal/punn;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/punn;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/jp/bootstrap/internal/punn;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v5, v0

    .line 42
    check-cast v5, Lcom/jp/bootstrap/internal/o10;

    .line 43
    .line 44
    iget-object v0, v5, Lcom/jp/bootstrap/internal/o10;->sbmzsrkn:Ljava/lang/String;

    .line 45
    .line 46
    const-string v6, "event_type"

    .line 47
    .line 48
    invoke-virtual {p0, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    const-string v0, "slot"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v0, "observed_release_set_id"

    .line 65
    .line 66
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/fg;->wyjqgzdhz(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const-string v0, "error_code"

    .line 71
    .line 72
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/fg;->wyjqgzdhz(Lcom/jp/bootstrap/internal/cjpbeith;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    const-string v0, "occurred_at"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lj$/time/Instant;->parse(Ljava/lang/CharSequence;)Lj$/time/Instant;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/jp/bootstrap/internal/n10;

    .line 90
    .line 91
    invoke-direct/range {v1 .. v9}, Lcom/jp/bootstrap/internal/n10;-><init>(Ljava/util/UUID;JLcom/jp/bootstrap/internal/o10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lj$/time/Instant;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_1
    const-string p0, "Collection contains no element matching the predicate."

    .line 96
    .line 97
    invoke-static {p0}, Lcom/jp/bootstrap/internal/vt0;->dhjfigsvwc(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, 0x0

    .line 101
    return-object p0
.end method

.method public static final yfqpbrvsm(Lcom/jp/bootstrap/internal/rpdfws;)F
    .locals 1

    .line 1
    sget-object v0, Lcom/jp/bootstrap/internal/mgevwcjmy;->eozvzdjcai:Lcom/jp/bootstrap/internal/mgevwcjmy;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lcom/jp/bootstrap/internal/rpdfws;->nvbyrnefqdi(Lcom/jp/bootstrap/internal/cjuoogy;)Lcom/jp/bootstrap/internal/kvvd;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/re;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/re;->bmucqf()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    cmpl-float v0, p0, v0

    .line 20
    .line 21
    if-ltz v0, :cond_1

    .line 22
    .line 23
    return p0

    .line 24
    :cond_1
    const-string v0, "negative scale factor"

    .line 25
    .line 26
    invoke-static {v0}, Lcom/jp/bootstrap/internal/hv;->jzphcv(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return p0
.end method

.method public static yndsdvj()Lcom/jp/bootstrap/internal/ge0;
    .locals 1

    .line 1
    sget-object v0, Lcom/jp/bootstrap/internal/me0;->jzphcv:Lcom/jp/bootstrap/internal/zzgzbmdwfi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/zzgzbmdwfi;->fugymz()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/jp/bootstrap/internal/ge0;

    .line 8
    .line 9
    return-object v0
.end method

.method public static zfrfwjkgqw(Lcom/jp/bootstrap/internal/wp;ZZ)Lcom/jp/bootstrap/internal/ho0;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    invoke-static {p1, p0, v0}, Lcom/jp/bootstrap/internal/fj;->edtsi(ILcom/jp/bootstrap/internal/wp;Z)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/wp;->gtnruhk()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    long-to-int p1, v1

    .line 13
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/jp/bootstrap/internal/wp;->mhpayc(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/wp;->gtnruhk()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    long-to-int p1, v1

    .line 23
    new-array p1, p1, [Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    int-to-long v3, v0

    .line 26
    cmp-long v3, v3, v1

    .line 27
    .line 28
    if-gez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/wp;->gtnruhk()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    long-to-int v3, v3

    .line 35
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 36
    .line 37
    invoke-virtual {p0, v3, v4}, Lcom/jp/bootstrap/internal/wp;->mhpayc(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    aput-object v3, p1, v0

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    and-int/lit8 p0, p0, 0x1

    .line 53
    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const-string p0, "framing bit expected to be set"

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-static {p1, p0}, Lcom/jp/bootstrap/internal/yp;->syiqloeyp(Ljava/lang/RuntimeException;Ljava/lang/String;)Lcom/jp/bootstrap/internal/yp;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0

    .line 65
    :cond_3
    :goto_1
    new-instance p0, Lcom/jp/bootstrap/internal/ho0;

    .line 66
    .line 67
    const/16 p2, 0x9

    .line 68
    .line 69
    invoke-direct {p0, p2, p1}, Lcom/jp/bootstrap/internal/ho0;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object p0
.end method
