.class public Lcom/jp/bootstrap/internal/t3;
.super Ljava/lang/Object;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"

# interfaces
.implements Lcom/jp/bootstrap/internal/wwdp;
.implements Lcom/jp/bootstrap/internal/ehpa;
.implements Lcom/jp/bootstrap/internal/bo;
.implements Lcom/jp/bootstrap/internal/yodtpj;
.implements Lcom/jp/bootstrap/internal/v60;
.implements Lcom/jp/bootstrap/internal/pggbc;
.implements Lcom/jp/bootstrap/internal/n80;
.implements Lcom/jp/bootstrap/internal/oj0;


# instance fields
.field public sbmzsrkn:Ljava/lang/Object;

.field public tsodtn:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 10

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    sparse-switch p1, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Lcom/jp/bootstrap/internal/yr0;->uaakwbmitdl:Lcom/jp/bootstrap/internal/t3;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v1, Lcom/jp/bootstrap/internal/itipisgoc;

    .line 17
    .line 18
    iget-object p1, v2, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 21
    .line 22
    invoke-interface {p1, v3}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    move-object v4, p1

    .line 27
    check-cast v4, Lcom/jp/bootstrap/internal/kmstupatsly;

    .line 28
    .line 29
    const-wide/high16 v5, -0x8000000000000000L

    .line 30
    .line 31
    const-wide/high16 v7, -0x8000000000000000L

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-direct/range {v1 .. v9}, Lcom/jp/bootstrap/internal/itipisgoc;-><init>(Lcom/jp/bootstrap/internal/t3;Ljava/lang/Object;Lcom/jp/bootstrap/internal/kmstupatsly;JJZ)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 38
    .line 39
    return-void

    .line 40
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/jp/bootstrap/internal/wp;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/wp;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 49
    .line 50
    new-instance p1, Lcom/jp/bootstrap/internal/dz0;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/dz0;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 56
    .line 57
    return-void

    .line 58
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lcom/jp/bootstrap/internal/xh;

    .line 62
    .line 63
    new-array v0, v0, [Ljava/lang/ref/Reference;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/xh;-><init>([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 69
    .line 70
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 76
    .line 77
    return-void

    .line 78
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/jp/bootstrap/internal/cc0;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/cc0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 88
    .line 89
    new-instance p1, Lcom/jp/bootstrap/internal/h8;

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/h8;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 96
    .line 97
    return-void

    .line 98
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lcom/jp/bootstrap/internal/tw;

    .line 102
    .line 103
    const/16 v1, 0x14

    .line 104
    .line 105
    invoke-direct {p1, v1}, Lcom/jp/bootstrap/internal/tw;-><init>(I)V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 109
    .line 110
    new-instance p1, Lcom/jp/bootstrap/internal/ud0;

    .line 111
    .line 112
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/ud0;-><init>(I)V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 116
    .line 117
    return-void

    .line 118
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 127
    .line 128
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 134
    .line 135
    return-void

    .line 136
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance p1, Lcom/jp/bootstrap/internal/xh;

    .line 140
    .line 141
    new-array v0, v0, [Lcom/jp/bootstrap/internal/v0;

    .line 142
    .line 143
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/xh;-><init>([Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 147
    .line 148
    return-void

    .line 149
    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance p1, Lcom/jp/bootstrap/internal/oh;

    .line 153
    .line 154
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/oh;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 158
    .line 159
    new-instance p1, Lcom/jp/bootstrap/internal/oh;

    .line 160
    .line 161
    invoke-direct {p1}, Lcom/jp/bootstrap/internal/oh;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 165
    .line 166
    return-void

    .line 167
    :sswitch_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 177
    .line 178
    return-void

    .line 179
    :sswitch_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance p1, Lcom/jp/bootstrap/internal/kljszfbug;

    .line 183
    .line 184
    const/16 v0, 0xc

    .line 185
    .line 186
    invoke-direct {p1, v0}, Lcom/jp/bootstrap/internal/kljszfbug;-><init>(I)V

    .line 187
    .line 188
    .line 189
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 190
    .line 191
    return-void

    .line 192
    nop

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0xb -> :sswitch_4
        0x17 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1c -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jp/release/ReleaseSlotStore;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 196
    iput-object p2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/jp/bootstrap/MainActivity;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 202
    new-instance p1, Lcom/jp/bootstrap/internal/tijndeovz;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p0}, Lcom/jp/bootstrap/internal/tijndeovz;-><init>(ILjava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/jp/bootstrap/internal/qk0;

    invoke-direct {v0, p1}, Lcom/jp/bootstrap/internal/qk0;-><init>(Lcom/jp/bootstrap/internal/mbwlg;)V

    .line 204
    iput-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/jp/bootstrap/internal/og0;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 207
    sget-object p1, Lcom/jp/bootstrap/internal/djkvd;->tsodtn:Lcom/jp/bootstrap/internal/djkvd;

    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/jp/bootstrap/internal/uz;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 210
    new-instance p1, Lcom/jp/bootstrap/internal/ovzslqi;

    .line 211
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 212
    iput v0, p1, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp:I

    .line 213
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 197
    invoke-direct {p0, v0}, Lcom/jp/bootstrap/internal/t3;-><init>(I)V

    .line 198
    invoke-static {p1}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Lcom/jp/bootstrap/internal/vd;->vzds(Ljava/lang/Object;)Lcom/jp/bootstrap/internal/up;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    iput-object p2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bmucqf(Lcom/jp/bootstrap/internal/v0;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/jp/bootstrap/internal/v0;->yxdrscromtp:I

    .line 2
    .line 3
    if-lez v0, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/jp/bootstrap/internal/v0;->cdsesehahek:Lcom/jp/bootstrap/internal/z0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/jp/bootstrap/internal/z0;->cauva:Lcom/jp/bootstrap/internal/r0;

    .line 8
    .line 9
    sget-object v1, Lcom/jp/bootstrap/internal/r0;->nvbyrnefqdi:Lcom/jp/bootstrap/internal/r0;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_a

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/v0;->nvbyrnefqdi()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_a

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/v0;->gtnruhk()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_a

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/jp/bootstrap/internal/v0;->qwcilfgin:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/v0;->ospb()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/v0;->dwcjxttbbo:Lcom/jp/bootstrap/internal/gk;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/jp/bootstrap/internal/gk;->mhirrjin:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/jp/bootstrap/internal/ee;

    .line 45
    .line 46
    iget v1, v0, Lcom/jp/bootstrap/internal/ee;->wyjqgzdhz:I

    .line 47
    .line 48
    const/16 v3, 0x100

    .line 49
    .line 50
    and-int/2addr v1, v3

    .line 51
    if-eqz v1, :cond_a

    .line 52
    .line 53
    :goto_0
    if-eqz v0, :cond_a

    .line 54
    .line 55
    iget v1, v0, Lcom/jp/bootstrap/internal/ee;->tckmliv:I

    .line 56
    .line 57
    and-int/2addr v1, v3

    .line 58
    if-eqz v1, :cond_9

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    move-object v4, v0

    .line 62
    move-object v5, v1

    .line 63
    :goto_1
    if-eqz v4, :cond_9

    .line 64
    .line 65
    instance-of v6, v4, Lcom/jp/bootstrap/internal/zsyh;

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    check-cast v4, Lcom/jp/bootstrap/internal/zsyh;

    .line 70
    .line 71
    invoke-static {v4, v3}, Lcom/jp/bootstrap/internal/yr0;->gbursjlv(Lcom/jp/bootstrap/internal/scjncqnk;I)Lcom/jp/bootstrap/internal/kk;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v4, v6}, Lcom/jp/bootstrap/internal/zsyh;->wigtqdo(Lcom/jp/bootstrap/internal/kk;)V

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_2
    iget v6, v4, Lcom/jp/bootstrap/internal/ee;->tckmliv:I

    .line 80
    .line 81
    and-int/2addr v6, v3

    .line 82
    if-eqz v6, :cond_8

    .line 83
    .line 84
    instance-of v6, v4, Lcom/jp/bootstrap/internal/jmjaaomt;

    .line 85
    .line 86
    if-eqz v6, :cond_8

    .line 87
    .line 88
    move-object v6, v4

    .line 89
    check-cast v6, Lcom/jp/bootstrap/internal/jmjaaomt;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/jp/bootstrap/internal/jmjaaomt;->sljpnfm:Lcom/jp/bootstrap/internal/ee;

    .line 92
    .line 93
    move v7, v2

    .line 94
    :goto_2
    const/4 v8, 0x1

    .line 95
    if-eqz v6, :cond_7

    .line 96
    .line 97
    iget v9, v6, Lcom/jp/bootstrap/internal/ee;->tckmliv:I

    .line 98
    .line 99
    and-int/2addr v9, v3

    .line 100
    if-eqz v9, :cond_6

    .line 101
    .line 102
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    if-ne v7, v8, :cond_3

    .line 105
    .line 106
    move-object v4, v6

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    if-nez v5, :cond_4

    .line 109
    .line 110
    new-instance v5, Lcom/jp/bootstrap/internal/xh;

    .line 111
    .line 112
    const/16 v8, 0x10

    .line 113
    .line 114
    new-array v8, v8, [Lcom/jp/bootstrap/internal/ee;

    .line 115
    .line 116
    invoke-direct {v5, v8}, Lcom/jp/bootstrap/internal/xh;-><init>([Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    if-eqz v4, :cond_5

    .line 120
    .line 121
    invoke-virtual {v5, v4}, Lcom/jp/bootstrap/internal/xh;->jzphcv(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object v4, v1

    .line 125
    :cond_5
    invoke-virtual {v5, v6}, Lcom/jp/bootstrap/internal/xh;->jzphcv(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_3
    iget-object v6, v6, Lcom/jp/bootstrap/internal/ee;->gtnruhk:Lcom/jp/bootstrap/internal/ee;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_7
    if-ne v7, v8, :cond_8

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_8
    :goto_4
    invoke-static {v5}, Lcom/jp/bootstrap/internal/yr0;->arjuqebdx(Lcom/jp/bootstrap/internal/xh;)Lcom/jp/bootstrap/internal/ee;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    goto :goto_1

    .line 139
    :cond_9
    iget v1, v0, Lcom/jp/bootstrap/internal/ee;->wyjqgzdhz:I

    .line 140
    .line 141
    and-int/2addr v1, v3

    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    iget-object v0, v0, Lcom/jp/bootstrap/internal/ee;->gtnruhk:Lcom/jp/bootstrap/internal/ee;

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    :goto_5
    iput-boolean v2, p0, Lcom/jp/bootstrap/internal/v0;->mbkvlevkkf:Z

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/v0;->lsqxopbhlw()Lcom/jp/bootstrap/internal/xh;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    iget-object v0, p0, Lcom/jp/bootstrap/internal/xh;->sbmzsrkn:[Ljava/lang/Object;

    .line 154
    .line 155
    iget p0, p0, Lcom/jp/bootstrap/internal/xh;->tckmliv:I

    .line 156
    .line 157
    :goto_6
    if-ge v2, p0, :cond_b

    .line 158
    .line 159
    aget-object v1, v0, v2

    .line 160
    .line 161
    check-cast v1, Lcom/jp/bootstrap/internal/v0;

    .line 162
    .line 163
    invoke-static {v1}, Lcom/jp/bootstrap/internal/t3;->bmucqf(Lcom/jp/bootstrap/internal/v0;)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v2, v2, 0x1

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_b
    return-void
.end method

.method public static dwcjxttbbo(Ljava/io/File;Lcom/jp/release/ReleaseArtifact;)Ljava/io/File;
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/jp/release/ReleaseArtifact;->getRelativePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v1, p0, v2}, Lcom/jp/bootstrap/internal/ni0;->cdsesehahek(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {p1}, Lcom/jp/release/ReleaseArtifact;->getLength()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    cmp-long p0, v3, v5

    .line 65
    .line 66
    if-nez p0, :cond_3

    .line 67
    .line 68
    invoke-static {v0}, Lcom/jp/bootstrap/internal/t3;->syoolsrjr(Ljava/io/File;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1}, Lcom/jp/release/ReleaseArtifact;->getSha256()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string p0, "Failed requirement."

    .line 96
    .line 97
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_1
    :goto_0
    return-object v0

    .line 102
    :cond_2
    const-string p0, "Runtime artifact digest mismatch"

    .line 103
    .line 104
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_3
    const-string p0, "Runtime artifact length mismatch"

    .line 109
    .line 110
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_4
    const-string p0, "Runtime artifact escaped release root"

    .line 115
    .line 116
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-object v1
.end method

.method public static ryrgde(C)Lcom/jp/bootstrap/internal/t3;
    .locals 2

    .line 1
    new-instance v0, Lcom/jp/bootstrap/internal/zzkibkfnqz;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/jp/bootstrap/internal/zzkibkfnqz;-><init>(C)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/jp/bootstrap/internal/t3;

    .line 7
    .line 8
    new-instance v1, Lcom/jp/bootstrap/internal/mkppehvjls;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/jp/bootstrap/internal/mkppehvjls;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v1}, Lcom/jp/bootstrap/internal/t3;-><init>(Lcom/jp/bootstrap/internal/og0;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public static syoolsrjr(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string p0, "SHA-256"

    .line 7
    .line 8
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v1, 0x2000

    .line 13
    .line 14
    new-array v1, v1, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/jp/bootstrap/internal/a2;

    .line 37
    .line 38
    const/16 v2, 0x16

    .line 39
    .line 40
    invoke-direct {v1, v2}, Lcom/jp/bootstrap/internal/a2;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v1}, Lcom/jp/bootstrap/internal/buafbkifn;->tdbexscuqc([BLcom/jp/bootstrap/internal/iiazsdqcp;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    :catchall_1
    move-exception v1

    .line 53
    invoke-static {v0, p0}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public static wigtqdo(Ljava/lang/String;)Lcom/jp/bootstrap/internal/t3;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const-string v3, "The separator may not be the empty string."

    .line 13
    .line 14
    invoke-static {v3, v0}, Lcom/jp/bootstrap/internal/hf;->dhjfigsvwc(Ljava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Lcom/jp/bootstrap/internal/t3;->ryrgde(C)Lcom/jp/bootstrap/internal/t3;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance v0, Lcom/jp/bootstrap/internal/t3;

    .line 33
    .line 34
    new-instance v1, Lcom/jp/bootstrap/internal/heuvqtjfup;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v1, p0, v2}, Lcom/jp/bootstrap/internal/heuvqtjfup;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/t3;-><init>(Lcom/jp/bootstrap/internal/og0;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method


# virtual methods
.method public amcmg()Lcom/jp/bootstrap/internal/u40;
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lcom/jp/release/ReleaseSlotStore;

    .line 7
    .line 8
    iget-object v0, v1, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v9, v0

    .line 11
    check-cast v9, Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v3, "builtin-runtime.json"

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-object v3, Lcom/jp/bootstrap/internal/epjn;->syiqloeyp:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    new-instance v4, Ljava/io/InputStreamReader;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 31
    .line 32
    .line 33
    const/16 v10, 0x2000

    .line 34
    .line 35
    new-instance v3, Ljava/io/BufferedReader;

    .line 36
    .line 37
    invoke-direct {v3, v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    new-instance v11, Lcom/jp/bootstrap/internal/cjpbeith;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/jp/bootstrap/internal/cg;->nvbyrnefqdi(Ljava/io/Reader;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {v11, v0}, Lcom/jp/bootstrap/internal/cjpbeith;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v11, Lcom/jp/bootstrap/internal/cjpbeith;->syiqloeyp:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11}, Lcom/jp/bootstrap/internal/cjpbeith;->wyjqgzdhz()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lcom/jp/bootstrap/internal/pa0;->zfrfwjkgqw(Ljava/util/Iterator;)Lcom/jp/bootstrap/internal/ia0;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3}, Lcom/jp/bootstrap/internal/pa0;->vzds(Lcom/jp/bootstrap/internal/ia0;)Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v4, "format"

    .line 70
    .line 71
    const-string v12, "releaseSetId"

    .line 72
    .line 73
    const-string v13, "version"

    .line 74
    .line 75
    const-string v5, "runtimeProtocol"

    .line 76
    .line 77
    const-string v14, "web"

    .line 78
    .line 79
    filled-new-array {v4, v12, v13, v5, v14}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v6}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/util/Collection;

    .line 88
    .line 89
    invoke-interface {v3, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v15, 0x0

    .line 94
    const-string v16, "Failed requirement."

    .line 95
    .line 96
    if-eqz v3, :cond_1e

    .line 97
    .line 98
    const-string v3, "manager"

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_1d

    .line 105
    .line 106
    const-string v3, "runtime"

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_1d

    .line 113
    .line 114
    invoke-virtual {v11, v4}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v3, 0x2

    .line 119
    if-ne v0, v3, :cond_1c

    .line 120
    .line 121
    invoke-virtual {v11, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v17, "[A-Za-z0-9._-]{1,128}"

    .line 126
    .line 127
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_1b

    .line 143
    .line 144
    invoke-virtual {v11, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    const-wide/16 v18, 0x0

    .line 149
    .line 150
    cmp-long v0, v6, v18

    .line 151
    .line 152
    if-lez v0, :cond_1a

    .line 153
    .line 154
    invoke-virtual {v11, v5}, Lcom/jp/bootstrap/internal/cjpbeith;->mhirrjin(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-lt v0, v3, :cond_19

    .line 159
    .line 160
    invoke-virtual {v11, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v11, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-virtual {v2, v0, v3, v4}, Lcom/jp/release/ReleaseSlotStore;->adoptBuiltinBaseline(Ljava/lang/String;J)Lcom/jp/release/SlotRef;

    .line 169
    .line 170
    .line 171
    # Always select the packaged and verified built-in archive.
    :cond_4
    :goto_3
    invoke-virtual {v11, v12}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v3, Ljava/io/File;

    .line 305
    .line 306
    invoke-virtual {v9}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    const-string v5, "builtin-runtime/"

    .line 311
    .line 312
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v11, v14}, Lcom/jp/bootstrap/internal/cjpbeith;->yfqpbrvsm(Ljava/lang/String;)Lcom/jp/bootstrap/internal/cjpbeith;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v4}, Lcom/jp/bootstrap/internal/cjpbeith;->wyjqgzdhz()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {v5}, Lcom/jp/bootstrap/internal/pa0;->zfrfwjkgqw(Ljava/util/Iterator;)Lcom/jp/bootstrap/internal/ia0;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-static {v5}, Lcom/jp/bootstrap/internal/pa0;->vzds(Lcom/jp/bootstrap/internal/ia0;)Ljava/util/Set;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    const-string v6, "path"

    .line 339
    .line 340
    const-string v7, "length"

    .line 341
    .line 342
    const-string v8, "sha256"

    .line 343
    .line 344
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    invoke-static {v12}, Lcom/jp/bootstrap/internal/xa0;->vzds([Ljava/lang/Object;)Ljava/util/Set;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-eqz v5, :cond_15

    .line 357
    .line 358
    invoke-virtual {v4, v6}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    if-eqz v6, :cond_14

    .line 378
    .line 379
    invoke-virtual {v4, v7}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v6

    .line 383
    invoke-virtual {v4, v8}, Lcom/jp/bootstrap/internal/cjpbeith;->gbcohonrle(Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    cmp-long v8, v6, v18

    .line 388
    .line 389
    if-lez v8, :cond_13

    .line 390
    .line 391
    const-string v8, "[0-9a-f]{64}"

    .line 392
    .line 393
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 394
    .line 395
    .line 396
    move-result-object v8

    .line 397
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    if-eqz v8, :cond_13

    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    if-nez v8, :cond_6

    .line 415
    .line 416
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    if-eqz v8, :cond_5

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :cond_5
    const-string v0, "Unable to create built-in runtime directory"

    .line 424
    .line 425
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-object v15

    .line 429
    :cond_6
    :goto_4
    new-instance v8, Ljava/io/File;

    .line 430
    .line 431
    invoke-direct {v8, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    const/4 v14, 0x0

    .line 439
    if-eqz v12, :cond_9

    .line 440
    .line 441
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 442
    .line 443
    .line 444
    move-result-wide v17

    .line 445
    cmp-long v12, v17, v6

    .line 446
    .line 447
    if-nez v12, :cond_9

    .line 448
    .line 449
    invoke-static {v8}, Lcom/jp/bootstrap/internal/t3;->syoolsrjr(Ljava/io/File;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v12

    .line 457
    if-eqz v12, :cond_9

    .line 458
    .line 459
    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_7

    .line 464
    .line 465
    invoke-virtual {v8, v14, v14}, Ljava/io/File;->setWritable(ZZ)Z

    .line 466
    .line 467
    .line 468
    move-result v3

    .line 469
    if-eqz v3, :cond_8

    .line 470
    .line 471
    :cond_7
    move-object/from16 v17, v15

    .line 472
    .line 473
    goto/16 :goto_7

    .line 474
    .line 475
    :cond_8
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    return-object v15

    .line 479
    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 480
    .line 481
    .line 482
    move-result v12

    .line 483
    if-eqz v12, :cond_b

    .line 484
    .line 485
    const/4 v12, 0x1

    .line 486
    invoke-virtual {v8, v12, v12}, Ljava/io/File;->setWritable(ZZ)Z

    .line 487
    .line 488
    .line 489
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 490
    .line 491
    .line 492
    move-result v12

    .line 493
    if-eqz v12, :cond_a

    .line 494
    .line 495
    goto :goto_5

    .line 496
    :cond_a
    const-string v0, "Unable to replace corrupt built-in runtime"

    .line 497
    .line 498
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    return-object v15

    .line 502
    :cond_b
    :goto_5
    new-instance v12, Ljava/io/File;

    .line 503
    .line 504
    move-object/from16 v17, v15

    .line 505
    .line 506
    const-string v15, "."

    .line 507
    .line 508
    const-string v14, ".copying"

    .line 509
    .line 510
    invoke-static {v15, v5, v14}, Lcom/jp/bootstrap/internal/pzmovkl;->gbcohonrle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v14

    .line 514
    invoke-direct {v12, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-eqz v3, :cond_c

    .line 522
    .line 523
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 524
    .line 525
    .line 526
    :cond_c
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 535
    .line 536
    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 537
    .line 538
    .line 539
    :try_start_3
    new-array v10, v10, [B

    .line 540
    .line 541
    :goto_6
    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    .line 542
    .line 543
    .line 544
    move-result v14

    .line 545
    if-ltz v14, :cond_d

    .line 546
    .line 547
    const/4 v15, 0x0

    .line 548
    invoke-virtual {v5, v10, v15, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 549
    .line 550
    .line 551
    goto :goto_6

    .line 552
    :catchall_1
    move-exception v0

    .line 553
    move-object v1, v0

    .line 554
    goto/16 :goto_8

    .line 555
    .line 556
    :cond_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 561
    .line 562
    .line 563
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 564
    .line 565
    .line 566
    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 570
    .line 571
    .line 572
    move-result-wide v14

    .line 573
    cmp-long v3, v14, v6

    .line 574
    .line 575
    if-nez v3, :cond_12

    .line 576
    .line 577
    invoke-static {v12}, Lcom/jp/bootstrap/internal/t3;->syoolsrjr(Ljava/io/File;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v3

    .line 585
    if-eqz v3, :cond_11

    .line 586
    .line 587
    const/4 v15, 0x0

    .line 588
    invoke-virtual {v12, v15, v15}, Ljava/io/File;->setWritable(ZZ)Z

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-eqz v3, :cond_10

    .line 593
    .line 594
    invoke-virtual {v12, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-eqz v3, :cond_f

    .line 599
    .line 600
    :goto_7
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    const-string v4, "web-bundle.zip"

    .line 605
    .line 606
    invoke-static {v3, v4}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v3

    .line 610
    if-eqz v3, :cond_e

    .line 611
    .line 612
    new-instance v3, Ljava/io/File;

    .line 613
    .line 614
    invoke-virtual {v9}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    const-string v5, "web-runtime/builtin/"

    .line 619
    .line 620
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    sget-object v4, Lcom/jp/release/WebBundleArchive;->INSTANCE:Lcom/jp/release/WebBundleArchive;

    .line 628
    .line 629
    invoke-virtual {v4, v8, v3}, Lcom/jp/release/WebBundleArchive;->extractReadOnly(Ljava/io/File;Ljava/io/File;)Lcom/jp/release/WebBundleMetadata;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    new-instance v20, Lcom/jp/bootstrap/internal/u40;

    .line 634
    .line 635
    invoke-virtual {v11, v13}, Lcom/jp/bootstrap/internal/cjpbeith;->hqaldusn(Ljava/lang/String;)J

    .line 636
    .line 637
    .line 638
    move-result-wide v22

    .line 639
    invoke-virtual {v4}, Lcom/jp/release/WebBundleMetadata;->getBundleVersion()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v29

    .line 643
    invoke-virtual {v1, v0}, Lcom/jp/bootstrap/internal/t3;->tscplbdu(Ljava/lang/String;)Ljava/io/File;

    .line 644
    .line 645
    .line 646
    move-result-object v30

    .line 647
    const-string v24, "builtin"

    .line 648
    .line 649
    const/16 v25, 0x0

    .line 650
    .line 651
    const/16 v26, 0x0

    .line 652
    .line 653
    const/16 v27, 0x0

    .line 654
    .line 655
    move-object/from16 v21, v0

    .line 656
    .line 657
    move-object/from16 v28, v3

    .line 658
    .line 659
    invoke-direct/range {v20 .. v30}, Lcom/jp/bootstrap/internal/u40;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    .line 660
    .line 661
    .line 662
    # No remote-slot cleanup or selection is needed in this build.

    .line 667
    .line 668
    .line 669
    return-object v20

    .line 670
    :cond_e
    const-string v0, "Built-in web bundle must be the plain site archive"

    .line 671
    .line 672
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    return-object v17

    .line 676
    :cond_f
    const-string v0, "Unable to commit built-in runtime"

    .line 677
    .line 678
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    return-object v17

    .line 682
    :cond_10
    const-string v0, "Unable to make built-in runtime read-only"

    .line 683
    .line 684
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    return-object v17

    .line 688
    :cond_11
    const-string v0, "Built-in runtime digest mismatch"

    .line 689
    .line 690
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    return-object v17

    .line 694
    :cond_12
    const-string v0, "Built-in runtime length mismatch"

    .line 695
    .line 696
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    return-object v17

    .line 700
    :catchall_2
    move-exception v0

    .line 701
    move-object v1, v0

    .line 702
    goto :goto_9

    .line 703
    :goto_8
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 704
    :catchall_3
    move-exception v0

    .line 705
    :try_start_6
    invoke-static {v5, v1}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 706
    .line 707
    .line 708
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 709
    :goto_9
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 710
    :catchall_4
    move-exception v0

    .line 711
    invoke-static {v3, v1}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 712
    .line 713
    .line 714
    throw v0

    .line 715
    :cond_13
    move-object/from16 v17, v15

    .line 716
    .line 717
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    return-object v17

    .line 721
    :cond_14
    move-object/from16 v17, v15

    .line 722
    .line 723
    const-string v0, "Invalid built-in asset path"

    .line 724
    .line 725
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    return-object v17

    .line 729
    :cond_15
    move-object/from16 v17, v15

    .line 730
    .line 731
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    return-object v17

    .line 735
    :cond_16
    move-object/from16 v17, v15

    .line 736
    .line 737
    const-string v0, "Required value was null."

    .line 738
    .line 739
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    return-object v17

    .line 743
    :cond_17
    move-object/from16 v17, v15

    .line 744
    .line 745
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    return-object v17

    .line 749
    :cond_18
    move-object/from16 v17, v15

    .line 750
    .line 751
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    return-object v17

    .line 755
    :cond_19
    move-object/from16 v17, v15

    .line 756
    .line 757
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    return-object v17

    .line 761
    :cond_1a
    move-object/from16 v17, v15

    .line 762
    .line 763
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    return-object v17

    .line 767
    :cond_1b
    move-object/from16 v17, v15

    .line 768
    .line 769
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    return-object v17

    .line 773
    :cond_1c
    move-object/from16 v17, v15

    .line 774
    .line 775
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    return-object v17

    .line 779
    :cond_1d
    move-object/from16 v17, v15

    .line 780
    .line 781
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    return-object v17

    .line 785
    :cond_1e
    move-object/from16 v17, v15

    .line 786
    .line 787
    invoke-static/range {v16 .. v16}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    return-object v17

    .line 791
    :goto_a
    move-object v1, v0

    .line 792
    goto :goto_b

    .line 793
    :catchall_5
    move-exception v0

    .line 794
    goto :goto_a

    .line 795
    :goto_b
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 796
    :catchall_6
    move-exception v0

    .line 797
    invoke-static {v3, v1}, Lcom/jp/bootstrap/internal/yr0;->bmucqf(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 798
    .line 799
    .line 800
    throw v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/axxztkn;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/jp/bootstrap/internal/yvanzrq;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/yvanzrq;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public cauva(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/kljszfbug;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jp/bootstrap/internal/kljszfbug;->cauva(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public cdsesehahek(Lcom/jp/bootstrap/internal/nw0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/os/Handler;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/jp/bootstrap/internal/dc;

    .line 8
    .line 9
    const/16 v2, 0x16

    .line 10
    .line 11
    invoke-direct {v1, v2, p0, p1}, Lcom/jp/bootstrap/internal/dc;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public ckyiuuu()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/bo;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/jp/bootstrap/internal/bo;->ckyiuuu()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public dhjfigsvwc(Lcom/jp/bootstrap/internal/kreoqo;J)Lcom/jp/bootstrap/internal/kmkv;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/jp/bootstrap/internal/kreoqo;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v3

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/jp/bootstrap/internal/kreoqo;->yfqpbrvsm()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sub-long/2addr v1, v3

    .line 12
    const-wide/16 v5, 0x4e20

    .line 13
    .line 14
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    long-to-int v1, v1

    .line 19
    iget-object v2, v0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/jp/bootstrap/internal/wp;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->amcmg(I)V

    .line 24
    .line 25
    .line 26
    iget-object v5, v2, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    move-object/from16 v7, p1

    .line 30
    .line 31
    invoke-interface {v7, v6, v5, v1}, Lcom/jp/bootstrap/internal/kreoqo;->gbcohonrle(I[BI)V

    .line 32
    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    move v7, v1

    .line 41
    move-wide v9, v5

    .line 42
    :goto_0
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/4 v11, 0x4

    .line 47
    if-lt v8, v11, :cond_e

    .line 48
    .line 49
    iget-object v8, v2, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 50
    .line 51
    iget v12, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 52
    .line 53
    invoke-static {v12, v8}, Lcom/jp/bootstrap/internal/tbkgeql;->jzphcv(I[B)I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    const/4 v12, 0x1

    .line 58
    const/16 v13, 0x1ba

    .line 59
    .line 60
    if-eq v8, v13, :cond_0

    .line 61
    .line 62
    invoke-virtual {v2, v12}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2, v11}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/jp/bootstrap/internal/ay;->jyozshuy(Lcom/jp/bootstrap/internal/wp;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v14

    .line 73
    cmp-long v1, v14, v5

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget-object v1, v0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Lcom/jp/bootstrap/internal/go0;

    .line 80
    .line 81
    invoke-virtual {v1, v14, v15}, Lcom/jp/bootstrap/internal/go0;->jzphcv(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v14

    .line 85
    cmp-long v1, v14, p2

    .line 86
    .line 87
    if-lez v1, :cond_2

    .line 88
    .line 89
    cmp-long v0, v9, v5

    .line 90
    .line 91
    if-nez v0, :cond_1

    .line 92
    .line 93
    new-instance v0, Lcom/jp/bootstrap/internal/kmkv;

    .line 94
    .line 95
    const/4 v5, -0x1

    .line 96
    move-wide v1, v14

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/jp/bootstrap/internal/kmkv;-><init>(JJI)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_1
    int-to-long v0, v7

    .line 102
    add-long v8, v3, v0

    .line 103
    .line 104
    new-instance v5, Lcom/jp/bootstrap/internal/kmkv;

    .line 105
    .line 106
    const/4 v10, 0x0

    .line 107
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-direct/range {v5 .. v10}, Lcom/jp/bootstrap/internal/kmkv;-><init>(JJI)V

    .line 113
    .line 114
    .line 115
    return-object v5

    .line 116
    :cond_2
    move-wide v7, v14

    .line 117
    const-wide/32 v9, 0x186a0

    .line 118
    .line 119
    .line 120
    add-long v14, v7, v9

    .line 121
    .line 122
    cmp-long v1, v14, p2

    .line 123
    .line 124
    iget v9, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 125
    .line 126
    if-lez v1, :cond_3

    .line 127
    .line 128
    int-to-long v0, v9

    .line 129
    add-long v8, v3, v0

    .line 130
    .line 131
    new-instance v5, Lcom/jp/bootstrap/internal/kmkv;

    .line 132
    .line 133
    const/4 v10, 0x0

    .line 134
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-direct/range {v5 .. v10}, Lcom/jp/bootstrap/internal/kmkv;-><init>(JJI)V

    .line 140
    .line 141
    .line 142
    return-object v5

    .line 143
    :cond_3
    move-wide/from16 v16, v7

    .line 144
    .line 145
    move v7, v9

    .line 146
    move-wide/from16 v9, v16

    .line 147
    .line 148
    :cond_4
    iget v1, v2, Lcom/jp/bootstrap/internal/wp;->jyozshuy:I

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    const/16 v14, 0xa

    .line 155
    .line 156
    if-ge v8, v14, :cond_5

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_2

    .line 162
    .line 163
    :cond_5
    const/16 v8, 0x9

    .line 164
    .line 165
    invoke-virtual {v2, v8}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    and-int/lit8 v8, v8, 0x7

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    if-ge v14, v8, :cond_6

    .line 179
    .line 180
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_6
    invoke-virtual {v2, v8}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-ge v8, v11, :cond_7

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    iget-object v8, v2, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 198
    .line 199
    iget v14, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 200
    .line 201
    invoke-static {v14, v8}, Lcom/jp/bootstrap/internal/tbkgeql;->jzphcv(I[B)I

    .line 202
    .line 203
    .line 204
    move-result v8

    .line 205
    const/16 v14, 0x1bb

    .line 206
    .line 207
    if-ne v8, v14, :cond_9

    .line 208
    .line 209
    invoke-virtual {v2, v11}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->fugymz()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    if-ge v14, v8, :cond_8

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_2

    .line 226
    :cond_8
    invoke-virtual {v2, v8}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 227
    .line 228
    .line 229
    :cond_9
    :goto_1
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    if-lt v8, v11, :cond_d

    .line 234
    .line 235
    iget-object v8, v2, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 236
    .line 237
    iget v14, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 238
    .line 239
    invoke-static {v14, v8}, Lcom/jp/bootstrap/internal/tbkgeql;->jzphcv(I[B)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-eq v8, v13, :cond_d

    .line 244
    .line 245
    const/16 v14, 0x1b9

    .line 246
    .line 247
    if-ne v8, v14, :cond_a

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_a
    ushr-int/lit8 v8, v8, 0x8

    .line 251
    .line 252
    if-eq v8, v12, :cond_b

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_b
    invoke-virtual {v2, v11}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    const/4 v14, 0x2

    .line 263
    if-ge v8, v14, :cond_c

    .line 264
    .line 265
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 266
    .line 267
    .line 268
    goto :goto_2

    .line 269
    :cond_c
    invoke-virtual {v2}, Lcom/jp/bootstrap/internal/wp;->fugymz()I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    iget v14, v2, Lcom/jp/bootstrap/internal/wp;->jyozshuy:I

    .line 274
    .line 275
    iget v15, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 276
    .line 277
    add-int/2addr v15, v8

    .line 278
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    invoke-virtual {v2, v8}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 283
    .line 284
    .line 285
    goto :goto_1

    .line 286
    :cond_d
    :goto_2
    iget v1, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_e
    cmp-long v0, v9, v5

    .line 291
    .line 292
    if-eqz v0, :cond_f

    .line 293
    .line 294
    int-to-long v0, v1

    .line 295
    add-long v11, v3, v0

    .line 296
    .line 297
    new-instance v8, Lcom/jp/bootstrap/internal/kmkv;

    .line 298
    .line 299
    const/4 v13, -0x2

    .line 300
    invoke-direct/range {v8 .. v13}, Lcom/jp/bootstrap/internal/kmkv;-><init>(JJI)V

    .line 301
    .line 302
    .line 303
    return-object v8

    .line 304
    :cond_f
    sget-object v0, Lcom/jp/bootstrap/internal/kmkv;->cauva:Lcom/jp/bootstrap/internal/kmkv;

    .line 305
    .line 306
    return-object v0
.end method

.method public dujeewwyska(Lcom/jp/bootstrap/internal/j00;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/cc0;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/jp/bootstrap/internal/ex0;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 15
    .line 16
    and-int/lit8 p1, p1, -0x2

    .line 17
    .line 18
    iput p1, p0, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 19
    .line 20
    return-void
.end method

.method public edtsi(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    new-array p1, p1, [I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    array-length v2, v0

    .line 25
    if-lt p1, v2, :cond_2

    .line 26
    .line 27
    array-length v2, v0

    .line 28
    :goto_0
    if-gt v2, p1, :cond_1

    .line 29
    .line 30
    mul-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-array p1, v2, [I

    .line 34
    .line 35
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 36
    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v0, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p0, [I

    .line 45
    .line 46
    array-length p1, v0

    .line 47
    array-length v0, p0

    .line 48
    invoke-static {p0, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public fugymz()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/t3;->vzds()Landroid/view/ViewGroup;

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
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/t3;->vzds()Landroid/view/ViewGroup;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public gfcrkryqbn(Lcom/jp/release/SlotRef;)Lcom/jp/bootstrap/internal/u40;
    .locals 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;
    const-string v1, "Remote runtime disabled in this TV build"
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public gtnruhk(Lcom/jp/bootstrap/internal/j00;Lcom/jp/bootstrap/internal/ec;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/cc0;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/jp/bootstrap/internal/ex0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp()Lcom/jp/bootstrap/internal/ex0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/jp/bootstrap/internal/cc0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p2, v0, Lcom/jp/bootstrap/internal/ex0;->jyozshuy:Lcom/jp/bootstrap/internal/ec;

    .line 21
    .line 22
    iget p0, v0, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 23
    .line 24
    or-int/lit8 p0, p0, 0x8

    .line 25
    .line 26
    iput p0, v0, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 27
    .line 28
    return-void
.end method

.method public holm(Lcom/jp/bootstrap/internal/j00;I)Lcom/jp/bootstrap/internal/ec;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/cc0;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->jyozshuy(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-gez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->yndsdvj(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/jp/bootstrap/internal/ex0;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget v2, v1, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 22
    .line 23
    and-int v3, v2, p2

    .line 24
    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    not-int v3, p2

    .line 28
    and-int/2addr v2, v3

    .line 29
    iput v2, v1, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    if-ne p2, v3, :cond_1

    .line 33
    .line 34
    iget-object p2, v1, Lcom/jp/bootstrap/internal/ex0;->jzphcv:Lcom/jp/bootstrap/internal/ec;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v3, 0x8

    .line 38
    .line 39
    if-ne p2, v3, :cond_3

    .line 40
    .line 41
    iget-object p2, v1, Lcom/jp/bootstrap/internal/ex0;->jyozshuy:Lcom/jp/bootstrap/internal/ec;

    .line 42
    .line 43
    :goto_0
    and-int/lit8 v2, v2, 0xc

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->uaakwbmitdl(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput p0, v1, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 52
    .line 53
    iput-object v0, v1, Lcom/jp/bootstrap/internal/ex0;->jzphcv:Lcom/jp/bootstrap/internal/ec;

    .line 54
    .line 55
    iput-object v0, v1, Lcom/jp/bootstrap/internal/ex0;->jyozshuy:Lcom/jp/bootstrap/internal/ec;

    .line 56
    .line 57
    sget-object p0, Lcom/jp/bootstrap/internal/ex0;->cauva:Lcom/jp/bootstrap/internal/kyghlvznfwv;

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/jp/bootstrap/internal/kyghlvznfwv;->ckyiuuu(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-object p2

    .line 63
    :cond_3
    const-string p0, "Must provide flag PRE or POST"

    .line 64
    .line 65
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    return-object v0
.end method

.method public hqaldusn(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/opengl/EGLContext;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/jp/bootstrap/internal/kljszfbug;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/jp/bootstrap/internal/kljszfbug;->hqaldusn(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    return-object v0
.end method

.method public jisccnqwqm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/MainActivity;

    .line 4
    .line 5
    const v1, 0x1020002

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/jp/bootstrap/internal/qk0;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/qk0;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/view/ViewGroup;

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public jpgq()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/xh;

    .line 4
    .line 5
    sget-object v1, Lcom/jp/bootstrap/internal/aqidbgf;->wyjqgzdhz:Lcom/jp/bootstrap/internal/aqidbgf;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/jp/bootstrap/internal/xh;->sbmzsrkn:[Ljava/lang/Object;

    .line 8
    .line 9
    iget v3, v0, Lcom/jp/bootstrap/internal/xh;->tckmliv:I

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v4, v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    iget v1, v0, Lcom/jp/bootstrap/internal/xh;->tckmliv:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, [Lcom/jp/bootstrap/internal/v0;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    if-ge v3, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    const/16 v2, 0x10

    .line 27
    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-array v2, v2, [Lcom/jp/bootstrap/internal/v0;

    .line 33
    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    iput-object v3, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 36
    .line 37
    :goto_0
    if-ge v4, v1, :cond_2

    .line 38
    .line 39
    iget-object v5, v0, Lcom/jp/bootstrap/internal/xh;->sbmzsrkn:[Ljava/lang/Object;

    .line 40
    .line 41
    aget-object v5, v5, v4

    .line 42
    .line 43
    aput-object v5, v2, v4

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/xh;->mhirrjin()V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    :goto_1
    const/4 v0, -0x1

    .line 54
    if-ge v0, v1, :cond_4

    .line 55
    .line 56
    aget-object v0, v2, v1

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget-boolean v4, v0, Lcom/jp/bootstrap/internal/v0;->mbkvlevkkf:Z

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    invoke-static {v0}, Lcom/jp/bootstrap/internal/t3;->bmucqf(Lcom/jp/bootstrap/internal/v0;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    aput-object v3, v2, v1

    .line 69
    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iput-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 74
    .line 75
    return-void
.end method

.method public jyozshuy(Lcom/jp/bootstrap/internal/wp;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/nr0;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/jp/bootstrap/internal/nr0;->yndsdvj:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/jp/bootstrap/internal/ipqjlti;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->lsqxopbhlw()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit16 v2, v2, 0x80

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/4 v2, 0x6

    .line 28
    invoke-virtual {p1, v2}, Lcom/jp/bootstrap/internal/wp;->nawz(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x4

    .line 36
    div-int/2addr v2, v3

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    :goto_0
    if-ge v5, v2, :cond_4

    .line 40
    .line 41
    iget-object v6, p0, Lcom/jp/bootstrap/internal/ipqjlti;->jzphcv:[B

    .line 42
    .line 43
    invoke-virtual {p1, v4, v6, v3}, Lcom/jp/bootstrap/internal/wp;->gbcohonrle(I[BI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Lcom/jp/bootstrap/internal/ipqjlti;->tsodtn(I)V

    .line 47
    .line 48
    .line 49
    const/16 v6, 0x10

    .line 50
    .line 51
    invoke-virtual {p0, v6}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    const/4 v7, 0x3

    .line 56
    invoke-virtual {p0, v7}, Lcom/jp/bootstrap/internal/ipqjlti;->wyjqgzdhz(I)V

    .line 57
    .line 58
    .line 59
    const/16 v7, 0xd

    .line 60
    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v7}, Lcom/jp/bootstrap/internal/ipqjlti;->wyjqgzdhz(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0, v7}, Lcom/jp/bootstrap/internal/ipqjlti;->mhirrjin(I)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    new-instance v7, Lcom/jp/bootstrap/internal/o80;

    .line 78
    .line 79
    new-instance v8, Lcom/jp/bootstrap/internal/jp0;

    .line 80
    .line 81
    invoke-direct {v8, v0, v6}, Lcom/jp/bootstrap/internal/jp0;-><init>(Lcom/jp/bootstrap/internal/nr0;I)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v7, v8}, Lcom/jp/bootstrap/internal/o80;-><init>(Lcom/jp/bootstrap/internal/n80;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget v6, v0, Lcom/jp/bootstrap/internal/nr0;->tckmliv:I

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    iput v6, v0, Lcom/jp/bootstrap/internal/nr0;->tckmliv:I

    .line 95
    .line 96
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget p0, v0, Lcom/jp/bootstrap/internal/nr0;->syiqloeyp:I

    .line 100
    .line 101
    const/4 p1, 0x2

    .line 102
    if-eq p0, p1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_2
    return-void
.end method

.method public jzphcv(Lcom/jp/bootstrap/internal/go0;Lcom/jp/bootstrap/internal/enbhnfviqqr;Lcom/jp/bootstrap/internal/pr0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public lsqxopbhlw(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/ovzslqi;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/uz;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/uz;->cauva()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/uz;->jyozshuy()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/uz;->jzphcv(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/uz;->syiqloeyp(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iput v1, v0, Lcom/jp/bootstrap/internal/ovzslqi;->jzphcv:I

    .line 26
    .line 27
    iput v2, v0, Lcom/jp/bootstrap/internal/ovzslqi;->jyozshuy:I

    .line 28
    .line 29
    iput v3, v0, Lcom/jp/bootstrap/internal/ovzslqi;->cauva:I

    .line 30
    .line 31
    iput p0, v0, Lcom/jp/bootstrap/internal/ovzslqi;->dhjfigsvwc:I

    .line 32
    .line 33
    const/16 p0, 0x6003

    .line 34
    .line 35
    iput p0, v0, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp:I

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public mhirrjin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/jp/bootstrap/internal/iiazsdqcp;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public mhpayc(IIII)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/ovzslqi;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/jp/bootstrap/internal/uz;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/uz;->cauva()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/uz;->jyozshuy()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-le p2, p1, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, -0x1

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    :goto_1
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    iget v5, p0, Lcom/jp/bootstrap/internal/uz;->syiqloeyp:I

    .line 26
    .line 27
    packed-switch v5, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lcom/jp/bootstrap/internal/uz;->jzphcv:Lcom/jp/bootstrap/internal/wz;

    .line 31
    .line 32
    invoke-virtual {v5, p1}, Lcom/jp/bootstrap/internal/wz;->jisccnqwqm(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_2

    .line 37
    :pswitch_0
    iget-object v5, p0, Lcom/jp/bootstrap/internal/uz;->jzphcv:Lcom/jp/bootstrap/internal/wz;

    .line 38
    .line 39
    invoke-virtual {v5, p1}, Lcom/jp/bootstrap/internal/wz;->jisccnqwqm(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :goto_2
    invoke-virtual {p0, v5}, Lcom/jp/bootstrap/internal/uz;->jzphcv(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p0, v5}, Lcom/jp/bootstrap/internal/uz;->syiqloeyp(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    iput v1, v0, Lcom/jp/bootstrap/internal/ovzslqi;->jzphcv:I

    .line 52
    .line 53
    iput v2, v0, Lcom/jp/bootstrap/internal/ovzslqi;->jyozshuy:I

    .line 54
    .line 55
    iput v6, v0, Lcom/jp/bootstrap/internal/ovzslqi;->cauva:I

    .line 56
    .line 57
    iput v7, v0, Lcom/jp/bootstrap/internal/ovzslqi;->dhjfigsvwc:I

    .line 58
    .line 59
    if-eqz p3, :cond_1

    .line 60
    .line 61
    iput p3, v0, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp:I

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    return-object v5

    .line 70
    :cond_1
    if-eqz p4, :cond_2

    .line 71
    .line 72
    iput p4, v0, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp:I

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ovzslqi;->syiqloeyp()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_2

    .line 79
    .line 80
    move-object v4, v5

    .line 81
    :cond_2
    add-int/2addr p1, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    return-object v4

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public nawz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/bh0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/hivneffza;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/jp/bootstrap/internal/itipisgoc;

    .line 12
    .line 13
    sget-object v2, Lcom/jp/bootstrap/internal/yr0;->uaakwbmitdl:Lcom/jp/bootstrap/internal/t3;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const/16 v4, 0x3c

    .line 21
    .line 22
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/jp/bootstrap/internal/itipisgoc;-><init>(Lcom/jp/bootstrap/internal/t3;Ljava/lang/Object;Lcom/jp/bootstrap/internal/kmstupatsly;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method public nvbyrnefqdi()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public ospb(Lcom/jp/bootstrap/internal/j00;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/h8;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/h8;->uaakwbmitdl()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    :goto_0
    if-ltz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/jp/bootstrap/internal/h8;->mhirrjin(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-ne p1, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Lcom/jp/bootstrap/internal/h8;->tckmliv:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v4, v3, v1

    .line 22
    .line 23
    sget-object v5, Lcom/jp/bootstrap/internal/yr0;->jyozshuy:Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    aput-object v5, v3, v1

    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/jp/bootstrap/internal/h8;->sbmzsrkn:Z

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lcom/jp/bootstrap/internal/cc0;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/jp/bootstrap/internal/cc0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/jp/bootstrap/internal/ex0;

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/jp/bootstrap/internal/ex0;->syiqloeyp:I

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/jp/bootstrap/internal/ex0;->jzphcv:Lcom/jp/bootstrap/internal/ec;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/jp/bootstrap/internal/ex0;->jyozshuy:Lcom/jp/bootstrap/internal/ec;

    .line 54
    .line 55
    sget-object p1, Lcom/jp/bootstrap/internal/ex0;->cauva:Lcom/jp/bootstrap/internal/kyghlvznfwv;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/jp/bootstrap/internal/kyghlvznfwv;->ckyiuuu(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public declared-synchronized pcqerka(ZZ)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    if-nez v2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/content/Context;

    .line 15
    .line 16
    const-string v3, "android.permission.WAKE_LOCK"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-string p1, "WakeLockManager"

    .line 25
    .line 26
    const-string p2, "WAKE_LOCK permission not granted, can\'t acquire wake lock for playback"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/jp/bootstrap/internal/sm;->gbursjlv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/content/Context;

    .line 38
    .line 39
    const-string v3, "power"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroid/os/PowerManager;

    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const-string p1, "WakeLockManager"

    .line 50
    .line 51
    const-string p2, "PowerManager is null, therefore not creating the WakeLock."

    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/jp/bootstrap/internal/sm;->gbursjlv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_1
    :try_start_2
    const-string v3, "ExoPlayer:WakeLockManager"

    .line 59
    .line 60
    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    if-nez v2, :cond_3

    .line 74
    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :cond_3
    if-eqz p1, :cond_4

    .line 78
    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    move v0, v1

    .line 82
    :cond_4
    if-eqz v0, :cond_5

    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    throw p1
.end method

.method public punn(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/jp/bootstrap/internal/og0;

    .line 7
    .line 8
    invoke-interface {v0, p0, p1}, Lcom/jp/bootstrap/internal/og0;->mhirrjin(Lcom/jp/bootstrap/internal/t3;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object v0, p0

    .line 18
    check-cast v0, Lcom/jp/bootstrap/internal/ng0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ng0;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/jp/bootstrap/internal/ng0;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public rowxts(Lcom/jp/release/SlotState;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/jp/release/SlotState;->getActive()Lcom/jp/release/SlotRef;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/jp/release/SlotState;->getPrevious()Lcom/jp/release/SlotRef;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/jp/release/SlotState;->getPending()Lcom/jp/release/SlotRef;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    filled-new-array {v0, v1, p1}, [Lcom/jp/release/SlotRef;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/jp/bootstrap/internal/buafbkifn;->lmsiyi([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/jp/bootstrap/internal/kzafmswa;->ouysgha(Ljava/lang/Iterable;I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    if-ge v3, v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    check-cast v4, Lcom/jp/release/SlotRef;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/jp/release/SlotRef;->getReleaseSetId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->ghglzhyjfn(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v0, Ljava/io/File;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v3, "web-runtime/slots"

    .line 71
    .line 72
    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "a"

    .line 76
    .line 77
    const-string v3, "b"

    .line 78
    .line 79
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/jp/bootstrap/internal/zatkzfy;->cdsesehahek([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_1

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    array-length v4, v3

    .line 121
    move v5, v2

    .line 122
    :goto_1
    if-ge v5, v4, :cond_1

    .line 123
    .line 124
    aget-object v6, v3, v5

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_3

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_3

    .line 141
    .line 142
    new-instance v7, Lcom/jp/bootstrap/internal/laxkr;

    .line 143
    .line 144
    sget-object v8, Lcom/jp/bootstrap/internal/dnvukzhe;->tsodtn:Lcom/jp/bootstrap/internal/dnvukzhe;

    .line 145
    .line 146
    invoke-direct {v7, v6, v8}, Lcom/jp/bootstrap/internal/laxkr;-><init>(Ljava/io/File;Lcom/jp/bootstrap/internal/dnvukzhe;)V

    .line 147
    .line 148
    .line 149
    new-instance v8, Lcom/jp/bootstrap/internal/hlxdswnz;

    .line 150
    .line 151
    invoke-direct {v8, v7}, Lcom/jp/bootstrap/internal/hlxdswnz;-><init>(Lcom/jp/bootstrap/internal/laxkr;)V

    .line 152
    .line 153
    .line 154
    :catchall_0
    :goto_2
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/syoolsrjr;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_2

    .line 159
    .line 160
    invoke-virtual {v8}, Lcom/jp/bootstrap/internal/syoolsrjr;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Ljava/io/File;

    .line 165
    .line 166
    const/4 v9, 0x1

    .line 167
    :try_start_0
    invoke-virtual {v7, v9, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    invoke-static {v6}, Lcom/jp/bootstrap/internal/rprgdu;->hwrol(Ljava/io/File;)Z

    .line 172
    .line 173
    .line 174
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    new-instance v0, Ljava/io/File;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string v1, "web-runtime/health"

    .line 184
    .line 185
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    if-eqz p0, :cond_6

    .line 193
    .line 194
    array-length v0, p0

    .line 195
    move v1, v2

    .line 196
    :goto_3
    if-ge v1, v0, :cond_6

    .line 197
    .line 198
    aget-object v3, p0, v1

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const-string v5, ".proof"

    .line 208
    .line 209
    invoke-static {v4, v5}, Lcom/jp/bootstrap/internal/gi0;->fohw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    if-eqz v6, :cond_5

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-static {v6, v5, v2}, Lcom/jp/bootstrap/internal/ni0;->punn(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_5

    .line 231
    .line 232
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    if-nez v4, :cond_5

    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 239
    .line 240
    .line 241
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    return-void
.end method

.method public sbmzsrkn(III)Lcom/jp/bootstrap/internal/yanxtrc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/kljszfbug;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/jp/bootstrap/internal/kljszfbug;->sbmzsrkn(III)Lcom/jp/bootstrap/internal/yanxtrc;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public sljpnfm(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/t3;->edtsi(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    invoke-static {v1, p1, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/jp/bootstrap/internal/zg0;

    .line 58
    .line 59
    iget v2, v1, Lcom/jp/bootstrap/internal/zg0;->sbmzsrkn:I

    .line 60
    .line 61
    if-ge v2, p1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    add-int/2addr v2, p2

    .line 65
    iput v2, v1, Lcom/jp/bootstrap/internal/zg0;->sbmzsrkn:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_2
    return-void
.end method

.method public syiqloeyp(Lcom/jp/bootstrap/internal/xpnlxgua;Landroid/os/Looper;Lcom/jp/bootstrap/internal/jrtn;Lcom/jp/bootstrap/internal/gbdhijx;)Lcom/jp/bootstrap/internal/ucokoof;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/jp/bootstrap/internal/xpnlxgua;->syiqloeyp:Lcom/jp/bootstrap/internal/yb;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/jp/bootstrap/internal/xpnlxgua;->cauva(Lcom/jp/bootstrap/internal/yb;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/jp/bootstrap/internal/ja0;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/jp/bootstrap/internal/la0;

    .line 14
    .line 15
    iget-wide p3, p1, Lcom/jp/bootstrap/internal/xpnlxgua;->cauva:J

    .line 16
    .line 17
    invoke-direct {p2, p0, p3, p4}, Lcom/jp/bootstrap/internal/ja0;-><init>(Lcom/jp/bootstrap/internal/la0;J)V

    .line 18
    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/jp/bootstrap/internal/pggbc;

    .line 24
    .line 25
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/jp/bootstrap/internal/pggbc;->syiqloeyp(Lcom/jp/bootstrap/internal/xpnlxgua;Landroid/os/Looper;Lcom/jp/bootstrap/internal/jrtn;Lcom/jp/bootstrap/internal/gbdhijx;)Lcom/jp/bootstrap/internal/ucokoof;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public tckmliv([BIILcom/jp/bootstrap/internal/nj0;Lcom/jp/bootstrap/internal/lgazazpa;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/jp/bootstrap/internal/wp;

    .line 8
    .line 9
    add-int v3, v1, p3

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/jp/bootstrap/internal/wp;->gfcrkryqbn(I[B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {v2}, Lcom/jp/bootstrap/internal/mz0;->cauva(Lcom/jp/bootstrap/internal/wp;)V
    :try_end_0
    .catch Lcom/jp/bootstrap/internal/yp; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 46
    const/4 v5, -0x1

    .line 47
    move v7, v4

    .line 48
    move v6, v5

    .line 49
    :goto_2
    const/4 v9, 0x1

    .line 50
    const/4 v10, 0x2

    .line 51
    if-ne v6, v5, :cond_5

    .line 52
    .line 53
    iget v7, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 54
    .line 55
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 56
    .line 57
    invoke-virtual {v2, v6}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    move v6, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const-string v11, "STYLE"

    .line 66
    .line 67
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-eqz v11, :cond_3

    .line 72
    .line 73
    move v6, v10

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const-string v10, "NOTE"

    .line 76
    .line 77
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    move v6, v9

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v6, 0x3

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v2, v7}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 88
    .line 89
    .line 90
    if-eqz v6, :cond_3d

    .line 91
    .line 92
    if-ne v6, v9, :cond_6

    .line 93
    .line 94
    :goto_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 95
    .line 96
    invoke-virtual {v2, v4}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    const/4 v7, 0x0

    .line 108
    if-ne v6, v10, :cond_38

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_37

    .line 115
    .line 116
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-virtual {v2, v6}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    iget-object v6, v0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v6, Lcom/jp/bootstrap/internal/dz0;

    .line 124
    .line 125
    iget-object v11, v6, Lcom/jp/bootstrap/internal/dz0;->syiqloeyp:Lcom/jp/bootstrap/internal/wp;

    .line 126
    .line 127
    iget-object v6, v6, Lcom/jp/bootstrap/internal/dz0;->jzphcv:Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 130
    .line 131
    .line 132
    iget v12, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 133
    .line 134
    :goto_4
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    .line 136
    invoke-virtual {v2, v13}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    if-eqz v13, :cond_36

    .line 145
    .line 146
    iget-object v13, v2, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 147
    .line 148
    iget v14, v2, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 149
    .line 150
    invoke-virtual {v11, v14, v13}, Lcom/jp/bootstrap/internal/wp;->gfcrkryqbn(I[B)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11, v12}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 154
    .line 155
    .line 156
    new-instance v12, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    :goto_5
    invoke-static {v11}, Lcom/jp/bootstrap/internal/dz0;->jyozshuy(Lcom/jp/bootstrap/internal/wp;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11}, Lcom/jp/bootstrap/internal/wp;->syiqloeyp()I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    const-string v14, ""

    .line 169
    .line 170
    const-string v15, "{"

    .line 171
    .line 172
    const/4 v8, 0x5

    .line 173
    if-ge v13, v8, :cond_7

    .line 174
    .line 175
    :goto_6
    move-object v8, v7

    .line 176
    goto/16 :goto_a

    .line 177
    .line 178
    :cond_7
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 179
    .line 180
    invoke-virtual {v11, v8, v13}, Lcom/jp/bootstrap/internal/wp;->mhpayc(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    const-string v13, "::cue"

    .line 185
    .line 186
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    if-nez v8, :cond_8

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    iget v8, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 194
    .line 195
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    if-nez v13, :cond_9

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_9
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    if-eqz v16, :cond_a

    .line 207
    .line 208
    invoke-virtual {v11, v8}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 209
    .line 210
    .line 211
    move-object v8, v14

    .line 212
    goto :goto_a

    .line 213
    :cond_a
    const-string v8, "("

    .line 214
    .line 215
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_d

    .line 220
    .line 221
    iget v8, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 222
    .line 223
    iget v13, v11, Lcom/jp/bootstrap/internal/wp;->jyozshuy:I

    .line 224
    .line 225
    move/from16 v16, v4

    .line 226
    .line 227
    :goto_7
    if-ge v8, v13, :cond_c

    .line 228
    .line 229
    if-nez v16, :cond_c

    .line 230
    .line 231
    iget-object v10, v11, Lcom/jp/bootstrap/internal/wp;->syiqloeyp:[B

    .line 232
    .line 233
    add-int/lit8 v16, v8, 0x1

    .line 234
    .line 235
    aget-byte v8, v10, v8

    .line 236
    .line 237
    int-to-char v8, v8

    .line 238
    const/16 v10, 0x29

    .line 239
    .line 240
    if-ne v8, v10, :cond_b

    .line 241
    .line 242
    move v8, v9

    .line 243
    goto :goto_8

    .line 244
    :cond_b
    move v8, v4

    .line 245
    :goto_8
    move/from16 v10, v16

    .line 246
    .line 247
    move/from16 v16, v8

    .line 248
    .line 249
    move v8, v10

    .line 250
    const/4 v10, 0x2

    .line 251
    goto :goto_7

    .line 252
    :cond_c
    add-int/lit8 v8, v8, -0x1

    .line 253
    .line 254
    iget v10, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 255
    .line 256
    sub-int/2addr v8, v10

    .line 257
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 258
    .line 259
    invoke-virtual {v11, v8, v10}, Lcom/jp/bootstrap/internal/wp;->mhpayc(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    goto :goto_9

    .line 268
    :cond_d
    move-object v8, v7

    .line 269
    :goto_9
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    const-string v13, ")"

    .line 274
    .line 275
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    if-nez v10, :cond_e

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_e
    :goto_a
    if-eqz v8, :cond_34

    .line 283
    .line 284
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-nez v10, :cond_f

    .line 293
    .line 294
    goto/16 :goto_20

    .line 295
    .line 296
    :cond_f
    new-instance v10, Lcom/jp/bootstrap/internal/ez0;

    .line 297
    .line 298
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 299
    .line 300
    .line 301
    iput-object v14, v10, Lcom/jp/bootstrap/internal/ez0;->syiqloeyp:Ljava/lang/String;

    .line 302
    .line 303
    iput-object v14, v10, Lcom/jp/bootstrap/internal/ez0;->jzphcv:Ljava/lang/String;

    .line 304
    .line 305
    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 306
    .line 307
    iput-object v13, v10, Lcom/jp/bootstrap/internal/ez0;->jyozshuy:Ljava/util/Set;

    .line 308
    .line 309
    iput-object v14, v10, Lcom/jp/bootstrap/internal/ez0;->cauva:Ljava/lang/String;

    .line 310
    .line 311
    iput-object v7, v10, Lcom/jp/bootstrap/internal/ez0;->dhjfigsvwc:Ljava/lang/String;

    .line 312
    .line 313
    iput-boolean v4, v10, Lcom/jp/bootstrap/internal/ez0;->mhirrjin:Z

    .line 314
    .line 315
    iput-boolean v4, v10, Lcom/jp/bootstrap/internal/ez0;->yfqpbrvsm:Z

    .line 316
    .line 317
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->hqaldusn:I

    .line 318
    .line 319
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->gbcohonrle:I

    .line 320
    .line 321
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->sbmzsrkn:I

    .line 322
    .line 323
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->tsodtn:I

    .line 324
    .line 325
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->tckmliv:I

    .line 326
    .line 327
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->nvbyrnefqdi:I

    .line 328
    .line 329
    iput-boolean v4, v10, Lcom/jp/bootstrap/internal/ez0;->gtnruhk:Z

    .line 330
    .line 331
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-eqz v13, :cond_10

    .line 336
    .line 337
    goto :goto_d

    .line 338
    :cond_10
    const/16 v13, 0x5b

    .line 339
    .line 340
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    if-eq v13, v5, :cond_12

    .line 345
    .line 346
    sget-object v14, Lcom/jp/bootstrap/internal/dz0;->jyozshuy:Ljava/util/regex/Pattern;

    .line 347
    .line 348
    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 353
    .line 354
    .line 355
    move-result-object v14

    .line 356
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 357
    .line 358
    .line 359
    move-result v15

    .line 360
    if-eqz v15, :cond_11

    .line 361
    .line 362
    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    iput-object v14, v10, Lcom/jp/bootstrap/internal/ez0;->cauva:Ljava/lang/String;

    .line 370
    .line 371
    :cond_11
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    :cond_12
    sget-object v13, Lcom/jp/bootstrap/internal/yt0;->syiqloeyp:Ljava/lang/String;

    .line 376
    .line 377
    const-string v13, "\\."

    .line 378
    .line 379
    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v8

    .line 383
    aget-object v13, v8, v4

    .line 384
    .line 385
    const/16 v14, 0x23

    .line 386
    .line 387
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 388
    .line 389
    .line 390
    move-result v14

    .line 391
    if-eq v14, v5, :cond_13

    .line 392
    .line 393
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    iput-object v15, v10, Lcom/jp/bootstrap/internal/ez0;->jzphcv:Ljava/lang/String;

    .line 398
    .line 399
    add-int/lit8 v14, v14, 0x1

    .line 400
    .line 401
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    iput-object v13, v10, Lcom/jp/bootstrap/internal/ez0;->syiqloeyp:Ljava/lang/String;

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :cond_13
    iput-object v13, v10, Lcom/jp/bootstrap/internal/ez0;->jzphcv:Ljava/lang/String;

    .line 409
    .line 410
    :goto_b
    array-length v13, v8

    .line 411
    if-le v13, v9, :cond_15

    .line 412
    .line 413
    array-length v13, v8

    .line 414
    array-length v14, v8

    .line 415
    if-gt v13, v14, :cond_14

    .line 416
    .line 417
    move v14, v9

    .line 418
    goto :goto_c

    .line 419
    :cond_14
    move v14, v4

    .line 420
    :goto_c
    invoke-static {v14}, Lcom/jp/bootstrap/internal/hf;->uaakwbmitdl(Z)V

    .line 421
    .line 422
    .line 423
    invoke-static {v8, v9, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    check-cast v8, [Ljava/lang/String;

    .line 428
    .line 429
    new-instance v13, Ljava/util/HashSet;

    .line 430
    .line 431
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    invoke-direct {v13, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 436
    .line 437
    .line 438
    iput-object v13, v10, Lcom/jp/bootstrap/internal/ez0;->jyozshuy:Ljava/util/Set;

    .line 439
    .line 440
    :cond_15
    :goto_d
    move v8, v4

    .line 441
    move-object v13, v7

    .line 442
    :goto_e
    const-string v14, "}"

    .line 443
    .line 444
    if-nez v8, :cond_32

    .line 445
    .line 446
    iget v8, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 447
    .line 448
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    if-eqz v13, :cond_17

    .line 453
    .line 454
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v15

    .line 458
    if-eqz v15, :cond_16

    .line 459
    .line 460
    goto :goto_f

    .line 461
    :cond_16
    move v15, v4

    .line 462
    goto :goto_10

    .line 463
    :cond_17
    :goto_f
    move v15, v9

    .line 464
    :goto_10
    if-nez v15, :cond_31

    .line 465
    .line 466
    invoke-virtual {v11, v8}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 467
    .line 468
    .line 469
    invoke-static {v11}, Lcom/jp/bootstrap/internal/dz0;->jyozshuy(Lcom/jp/bootstrap/internal/wp;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->syiqloeyp(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v8

    .line 476
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 477
    .line 478
    .line 479
    move-result v16

    .line 480
    if-eqz v16, :cond_18

    .line 481
    .line 482
    goto/16 :goto_1d

    .line 483
    .line 484
    :cond_18
    const-string v4, ":"

    .line 485
    .line 486
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v4

    .line 494
    if-nez v4, :cond_19

    .line 495
    .line 496
    goto/16 :goto_1d

    .line 497
    .line 498
    :cond_19
    invoke-static {v11}, Lcom/jp/bootstrap/internal/dz0;->jyozshuy(Lcom/jp/bootstrap/internal/wp;)V

    .line 499
    .line 500
    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    const/4 v5, 0x0

    .line 507
    :goto_11
    const-string v7, ";"

    .line 508
    .line 509
    if-nez v5, :cond_1d

    .line 510
    .line 511
    iget v9, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 512
    .line 513
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    if-nez v0, :cond_1a

    .line 518
    .line 519
    const/4 v0, 0x0

    .line 520
    goto :goto_14

    .line 521
    :cond_1a
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v17

    .line 525
    if-nez v17, :cond_1c

    .line 526
    .line 527
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v7

    .line 531
    if-eqz v7, :cond_1b

    .line 532
    .line 533
    goto :goto_13

    .line 534
    :cond_1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    :goto_12
    move-object/from16 v0, p0

    .line 538
    .line 539
    const/4 v9, 0x1

    .line 540
    goto :goto_11

    .line 541
    :cond_1c
    :goto_13
    invoke-virtual {v11, v9}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 542
    .line 543
    .line 544
    const/4 v5, 0x1

    .line 545
    goto :goto_12

    .line 546
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    :goto_14
    if-eqz v0, :cond_1e

    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 553
    .line 554
    .line 555
    move-result v4

    .line 556
    if-eqz v4, :cond_1f

    .line 557
    .line 558
    :cond_1e
    :goto_15
    const/4 v0, 0x1

    .line 559
    goto/16 :goto_1e

    .line 560
    .line 561
    :cond_1f
    iget v4, v11, Lcom/jp/bootstrap/internal/wp;->jzphcv:I

    .line 562
    .line 563
    invoke-static {v11, v6}, Lcom/jp/bootstrap/internal/dz0;->jzphcv(Lcom/jp/bootstrap/internal/wp;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    if-eqz v7, :cond_20

    .line 572
    .line 573
    goto :goto_16

    .line 574
    :cond_20
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    if-eqz v5, :cond_1e

    .line 579
    .line 580
    invoke-virtual {v11, v4}, Lcom/jp/bootstrap/internal/wp;->punn(I)V

    .line 581
    .line 582
    .line 583
    :goto_16
    const-string v4, "color"

    .line 584
    .line 585
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v4

    .line 589
    if-eqz v4, :cond_21

    .line 590
    .line 591
    const/4 v4, 0x1

    .line 592
    invoke-static {v0, v4}, Lcom/jp/bootstrap/internal/txxob;->syiqloeyp(Ljava/lang/String;Z)I

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    iput v0, v10, Lcom/jp/bootstrap/internal/ez0;->uaakwbmitdl:I

    .line 597
    .line 598
    iput-boolean v4, v10, Lcom/jp/bootstrap/internal/ez0;->mhirrjin:Z

    .line 599
    .line 600
    goto/16 :goto_19

    .line 601
    .line 602
    :cond_21
    const/4 v4, 0x1

    .line 603
    const-string v5, "background-color"

    .line 604
    .line 605
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-eqz v5, :cond_22

    .line 610
    .line 611
    invoke-static {v0, v4}, Lcom/jp/bootstrap/internal/txxob;->syiqloeyp(Ljava/lang/String;Z)I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    iput v0, v10, Lcom/jp/bootstrap/internal/ez0;->yndsdvj:I

    .line 616
    .line 617
    iput-boolean v4, v10, Lcom/jp/bootstrap/internal/ez0;->yfqpbrvsm:Z

    .line 618
    .line 619
    goto/16 :goto_19

    .line 620
    .line 621
    :cond_22
    const-string v5, "ruby-position"

    .line 622
    .line 623
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    if-eqz v5, :cond_24

    .line 628
    .line 629
    const-string v5, "over"

    .line 630
    .line 631
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-eqz v5, :cond_23

    .line 636
    .line 637
    iput v4, v10, Lcom/jp/bootstrap/internal/ez0;->nvbyrnefqdi:I

    .line 638
    .line 639
    goto/16 :goto_19

    .line 640
    .line 641
    :cond_23
    const-string v4, "under"

    .line 642
    .line 643
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    if-eqz v0, :cond_1e

    .line 648
    .line 649
    const/4 v0, 0x2

    .line 650
    iput v0, v10, Lcom/jp/bootstrap/internal/ez0;->nvbyrnefqdi:I

    .line 651
    .line 652
    move v5, v0

    .line 653
    const/4 v0, 0x1

    .line 654
    goto/16 :goto_1f

    .line 655
    .line 656
    :cond_24
    const-string v4, "text-combine-upright"

    .line 657
    .line 658
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-eqz v4, :cond_27

    .line 663
    .line 664
    const-string v4, "all"

    .line 665
    .line 666
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    move-result v4

    .line 670
    if-nez v4, :cond_26

    .line 671
    .line 672
    const-string v4, "digits"

    .line 673
    .line 674
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_25

    .line 679
    .line 680
    goto :goto_17

    .line 681
    :cond_25
    const/4 v0, 0x0

    .line 682
    goto :goto_18

    .line 683
    :cond_26
    :goto_17
    const/4 v0, 0x1

    .line 684
    :goto_18
    iput-boolean v0, v10, Lcom/jp/bootstrap/internal/ez0;->gtnruhk:Z

    .line 685
    .line 686
    goto/16 :goto_15

    .line 687
    .line 688
    :cond_27
    const-string v4, "text-decoration"

    .line 689
    .line 690
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    if-eqz v4, :cond_28

    .line 695
    .line 696
    const-string v4, "underline"

    .line 697
    .line 698
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_1e

    .line 703
    .line 704
    const/4 v4, 0x1

    .line 705
    iput v4, v10, Lcom/jp/bootstrap/internal/ez0;->gbcohonrle:I

    .line 706
    .line 707
    goto :goto_19

    .line 708
    :cond_28
    const-string v4, "font-family"

    .line 709
    .line 710
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v4

    .line 714
    if-eqz v4, :cond_29

    .line 715
    .line 716
    invoke-static {v0}, Lcom/jp/bootstrap/internal/yeobakmape;->ealgnqalat(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    iput-object v0, v10, Lcom/jp/bootstrap/internal/ez0;->dhjfigsvwc:Ljava/lang/String;

    .line 721
    .line 722
    goto/16 :goto_15

    .line 723
    .line 724
    :cond_29
    const-string v4, "font-weight"

    .line 725
    .line 726
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result v4

    .line 730
    if-eqz v4, :cond_2a

    .line 731
    .line 732
    const-string v4, "bold"

    .line 733
    .line 734
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_1e

    .line 739
    .line 740
    const/4 v4, 0x1

    .line 741
    iput v4, v10, Lcom/jp/bootstrap/internal/ez0;->sbmzsrkn:I

    .line 742
    .line 743
    goto :goto_19

    .line 744
    :cond_2a
    const/4 v4, 0x1

    .line 745
    const-string v5, "font-style"

    .line 746
    .line 747
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v5

    .line 751
    if-eqz v5, :cond_2c

    .line 752
    .line 753
    const-string v5, "italic"

    .line 754
    .line 755
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    if-eqz v0, :cond_2b

    .line 760
    .line 761
    iput v4, v10, Lcom/jp/bootstrap/internal/ez0;->tsodtn:I

    .line 762
    .line 763
    :cond_2b
    :goto_19
    move v0, v4

    .line 764
    goto/16 :goto_1e

    .line 765
    .line 766
    :cond_2c
    const-string v4, "font-size"

    .line 767
    .line 768
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    if-eqz v4, :cond_1e

    .line 773
    .line 774
    sget-object v4, Lcom/jp/bootstrap/internal/dz0;->cauva:Ljava/util/regex/Pattern;

    .line 775
    .line 776
    invoke-static {v0}, Lcom/jp/bootstrap/internal/yeobakmape;->ealgnqalat(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v5

    .line 780
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    if-nez v5, :cond_2d

    .line 789
    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    .line 791
    .line 792
    const-string v5, "Invalid font-size: \'"

    .line 793
    .line 794
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    const-string v0, "\'."

    .line 801
    .line 802
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    const-string v4, "WebvttCssParser"

    .line 810
    .line 811
    invoke-static {v4, v0}, Lcom/jp/bootstrap/internal/sm;->gbursjlv(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    goto/16 :goto_15

    .line 815
    .line 816
    :cond_2d
    const/4 v0, 0x2

    .line 817
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 825
    .line 826
    .line 827
    move-result v0

    .line 828
    sparse-switch v0, :sswitch_data_0

    .line 829
    .line 830
    .line 831
    :goto_1a
    const/4 v0, -0x1

    .line 832
    goto :goto_1b

    .line 833
    :sswitch_0
    const-string v0, "px"

    .line 834
    .line 835
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-nez v0, :cond_2e

    .line 840
    .line 841
    goto :goto_1a

    .line 842
    :cond_2e
    const/4 v0, 0x2

    .line 843
    goto :goto_1b

    .line 844
    :sswitch_1
    const-string v0, "em"

    .line 845
    .line 846
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    if-nez v0, :cond_2f

    .line 851
    .line 852
    goto :goto_1a

    .line 853
    :cond_2f
    const/4 v0, 0x1

    .line 854
    goto :goto_1b

    .line 855
    :sswitch_2
    const-string v0, "%"

    .line 856
    .line 857
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-nez v0, :cond_30

    .line 862
    .line 863
    goto :goto_1a

    .line 864
    :cond_30
    const/4 v0, 0x0

    .line 865
    :goto_1b
    packed-switch v0, :pswitch_data_0

    .line 866
    .line 867
    .line 868
    invoke-static {}, Lcom/jp/bootstrap/internal/vt0;->jzphcv()V

    .line 869
    .line 870
    .line 871
    return-void

    .line 872
    :pswitch_0
    const/4 v0, 0x1

    .line 873
    iput v0, v10, Lcom/jp/bootstrap/internal/ez0;->tckmliv:I

    .line 874
    .line 875
    const/4 v5, 0x2

    .line 876
    goto :goto_1c

    .line 877
    :pswitch_1
    const/4 v0, 0x1

    .line 878
    const/4 v5, 0x2

    .line 879
    iput v5, v10, Lcom/jp/bootstrap/internal/ez0;->tckmliv:I

    .line 880
    .line 881
    goto :goto_1c

    .line 882
    :pswitch_2
    const/4 v0, 0x1

    .line 883
    const/4 v5, 0x2

    .line 884
    const/4 v7, 0x3

    .line 885
    iput v7, v10, Lcom/jp/bootstrap/internal/ez0;->tckmliv:I

    .line 886
    .line 887
    :goto_1c
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v4

    .line 891
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 892
    .line 893
    .line 894
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 895
    .line 896
    .line 897
    move-result v4

    .line 898
    iput v4, v10, Lcom/jp/bootstrap/internal/ez0;->wyjqgzdhz:F

    .line 899
    .line 900
    goto :goto_1f

    .line 901
    :cond_31
    :goto_1d
    move v0, v9

    .line 902
    :goto_1e
    const/4 v5, 0x2

    .line 903
    :goto_1f
    move v9, v0

    .line 904
    move v8, v15

    .line 905
    const/4 v4, 0x0

    .line 906
    const/4 v5, -0x1

    .line 907
    const/4 v7, 0x0

    .line 908
    move-object/from16 v0, p0

    .line 909
    .line 910
    goto/16 :goto_e

    .line 911
    .line 912
    :cond_32
    move v0, v9

    .line 913
    const/4 v5, 0x2

    .line 914
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    move-result v4

    .line 918
    if-eqz v4, :cond_33

    .line 919
    .line 920
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    :cond_33
    move v9, v0

    .line 924
    move v10, v5

    .line 925
    const/4 v4, 0x0

    .line 926
    const/4 v5, -0x1

    .line 927
    const/4 v7, 0x0

    .line 928
    move-object/from16 v0, p0

    .line 929
    .line 930
    goto/16 :goto_5

    .line 931
    .line 932
    :cond_34
    :goto_20
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 933
    .line 934
    .line 935
    :cond_35
    :goto_21
    move-object/from16 v0, p0

    .line 936
    .line 937
    goto/16 :goto_1

    .line 938
    .line 939
    :cond_36
    move-object/from16 v0, p0

    .line 940
    .line 941
    goto/16 :goto_4

    .line 942
    .line 943
    :cond_37
    const-string v0, "A style block was found after the first cue."

    .line 944
    .line 945
    invoke-static {v0}, Lcom/jp/bootstrap/internal/tdeblwh;->uaakwbmitdl(Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    return-void

    .line 949
    :cond_38
    const/4 v7, 0x3

    .line 950
    if-ne v6, v7, :cond_35

    .line 951
    .line 952
    sget-object v0, Lcom/jp/bootstrap/internal/kz0;->syiqloeyp:Ljava/util/regex/Pattern;

    .line 953
    .line 954
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 955
    .line 956
    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    if-nez v4, :cond_39

    .line 961
    .line 962
    const/4 v7, 0x0

    .line 963
    goto :goto_22

    .line 964
    :cond_39
    sget-object v5, Lcom/jp/bootstrap/internal/kz0;->syiqloeyp:Ljava/util/regex/Pattern;

    .line 965
    .line 966
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 967
    .line 968
    .line 969
    move-result-object v6

    .line 970
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 971
    .line 972
    .line 973
    move-result v7

    .line 974
    if-eqz v7, :cond_3a

    .line 975
    .line 976
    const/4 v7, 0x0

    .line 977
    invoke-static {v7, v6, v2, v1}, Lcom/jp/bootstrap/internal/kz0;->cauva(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/jp/bootstrap/internal/wp;Ljava/util/ArrayList;)Lcom/jp/bootstrap/internal/fz0;

    .line 978
    .line 979
    .line 980
    move-result-object v7

    .line 981
    goto :goto_22

    .line 982
    :cond_3a
    const/4 v7, 0x0

    .line 983
    invoke-virtual {v2, v0}, Lcom/jp/bootstrap/internal/wp;->tckmliv(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    if-nez v0, :cond_3b

    .line 988
    .line 989
    goto :goto_22

    .line 990
    :cond_3b
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 995
    .line 996
    .line 997
    move-result v5

    .line 998
    if-eqz v5, :cond_3c

    .line 999
    .line 1000
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v4

    .line 1004
    invoke-static {v4, v0, v2, v1}, Lcom/jp/bootstrap/internal/kz0;->cauva(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/jp/bootstrap/internal/wp;Ljava/util/ArrayList;)Lcom/jp/bootstrap/internal/fz0;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v7

    .line 1008
    :cond_3c
    :goto_22
    if-eqz v7, :cond_35

    .line 1009
    .line 1010
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    goto :goto_21

    .line 1014
    :cond_3d
    new-instance v0, Lcom/jp/bootstrap/internal/zzgzbmdwfi;

    .line 1015
    .line 1016
    invoke-direct {v0, v3}, Lcom/jp/bootstrap/internal/zzgzbmdwfi;-><init>(Ljava/util/ArrayList;)V

    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v1, p4

    .line 1020
    .line 1021
    move-object/from16 v2, p5

    .line 1022
    .line 1023
    invoke-static {v0, v1, v2}, Lcom/jp/bootstrap/internal/pobbkg;->ealgnqalat(Lcom/jp/bootstrap/internal/gj0;Lcom/jp/bootstrap/internal/nj0;Lcom/jp/bootstrap/internal/lgazazpa;)V

    .line 1024
    .line 1025
    .line 1026
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1029
    .line 1030
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 1031
    .line 1032
    .line 1033
    throw v1

    .line 1034
    nop

    .line 1035
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tscplbdu(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "web-runtime/health/"

    .line 12
    .line 13
    const-string v2, ".proof"

    .line 14
    .line 15
    invoke-static {v1, p1, v2}, Lcom/jp/bootstrap/internal/pzmovkl;->gbcohonrle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public tsodtn(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/jp/bootstrap/internal/lojpa;->edtsi(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public uaakwbmitdl(Lcom/jp/bootstrap/internal/z50;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/tkwlkffmbu;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lcom/jp/bootstrap/internal/tkwlkffmbu;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public vzds()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/qk0;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/jp/bootstrap/internal/qk0;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    return-object p0
.end method

.method public wyjqgzdhz(Landroid/opengl/EGLDisplay;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/opengl/EGLContext;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/jp/bootstrap/internal/lojpa;->sljpnfm(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public xizmfgbpnv(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    add-int v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/jp/bootstrap/internal/t3;->edtsi(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, [I

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    sub-int/2addr v2, p1

    .line 22
    sub-int/2addr v2, p2

    .line 23
    invoke-static {v1, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, [I

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    sub-int/2addr v2, p2

    .line 32
    array-length v3, v1

    .line 33
    const/4 v4, -0x1

    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v1, :cond_4

    .line 51
    .line 52
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/jp/bootstrap/internal/zg0;

    .line 61
    .line 62
    iget v3, v2, Lcom/jp/bootstrap/internal/zg0;->sbmzsrkn:I

    .line 63
    .line 64
    if-ge v3, p1, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    if-ge v3, v0, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    sub-int/2addr v3, p2

    .line 78
    iput v3, v2, Lcom/jp/bootstrap/internal/zg0;->sbmzsrkn:I

    .line 79
    .line 80
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    return-void
.end method

.method public ydkpabz(FLcom/jp/bootstrap/internal/yacq;Lcom/jp/bootstrap/internal/ssbfcea;)V
    .locals 6

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lcom/jp/bootstrap/internal/yacq;->edtsi(F)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    cmpg-float p2, p1, p2

    .line 8
    .line 9
    if-gtz p2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/jp/bootstrap/internal/fj;->yndsdvj()Lcom/jp/bootstrap/internal/ge0;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/jp/bootstrap/internal/ge0;->dhjfigsvwc()Lcom/jp/bootstrap/internal/iiazsdqcp;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v0

    .line 25
    :goto_0
    invoke-static {p2}, Lcom/jp/bootstrap/internal/fj;->tsodtn(Lcom/jp/bootstrap/internal/ge0;)Lcom/jp/bootstrap/internal/ge0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lcom/jp/bootstrap/internal/itipisgoc;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/jp/bootstrap/internal/itipisgoc;->tsodtn:Lcom/jp/bootstrap/internal/up;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/jp/bootstrap/internal/up;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lcom/jp/bootstrap/internal/bh0;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Lcom/jp/bootstrap/internal/hivneffza;->jyozshuy(Ljava/util/concurrent/CancellationException;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lcom/jp/bootstrap/internal/itipisgoc;

    .line 60
    .line 61
    iget-boolean v5, v4, Lcom/jp/bootstrap/internal/itipisgoc;->gtnruhk:Z

    .line 62
    .line 63
    if-eqz v5, :cond_3

    .line 64
    .line 65
    sub-float/2addr v3, p1

    .line 66
    invoke-static {v4, v3}, Lcom/jp/bootstrap/internal/e21;->gtnruhk(Lcom/jp/bootstrap/internal/itipisgoc;F)Lcom/jp/bootstrap/internal/itipisgoc;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance v3, Lcom/jp/bootstrap/internal/itipisgoc;

    .line 74
    .line 75
    sget-object v4, Lcom/jp/bootstrap/internal/yr0;->uaakwbmitdl:Lcom/jp/bootstrap/internal/t3;

    .line 76
    .line 77
    neg-float p1, p1

    .line 78
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/16 v5, 0x3c

    .line 83
    .line 84
    invoke-direct {v3, v4, p1, v0, v5}, Lcom/jp/bootstrap/internal/itipisgoc;-><init>(Lcom/jp/bootstrap/internal/t3;Ljava/lang/Object;Lcom/jp/bootstrap/internal/kmstupatsly;I)V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 88
    .line 89
    :goto_2
    new-instance p1, Lcom/jp/bootstrap/internal/qlqfhxrb;

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    invoke-direct {p1, p0, v0, v3}, Lcom/jp/bootstrap/internal/qlqfhxrb;-><init>(Ljava/lang/Object;Lcom/jp/bootstrap/internal/ffbjuiar;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p3, v0, p1, v3}, Lcom/jp/bootstrap/internal/pobbkg;->edtsi(Lcom/jp/bootstrap/internal/ssbfcea;Lcom/jp/bootstrap/internal/rpdfws;Lcom/jp/bootstrap/internal/tkwlkffmbu;I)Lcom/jp/bootstrap/internal/bh0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    invoke-static {p2, v2, v1}, Lcom/jp/bootstrap/internal/fj;->jisccnqwqm(Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_3
    invoke-static {p2, v2, v1}, Lcom/jp/bootstrap/internal/fj;->jisccnqwqm(Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/ge0;Lcom/jp/bootstrap/internal/iiazsdqcp;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public yfqpbrvsm()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/jp/bootstrap/internal/wp;

    .line 4
    .line 5
    sget-object v0, Lcom/jp/bootstrap/internal/yt0;->jzphcv:[B

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/jp/bootstrap/internal/wp;->gfcrkryqbn(I[B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public yndsdvj(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/jp/bootstrap/internal/bo;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/jp/bootstrap/internal/bo;->yndsdvj(Ljava/lang/Integer;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/jp/bootstrap/internal/ae0;

    .line 13
    .line 14
    iget v1, p0, Lcom/jp/bootstrap/internal/ae0;->bmucqf:I

    .line 15
    .line 16
    if-gez v1, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/jp/bootstrap/internal/ae0;->jzphcv:[I

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Lcom/jp/bootstrap/internal/ae0;->wigtqdo(I[I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {p0, p1, v1, v2}, Lcom/jp/bootstrap/internal/e21;->yndsdvj(Lcom/jp/bootstrap/internal/ae0;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/ckrjnnwzfr;->ikrjsube(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public zfrfwjkgqw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jp/bootstrap/internal/t3;->sbmzsrkn:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/jp/bootstrap/internal/t3;->tsodtn:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method
