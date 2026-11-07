.class public final Lcom/jp/bootstrap/JpApplication;
.super Landroid/app/Application;
.source "r8-map-id-e2c948da8cef829a8a7351fc595b2c74a92e9c071095d1abd1675fb39b2dc7d9"


# instance fields
.field public sbmzsrkn:Lcom/jp/release/ReleaseSlotStore;

.field public tsodtn:Lcom/jp/bootstrap/internal/h50;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/jp/bootstrap/JpHostServices;->INSTANCE:Lcom/jp/bootstrap/JpHostServices;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/jp/bootstrap/JpHostServices;->bind(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/jp/bootstrap/internal/ly0;

    .line 10
    .line 11
    const/16 v1, 0x1d

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/jp/bootstrap/internal/ly0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/tencent/shadow/core/common/LoggerFactory;->setILoggerFactory(Lcom/tencent/shadow/core/common/ILoggerFactory;)V

    .line 17
    .line 18
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/16 v2, 0x1c

    .line 23
    .line 24
    if-lt v0, v2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v0, "activity"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v0, Landroid/app/ActivityManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v4, v3

    .line 66
    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 67
    .line 68
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 69
    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-ne v4, v5, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v3, v1

    .line 78
    :goto_0
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    :goto_1
    const-string v3, ":plugin"

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    invoke-static {v0, v3, v4}, Lcom/jp/bootstrap/internal/ni0;->punn(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    if-lt v3, v2, :cond_4

    .line 106
    .line 107
    :try_start_0
    const-string v2, "plugin"

    .line 108
    .line 109
    invoke-static {v2}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object v2, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v2

    .line 116
    new-instance v3, Lcom/jp/bootstrap/internal/y20;

    .line 117
    .line 118
    invoke-direct {v3, v2}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    move-object v2, v3

    .line 122
    :goto_2
    invoke-static {v2}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    const-string v3, "JpBootstrap"

    .line 129
    .line 130
    const-string v5, "WebView data suffix unavailable"

    .line 131
    .line 132
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    :cond_4
    const-string v2, "jp-runtime-process-control"

    .line 136
    .line 137
    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string v3, "skip-recovery-uuid"

    .line 142
    .line 143
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "skip-recovery-uuid"

    .line 154
    .line 155
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_6

    .line 164
    .line 165
    const-string v2, "JpBootstrap"

    .line 166
    .line 167
    const-string v3, "Unable to clear skip-recovery flag"

    .line 168
    .line 169
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_5
    :try_start_1
    # Frozen TV build: never recover downloaded plugin code.
    const/4 v2, 0x0

    .line 177
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    .line 179
    .line 180
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    goto :goto_3

    .line 182
    :catchall_1
    move-exception v2

    .line 183
    new-instance v3, Lcom/jp/bootstrap/internal/y20;

    .line 184
    .line 185
    invoke-direct {v3, v2}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 186
    .line 187
    .line 188
    move-object v2, v3

    .line 189
    :goto_3
    invoke-static {v2}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    const-string v3, "JpBootstrap"

    .line 196
    .line 197
    const-string v5, "Shadow runtime recovery failed; Host will reload"

    .line 198
    .line 199
    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    :cond_6
    :goto_4
    new-instance v2, Lcom/jp/release/ReleaseSlotStore;

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    const-string v5, "runtime-releases"

    .line 212
    .line 213
    invoke-static {v3, v5}, Lcom/jp/bootstrap/internal/rprgdu;->vbvia(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    const/4 v5, 0x2

    .line 218
    invoke-direct {v2, v3, v1, v5, v1}, Lcom/jp/release/ReleaseSlotStore;-><init>(Ljava/io/File;Lcom/jp/release/AtomicFileSystem;ILcom/jp/bootstrap/internal/hjiaf;)V

    .line 219
    .line 220
    .line 221
    iput-object v2, p0, Lcom/jp/bootstrap/JpApplication;->sbmzsrkn:Lcom/jp/release/ReleaseSlotStore;

    .line 222
    .line 223
    const-string v2, "6a9a96457431916083fa5489"

    .line 224
    .line 225
    const-string v3, "jp-active-runtime-settings"

    .line 226
    .line 227
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    const-string v5, "settings"

    .line 232
    .line 233
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v3}, Lcom/jp/bootstrap/internal/mi;->sbmzsrkn(Ljava/lang/String;)Lcom/jp/bootstrap/internal/a50;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    const/4 v5, 0x1

    .line 242
    if-eqz v3, :cond_7

    .line 243
    .line 244
    iget-object v3, v3, Lcom/jp/bootstrap/internal/a50;->jzphcv:Lcom/jp/bootstrap/internal/p40;

    .line 245
    .line 246
    if-nez v3, :cond_8

    .line 247
    .line 248
    :cond_7
    new-instance v3, Lcom/jp/bootstrap/internal/p40;

    .line 249
    .line 250
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    xor-int/2addr v6, v5

    .line 255
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->vbvia(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    const-string v7, "JP"

    .line 264
    .line 265
    invoke-direct {v3, v2, v7, v6}, Lcom/jp/bootstrap/internal/p40;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    :cond_8
    iget-object v2, v3, Lcom/jp/bootstrap/internal/p40;->jzphcv:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_9

    .line 285
    .line 286
    invoke-static {v2}, Lcom/jp/bootstrap/internal/gi0;->eazl(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_9

    .line 291
    .line 292
    invoke-static {p0}, Lcom/jp/bootstrap/internal/vs0;->jzphcv(Landroid/app/Application;)V

    .line 293
    .line 294
    .line 295
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    const-string v3, ":plugin"

    .line 303
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_b

    .line 313
    .line 314
    sget-object v2, Lcom/jp/bootstrap/internal/xs0;->syiqloeyp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 315
    .line 316
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-nez v2, :cond_a

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_a
    new-instance v2, Lcom/jp/bootstrap/internal/ws0;

    .line 324
    .line 325
    invoke-direct {v2, p0}, Lcom/jp/bootstrap/internal/ws0;-><init>(Lcom/jp/bootstrap/JpApplication;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 329
    .line 330
    .line 331
    :cond_b
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_13

    .line 340
    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const v2, 0x7f110061

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    const-string v2, "f63b8167af30203717629b465a144835b04cdce9174ddb715ca11eac799bae8c"

    .line 353
    .line 354
    invoke-static {v0, v2}, Lcom/jp/bootstrap/internal/yeobakmape;->dhjfigsvwc(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_12

    .line 359
    .line 360
    :try_start_2
    iget-object v0, p0, Lcom/jp/bootstrap/JpApplication;->sbmzsrkn:Lcom/jp/release/ReleaseSlotStore;

    .line 361
    .line 362
    if-eqz v0, :cond_c

    .line 363
    .line 364
    invoke-static {p0, v0}, Lcom/jp/bootstrap/internal/fj;->cauva(Lcom/jp/bootstrap/JpApplication;Lcom/jp/release/ReleaseSlotStore;)Lcom/jp/bootstrap/internal/h50;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    goto :goto_7

    .line 369
    :catchall_2
    move-exception v0

    .line 370
    goto :goto_6

    .line 371
    :cond_c
    const-string v0, "releaseSlots"

    .line 372
    .line 373
    invoke-static {v0}, Lcom/jp/bootstrap/internal/yeobakmape;->tscplbdu(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 377
    :goto_6
    new-instance v2, Lcom/jp/bootstrap/internal/y20;

    .line 378
    .line 379
    invoke-direct {v2, v0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    move-object v0, v2

    .line 383
    :goto_7
    invoke-static {v0}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    if-eqz v2, :cond_d

    .line 388
    .line 389
    const-string v3, "JpBootstrap"

    .line 390
    .line 391
    const-string v6, "Runtime update initialization failed"

    .line 392
    .line 393
    invoke-static {v3, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .line 395
    .line 396
    :cond_d
    instance-of v2, v0, Lcom/jp/bootstrap/internal/y20;

    .line 397
    .line 398
    if-eqz v2, :cond_e

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_e
    move-object v1, v0

    .line 402
    :goto_8
    check-cast v1, Lcom/jp/bootstrap/internal/h50;

    .line 403
    .line 404
    iput-object v1, p0, Lcom/jp/bootstrap/JpApplication;->tsodtn:Lcom/jp/bootstrap/internal/h50;

    .line 405
    .line 406
    if-eqz v1, :cond_13

    .line 407
    .line 408
    iget-object p0, v1, Lcom/jp/bootstrap/internal/h50;->yndsdvj:Ljava/util/concurrent/ScheduledExecutorService;

    .line 409
    .line 410
    new-instance v0, Lcom/jp/bootstrap/internal/d50;

    .line 411
    .line 412
    invoke-direct {v0, v1, v4}, Lcom/jp/bootstrap/internal/d50;-><init>(Lcom/jp/bootstrap/internal/h50;I)V

    .line 413
    .line 414
    .line 415
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 416
    .line 417
    .line 418
    const-wide/16 v2, 0xf

    .line 419
    .line 420
    invoke-virtual {v1, v2, v3}, Lcom/jp/bootstrap/internal/h50;->yndsdvj(J)V

    .line 421
    .line 422
    .line 423
    iget-object p0, v1, Lcom/jp/bootstrap/internal/h50;->hqaldusn:Ljava/lang/Object;

    .line 424
    .line 425
    monitor-enter p0

    .line 426
    :try_start_3
    iget-boolean v0, v1, Lcom/jp/bootstrap/internal/h50;->tckmliv:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 427
    .line 428
    if-eqz v0, :cond_10

    .line 429
    .line 430
    :cond_f
    :goto_9
    monitor-exit p0

    .line 431
    goto :goto_d

    .line 432
    :cond_10
    :try_start_4
    iget-object v0, v1, Lcom/jp/bootstrap/internal/h50;->gtnruhk:Landroid/net/ConnectivityManager;

    .line 433
    .line 434
    iget-object v2, v1, Lcom/jp/bootstrap/internal/h50;->ckyiuuu:Lcom/jp/bootstrap/internal/g50;

    .line 435
    .line 436
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 437
    .line 438
    .line 439
    sget-object v0, Lcom/jp/bootstrap/internal/bt0;->syiqloeyp:Lcom/jp/bootstrap/internal/bt0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 440
    .line 441
    goto :goto_a

    .line 442
    :catchall_3
    move-exception v0

    .line 443
    :try_start_5
    new-instance v2, Lcom/jp/bootstrap/internal/y20;

    .line 444
    .line 445
    invoke-direct {v2, v0}, Lcom/jp/bootstrap/internal/y20;-><init>(Ljava/lang/Throwable;)V

    .line 446
    .line 447
    .line 448
    move-object v0, v2

    .line 449
    :goto_a
    nop

    .line 450
    instance-of v2, v0, Lcom/jp/bootstrap/internal/y20;

    .line 451
    .line 452
    if-nez v2, :cond_11

    .line 453
    .line 454
    move-object v2, v0

    .line 455
    check-cast v2, Lcom/jp/bootstrap/internal/bt0;

    .line 456
    .line 457
    iput-boolean v5, v1, Lcom/jp/bootstrap/internal/h50;->tckmliv:Z

    .line 458
    .line 459
    goto :goto_b

    .line 460
    :catchall_4
    move-exception v0

    .line 461
    goto :goto_c

    .line 462
    :cond_11
    :goto_b
    invoke-static {v0}, Lcom/jp/bootstrap/internal/z20;->syiqloeyp(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    if-eqz v0, :cond_f

    .line 467
    .line 468
    const-string v1, "JpRuntimeUpdate"

    .line 469
    .line 470
    const-string v2, "Runtime network recovery callback unavailable"

    .line 471
    .line 472
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 473
    .line 474
    .line 475
    goto :goto_9

    .line 476
    :goto_c
    monitor-exit p0

    .line 477
    throw v0

    .line 478
    :cond_12
    const-string p0, "Check failed."

    .line 479
    .line 480
    invoke-static {p0}, Lcom/jp/bootstrap/internal/tdeblwh;->yfqpbrvsm(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :cond_13
    :goto_d
    return-void
.end method
