.class public final synthetic Lm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp1;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lm2;->r:I

    iput-object p2, p0, Lm2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lm2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final v()Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lm2;->r:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x4

    .line 5
    const/16 v3, 0xa

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Laz1;

    .line 16
    .line 17
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Ly54;

    .line 20
    .line 21
    new-instance v1, Lxq3;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Laz1;->c:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Lbz1;

    .line 30
    .line 31
    iget-object v7, v2, Lbz1;->D:Ljz1;

    .line 32
    .line 33
    monitor-enter v7

    .line 34
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    iget-object v0, v2, Lbz1;->x:Ly54;

    .line 36
    .line 37
    new-instance v8, Ly54;

    .line 38
    .line 39
    invoke-direct {v8}, Ly54;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move v9, v6

    .line 46
    :goto_0
    if-ge v9, v3, :cond_1

    .line 47
    .line 48
    shl-int v10, v4, v9

    .line 49
    .line 50
    iget v11, v0, Ly54;->v:I

    .line 51
    .line 52
    and-int/2addr v10, v11

    .line 53
    if-eqz v10, :cond_0

    .line 54
    .line 55
    iget-object v10, v0, Ly54;->e:[I

    .line 56
    .line 57
    aget v10, v10, v9

    .line 58
    .line 59
    invoke-virtual {v8, v9, v10}, Ly54;->e(II)V

    .line 60
    .line 61
    .line 62
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v9, v6

    .line 66
    :goto_1
    if-ge v9, v3, :cond_3

    .line 67
    .line 68
    shl-int v10, v4, v9

    .line 69
    .line 70
    iget v11, p0, Ly54;->v:I

    .line 71
    .line 72
    and-int/2addr v10, v11

    .line 73
    if-eqz v10, :cond_2

    .line 74
    .line 75
    iget-object v10, p0, Ly54;->e:[I

    .line 76
    .line 77
    aget v10, v10, v9

    .line 78
    .line 79
    invoke-virtual {v8, v9, v10}, Ly54;->e(II)V

    .line 80
    .line 81
    .line 82
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iput-object v8, v1, Lxq3;->r:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v8}, Ly54;->v()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    int-to-long v3, p0

    .line 92
    invoke-virtual {v0}, Ly54;->v()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    int-to-long v8, p0

    .line 97
    sub-long/2addr v3, v8

    .line 98
    const-wide/16 v8, 0x0

    .line 99
    .line 100
    cmp-long p0, v3, v8

    .line 101
    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    iget-object v0, v2, Lbz1;->a:Ljava/util/LinkedHashMap;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget-object v0, v2, Lbz1;->a:Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-array v5, v6, [Liz1;

    .line 120
    .line 121
    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    move-object v5, v0

    .line 126
    check-cast v5, [Liz1;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    move-object p0, v0

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    :goto_2
    iget-object v0, v1, Lxq3;->r:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Ly54;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iput-object v0, v2, Lbz1;->x:Ly54;

    .line 140
    .line 141
    iget-object v0, v2, Lbz1;->d:Lnm4;

    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v9, v2, Lbz1;->c:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v9, " onSettings"

    .line 154
    .line 155
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    new-instance v9, Lzy1;

    .line 163
    .line 164
    invoke-direct {v9, v6, v2, v1}, Lzy1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v8, v9}, Lnm4;->m(Lnm4;Ljava/lang/String;Lmp1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    iget-object v0, v2, Lbz1;->D:Ljz1;

    .line 172
    .line 173
    iget-object v1, v1, Lxq3;->r:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Ly54;

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljz1;->e(Ly54;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    move-object p0, v0

    .line 183
    goto :goto_6

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_4
    sget-object v1, Lgc1;->h:Lgc1;

    .line 186
    .line 187
    invoke-virtual {v2, v1, v1, v0}, Lbz1;->e(Lgc1;Lgc1;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 188
    .line 189
    .line 190
    :goto_3
    monitor-exit v7

    .line 191
    if-eqz v5, :cond_7

    .line 192
    .line 193
    array-length v0, v5

    .line 194
    :goto_4
    if-ge v6, v0, :cond_7

    .line 195
    .line 196
    aget-object v1, v5, v6

    .line 197
    .line 198
    monitor-enter v1

    .line 199
    :try_start_5
    iget-wide v7, v1, Liz1;->g:J

    .line 200
    .line 201
    add-long/2addr v7, v3

    .line 202
    iput-wide v7, v1, Liz1;->g:J

    .line 203
    .line 204
    if-lez p0, :cond_6

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 207
    .line 208
    .line 209
    :cond_6
    monitor-exit v1

    .line 210
    add-int/lit8 v6, v6, 0x1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :catchall_2
    move-exception v0

    .line 214
    move-object p0, v0

    .line 215
    monitor-exit v1

    .line 216
    throw p0

    .line 217
    :cond_7
    sget-object p0, Loz4;->v:Loz4;

    .line 218
    .line 219
    return-object p0

    .line 220
    :goto_5
    :try_start_6
    monitor-exit v2

    .line 221
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 222
    :goto_6
    monitor-exit v7

    .line 223
    throw p0

    .line 224
    :pswitch_0
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 225
    .line 226
    move-object v1, v0

    .line 227
    check-cast v1, Lbz1;

    .line 228
    .line 229
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p0, Liz1;

    .line 232
    .line 233
    :try_start_7
    iget-object v0, v1, Lbz1;->r:Lxy1;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Lxy1;->m(Liz1;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :catch_1
    move-exception v0

    .line 240
    sget-object v3, Lhf3;->v:Lhf3;

    .line 241
    .line 242
    sget-object v3, Lhf3;->v:Lhf3;

    .line 243
    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v5, "Http2Connection.Listener failure for "

    .line 247
    .line 248
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v1, Lbz1;->c:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v3, v1, v2, v0}, Lhf3;->a(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    :try_start_8
    sget-object v1, Lgc1;->h:Lgc1;

    .line 264
    .line 265
    invoke-virtual {p0, v1, v0}, Liz1;->w(Lgc1;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 266
    .line 267
    .line 268
    :catch_2
    :goto_7
    sget-object p0, Loz4;->v:Loz4;

    .line 269
    .line 270
    return-object p0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Lxq3;

    .line 274
    .line 275
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p0, Lpl1;

    .line 278
    .line 279
    sget-object v1, Lbf3;->v:Lsj0;

    .line 280
    .line 281
    invoke-static {p0, v1}, Lfg5;->v(Lkj0;Lwm3;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    iput-object p0, v0, Lxq3;->r:Ljava/lang/Object;

    .line 286
    .line 287
    sget-object p0, Loz4;->v:Loz4;

    .line 288
    .line 289
    return-object p0

    .line 290
    :pswitch_2
    sget-object p0, Loz4;->v:Loz4;

    return-object p0

    .line 293
    .line 294
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast p0, Lmp1;

    .line 297
    .line 298
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const-string v2, "https://play.google.com/store/account/subscriptions?sku=premium_yearly&package="

    .line 303
    .line 304
    invoke-static {v2, v1}, Lae4;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    new-instance v2, Landroid/content/Intent;

    .line 309
    .line 310
    const-string v3, "android.intent.action.VIEW"

    .line 311
    .line 312
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {p0}, Lmp1;->v()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    sget-object p0, Loz4;->v:Loz4;

    .line 326
    .line 327
    return-object p0

    .line 328
    :pswitch_3
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Lp21;

    .line 331
    .line 332
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p0, Lyz2;

    .line 335
    .line 336
    invoke-virtual {v0, p0, v6}, Lp21;->p(Lyz2;Z)V

    .line 337
    .line 338
    .line 339
    sget-object p0, Loz4;->v:Loz4;

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_4
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, Lw11;

    .line 345
    .line 346
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p0, Ln11;

    .line 349
    .line 350
    check-cast p0, Ll11;

    .line 351
    .line 352
    iget-object p0, p0, Ll11;->v:La01;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Lw11;->n()Landroid/bluetooth/BluetoothAdapter;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-eqz v1, :cond_8

    .line 362
    .line 363
    iget-object p0, p0, La01;->a:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    if-eqz p0, :cond_8

    .line 370
    .line 371
    invoke-virtual {v0, p0}, Lw11;->p(Landroid/bluetooth/BluetoothDevice;)V

    .line 372
    .line 373
    .line 374
    :cond_8
    sget-object p0, Loz4;->v:Loz4;

    .line 375
    .line 376
    return-object p0

    .line 377
    :pswitch_5
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Ljava/lang/String;

    .line 380
    .line 381
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast p0, Lxp1;

    .line 384
    .line 385
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    if-eqz v1, :cond_9

    .line 390
    .line 391
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-eqz v0, :cond_9

    .line 396
    .line 397
    invoke-interface {p0, v0}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    :cond_9
    sget-object p0, Loz4;->v:Loz4;

    .line 401
    .line 402
    return-object p0

    .line 403
    :pswitch_6
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Ldz2;

    .line 406
    .line 407
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast p0, Ldz2;

    .line 410
    .line 411
    const-string v1, "disabled"

    .line 412
    .line 413
    invoke-interface {v0, v1}, Ldz2;->setValue(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 417
    .line 418
    invoke-interface {p0, v0}, Ldz2;->setValue(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    sget-object p0, Loz4;->v:Loz4;

    .line 422
    .line 423
    return-object p0

    .line 424
    :pswitch_7
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v0, Lpn4;

    .line 427
    .line 428
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast p0, Lun4;

    .line 431
    .line 432
    iget-object v0, v0, Lpn4;->w:Lxp1;

    .line 433
    .line 434
    invoke-interface {v0, p0}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    sget-object p0, Loz4;->v:Loz4;

    .line 438
    .line 439
    return-object p0

    .line 440
    :pswitch_8
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v0, Ljn4;

    .line 443
    .line 444
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast p0, Lmp1;

    .line 447
    .line 448
    invoke-interface {p0}, Lmp1;->v()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    check-cast p0, Loa2;

    .line 453
    .line 454
    invoke-interface {v0, p0}, Ljn4;->c(Loa2;)J

    .line 455
    .line 456
    .line 457
    move-result-wide v0

    .line 458
    invoke-static {v0, v1}, Ljf5;->n(J)J

    .line 459
    .line 460
    .line 461
    move-result-wide v0

    .line 462
    new-instance p0, Li42;

    .line 463
    .line 464
    invoke-direct {p0, v0, v1}, Li42;-><init>(J)V

    .line 465
    .line 466
    .line 467
    return-object p0

    .line 468
    :pswitch_9
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v0, Landroid/content/Context;

    .line 471
    .line 472
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast p0, Lmk;

    .line 475
    .line 476
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    .line 478
    .line 479
    sget-object p0, Loz4;->v:Loz4;

    .line 480
    .line 481
    return-object p0

    .line 482
    :pswitch_a
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v0, Lfj0;

    .line 485
    .line 486
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 487
    .line 488
    iget-object v0, v0, Lfj0;->r:Lir1;

    .line 489
    .line 490
    iget-object v1, v0, Lir1;->m:Lpb4;

    .line 491
    .line 492
    invoke-virtual {v1}, Lpb4;->w()Lob4;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    move v4, v6

    .line 497
    :goto_8
    :try_start_9
    iget v7, v1, Lpb4;->a:I

    .line 498
    .line 499
    if-ge v4, v7, :cond_13

    .line 500
    .line 501
    invoke-virtual {v3, v4}, Lob4;->g(I)Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-eqz v7, :cond_d

    .line 506
    .line 507
    invoke-virtual {v3, v4}, Lob4;->b(I)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    if-eq v7, p0, :cond_c

    .line 512
    .line 513
    instance-of v8, v7, Lmr1;

    .line 514
    .line 515
    if-eqz v8, :cond_a

    .line 516
    .line 517
    check-cast v7, Lmr1;

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :cond_a
    move-object v7, v5

    .line 521
    :goto_9
    if-eqz v7, :cond_b

    .line 522
    .line 523
    iget-object v7, v7, Lmr1;->v:Lkr3;

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_b
    move-object v7, v5

    .line 527
    :goto_a
    if-ne v7, p0, :cond_d

    .line 528
    .line 529
    :cond_c
    new-instance p0, Lm53;

    .line 530
    .line 531
    invoke-direct {p0, v4, v5}, Lm53;-><init>(ILjava/lang/Integer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Lob4;->m()V

    .line 535
    .line 536
    .line 537
    move-object v5, p0

    .line 538
    goto :goto_10

    .line 539
    :catchall_3
    move-exception v0

    .line 540
    move-object p0, v0

    .line 541
    goto/16 :goto_12

    .line 542
    .line 543
    :cond_d
    :try_start_a
    iget-object v7, v3, Lob4;->e:[I

    .line 544
    .line 545
    invoke-static {v7, v4}, Lrb4;->e([II)I

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    add-int/lit8 v9, v4, 0x1

    .line 550
    .line 551
    iget v10, v3, Lob4;->m:I

    .line 552
    .line 553
    if-ge v9, v10, :cond_e

    .line 554
    .line 555
    mul-int/lit8 v10, v9, 0x5

    .line 556
    .line 557
    add-int/2addr v10, v2

    .line 558
    aget v7, v7, v10

    .line 559
    .line 560
    goto :goto_b

    .line 561
    :cond_e
    iget v7, v3, Lob4;->p:I

    .line 562
    .line 563
    :goto_b
    sub-int/2addr v7, v8

    .line 564
    move v8, v6

    .line 565
    :goto_c
    if-ge v8, v7, :cond_14

    .line 566
    .line 567
    invoke-virtual {v3, v4, v8}, Lob4;->r(II)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v10

    .line 571
    if-eq v10, p0, :cond_12

    .line 572
    .line 573
    instance-of v11, v10, Lmr1;

    .line 574
    .line 575
    if-eqz v11, :cond_f

    .line 576
    .line 577
    check-cast v10, Lmr1;

    .line 578
    .line 579
    goto :goto_d

    .line 580
    :cond_f
    move-object v10, v5

    .line 581
    :goto_d
    if-eqz v10, :cond_10

    .line 582
    .line 583
    iget-object v10, v10, Lmr1;->v:Lkr3;

    .line 584
    .line 585
    goto :goto_e

    .line 586
    :cond_10
    move-object v10, v5

    .line 587
    :goto_e
    if-ne v10, p0, :cond_11

    .line 588
    .line 589
    goto :goto_f

    .line 590
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 591
    .line 592
    goto :goto_c

    .line 593
    :cond_12
    :goto_f
    new-instance v5, Lm53;

    .line 594
    .line 595
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 596
    .line 597
    .line 598
    move-result-object p0

    .line 599
    invoke-direct {v5, v4, p0}, Lm53;-><init>(ILjava/lang/Integer;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 600
    .line 601
    .line 602
    :cond_13
    invoke-virtual {v3}, Lob4;->m()V

    .line 603
    .line 604
    .line 605
    goto :goto_10

    .line 606
    :cond_14
    move v4, v9

    .line 607
    goto :goto_8

    .line 608
    :goto_10
    if-eqz v5, :cond_15

    .line 609
    .line 610
    iget p0, v5, Lm53;->v:I

    .line 611
    .line 612
    iget-object v2, v5, Lm53;->e:Ljava/lang/Integer;

    .line 613
    .line 614
    invoke-virtual {v1}, Lpb4;->w()Lob4;

    .line 615
    .line 616
    .line 617
    move-result-object v1

    .line 618
    :try_start_b
    invoke-static {v1, p0, v2}, Lvf5;->n(Lob4;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 619
    .line 620
    .line 621
    move-result-object p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 622
    invoke-virtual {v1}, Lob4;->m()V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0}, Lir1;->E()Ljava/util/List;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-static {p0, v1}, Lpd0;->J(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 630
    .line 631
    .line 632
    move-result-object p0

    .line 633
    goto :goto_11

    .line 634
    :catchall_4
    move-exception v0

    .line 635
    move-object p0, v0

    .line 636
    invoke-virtual {v1}, Lob4;->m()V

    .line 637
    .line 638
    .line 639
    throw p0

    .line 640
    :cond_15
    sget-object p0, Lya1;->r:Lya1;

    .line 641
    .line 642
    :goto_11
    new-instance v1, Lqi0;

    .line 643
    .line 644
    iget-boolean v0, v0, Lir1;->C:Z

    .line 645
    .line 646
    invoke-direct {v1, p0, v0}, Lqi0;-><init>(Ljava/util/List;Z)V

    .line 647
    .line 648
    .line 649
    return-object v1

    .line 650
    :goto_12
    invoke-virtual {v3}, Lob4;->m()V

    .line 651
    .line 652
    .line 653
    throw p0

    .line 654
    :pswitch_b
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v0, Lxp1;

    .line 657
    .line 658
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 659
    .line 660
    check-cast p0, Lua2;

    .line 661
    .line 662
    iget-object p0, p0, Lua2;->v:Ljava/lang/String;

    .line 663
    .line 664
    invoke-interface {v0, p0}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    sget-object p0, Loz4;->v:Loz4;

    .line 668
    .line 669
    return-object p0

    .line 670
    :pswitch_c
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v0, Landroid/content/Context;

    .line 673
    .line 674
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 675
    .line 676
    check-cast p0, La00;

    .line 677
    .line 678
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 679
    .line 680
    .line 681
    sget-object p0, Loz4;->v:Loz4;

    .line 682
    .line 683
    return-object p0

    .line 684
    :pswitch_d
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 685
    .line 686
    check-cast v0, Lxp1;

    .line 687
    .line 688
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast p0, Lbz4;

    .line 691
    .line 692
    iget-object p0, p0, Lbz4;->e:Ljava/util/List;

    .line 693
    .line 694
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 695
    .line 696
    .line 697
    move-result p0

    .line 698
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    invoke-interface {v0, p0}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    sget-object p0, Loz4;->v:Loz4;

    .line 706
    .line 707
    return-object p0

    .line 708
    :pswitch_e
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v0, Lpx2;

    .line 711
    .line 712
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast p0, Landroid/content/Context;

    .line 715
    .line 716
    invoke-interface {v0}, Lpx2;->g()Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_16

    .line 721
    .line 722
    invoke-interface {v0}, Lpx2;->d()V

    .line 723
    .line 724
    .line 725
    goto :goto_13

    .line 726
    :cond_16
    new-instance v0, Landroid/content/Intent;

    .line 727
    .line 728
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 729
    .line 730
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    const-string v1, "package"

    .line 734
    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 744
    .line 745
    .line 746
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 747
    .line 748
    .line 749
    :goto_13
    sget-object p0, Loz4;->v:Loz4;

    .line 750
    .line 751
    return-object p0

    .line 752
    :pswitch_f
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v0, Landroid/content/Context;

    .line 755
    .line 756
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 757
    .line 758
    check-cast p0, La00;

    .line 759
    .line 760
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 761
    .line 762
    .line 763
    sget-object p0, Loz4;->v:Loz4;

    .line 764
    .line 765
    return-object p0

    .line 766
    :pswitch_10
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 767
    .line 768
    check-cast v0, Lkr0;

    .line 769
    .line 770
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast p0, Lfu4;

    .line 773
    .line 774
    new-instance v2, Ldx;

    .line 775
    .line 776
    invoke-direct {v2, p0, v5, v6}, Ldx;-><init>(Lfu4;Ljo0;I)V

    .line 777
    .line 778
    .line 779
    invoke-static {v0, v5, v2, v1}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 780
    .line 781
    .line 782
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 783
    .line 784
    return-object p0

    .line 785
    :pswitch_11
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast v0, Lar4;

    .line 788
    .line 789
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 790
    .line 791
    check-cast p0, Lyh;

    .line 792
    .line 793
    if-eqz v0, :cond_1a

    .line 794
    .line 795
    iget-object v1, v0, Lar4;->m:Lpd4;

    .line 796
    .line 797
    invoke-virtual {v1}, Lpd4;->isEmpty()Z

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    iget-object v3, v0, Lar4;->e:Lyh;

    .line 802
    .line 803
    if-eqz v2, :cond_17

    .line 804
    .line 805
    goto :goto_15

    .line 806
    :cond_17
    new-instance v2, Lbn4;

    .line 807
    .line 808
    invoke-direct {v2, v3}, Lbn4;-><init>(Lyh;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v1}, Lpd4;->size()I

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    :goto_14
    if-ge v6, v3, :cond_18

    .line 816
    .line 817
    invoke-virtual {v1, v6}, Lpd4;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    check-cast v4, Lxp1;

    .line 822
    .line 823
    invoke-interface {v4, v2}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    add-int/lit8 v6, v6, 0x1

    .line 827
    .line 828
    goto :goto_14

    .line 829
    :cond_18
    iget-object v3, v2, Lbn4;->e:Lyh;

    .line 830
    .line 831
    :goto_15
    iput-object v3, v0, Lar4;->e:Lyh;

    .line 832
    .line 833
    if-nez v3, :cond_19

    .line 834
    .line 835
    goto :goto_16

    .line 836
    :cond_19
    move-object p0, v3

    .line 837
    :cond_1a
    :goto_16
    return-object p0

    .line 838
    :pswitch_12
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 839
    .line 840
    check-cast v0, Lxp4;

    .line 841
    .line 842
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 843
    .line 844
    check-cast p0, Ldz2;

    .line 845
    .line 846
    iget-wide v1, v0, Lxp4;->e:J

    .line 847
    .line 848
    invoke-interface {p0}, Ltf4;->getValue()Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v3

    .line 852
    check-cast v3, Lxp4;

    .line 853
    .line 854
    iget-wide v3, v3, Lxp4;->e:J

    .line 855
    .line 856
    invoke-static {v1, v2, v3, v4}, Lgr4;->e(JJ)Z

    .line 857
    .line 858
    .line 859
    move-result v1

    .line 860
    if-eqz v1, :cond_1b

    .line 861
    .line 862
    iget-object v1, v0, Lxp4;->m:Lgr4;

    .line 863
    .line 864
    invoke-interface {p0}, Ltf4;->getValue()Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    check-cast v2, Lxp4;

    .line 869
    .line 870
    iget-object v2, v2, Lxp4;->m:Lgr4;

    .line 871
    .line 872
    invoke-static {v1, v2}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    if-nez v1, :cond_1c

    .line 877
    .line 878
    :cond_1b
    invoke-interface {p0, v0}, Ldz2;->setValue(Ljava/lang/Object;)V

    .line 879
    .line 880
    .line 881
    :cond_1c
    sget-object p0, Loz4;->v:Loz4;

    .line 882
    .line 883
    return-object p0

    .line 884
    :pswitch_13
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 885
    .line 886
    check-cast v0, Lju;

    .line 887
    .line 888
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast p0, Lfc2;

    .line 891
    .line 892
    iget-object v1, v0, Lju;->q:Lo74;

    .line 893
    .line 894
    iget-object v2, p0, Lfc2;->r:Lx60;

    .line 895
    .line 896
    iget-object v2, v2, Lx60;->a:Lkn;

    .line 897
    .line 898
    invoke-virtual {v2}, Lkn;->H()J

    .line 899
    .line 900
    .line 901
    move-result-wide v2

    .line 902
    invoke-virtual {p0}, Lfc2;->getLayoutDirection()Lra2;

    .line 903
    .line 904
    .line 905
    move-result-object v4

    .line 906
    invoke-interface {v1, v2, v3, v4, p0}, Lo74;->v(JLra2;Lez0;)Lox5;

    .line 907
    .line 908
    .line 909
    move-result-object p0

    .line 910
    iput-object p0, v0, Lju;->B:Lox5;

    .line 911
    .line 912
    sget-object p0, Loz4;->v:Loz4;

    .line 913
    .line 914
    return-object p0

    .line 915
    :pswitch_14
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v0, Lai0;

    .line 918
    .line 919
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast p0, Lmp1;

    .line 922
    .line 923
    iput-object p0, v0, Lai0;->m:Lmp1;

    .line 924
    .line 925
    sget-object p0, Loz4;->v:Loz4;

    .line 926
    .line 927
    return-object p0

    .line 928
    :pswitch_15
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 929
    .line 930
    move-object v8, v0

    .line 931
    check-cast v8, Lnr;

    .line 932
    .line 933
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast p0, Lmp1;

    .line 936
    .line 937
    new-instance v10, Lyq;

    .line 938
    .line 939
    invoke-direct {v10, v6, p0}, Lyq;-><init>(ILmp1;)V

    .line 940
    .line 941
    .line 942
    iget-object p0, v8, Lnr;->r:Ljc3;

    .line 943
    .line 944
    invoke-virtual {p0}, Ljc3;->getValue()Ljava/lang/Object;

    .line 945
    .line 946
    .line 947
    move-result-object p0

    .line 948
    move-object v9, p0

    .line 949
    check-cast v9, Lxd2;

    .line 950
    .line 951
    if-nez v9, :cond_1d

    .line 952
    .line 953
    goto :goto_17

    .line 954
    :cond_1d
    iget-object p0, v8, Lnr;->a:Ljc3;

    .line 955
    .line 956
    invoke-virtual {p0}, Ljc3;->getValue()Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object p0

    .line 960
    check-cast p0, Ljava/lang/String;

    .line 961
    .line 962
    iput-object p0, v9, Lxd2;->c:Ljava/lang/String;

    .line 963
    .line 964
    iget-object p0, v8, Lnr;->e:Lkr0;

    .line 965
    .line 966
    new-instance v7, Lb;

    .line 967
    .line 968
    const/16 v12, 0x9

    .line 969
    .line 970
    const/4 v11, 0x0

    .line 971
    invoke-direct/range {v7 .. v12}, Lb;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljo0;I)V

    .line 972
    .line 973
    .line 974
    invoke-static {p0, v11, v7, v1}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 975
    .line 976
    .line 977
    :goto_17
    sget-object p0, Loz4;->v:Loz4;

    .line 978
    .line 979
    return-object p0

    .line 980
    :pswitch_16
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 981
    .line 982
    check-cast v0, Li74;

    .line 983
    .line 984
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 985
    .line 986
    check-cast p0, Ldz2;

    .line 987
    .line 988
    invoke-interface {p0, v5}, Ldz2;->setValue(Ljava/lang/Object;)V

    .line 989
    .line 990
    .line 991
    iget-object p0, v0, Li74;->h:Ljc3;

    .line 992
    .line 993
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 994
    .line 995
    invoke-virtual {p0, v0}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 996
    .line 997
    .line 998
    sget-object p0, Loz4;->v:Loz4;

    .line 999
    .line 1000
    return-object p0

    .line 1001
    :pswitch_17
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1002
    .line 1003
    check-cast v0, Lu03;

    .line 1004
    .line 1005
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast p0, Lcj;

    .line 1008
    .line 1009
    iget p0, p0, Lcj;->v:I

    .line 1010
    .line 1011
    const-string v1, "layoutedit?layoutId="

    .line 1012
    .line 1013
    invoke-static {v1, p0}, Ljy2;->c(Ljava/lang/String;I)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object p0

    .line 1017
    new-instance v1, Lr2;

    .line 1018
    .line 1019
    invoke-direct {v1, v3}, Lr2;-><init>(I)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v0, p0, v1}, Lu03;->w(Ljava/lang/String;Lxp1;)V

    .line 1023
    .line 1024
    .line 1025
    sget-object p0, Loz4;->v:Loz4;

    .line 1026
    .line 1027
    return-object p0

    .line 1028
    :pswitch_18
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v0, Li74;

    .line 1031
    .line 1032
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast p0, Ljava/util/List;

    .line 1035
    .line 1036
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    .line 1038
    .line 1039
    iget-object v1, v0, Li74;->h:Ljc3;

    .line 1040
    .line 1041
    invoke-virtual {v1}, Ljc3;->getValue()Ljava/lang/Object;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    check-cast v2, Ljava/lang/Boolean;

    .line 1046
    .line 1047
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    if-nez v2, :cond_1e

    .line 1052
    .line 1053
    iget-object v2, v0, Li74;->c:Ljc3;

    .line 1054
    .line 1055
    invoke-virtual {v2, p0}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 1056
    .line 1057
    .line 1058
    :cond_1e
    invoke-virtual {v1}, Ljc3;->getValue()Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object p0

    .line 1062
    check-cast p0, Ljava/lang/Boolean;

    .line 1063
    .line 1064
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1065
    .line 1066
    .line 1067
    move-result p0

    .line 1068
    if-eq p0, v4, :cond_1f

    .line 1069
    .line 1070
    goto :goto_18

    .line 1071
    :cond_1f
    move v4, v6

    .line 1072
    :goto_18
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1073
    .line 1074
    .line 1075
    move-result-object p0

    .line 1076
    invoke-virtual {v1, p0}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    iget-object p0, v0, Li74;->g:Ljc3;

    .line 1080
    .line 1081
    invoke-virtual {p0, v5}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    sget-object p0, Loz4;->v:Loz4;

    .line 1085
    .line 1086
    return-object p0

    .line 1087
    :pswitch_19
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v0, Li74;

    .line 1090
    .line 1091
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1092
    .line 1093
    check-cast p0, Lu03;

    .line 1094
    .line 1095
    invoke-virtual {v0}, Li74;->n()V

    .line 1096
    .line 1097
    .line 1098
    const-string v0, "keyboard_layout"

    .line 1099
    .line 1100
    invoke-static {p0, v0}, Lu03;->p(Lu03;Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    sget-object p0, Loz4;->v:Loz4;

    .line 1104
    .line 1105
    return-object p0

    .line 1106
    :pswitch_1a
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1107
    .line 1108
    check-cast v0, Lf80;

    .line 1109
    .line 1110
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1111
    .line 1112
    invoke-interface {v0, p0}, Ll44;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    sget-object p0, Loz4;->v:Loz4;

    .line 1116
    .line 1117
    return-object p0

    .line 1118
    :pswitch_1b
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1119
    .line 1120
    check-cast v0, Lxq3;

    .line 1121
    .line 1122
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast p0, Lmp1;

    .line 1125
    .line 1126
    invoke-interface {p0}, Lmp1;->v()Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object p0

    .line 1130
    iput-object p0, v0, Lxq3;->r:Ljava/lang/Object;

    .line 1131
    .line 1132
    sget-object p0, Loz4;->v:Loz4;

    .line 1133
    .line 1134
    return-object p0

    .line 1135
    :pswitch_1c
    iget-object v0, p0, Lm2;->a:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast v0, Lol2;

    .line 1138
    .line 1139
    iget-object p0, p0, Lm2;->c:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 1142
    .line 1143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 1147
    .line 1148
    .line 1149
    iget-object v1, v0, Lol2;->h:Lnl2;

    .line 1150
    .line 1151
    if-eqz v1, :cond_20

    .line 1152
    .line 1153
    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 1154
    .line 1155
    .line 1156
    :cond_20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1157
    .line 1158
    const/16 v2, 0x21

    .line 1159
    .line 1160
    if-lt v1, v2, :cond_21

    .line 1161
    .line 1162
    iget-object v0, v0, Lol2;->g:Lml2;

    .line 1163
    .line 1164
    if-eqz v0, :cond_21

    .line 1165
    .line 1166
    invoke-static {v0}, Lb2;->t(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    invoke-static {p0, v0}, Le2;->c(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1171
    .line 1172
    .line 1173
    :cond_21
    sget-object p0, Loz4;->v:Loz4;

    .line 1174
    .line 1175
    return-object p0

    .line 1176
    nop

    .line 1177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
