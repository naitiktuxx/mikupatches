.class public final Lwv3;
.super Loj4;
.source "SourceFile"

# interfaces
.implements Lbq1;


# instance fields
.field public final synthetic b:Li74;

.field public final synthetic g:I

.field public s:I


# direct methods
.method public constructor <init>(ILi74;Ljo0;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lwv3;->g:I

    .line 3
    .line 4
    iput p1, p0, Lwv3;->s:I

    .line 5
    .line 6
    iput-object p2, p0, Lwv3;->b:Li74;

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Loj4;-><init>(ILjo0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Li74;Ljo0;I)V
    .locals 0

    .line 13
    iput p3, p0, Lwv3;->g:I

    iput-object p1, p0, Lwv3;->b:Li74;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Loj4;-><init>(ILjo0;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lwv3;->g:I

    .line 4
    .line 5
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    sget-object v4, Llr0;->r:Llr0;

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Loz4;->v:Loz4;

    .line 11
    .line 12
    iget-object v7, v0, Lwv3;->b:Li74;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget v1, v0, Lwv3;->s:I

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-ne v1, v5, :cond_0

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    move-object/from16 v18, v6

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_0
    invoke-static {v3}, Lc0;->y(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    invoke-static/range {p1 .. p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v7, Li74;->m:Landroid/app/Application;

    .line 40
    .line 41
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v9, "keyboard_layout"

    .line 46
    .line 47
    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v10, "activate_dark_theme"

    .line 52
    .line 53
    const-string v11, "mouse_invert_scroll"

    .line 54
    .line 55
    const-string v12, "touch_click_enabled"

    .line 56
    .line 57
    const-string v13, "start_full_screen"

    .line 58
    .line 59
    const-string v14, "keep_screen_on"

    .line 60
    .line 61
    const-string v15, "show_keyboard"

    .line 62
    .line 63
    const-string v8, "mouse_pointer_speed"

    .line 64
    .line 65
    const-string v5, "mouse_scroll_speed"

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v3, "settings"

    .line 72
    .line 73
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v17

    .line 81
    if-nez v17, :cond_3

    .line 82
    .line 83
    :goto_0
    move-object/from16 v18, v6

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const v2, 0x7f030006

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const/16 v2, 0x9

    .line 101
    .line 102
    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    move-object/from16 v18, v1

    .line 111
    .line 112
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    aget-object v2, v18, v2

    .line 117
    .line 118
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-object/from16 v18, v6

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    invoke-interface {v3, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-interface {v1, v10, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, v11, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-interface {v1, v11, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    .line 137
    .line 138
    invoke-interface {v3, v12, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-interface {v1, v12, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    invoke-interface {v3, v13, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-interface {v1, v13, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    invoke-interface {v3, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    invoke-interface {v1, v14, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    invoke-interface {v3, v15, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    invoke-interface {v1, v15, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    .line 165
    .line 166
    const/16 v2, 0x32

    .line 167
    .line 168
    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    .line 174
    .line 175
    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    .line 181
    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const-string v2, "theme_color"

    .line 190
    .line 191
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    const-string v3, "activate_outline_theme"

    .line 196
    .line 197
    if-nez v1, :cond_4

    .line 198
    .line 199
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v6, "blue_grey"

    .line 208
    .line 209
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    .line 211
    .line 212
    const-string v2, "theme_option"

    .line 213
    .line 214
    const-string v6, "system"

    .line 215
    .line 216
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    .line 218
    .line 219
    const/4 v2, 0x0

    .line 220
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    .line 222
    .line 223
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_4
    const/4 v2, 0x0

    .line 228
    :goto_2
    new-instance v1, Lxq3;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v6, "show_media_buttons"

    .line 234
    .line 235
    move-object/from16 v19, v4

    .line 236
    .line 237
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 242
    .line 243
    .line 244
    move-result v21

    .line 245
    invoke-virtual {v7}, Li74;->p()Landroid/content/SharedPreferences;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    const-string v6, "left"

    .line 250
    .line 251
    const-string v2, "right"

    .line 252
    .line 253
    filled-new-array {v6, v2}, [Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v16

    .line 257
    invoke-static/range {v16 .. v16}, Lyp;->D([Ljava/lang/Object;)Ljava/util/Set;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    move-object/from16 v56, v7

    .line 262
    .line 263
    const-string v7, "visible_mouse_buttons"

    .line 264
    .line 265
    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 266
    .line 267
    .line 268
    move-result-object v24

    .line 269
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    const-string v0, "show_navigation_buttons"

    .line 273
    .line 274
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    const/4 v7, 0x0

    .line 279
    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 280
    .line 281
    .line 282
    move-result v27

    .line 283
    const-string v0, "show_shortcut_buttons"

    .line 284
    .line 285
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 290
    .line 291
    .line 292
    move-result v28

    .line 293
    const-string v0, "activate_air_mouse"

    .line 294
    .line 295
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 300
    .line 301
    .line 302
    move-result v29

    .line 303
    const-string v0, "air_mouse_speed"

    .line 304
    .line 305
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    const/16 v7, 0x32

    .line 310
    .line 311
    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result v30

    .line 315
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    const/4 v7, 0x0

    .line 320
    invoke-interface {v0, v10, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 321
    .line 322
    .line 323
    move-result v31

    .line 324
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 329
    .line 330
    .line 331
    move-result v32

    .line 332
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-interface {v0, v11, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 337
    .line 338
    .line 339
    move-result v33

    .line 340
    const-string v0, "pen_drawing_mode"

    .line 341
    .line 342
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 347
    .line 348
    .line 349
    move-result v34

    .line 350
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const/4 v3, 0x1

    .line 355
    invoke-interface {v0, v12, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 356
    .line 357
    .line 358
    move-result v35

    .line 359
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const/16 v7, 0x32

    .line 364
    .line 365
    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 366
    .line 367
    .line 368
    move-result v36

    .line 369
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 374
    .line 375
    .line 376
    move-result v37

    .line 377
    const-string v0, "disabled"

    .line 378
    .line 379
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    const-string v4, "mouse_jiggle_mode"

    .line 384
    .line 385
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v38

    .line 389
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const/4 v7, 0x0

    .line 397
    invoke-interface {v0, v13, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 398
    .line 399
    .line 400
    move-result v39

    .line 401
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v0, v14, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 406
    .line 407
    .line 408
    move-result v40

    .line 409
    const-string v0, "show_over_lock_screen"

    .line 410
    .line 411
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    const/4 v4, 0x1

    .line 416
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v41

    .line 420
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {v0, v15, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 425
    .line 426
    .line 427
    move-result v42

    .line 428
    const-string v0, "screen_brightness"

    .line 429
    .line 430
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 435
    .line 436
    .line 437
    move-result v43

    .line 438
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const-string v3, "input_bar_option"

    .line 443
    .line 444
    const-string v4, "when_active"

    .line 445
    .line 446
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v44

    .line 450
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 451
    .line 452
    .line 453
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    const-string v3, "keyboard_layout_selection"

    .line 458
    .line 459
    sget-object v4, Lcb1;->r:Lcb1;

    .line 460
    .line 461
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 462
    .line 463
    .line 464
    move-result-object v45

    .line 465
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    const-string v3, "english_us"

    .line 473
    .line 474
    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v46

    .line 478
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const-string v3, "haptic_feedback"

    .line 486
    .line 487
    const/4 v4, 0x1

    .line 488
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 489
    .line 490
    .line 491
    move-result v47

    .line 492
    const-string v0, "scanner_send_enter"

    .line 493
    .line 494
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    const/4 v7, 0x0

    .line 499
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 500
    .line 501
    .line 502
    move-result v48

    .line 503
    const-string v0, "scanner_continuous_mode"

    .line 504
    .line 505
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 510
    .line 511
    .line 512
    move-result v49

    .line 513
    const-string v0, "scanner_skip_duplicate"

    .line 514
    .line 515
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 520
    .line 521
    .line 522
    move-result v50

    .line 523
    const-string v0, "vol_up"

    .line 524
    .line 525
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    const-string v4, "vol_up_button"

    .line 530
    .line 531
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v51

    .line 535
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    const-string v0, "vol_down"

    .line 539
    .line 540
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    const-string v4, "vol_down_button"

    .line 545
    .line 546
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v52

    .line 550
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    const-string v0, "password_mode_enabled"

    .line 554
    .line 555
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    const/4 v7, 0x0

    .line 560
    invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 561
    .line 562
    .line 563
    move-result v53

    .line 564
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    const-string v3, "use_analog_stick"

    .line 569
    .line 570
    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 571
    .line 572
    .line 573
    move-result v55

    .line 574
    new-instance v20, Lz54;

    .line 575
    .line 576
    const/16 v26, 0x0

    .line 577
    .line 578
    const/16 v54, 0x0

    .line 579
    .line 580
    const/16 v22, 0x0

    .line 581
    .line 582
    const/16 v23, 0x0

    .line 583
    .line 584
    const/16 v25, 0x0

    .line 585
    .line 586
    invoke-direct/range {v20 .. v55}, Lz54;-><init>(ZZZLjava/util/Set;ZZZZZIZZZZZIILjava/lang/String;ZZZZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v0, v20

    .line 590
    .line 591
    iput-object v0, v1, Lxq3;->r:Ljava/lang/Object;

    .line 592
    .line 593
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    const-string v3, "show_mouse_buttons"

    .line 598
    .line 599
    const-string v4, "bottom"

    .line 600
    .line 601
    invoke-static {v4}, Lou5;->t(Ljava/lang/Object;)Ljava/util/Set;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    if-eqz v0, :cond_5

    .line 610
    .line 611
    iget-object v3, v1, Lxq3;->r:Ljava/lang/Object;

    .line 612
    .line 613
    move-object/from16 v20, v3

    .line 614
    .line 615
    check-cast v20, Lz54;

    .line 616
    .line 617
    const-string v3, "top"

    .line 618
    .line 619
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v21

    .line 623
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 624
    .line 625
    .line 626
    move-result v22

    .line 627
    const/16 v53, -0x7

    .line 628
    .line 629
    const/16 v54, 0x7

    .line 630
    .line 631
    const/16 v23, 0x0

    .line 632
    .line 633
    const/16 v24, 0x0

    .line 634
    .line 635
    const/16 v25, 0x0

    .line 636
    .line 637
    const/16 v26, 0x0

    .line 638
    .line 639
    const/16 v27, 0x0

    .line 640
    .line 641
    const/16 v28, 0x0

    .line 642
    .line 643
    const/16 v29, 0x0

    .line 644
    .line 645
    const/16 v30, 0x0

    .line 646
    .line 647
    const/16 v31, 0x0

    .line 648
    .line 649
    const/16 v32, 0x0

    .line 650
    .line 651
    const/16 v33, 0x0

    .line 652
    .line 653
    const/16 v34, 0x0

    .line 654
    .line 655
    const/16 v35, 0x0

    .line 656
    .line 657
    const/16 v36, 0x0

    .line 658
    .line 659
    const/16 v37, 0x0

    .line 660
    .line 661
    const/16 v38, 0x0

    .line 662
    .line 663
    const/16 v39, 0x0

    .line 664
    .line 665
    const/16 v40, 0x0

    .line 666
    .line 667
    const/16 v41, 0x0

    .line 668
    .line 669
    const/16 v42, 0x0

    .line 670
    .line 671
    const/16 v43, 0x0

    .line 672
    .line 673
    const/16 v44, 0x0

    .line 674
    .line 675
    const/16 v45, 0x0

    .line 676
    .line 677
    const/16 v46, 0x0

    .line 678
    .line 679
    const/16 v47, 0x0

    .line 680
    .line 681
    const/16 v48, 0x0

    .line 682
    .line 683
    const/16 v49, 0x0

    .line 684
    .line 685
    const/16 v50, 0x0

    .line 686
    .line 687
    const/16 v51, 0x0

    .line 688
    .line 689
    const/16 v52, 0x0

    .line 690
    .line 691
    invoke-static/range {v20 .. v54}, Lz54;->v(Lz54;ZZLjava/util/Set;ZZZIZZZZZIILjava/lang/String;ZZZZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZZII)Lz54;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    iput-object v0, v1, Lxq3;->r:Ljava/lang/Object;

    .line 696
    .line 697
    :cond_5
    invoke-virtual/range {v56 .. v56}, Li74;->p()Landroid/content/SharedPreferences;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const-string v3, "show_scroll_bar"

    .line 702
    .line 703
    invoke-static {v2}, Lou5;->t(Ljava/lang/Object;)Ljava/util/Set;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    if-eqz v0, :cond_6

    .line 712
    .line 713
    iget-object v3, v1, Lxq3;->r:Ljava/lang/Object;

    .line 714
    .line 715
    move-object/from16 v20, v3

    .line 716
    .line 717
    check-cast v20, Lz54;

    .line 718
    .line 719
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v24

    .line 723
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v25

    .line 727
    const/16 v53, -0x31

    .line 728
    .line 729
    const/16 v54, 0x7

    .line 730
    .line 731
    const/16 v21, 0x0

    .line 732
    .line 733
    const/16 v22, 0x0

    .line 734
    .line 735
    const/16 v23, 0x0

    .line 736
    .line 737
    const/16 v26, 0x0

    .line 738
    .line 739
    const/16 v27, 0x0

    .line 740
    .line 741
    const/16 v28, 0x0

    .line 742
    .line 743
    const/16 v29, 0x0

    .line 744
    .line 745
    const/16 v30, 0x0

    .line 746
    .line 747
    const/16 v31, 0x0

    .line 748
    .line 749
    const/16 v32, 0x0

    .line 750
    .line 751
    const/16 v33, 0x0

    .line 752
    .line 753
    const/16 v34, 0x0

    .line 754
    .line 755
    const/16 v35, 0x0

    .line 756
    .line 757
    const/16 v36, 0x0

    .line 758
    .line 759
    const/16 v37, 0x0

    .line 760
    .line 761
    const/16 v38, 0x0

    .line 762
    .line 763
    const/16 v39, 0x0

    .line 764
    .line 765
    const/16 v40, 0x0

    .line 766
    .line 767
    const/16 v41, 0x0

    .line 768
    .line 769
    const/16 v42, 0x0

    .line 770
    .line 771
    const/16 v43, 0x0

    .line 772
    .line 773
    const/16 v44, 0x0

    .line 774
    .line 775
    const/16 v45, 0x0

    .line 776
    .line 777
    const/16 v46, 0x0

    .line 778
    .line 779
    const/16 v47, 0x0

    .line 780
    .line 781
    const/16 v48, 0x0

    .line 782
    .line 783
    const/16 v49, 0x0

    .line 784
    .line 785
    const/16 v50, 0x0

    .line 786
    .line 787
    const/16 v51, 0x0

    .line 788
    .line 789
    const/16 v52, 0x0

    .line 790
    .line 791
    invoke-static/range {v20 .. v54}, Lz54;->v(Lz54;ZZLjava/util/Set;ZZZIZZZZZIILjava/lang/String;ZZZZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;ZZZII)Lz54;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    iput-object v0, v1, Lxq3;->r:Ljava/lang/Object;

    .line 796
    .line 797
    :cond_6
    sget-object v0, Lp31;->v:Lnw0;

    .line 798
    .line 799
    sget-object v0, Lro2;->v:Luv1;

    .line 800
    .line 801
    new-instance v2, Ljw3;

    .line 802
    .line 803
    const/4 v3, 0x2

    .line 804
    move-object/from16 v4, v56

    .line 805
    .line 806
    const/4 v5, 0x0

    .line 807
    invoke-direct {v2, v4, v1, v5, v3}, Ljw3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljo0;I)V

    .line 808
    .line 809
    .line 810
    const/4 v6, 0x1

    .line 811
    move-object/from16 v1, p0

    .line 812
    .line 813
    iput v6, v1, Lwv3;->s:I

    .line 814
    .line 815
    invoke-static {v0, v2, v1}, Lcx5;->a(Lbr0;Lbq1;Ljo0;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    move-object/from16 v2, v19

    .line 820
    .line 821
    if-ne v0, v2, :cond_7

    .line 822
    .line 823
    move-object v4, v2

    .line 824
    goto :goto_4

    .line 825
    :cond_7
    :goto_3
    move-object/from16 v4, v18

    .line 826
    .line 827
    :goto_4
    return-object v4

    .line 828
    :pswitch_0
    move-object v1, v0

    .line 829
    move-object v2, v4

    .line 830
    move-object/from16 v18, v6

    .line 831
    .line 832
    move-object v4, v7

    .line 833
    move v6, v5

    .line 834
    const/4 v5, 0x0

    .line 835
    iget v0, v1, Lwv3;->s:I

    .line 836
    .line 837
    if-eqz v0, :cond_a

    .line 838
    .line 839
    if-ne v0, v6, :cond_9

    .line 840
    .line 841
    invoke-static/range {p1 .. p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    :cond_8
    move-object/from16 v4, v18

    .line 845
    .line 846
    goto :goto_7

    .line 847
    :cond_9
    invoke-static {v3}, Lc0;->y(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    move-object v4, v5

    .line 851
    goto :goto_7

    .line 852
    :cond_a
    invoke-static/range {p1 .. p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iget-object v0, v4, Li74;->m:Landroid/app/Application;

    .line 856
    .line 857
    invoke-static {v0}, Lso2;->v(Landroid/content/Context;)Lrt0;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    check-cast v0, Loi3;

    .line 862
    .line 863
    iget-object v0, v0, Loi3;->v:Lrt0;

    .line 864
    .line 865
    invoke-interface {v0}, Lrt0;->e()Lqi1;

    .line 866
    .line 867
    .line 868
    move-result-object v0

    .line 869
    new-instance v3, Lvb;

    .line 870
    .line 871
    const/16 v5, 0xc

    .line 872
    .line 873
    invoke-direct {v3, v5, v4}, Lvb;-><init>(ILjava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    const/4 v4, 0x1

    .line 877
    iput v4, v1, Lwv3;->s:I

    .line 878
    .line 879
    new-instance v4, Lgy;

    .line 880
    .line 881
    const/16 v5, 0x8

    .line 882
    .line 883
    invoke-direct {v4, v3, v5}, Lgy;-><init>(Lsi1;I)V

    .line 884
    .line 885
    .line 886
    new-instance v3, Lgy;

    .line 887
    .line 888
    const/16 v5, 0x9

    .line 889
    .line 890
    invoke-direct {v3, v4, v5}, Lgy;-><init>(Lsi1;I)V

    .line 891
    .line 892
    .line 893
    invoke-interface {v0, v3, v1}, Lqi1;->m(Lsi1;Ljo0;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    if-ne v0, v2, :cond_b

    .line 898
    .line 899
    goto :goto_5

    .line 900
    :cond_b
    move-object/from16 v0, v18

    .line 901
    .line 902
    :goto_5
    if-ne v0, v2, :cond_c

    .line 903
    .line 904
    goto :goto_6

    .line 905
    :cond_c
    move-object/from16 v0, v18

    .line 906
    .line 907
    :goto_6
    if-ne v0, v2, :cond_8

    .line 908
    .line 909
    move-object v4, v2

    .line 910
    :goto_7
    return-object v4

    .line 911
    :pswitch_1
    move-object v1, v0

    .line 912
    move-object/from16 v18, v6

    .line 913
    .line 914
    move-object v4, v7

    .line 915
    invoke-static/range {p1 .. p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    sget-object v0, Lp15;->e:Ljava/util/List;

    .line 919
    .line 920
    const-string v2, "custom?layoutId={layoutId}"

    .line 921
    .line 922
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 923
    .line 924
    .line 925
    move-result v3

    .line 926
    iget v1, v1, Lwv3;->s:I

    .line 927
    .line 928
    if-gez v3, :cond_d

    .line 929
    .line 930
    goto :goto_8

    .line 931
    :cond_d
    sget-object v5, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 932
    .line 933
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    const-string v6, "start_screen"

    .line 941
    .line 942
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 943
    .line 944
    .line 945
    const-string v3, "start_custom_control"

    .line 946
    .line 947
    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 948
    .line 949
    .line 950
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 951
    .line 952
    .line 953
    :goto_8
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    invoke-virtual {v4, v0, v1}, Li74;->a(II)V

    .line 958
    .line 959
    .line 960
    return-object v18

    .line 961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lwv3;->g:I

    .line 2
    .line 3
    sget-object v1, Loz4;->v:Loz4;

    .line 4
    .line 5
    check-cast p1, Lkr0;

    .line 6
    .line 7
    check-cast p2, Ljo0;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lwv3;->y(Ljo0;Ljava/lang/Object;)Ljo0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lwv3;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lwv3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p2, p1}, Lwv3;->y(Ljo0;Ljava/lang/Object;)Ljo0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lwv3;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lwv3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p2, p1}, Lwv3;->y(Ljo0;Ljava/lang/Object;)Ljo0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lwv3;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lwv3;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljo0;Ljava/lang/Object;)Ljo0;
    .locals 1

    .line 1
    iget p2, p0, Lwv3;->g:I

    .line 2
    .line 3
    iget-object v0, p0, Lwv3;->b:Li74;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lwv3;

    .line 9
    .line 10
    const/4 p2, 0x2

    .line 11
    invoke-direct {p0, v0, p1, p2}, Lwv3;-><init>(Li74;Ljo0;I)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_0
    new-instance p0, Lwv3;

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    invoke-direct {p0, v0, p1, p2}, Lwv3;-><init>(Li74;Ljo0;I)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    new-instance p2, Lwv3;

    .line 23
    .line 24
    iget p0, p0, Lwv3;->s:I

    .line 25
    .line 26
    invoke-direct {p2, p0, v0, p1}, Lwv3;-><init>(ILi74;Ljo0;)V

    .line 27
    .line 28
    .line 29
    return-object p2

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
