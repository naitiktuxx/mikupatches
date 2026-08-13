.class public final Lxc2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh92/s1;

.field public final b:Ld13/c0;

.field public final c:Lp92/g;

.field public final d:Lp92/a;

.field public final e:Lp92/a;

.field public final f:Ly/j0;

.field public final g:Lad2/j;

.field public final h:Leg2/b1;


# direct methods
.method public constructor <init>(Lh92/s1;Ld13/c0;Lp92/g;Lp92/a;Lp92/a;Ly/j0;Lad2/j;Leg2/b1;)V
    .locals 1

    .line 1
    const-string v0, "premiumStateSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resourceProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "premiumFeatureManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "premiumFeatureDescriptionProvider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "premiumFeatureTitleProvider"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "premiumFeatureInnerScreenVisibilityHelper"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "premiumFeatureBadgeProvider"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "termsAndPrivacyPolicyGenerator"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lxc2/i;->a:Lh92/s1;

    .line 45
    .line 46
    iput-object p2, p0, Lxc2/i;->b:Ld13/c0;

    .line 47
    .line 48
    iput-object p3, p0, Lxc2/i;->c:Lp92/g;

    .line 49
    .line 50
    iput-object p4, p0, Lxc2/i;->d:Lp92/a;

    .line 51
    .line 52
    iput-object p5, p0, Lxc2/i;->e:Lp92/a;

    .line 53
    .line 54
    iput-object p6, p0, Lxc2/i;->f:Ly/j0;

    .line 55
    .line 56
    iput-object p7, p0, Lxc2/i;->g:Lad2/j;

    .line 57
    .line 58
    iput-object p8, p0, Lxc2/i;->h:Leg2/b1;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final a(Lxc2/f;Lmf3/qux;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lxc2/g;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lxc2/g;

    .line 13
    .line 14
    iget v4, v3, Lxc2/g;->M:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lxc2/g;->M:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lxc2/g;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lxc2/g;-><init>(Lxc2/i;Lmf3/qux;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lxc2/g;->K:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Llf3/bar;->a:Llf3/bar;

    .line 34
    .line 35
    iget v5, v3, Lxc2/g;->M:I

    .line 36
    .line 37
    iget-object v6, v0, Lxc2/i;->c:Lp92/g;

    .line 38
    .line 39
    iget-object v7, v0, Lxc2/i;->b:Ld13/c0;

    .line 40
    .line 41
    iget-object v8, v0, Lxc2/i;->g:Lad2/j;

    .line 42
    .line 43
    packed-switch v5, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :pswitch_0
    iget-boolean v1, v3, Lxc2/g;->J:Z

    .line 55
    .line 56
    iget v4, v3, Lxc2/g;->G:I

    .line 57
    .line 58
    iget-boolean v5, v3, Lxc2/g;->I:Z

    .line 59
    .line 60
    iget-boolean v6, v3, Lxc2/g;->H:Z

    .line 61
    .line 62
    iget v8, v3, Lxc2/g;->F:I

    .line 63
    .line 64
    iget-object v12, v3, Lxc2/g;->D:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v13, v3, Lxc2/g;->C:Landroid/text/SpannableString;

    .line 67
    .line 68
    iget-object v14, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v14, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v15, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v11, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 75
    .line 76
    iget-object v9, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v3, Lxc2/g;->x:Lxc2/f;

    .line 79
    .line 80
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move/from16 v25, v1

    .line 84
    .line 85
    move/from16 v21, v4

    .line 86
    .line 87
    move-object/from16 v17, v7

    .line 88
    .line 89
    move-object/from16 v22, v14

    .line 90
    .line 91
    :goto_1
    move/from16 v28, v8

    .line 92
    .line 93
    move-object/from16 v19, v11

    .line 94
    .line 95
    move-object/from16 v24, v12

    .line 96
    .line 97
    move-object/from16 v23, v13

    .line 98
    .line 99
    move-object/from16 v20, v15

    .line 100
    .line 101
    move v7, v5

    .line 102
    goto/16 :goto_b

    .line 103
    .line 104
    :pswitch_1
    iget v1, v3, Lxc2/g;->G:I

    .line 105
    .line 106
    iget-boolean v5, v3, Lxc2/g;->I:Z

    .line 107
    .line 108
    iget-boolean v8, v3, Lxc2/g;->H:Z

    .line 109
    .line 110
    iget v9, v3, Lxc2/g;->F:I

    .line 111
    .line 112
    iget v11, v3, Lxc2/g;->E:I

    .line 113
    .line 114
    iget-object v12, v3, Lxc2/g;->D:Ljava/lang/String;

    .line 115
    .line 116
    iget-object v13, v3, Lxc2/g;->C:Landroid/text/SpannableString;

    .line 117
    .line 118
    iget-object v14, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v14, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v15, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 125
    .line 126
    move/from16 p1, v1

    .line 127
    .line 128
    iget-object v1, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 129
    .line 130
    move-object/from16 v17, v1

    .line 131
    .line 132
    iget-object v1, v3, Lxc2/g;->x:Lxc2/f;

    .line 133
    .line 134
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move/from16 v18, v11

    .line 138
    .line 139
    move-object v11, v10

    .line 140
    move/from16 v10, v18

    .line 141
    .line 142
    move-object/from16 v18, v6

    .line 143
    .line 144
    move v6, v8

    .line 145
    move v8, v9

    .line 146
    move-object/from16 v9, v17

    .line 147
    .line 148
    move-object/from16 v17, v7

    .line 149
    .line 150
    move-object v7, v14

    .line 151
    move-object v14, v1

    .line 152
    :goto_2
    move/from16 v1, p1

    .line 153
    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :pswitch_2
    iget v1, v3, Lxc2/g;->G:I

    .line 157
    .line 158
    iget-boolean v5, v3, Lxc2/g;->I:Z

    .line 159
    .line 160
    iget-boolean v8, v3, Lxc2/g;->H:Z

    .line 161
    .line 162
    iget v9, v3, Lxc2/g;->F:I

    .line 163
    .line 164
    iget v10, v3, Lxc2/g;->E:I

    .line 165
    .line 166
    iget-object v11, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v12, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 169
    .line 170
    iget-object v13, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v14, v3, Lxc2/g;->x:Lxc2/f;

    .line 173
    .line 174
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v17, v7

    .line 178
    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :pswitch_3
    iget-boolean v1, v3, Lxc2/g;->I:Z

    .line 182
    .line 183
    iget-boolean v5, v3, Lxc2/g;->H:Z

    .line 184
    .line 185
    iget v8, v3, Lxc2/g;->F:I

    .line 186
    .line 187
    iget v9, v3, Lxc2/g;->E:I

    .line 188
    .line 189
    iget-object v10, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v10, Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 192
    .line 193
    iget-object v11, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v12, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 196
    .line 197
    iget-object v13, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v14, v3, Lxc2/g;->x:Lxc2/f;

    .line 200
    .line 201
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    move/from16 v33, v5

    .line 205
    .line 206
    move v5, v1

    .line 207
    move v1, v8

    .line 208
    move/from16 v8, v33

    .line 209
    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :pswitch_4
    iget-boolean v1, v3, Lxc2/g;->I:Z

    .line 213
    .line 214
    iget-boolean v5, v3, Lxc2/g;->H:Z

    .line 215
    .line 216
    iget v8, v3, Lxc2/g;->F:I

    .line 217
    .line 218
    iget v9, v3, Lxc2/g;->E:I

    .line 219
    .line 220
    iget-object v10, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 221
    .line 222
    iget-object v11, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v12, v3, Lxc2/g;->x:Lxc2/f;

    .line 225
    .line 226
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_5

    .line 230
    .line 231
    :pswitch_5
    iget v1, v3, Lxc2/g;->F:I

    .line 232
    .line 233
    iget v5, v3, Lxc2/g;->E:I

    .line 234
    .line 235
    iget-object v8, v3, Lxc2/g;->x:Lxc2/f;

    .line 236
    .line 237
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    move-object v12, v8

    .line 241
    move v8, v1

    .line 242
    goto :goto_4

    .line 243
    :pswitch_6
    iget v1, v3, Lxc2/g;->E:I

    .line 244
    .line 245
    iget-object v5, v3, Lxc2/g;->x:Lxc2/f;

    .line 246
    .line 247
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    move-object/from16 v33, v5

    .line 251
    .line 252
    move v5, v1

    .line 253
    move-object/from16 v1, v33

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :pswitch_7
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iget-object v2, v1, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 260
    .line 261
    iput-object v1, v3, Lxc2/g;->x:Lxc2/f;

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    iput v5, v3, Lxc2/g;->E:I

    .line 265
    .line 266
    const/4 v5, 0x1

    .line 267
    iput v5, v3, Lxc2/g;->M:I

    .line 268
    .line 269
    invoke-virtual {v8, v2, v3}, Lad2/j;->d0(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    if-ne v2, v4, :cond_1

    .line 274
    .line 275
    goto/16 :goto_a

    .line 276
    .line 277
    :cond_1
    const/4 v5, 0x0

    .line 278
    :goto_3
    check-cast v2, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    iget-object v9, v1, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 285
    .line 286
    iput-object v1, v3, Lxc2/g;->x:Lxc2/f;

    .line 287
    .line 288
    iput v5, v3, Lxc2/g;->E:I

    .line 289
    .line 290
    iput v2, v3, Lxc2/g;->F:I

    .line 291
    .line 292
    const/4 v10, 0x2

    .line 293
    iput v10, v3, Lxc2/g;->M:I

    .line 294
    .line 295
    invoke-virtual {v8, v9, v3}, Lad2/j;->S(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    if-ne v8, v4, :cond_2

    .line 300
    .line 301
    goto/16 :goto_a

    .line 302
    .line 303
    :cond_2
    move-object v12, v8

    .line 304
    move v8, v2

    .line 305
    move-object v2, v12

    .line 306
    move-object v12, v1

    .line 307
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    const/4 v2, 0x0

    .line 314
    new-array v9, v2, [Ljava/lang/Object;

    .line 315
    .line 316
    move-object v2, v7

    .line 317
    check-cast v2, Ld13/g0;

    .line 318
    .line 319
    const v10, 0x7f140556

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v10, v9}, Ld13/g0;->h(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    const-string v2, "getString(...)"

    .line 327
    .line 328
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-boolean v2, v12, Lxc2/f;->c:Z

    .line 332
    .line 333
    iget-object v10, v12, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 334
    .line 335
    iget-object v9, v12, Lxc2/f;->e:Lsb2/bar;

    .line 336
    .line 337
    iput-object v12, v3, Lxc2/g;->x:Lxc2/f;

    .line 338
    .line 339
    iput-object v11, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 340
    .line 341
    iput-object v10, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 342
    .line 343
    iput v5, v3, Lxc2/g;->E:I

    .line 344
    .line 345
    iput v8, v3, Lxc2/g;->F:I

    .line 346
    .line 347
    iput-boolean v1, v3, Lxc2/g;->H:Z

    .line 348
    .line 349
    iput-boolean v2, v3, Lxc2/g;->I:Z

    .line 350
    .line 351
    const/4 v13, 0x3

    .line 352
    iput v13, v3, Lxc2/g;->M:I

    .line 353
    .line 354
    iget-object v13, v0, Lxc2/i;->e:Lp92/a;

    .line 355
    .line 356
    const/4 v14, 0x0

    .line 357
    invoke-virtual {v13, v10, v14, v9, v3}, Lp92/a;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;ZLsb2/bar;Lmf3/qux;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    if-ne v9, v4, :cond_3

    .line 362
    .line 363
    goto/16 :goto_a

    .line 364
    .line 365
    :cond_3
    move/from16 v33, v5

    .line 366
    .line 367
    move v5, v1

    .line 368
    move v1, v2

    .line 369
    move-object v2, v9

    .line 370
    move/from16 v9, v33

    .line 371
    .line 372
    :goto_5
    check-cast v2, Ljava/lang/String;

    .line 373
    .line 374
    iget-object v13, v12, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 375
    .line 376
    iput-object v12, v3, Lxc2/g;->x:Lxc2/f;

    .line 377
    .line 378
    iput-object v11, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v10, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 381
    .line 382
    iput-object v2, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v13, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 385
    .line 386
    iput v9, v3, Lxc2/g;->E:I

    .line 387
    .line 388
    iput v8, v3, Lxc2/g;->F:I

    .line 389
    .line 390
    iput-boolean v5, v3, Lxc2/g;->H:Z

    .line 391
    .line 392
    iput-boolean v1, v3, Lxc2/g;->I:Z

    .line 393
    .line 394
    const/4 v14, 0x4

    .line 395
    iput v14, v3, Lxc2/g;->M:I

    .line 396
    .line 397
    move-object v14, v6

    .line 398
    check-cast v14, Lp92/k;

    .line 399
    .line 400
    invoke-virtual {v14, v3}, Lp92/k;->b(Lmf3/qux;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v14

    .line 404
    if-ne v14, v4, :cond_4

    .line 405
    .line 406
    goto/16 :goto_a

    .line 407
    .line 408
    :cond_4
    move/from16 v33, v5

    .line 409
    .line 410
    move v5, v1

    .line 411
    move v1, v8

    .line 412
    move/from16 v8, v33

    .line 413
    .line 414
    move-object/from16 v33, v11

    .line 415
    .line 416
    move-object v11, v2

    .line 417
    move-object v2, v14

    .line 418
    move-object v14, v12

    .line 419
    move-object v12, v10

    .line 420
    move-object v10, v13

    .line 421
    move-object/from16 v13, v33

    .line 422
    .line 423
    :goto_6
    check-cast v2, Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    invoke-static {v10, v2}, Lii3/a;->W(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    if-eqz v2, :cond_5

    .line 434
    .line 435
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 436
    .line 437
    .line 438
    move-result v2

    .line 439
    goto :goto_7

    .line 440
    :cond_5
    const/4 v2, 0x0

    .line 441
    :goto_7
    iget-object v10, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 442
    .line 443
    iget-object v15, v14, Lxc2/f;->e:Lsb2/bar;

    .line 444
    .line 445
    iput-object v14, v3, Lxc2/g;->x:Lxc2/f;

    .line 446
    .line 447
    iput-object v13, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 448
    .line 449
    iput-object v12, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 450
    .line 451
    iput-object v11, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 452
    .line 453
    move-object/from16 v17, v7

    .line 454
    .line 455
    const/4 v7, 0x0

    .line 456
    iput-object v7, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 457
    .line 458
    iput v9, v3, Lxc2/g;->E:I

    .line 459
    .line 460
    iput v1, v3, Lxc2/g;->F:I

    .line 461
    .line 462
    iput-boolean v8, v3, Lxc2/g;->H:Z

    .line 463
    .line 464
    iput-boolean v5, v3, Lxc2/g;->I:Z

    .line 465
    .line 466
    iput v2, v3, Lxc2/g;->G:I

    .line 467
    .line 468
    const/4 v7, 0x5

    .line 469
    iput v7, v3, Lxc2/g;->M:I

    .line 470
    .line 471
    iget-object v7, v0, Lxc2/i;->d:Lp92/a;

    .line 472
    .line 473
    invoke-virtual {v7, v10, v15, v3}, Lp92/a;->b(Lcom/truecaller/premium/data/feature/PremiumFeature;Lsb2/bar;Lmf3/qux;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    if-ne v7, v4, :cond_6

    .line 478
    .line 479
    goto/16 :goto_a

    .line 480
    .line 481
    :cond_6
    move v10, v9

    .line 482
    move v9, v1

    .line 483
    move v1, v2

    .line 484
    move-object v2, v7

    .line 485
    :goto_8
    check-cast v2, Ljava/lang/String;

    .line 486
    .line 487
    iget-object v7, v0, Lxc2/i;->h:Leg2/b1;

    .line 488
    .line 489
    invoke-static {v7}, Le51/baz;->g(Leg2/b1;)Landroid/text/SpannableString;

    .line 490
    .line 491
    .line 492
    move-result-object v15

    .line 493
    invoke-virtual {v7}, Leg2/b1;->e()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    move-object/from16 v18, v6

    .line 498
    .line 499
    iget-object v6, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 500
    .line 501
    iput-object v14, v3, Lxc2/g;->x:Lxc2/f;

    .line 502
    .line 503
    iput-object v13, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 504
    .line 505
    iput-object v12, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 506
    .line 507
    iput-object v11, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 508
    .line 509
    iput-object v2, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 510
    .line 511
    iput-object v15, v3, Lxc2/g;->C:Landroid/text/SpannableString;

    .line 512
    .line 513
    iput-object v7, v3, Lxc2/g;->D:Ljava/lang/String;

    .line 514
    .line 515
    iput v10, v3, Lxc2/g;->E:I

    .line 516
    .line 517
    iput v9, v3, Lxc2/g;->F:I

    .line 518
    .line 519
    iput-boolean v8, v3, Lxc2/g;->H:Z

    .line 520
    .line 521
    iput-boolean v5, v3, Lxc2/g;->I:Z

    .line 522
    .line 523
    iput v1, v3, Lxc2/g;->G:I

    .line 524
    .line 525
    move/from16 p1, v1

    .line 526
    .line 527
    const/4 v1, 0x6

    .line 528
    iput v1, v3, Lxc2/g;->M:I

    .line 529
    .line 530
    iget-object v1, v0, Lxc2/i;->f:Ly/j0;

    .line 531
    .line 532
    invoke-virtual {v1, v6, v3}, Ly/j0;->Y(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    if-ne v1, v4, :cond_7

    .line 537
    .line 538
    goto :goto_a

    .line 539
    :cond_7
    move v6, v8

    .line 540
    move v8, v9

    .line 541
    move-object v9, v13

    .line 542
    move-object v13, v15

    .line 543
    move-object v15, v11

    .line 544
    move-object v11, v12

    .line 545
    move-object v12, v7

    .line 546
    move-object v7, v2

    .line 547
    move-object v2, v1

    .line 548
    goto/16 :goto_2

    .line 549
    .line 550
    :goto_9
    check-cast v2, Ljava/lang/Boolean;

    .line 551
    .line 552
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    iget-object v0, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 557
    .line 558
    iput-object v14, v3, Lxc2/g;->x:Lxc2/f;

    .line 559
    .line 560
    iput-object v9, v3, Lxc2/g;->y:Ljava/lang/String;

    .line 561
    .line 562
    iput-object v11, v3, Lxc2/g;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 563
    .line 564
    iput-object v15, v3, Lxc2/g;->A:Ljava/lang/String;

    .line 565
    .line 566
    iput-object v7, v3, Lxc2/g;->B:Ljava/lang/Object;

    .line 567
    .line 568
    iput-object v13, v3, Lxc2/g;->C:Landroid/text/SpannableString;

    .line 569
    .line 570
    iput-object v12, v3, Lxc2/g;->D:Ljava/lang/String;

    .line 571
    .line 572
    iput v10, v3, Lxc2/g;->E:I

    .line 573
    .line 574
    iput v8, v3, Lxc2/g;->F:I

    .line 575
    .line 576
    iput-boolean v6, v3, Lxc2/g;->H:Z

    .line 577
    .line 578
    iput-boolean v5, v3, Lxc2/g;->I:Z

    .line 579
    .line 580
    iput v1, v3, Lxc2/g;->G:I

    .line 581
    .line 582
    iput-boolean v2, v3, Lxc2/g;->J:Z

    .line 583
    .line 584
    const/4 v10, 0x7

    .line 585
    iput v10, v3, Lxc2/g;->M:I

    .line 586
    .line 587
    move-object/from16 v10, v18

    .line 588
    .line 589
    invoke-static {v10, v0, v3}, Loi1/bar;->j(Lp92/g;Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    if-ne v0, v4, :cond_8

    .line 594
    .line 595
    :goto_a
    return-object v4

    .line 596
    :cond_8
    move/from16 v21, v1

    .line 597
    .line 598
    move/from16 v25, v2

    .line 599
    .line 600
    move-object/from16 v22, v7

    .line 601
    .line 602
    move-object v3, v14

    .line 603
    move-object v2, v0

    .line 604
    goto/16 :goto_1

    .line 605
    .line 606
    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    .line 607
    .line 608
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    const/16 v16, 0x1

    .line 613
    .line 614
    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_c
    iget-object v0, v3, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 640
    .line 641
    move-object/from16 v1, p0

    .line 642
    .line 643
    invoke-virtual {v1, v0, v6}, Lxc2/i;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    .line 644
    .line 645
    .line 646
    move-result v26

    .line 647
    iget-object v0, v3, Lxc2/f;->b:Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 648
    .line 649
    iget-boolean v2, v3, Lxc2/f;->d:Z

    .line 650
    .line 651
    new-instance v18, Lme2/b;

    .line 652
    .line 653
    move-object/from16 v31, v0

    .line 654
    .line 655
    move/from16 v32, v2

    .line 656
    .line 657
    move/from16 v30, v6

    .line 658
    .line 659
    invoke-direct/range {v18 .. v32}, Lme2/b;-><init>(Lcom/truecaller/premium/data/feature/PremiumFeature;Ljava/lang/String;ILjava/lang/String;Landroid/text/SpannableString;Ljava/lang/String;ZZZILjava/lang/String;ZLcom/truecaller/premium/data/tier/PremiumTierType;Z)V

    .line 660
    .line 661
    .line 662
    new-instance v4, Lrc2/y;

    .line 663
    .line 664
    const/4 v8, 0x0

    .line 665
    move-object v6, v9

    .line 666
    const/16 v9, 0x18

    .line 667
    .line 668
    move-object/from16 v5, v18

    .line 669
    .line 670
    invoke-direct/range {v4 .. v9}, Lrc2/y;-><init>(Lme2/c;Ljava/lang/String;ZZI)V

    .line 671
    .line 672
    .line 673
    return-object v4

    .line 674
    nop

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final b(Lxc2/f;Lmf3/qux;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lxc2/h;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lxc2/h;

    .line 13
    .line 14
    iget v4, v3, Lxc2/h;->M:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lxc2/h;->M:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lxc2/h;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lxc2/h;-><init>(Lxc2/i;Lmf3/qux;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lxc2/h;->K:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Llf3/bar;->a:Llf3/bar;

    .line 34
    .line 35
    iget v5, v3, Lxc2/h;->M:I

    .line 36
    .line 37
    iget-object v6, v0, Lxc2/i;->c:Lp92/g;

    .line 38
    .line 39
    iget-object v7, v0, Lxc2/i;->b:Ld13/c0;

    .line 40
    .line 41
    iget-object v8, v0, Lxc2/i;->g:Lad2/j;

    .line 42
    .line 43
    packed-switch v5, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :pswitch_0
    iget-boolean v1, v3, Lxc2/h;->J:Z

    .line 55
    .line 56
    iget v4, v3, Lxc2/h;->G:I

    .line 57
    .line 58
    iget-boolean v5, v3, Lxc2/h;->I:Z

    .line 59
    .line 60
    iget-boolean v6, v3, Lxc2/h;->H:Z

    .line 61
    .line 62
    iget v8, v3, Lxc2/h;->F:I

    .line 63
    .line 64
    iget-object v12, v3, Lxc2/h;->D:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v13, v3, Lxc2/h;->C:Landroid/text/SpannableString;

    .line 67
    .line 68
    iget-object v14, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v14, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v15, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v11, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 75
    .line 76
    iget-object v9, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, v3, Lxc2/h;->x:Lxc2/f;

    .line 79
    .line 80
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move/from16 v25, v1

    .line 84
    .line 85
    move/from16 v21, v4

    .line 86
    .line 87
    move-object/from16 v17, v7

    .line 88
    .line 89
    move-object/from16 v22, v14

    .line 90
    .line 91
    :goto_1
    move/from16 v28, v8

    .line 92
    .line 93
    move-object/from16 v19, v11

    .line 94
    .line 95
    move-object/from16 v24, v12

    .line 96
    .line 97
    move-object/from16 v23, v13

    .line 98
    .line 99
    move-object/from16 v20, v15

    .line 100
    .line 101
    goto/16 :goto_b

    .line 102
    .line 103
    :pswitch_1
    iget v1, v3, Lxc2/h;->G:I

    .line 104
    .line 105
    iget-boolean v5, v3, Lxc2/h;->I:Z

    .line 106
    .line 107
    iget-boolean v8, v3, Lxc2/h;->H:Z

    .line 108
    .line 109
    iget v9, v3, Lxc2/h;->F:I

    .line 110
    .line 111
    iget v11, v3, Lxc2/h;->E:I

    .line 112
    .line 113
    iget-object v12, v3, Lxc2/h;->D:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v13, v3, Lxc2/h;->C:Landroid/text/SpannableString;

    .line 116
    .line 117
    iget-object v14, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v14, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v15, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v10, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 124
    .line 125
    move/from16 p1, v1

    .line 126
    .line 127
    iget-object v1, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 128
    .line 129
    move-object/from16 v17, v1

    .line 130
    .line 131
    iget-object v1, v3, Lxc2/h;->x:Lxc2/f;

    .line 132
    .line 133
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    move/from16 v18, v11

    .line 137
    .line 138
    move-object v11, v10

    .line 139
    move/from16 v10, v18

    .line 140
    .line 141
    move-object/from16 v18, v6

    .line 142
    .line 143
    move v6, v8

    .line 144
    move v8, v9

    .line 145
    move-object/from16 v9, v17

    .line 146
    .line 147
    move-object/from16 v17, v7

    .line 148
    .line 149
    move-object v7, v14

    .line 150
    move-object v14, v1

    .line 151
    :goto_2
    move/from16 v1, p1

    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :pswitch_2
    iget v1, v3, Lxc2/h;->G:I

    .line 156
    .line 157
    iget-boolean v5, v3, Lxc2/h;->I:Z

    .line 158
    .line 159
    iget-boolean v8, v3, Lxc2/h;->H:Z

    .line 160
    .line 161
    iget v9, v3, Lxc2/h;->F:I

    .line 162
    .line 163
    iget v10, v3, Lxc2/h;->E:I

    .line 164
    .line 165
    iget-object v11, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 166
    .line 167
    iget-object v12, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 168
    .line 169
    iget-object v13, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v14, v3, Lxc2/h;->x:Lxc2/f;

    .line 172
    .line 173
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v17, v7

    .line 177
    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :pswitch_3
    iget-boolean v1, v3, Lxc2/h;->I:Z

    .line 181
    .line 182
    iget-boolean v5, v3, Lxc2/h;->H:Z

    .line 183
    .line 184
    iget v8, v3, Lxc2/h;->F:I

    .line 185
    .line 186
    iget v9, v3, Lxc2/h;->E:I

    .line 187
    .line 188
    iget-object v10, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v10, Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 191
    .line 192
    iget-object v11, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 193
    .line 194
    iget-object v12, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 195
    .line 196
    iget-object v13, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v14, v3, Lxc2/h;->x:Lxc2/f;

    .line 199
    .line 200
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    move/from16 v33, v5

    .line 204
    .line 205
    move v5, v1

    .line 206
    move v1, v8

    .line 207
    move/from16 v8, v33

    .line 208
    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :pswitch_4
    iget-boolean v1, v3, Lxc2/h;->I:Z

    .line 212
    .line 213
    iget-boolean v5, v3, Lxc2/h;->H:Z

    .line 214
    .line 215
    iget v8, v3, Lxc2/h;->F:I

    .line 216
    .line 217
    iget v9, v3, Lxc2/h;->E:I

    .line 218
    .line 219
    iget-object v10, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 220
    .line 221
    iget-object v11, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v12, v3, Lxc2/h;->x:Lxc2/f;

    .line 224
    .line 225
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_5

    .line 229
    .line 230
    :pswitch_5
    iget v1, v3, Lxc2/h;->F:I

    .line 231
    .line 232
    iget v5, v3, Lxc2/h;->E:I

    .line 233
    .line 234
    iget-object v8, v3, Lxc2/h;->x:Lxc2/f;

    .line 235
    .line 236
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    move-object v12, v8

    .line 240
    move v8, v1

    .line 241
    goto :goto_4

    .line 242
    :pswitch_6
    iget v1, v3, Lxc2/h;->E:I

    .line 243
    .line 244
    iget-object v5, v3, Lxc2/h;->x:Lxc2/f;

    .line 245
    .line 246
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    move-object/from16 v33, v5

    .line 250
    .line 251
    move v5, v1

    .line 252
    move-object/from16 v1, v33

    .line 253
    .line 254
    goto :goto_3

    .line 255
    :pswitch_7
    invoke-static {v2}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v1, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 259
    .line 260
    iput-object v1, v3, Lxc2/h;->x:Lxc2/f;

    .line 261
    .line 262
    const/4 v5, 0x0

    .line 263
    iput v5, v3, Lxc2/h;->E:I

    .line 264
    .line 265
    const/4 v5, 0x1

    .line 266
    iput v5, v3, Lxc2/h;->M:I

    .line 267
    .line 268
    invoke-virtual {v8, v2, v3}, Lad2/j;->d0(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    if-ne v2, v4, :cond_1

    .line 273
    .line 274
    goto/16 :goto_a

    .line 275
    .line 276
    :cond_1
    const/4 v5, 0x0

    .line 277
    :goto_3
    check-cast v2, Ljava/lang/Number;

    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    iget-object v9, v1, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 284
    .line 285
    iput-object v1, v3, Lxc2/h;->x:Lxc2/f;

    .line 286
    .line 287
    iput v5, v3, Lxc2/h;->E:I

    .line 288
    .line 289
    iput v2, v3, Lxc2/h;->F:I

    .line 290
    .line 291
    const/4 v10, 0x2

    .line 292
    iput v10, v3, Lxc2/h;->M:I

    .line 293
    .line 294
    invoke-virtual {v8, v9, v3}, Lad2/j;->S(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v8

    .line 298
    if-ne v8, v4, :cond_2

    .line 299
    .line 300
    goto/16 :goto_a

    .line 301
    .line 302
    :cond_2
    move-object v12, v8

    .line 303
    move v8, v2

    .line 304
    move-object v2, v12

    .line 305
    move-object v12, v1

    .line 306
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/4 v2, 0x0

    .line 313
    new-array v9, v2, [Ljava/lang/Object;

    .line 314
    .line 315
    move-object v2, v7

    .line 316
    check-cast v2, Ld13/g0;

    .line 317
    .line 318
    const v10, 0x7f140556

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v10, v9}, Ld13/g0;->h(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v11

    .line 325
    const-string v2, "getString(...)"

    .line 326
    .line 327
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-boolean v2, v12, Lxc2/f;->c:Z

    .line 331
    .line 332
    iget-object v10, v12, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 333
    .line 334
    iget-object v9, v12, Lxc2/f;->e:Lsb2/bar;

    .line 335
    .line 336
    iput-object v12, v3, Lxc2/h;->x:Lxc2/f;

    .line 337
    .line 338
    iput-object v11, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 339
    .line 340
    iput-object v10, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 341
    .line 342
    iput v5, v3, Lxc2/h;->E:I

    .line 343
    .line 344
    iput v8, v3, Lxc2/h;->F:I

    .line 345
    .line 346
    iput-boolean v1, v3, Lxc2/h;->H:Z

    .line 347
    .line 348
    iput-boolean v2, v3, Lxc2/h;->I:Z

    .line 349
    .line 350
    const/4 v13, 0x3

    .line 351
    iput v13, v3, Lxc2/h;->M:I

    .line 352
    .line 353
    iget-object v13, v0, Lxc2/i;->e:Lp92/a;

    .line 354
    .line 355
    const/4 v14, 0x0

    .line 356
    invoke-virtual {v13, v10, v14, v9, v3}, Lp92/a;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;ZLsb2/bar;Lmf3/qux;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    if-ne v9, v4, :cond_3

    .line 361
    .line 362
    goto/16 :goto_a

    .line 363
    .line 364
    :cond_3
    move/from16 v33, v5

    .line 365
    .line 366
    move v5, v1

    .line 367
    move v1, v2

    .line 368
    move-object v2, v9

    .line 369
    move/from16 v9, v33

    .line 370
    .line 371
    :goto_5
    check-cast v2, Ljava/lang/String;

    .line 372
    .line 373
    iget-object v13, v12, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 374
    .line 375
    iput-object v12, v3, Lxc2/h;->x:Lxc2/f;

    .line 376
    .line 377
    iput-object v11, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 378
    .line 379
    iput-object v10, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 380
    .line 381
    iput-object v2, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 382
    .line 383
    iput-object v13, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 384
    .line 385
    iput v9, v3, Lxc2/h;->E:I

    .line 386
    .line 387
    iput v8, v3, Lxc2/h;->F:I

    .line 388
    .line 389
    iput-boolean v5, v3, Lxc2/h;->H:Z

    .line 390
    .line 391
    iput-boolean v1, v3, Lxc2/h;->I:Z

    .line 392
    .line 393
    const/4 v14, 0x4

    .line 394
    iput v14, v3, Lxc2/h;->M:I

    .line 395
    .line 396
    move-object v14, v6

    .line 397
    check-cast v14, Lp92/k;

    .line 398
    .line 399
    invoke-virtual {v14, v3}, Lp92/k;->b(Lmf3/qux;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v14

    .line 403
    if-ne v14, v4, :cond_4

    .line 404
    .line 405
    goto/16 :goto_a

    .line 406
    .line 407
    :cond_4
    move/from16 v33, v5

    .line 408
    .line 409
    move v5, v1

    .line 410
    move v1, v8

    .line 411
    move/from16 v8, v33

    .line 412
    .line 413
    move-object/from16 v33, v11

    .line 414
    .line 415
    move-object v11, v2

    .line 416
    move-object v2, v14

    .line 417
    move-object v14, v12

    .line 418
    move-object v12, v10

    .line 419
    move-object v10, v13

    .line 420
    move-object/from16 v13, v33

    .line 421
    .line 422
    :goto_6
    check-cast v2, Ljava/lang/Boolean;

    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    invoke-static {v10, v2}, Lii3/a;->W(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    if-eqz v2, :cond_5

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    goto :goto_7

    .line 439
    :cond_5
    const/4 v2, 0x0

    .line 440
    :goto_7
    iget-object v10, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 441
    .line 442
    iget-object v15, v14, Lxc2/f;->e:Lsb2/bar;

    .line 443
    .line 444
    iput-object v14, v3, Lxc2/h;->x:Lxc2/f;

    .line 445
    .line 446
    iput-object v13, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 447
    .line 448
    iput-object v12, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 449
    .line 450
    iput-object v11, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 451
    .line 452
    move-object/from16 v17, v7

    .line 453
    .line 454
    const/4 v7, 0x0

    .line 455
    iput-object v7, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 456
    .line 457
    iput v9, v3, Lxc2/h;->E:I

    .line 458
    .line 459
    iput v1, v3, Lxc2/h;->F:I

    .line 460
    .line 461
    iput-boolean v8, v3, Lxc2/h;->H:Z

    .line 462
    .line 463
    iput-boolean v5, v3, Lxc2/h;->I:Z

    .line 464
    .line 465
    iput v2, v3, Lxc2/h;->G:I

    .line 466
    .line 467
    const/4 v7, 0x5

    .line 468
    iput v7, v3, Lxc2/h;->M:I

    .line 469
    .line 470
    iget-object v7, v0, Lxc2/i;->d:Lp92/a;

    .line 471
    .line 472
    invoke-virtual {v7, v10, v15, v3}, Lp92/a;->b(Lcom/truecaller/premium/data/feature/PremiumFeature;Lsb2/bar;Lmf3/qux;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    if-ne v7, v4, :cond_6

    .line 477
    .line 478
    goto/16 :goto_a

    .line 479
    .line 480
    :cond_6
    move v10, v9

    .line 481
    move v9, v1

    .line 482
    move v1, v2

    .line 483
    move-object v2, v7

    .line 484
    :goto_8
    check-cast v2, Ljava/lang/String;

    .line 485
    .line 486
    iget-object v7, v0, Lxc2/i;->h:Leg2/b1;

    .line 487
    .line 488
    invoke-static {v7}, Le51/baz;->g(Leg2/b1;)Landroid/text/SpannableString;

    .line 489
    .line 490
    .line 491
    move-result-object v15

    .line 492
    invoke-virtual {v7}, Leg2/b1;->e()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    move-object/from16 v18, v6

    .line 497
    .line 498
    iget-object v6, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 499
    .line 500
    iput-object v14, v3, Lxc2/h;->x:Lxc2/f;

    .line 501
    .line 502
    iput-object v13, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 503
    .line 504
    iput-object v12, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 505
    .line 506
    iput-object v11, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 507
    .line 508
    iput-object v2, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 509
    .line 510
    iput-object v15, v3, Lxc2/h;->C:Landroid/text/SpannableString;

    .line 511
    .line 512
    iput-object v7, v3, Lxc2/h;->D:Ljava/lang/String;

    .line 513
    .line 514
    iput v10, v3, Lxc2/h;->E:I

    .line 515
    .line 516
    iput v9, v3, Lxc2/h;->F:I

    .line 517
    .line 518
    iput-boolean v8, v3, Lxc2/h;->H:Z

    .line 519
    .line 520
    iput-boolean v5, v3, Lxc2/h;->I:Z

    .line 521
    .line 522
    iput v1, v3, Lxc2/h;->G:I

    .line 523
    .line 524
    move/from16 p1, v1

    .line 525
    .line 526
    const/4 v1, 0x6

    .line 527
    iput v1, v3, Lxc2/h;->M:I

    .line 528
    .line 529
    iget-object v1, v0, Lxc2/i;->f:Ly/j0;

    .line 530
    .line 531
    invoke-virtual {v1, v6, v3}, Ly/j0;->Y(Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    if-ne v1, v4, :cond_7

    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_7
    move v6, v8

    .line 539
    move v8, v9

    .line 540
    move-object v9, v13

    .line 541
    move-object v13, v15

    .line 542
    move-object v15, v11

    .line 543
    move-object v11, v12

    .line 544
    move-object v12, v7

    .line 545
    move-object v7, v2

    .line 546
    move-object v2, v1

    .line 547
    goto/16 :goto_2

    .line 548
    .line 549
    :goto_9
    check-cast v2, Ljava/lang/Boolean;

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    iget-object v0, v14, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 556
    .line 557
    iput-object v14, v3, Lxc2/h;->x:Lxc2/f;

    .line 558
    .line 559
    iput-object v9, v3, Lxc2/h;->y:Ljava/lang/String;

    .line 560
    .line 561
    iput-object v11, v3, Lxc2/h;->z:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 562
    .line 563
    iput-object v15, v3, Lxc2/h;->A:Ljava/lang/String;

    .line 564
    .line 565
    iput-object v7, v3, Lxc2/h;->B:Ljava/lang/Object;

    .line 566
    .line 567
    iput-object v13, v3, Lxc2/h;->C:Landroid/text/SpannableString;

    .line 568
    .line 569
    iput-object v12, v3, Lxc2/h;->D:Ljava/lang/String;

    .line 570
    .line 571
    iput v10, v3, Lxc2/h;->E:I

    .line 572
    .line 573
    iput v8, v3, Lxc2/h;->F:I

    .line 574
    .line 575
    iput-boolean v6, v3, Lxc2/h;->H:Z

    .line 576
    .line 577
    iput-boolean v5, v3, Lxc2/h;->I:Z

    .line 578
    .line 579
    iput v1, v3, Lxc2/h;->G:I

    .line 580
    .line 581
    iput-boolean v2, v3, Lxc2/h;->J:Z

    .line 582
    .line 583
    const/4 v10, 0x7

    .line 584
    iput v10, v3, Lxc2/h;->M:I

    .line 585
    .line 586
    move-object/from16 v10, v18

    .line 587
    .line 588
    invoke-static {v10, v0, v3}, Loi1/bar;->j(Lp92/g;Lcom/truecaller/premium/data/feature/PremiumFeature;Lmf3/qux;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-ne v0, v4, :cond_8

    .line 593
    .line 594
    :goto_a
    return-object v4

    .line 595
    :cond_8
    move/from16 v21, v1

    .line 596
    .line 597
    move/from16 v25, v2

    .line 598
    .line 599
    move-object/from16 v22, v7

    .line 600
    .line 601
    move-object v3, v14

    .line 602
    move-object v2, v0

    .line 603
    goto/16 :goto_1

    .line 604
    .line 605
    :goto_b
    check-cast v2, Ljava/lang/Boolean;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    const/16 v16, 0x1

    .line 612
    .line 613
    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_c
    iget-object v0, v3, Lxc2/f;->a:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 639
    .line 640
    move-object/from16 v1, p0

    .line 641
    .line 642
    invoke-virtual {v1, v0, v6}, Lxc2/i;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    .line 643
    .line 644
    .line 645
    move-result v26

    .line 646
    iget-object v0, v3, Lxc2/f;->b:Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 647
    .line 648
    iget-boolean v2, v3, Lxc2/f;->d:Z

    .line 649
    .line 650
    new-instance v18, Lme2/b;

    .line 651
    .line 652
    move-object/from16 v31, v0

    .line 653
    .line 654
    move/from16 v32, v2

    .line 655
    .line 656
    move/from16 v30, v6

    .line 657
    .line 658
    invoke-direct/range {v18 .. v32}, Lme2/b;-><init>(Lcom/truecaller/premium/data/feature/PremiumFeature;Ljava/lang/String;ILjava/lang/String;Landroid/text/SpannableString;Ljava/lang/String;ZZZILjava/lang/String;ZLcom/truecaller/premium/data/tier/PremiumTierType;Z)V

    .line 659
    .line 660
    .line 661
    move-object/from16 v0, v18

    .line 662
    .line 663
    new-instance v2, Lrc2/z;

    .line 664
    .line 665
    const/4 v14, 0x0

    .line 666
    invoke-direct {v2, v0, v9, v5, v14}, Lrc2/z;-><init>(Lme2/c;Ljava/lang/String;ZZ)V

    .line 667
    .line 668
    .line 669
    return-object v2

    .line 670
    nop

    .line 671
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object p2, Lcom/truecaller/premium/data/feature/PremiumFeature;->FRAUD_INSURANCE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 6
    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [Lcom/truecaller/premium/data/InsuranceState;

    .line 11
    .line 12
    sget-object p2, Lcom/truecaller/premium/data/InsuranceState;->ELIGIBLE:Lcom/truecaller/premium/data/InsuranceState;

    .line 13
    .line 14
    aput-object p2, p1, v0

    .line 15
    .line 16
    sget-object p2, Lcom/truecaller/premium/data/InsuranceState;->NOT_ELIGIBLE:Lcom/truecaller/premium/data/InsuranceState;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aput-object p2, p1, v1

    .line 20
    .line 21
    sget-object p2, Lcom/truecaller/premium/data/InsuranceState;->MISMATCH:Lcom/truecaller/premium/data/InsuranceState;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    aput-object p2, p1, v2

    .line 25
    .line 26
    const-string p2, "elements"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/collections/u;->l0([Ljava/lang/Object;)Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Lxc2/i;->a:Lh92/s1;

    .line 36
    .line 37
    check-cast p2, Lh92/t1;

    .line 38
    .line 39
    invoke-virtual {p2}, Lh92/t1;->w()Lcom/truecaller/premium/data/InsuranceState;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    return v0
.end method
