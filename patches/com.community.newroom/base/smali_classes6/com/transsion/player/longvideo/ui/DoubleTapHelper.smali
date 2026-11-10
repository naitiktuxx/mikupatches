.class public Lcom/transsion/player/longvideo/ui/DoubleTapHelper;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"


# static fields
.field private static final RESET_TIMEOUT_MS:J = 0x320L

.field private static final TAP_MAX_DISTANCE_DP:F = 45.0f

.field private static final TAP_MAX_DURATION_MS:J = 0x15eL

.field private static accumulatedSeconds:I

.field private static activeIsForward:Z

.field private static activePlayer:Ljava/lang/Object;

.field private static basePosition:J

.field private static cumulativeActive:Z

.field private static downIntercepted:Z

.field private static downTime:J

.field private static downX:F

.field private static downY:F

.field private static lastSkipTime:J

.field private static final mainHandler:Landroid/os/Handler;

.field private static final resetRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$sfputaccumulatedSeconds(I)V
    .locals 0

    sput p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputactivePlayer(Ljava/lang/Object;)V
    .locals 0

    sput-object p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputbasePosition(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputcumulativeActive(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputdownIntercepted(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    .line 23
    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    .line 24
    sput v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    .line 25
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    .line 26
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->lastSkipTime:J

    .line 27
    const/4 v3, 0x0

    sput-object v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    .line 29
    const/4 v3, 0x0

    sput v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    .line 30
    sput v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downY:F

    .line 31
    sput-wide v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downTime:J

    .line 32
    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->mainHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper$1;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper$1;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->resetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applySkip(Ljava/lang/Object;ZZI)V
    .locals 2

    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v1, "local.u0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "LocalVideoMiddleLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "LongVodPlayerView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->applySkipOnline(Ljava/lang/Object;ZZI)V

    goto :goto_1

    .line 193
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->applySkipOffline(Ljava/lang/Object;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_2
    :goto_1
    goto :goto_2

    .line 197
    :catchall_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    :goto_2
    return-void
.end method

.method private static applySkipOffline(Ljava/lang/Object;ZZI)V
    .locals 18

    .line 204
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 208
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "b0"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    const-string v0, "k"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "d2"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 217
    if-eqz v7, :cond_1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :cond_1
    goto :goto_0

    .line 220
    :catchall_0
    move-exception v0

    .line 224
    :goto_0
    const/4 v7, 0x0

    if-eqz p2, :cond_7

    .line 226
    nop

    .line 228
    :try_start_2
    const-string v0, "C3"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v8}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_2

    .line 230
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 232
    :cond_2
    move-object v0, v7

    :goto_1
    move-object v8, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v7

    .line 234
    :goto_2
    if-nez v8, :cond_4

    .line 236
    :try_start_3
    const-string v0, "A3"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 238
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v0

    .line 240
    :cond_3
    :goto_3
    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 243
    :cond_4
    :goto_4
    if-eqz v8, :cond_6

    .line 244
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v9, "d"

    new-array v10, v5, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    invoke-static {v0, v9, v10}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_5

    .line 246
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-virtual {v0, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_5
    invoke-static {v8, v2, v3}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->updateOverlayViews(Ljava/lang/Object;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    .line 250
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 251
    :cond_6
    :goto_5
    nop

    .line 255
    :cond_7
    :goto_6
    nop

    .line 256
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "LocalVideoMiddleLayer"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-string v8, "e0"

    if-eqz v0, :cond_8

    .line 257
    :try_start_6
    invoke-static {v4, v8}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 259
    :cond_8
    if-nez v7, :cond_9

    .line 260
    const-string v0, "v0"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 262
    :cond_9
    if-nez v7, :cond_a

    .line 263
    invoke-static {v4, v8}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 266
    :cond_a
    nop

    .line 267
    const-wide/16 v8, 0x0

    if-eqz v7, :cond_b

    .line 268
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 269
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    goto :goto_7

    .line 267
    :cond_b
    move-wide v10, v8

    .line 272
    :goto_7
    sget-wide v12, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    cmp-long v0, v12, v8

    if-gez v0, :cond_c

    .line 273
    sput-wide v10, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 276
    :cond_c
    nop

    .line 278
    const-wide v12, 0x7fffffffffffffffL

    :try_start_7
    const-string v0, "n1"

    new-array v14, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v14}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_d

    .line 280
    new-array v14, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 283
    :cond_d
    goto :goto_8

    .line 282
    :catchall_4
    move-exception v0

    .line 285
    :goto_8
    int-to-long v14, v3

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 287
    if-eqz p2, :cond_f

    .line 288
    if-eqz v2, :cond_e

    :try_start_8
    sget-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    add-long/2addr v2, v14

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_9

    :cond_e
    sget-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    sub-long/2addr v2, v14

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_9

    .line 290
    :cond_f
    const-wide/16 v14, 0x2710

    if-eqz v2, :cond_10

    add-long/2addr v10, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_9

    :cond_10
    sub-long/2addr v10, v14

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 293
    :goto_9
    if-eqz v7, :cond_11

    .line 294
    invoke-virtual {v7, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 297
    :cond_11
    const-string v0, "H"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v7}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_12

    .line 299
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 300
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_12

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "seekTo"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-static {v1, v4, v7}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_12

    .line 304
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 310
    :cond_12
    goto :goto_a

    .line 308
    :catchall_5
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 311
    :goto_a
    return-void
.end method

.method private static applySkipOnline(Ljava/lang/Object;ZZI)V
    .locals 18

    .line 315
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 319
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "W"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "q"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-static {v7, v8, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 325
    if-eqz v7, :cond_0

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :cond_0
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    .line 332
    :goto_0
    const-string v7, "e"

    if-eqz p2, :cond_8

    .line 334
    nop

    .line 335
    nop

    .line 337
    :try_start_2
    const-string v0, "n"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "MIDDLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 341
    const/4 v0, 0x1

    goto :goto_1

    .line 344
    :cond_1
    const/4 v0, 0x0

    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v0, 0x0

    .line 346
    :goto_2
    const/4 v8, 0x0

    if-eqz v0, :cond_4

    .line 348
    :try_start_3
    const-string v0, "getLocalVideoMiddleForwardViewControl"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_2

    .line 350
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v8, v0

    goto :goto_3

    .line 352
    :catchall_2
    move-exception v0

    :cond_2
    :goto_3
    nop

    .line 353
    if-eqz v8, :cond_6

    .line 354
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    invoke-static {v0, v7, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_3

    .line 356
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-virtual {v0, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 358
    :cond_3
    goto :goto_5

    .line 361
    :cond_4
    :try_start_5
    const-string v0, "getLocalVideoLandForwardViewControl"

    new-array v9, v6, [Ljava/lang/Class;

    invoke-static {v4, v0, v9}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_5

    .line 363
    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v8, v0

    goto :goto_4

    .line 365
    :catchall_3
    move-exception v0

    :cond_5
    :goto_4
    nop

    .line 366
    if-eqz v8, :cond_6

    .line 367
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v9, "d"

    new-array v10, v5, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    invoke-static {v0, v9, v10}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_6

    .line 369
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-virtual {v0, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 377
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 374
    :cond_6
    :goto_5
    if-eqz v8, :cond_7

    .line 375
    invoke-static {v8, v2, v3}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->updateOverlayViews(Ljava/lang/Object;ZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 378
    :cond_7
    nop

    .line 382
    :cond_8
    :goto_6
    :try_start_7
    const-string v0, "t"

    invoke-static {v4, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 383
    nop

    .line 384
    const-wide/16 v8, 0x0

    if-eqz v0, :cond_9

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v10

    goto :goto_7

    .line 384
    :cond_9
    move-wide v10, v8

    .line 389
    :goto_7
    sget-wide v12, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    cmp-long v14, v12, v8

    if-gez v14, :cond_a

    .line 390
    sput-wide v10, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    .line 393
    :cond_a
    const-string v12, "r"

    invoke-static {v4, v12}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 394
    nop

    .line 395
    if-eqz v12, :cond_b

    .line 396
    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 397
    invoke-virtual {v12, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v12

    goto :goto_8

    .line 395
    :cond_b
    const-wide v12, 0x7fffffffffffffffL

    .line 400
    :goto_8
    int-to-long v14, v3

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    .line 402
    if-eqz p2, :cond_d

    .line 403
    if-eqz v2, :cond_c

    sget-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    add-long/2addr v2, v14

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_9

    :cond_c
    sget-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    sub-long/2addr v2, v14

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_9

    .line 405
    :cond_d
    const-wide/16 v14, 0x2710

    if-eqz v2, :cond_e

    add-long/2addr v10, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_9

    :cond_e
    sub-long/2addr v10, v14

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 408
    :goto_9
    if-eqz v0, :cond_f

    .line 409
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 412
    :cond_f
    invoke-static {v4, v7}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_10

    .line 414
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_10

    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "seekTo"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-static {v1, v4, v7}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_10

    .line 419
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 425
    :cond_10
    goto :goto_a

    .line 423
    :catchall_5
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 426
    :goto_a
    return-void
.end method

.method public static cancelCumulative()V
    .locals 3

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    .line 150
    sput v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    .line 151
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    .line 152
    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 153
    sget-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private static dpToPx(Landroid/content/Context;F)F
    .locals 1

    .line 522
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 525
    :goto_0
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    return p1
.end method

.method private static findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 487
    nop

    .line 488
    :goto_0
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 490
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 491
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 497
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs findMethodInHierarchy(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 501
    nop

    .line 502
    :goto_0
    if-eqz p0, :cond_0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    .line 504
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 505
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 509
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 511
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getScreenWidth(Landroid/view/View;)I
    .locals 1

    .line 515
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    .line 518
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static onDoubleTapSkip(Ljava/lang/Object;ZZ)V
    .locals 10

    .line 161
    if-nez p0, :cond_0

    return-void

    .line 162
    :cond_0
    sput-object p0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 165
    const-wide/16 v2, -0x1

    const/16 v4, 0xa

    if-eqz p2, :cond_2

    .line 166
    sget-boolean v5, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    const-wide/16 v6, 0x320

    if-eqz v5, :cond_1

    sget-wide v8, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->lastSkipTime:J

    sub-long v8, v0, v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    sget-boolean v5, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    if-ne v5, p1, :cond_1

    .line 167
    sget v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    add-int/2addr v2, v4

    sput v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    goto :goto_0

    .line 169
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    .line 170
    sput-boolean p1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    .line 171
    sput v4, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    .line 172
    sput-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    .line 174
    :goto_0
    sput-wide v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->lastSkipTime:J

    .line 176
    sget-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    sget-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 179
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    .line 180
    sput v4, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    .line 181
    sput-wide v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->basePosition:J

    .line 184
    :goto_1
    sget v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->accumulatedSeconds:I

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->applySkip(Ljava/lang/Object;ZZI)V

    .line 185
    return-void
.end method

.method public static onInterceptTouchEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    .line 51
    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 54
    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/16 v4, 0x320

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_7

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sput v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sput v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downY:F

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downTime:J

    .line 58
    sput-boolean v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 60
    sget-boolean v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 62
    sget-wide v10, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->lastSkipTime:J

    sub-long/2addr v8, v10

    cmp-long v2, v8, v4

    if-gez v2, :cond_6

    .line 63
    sget v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    .line 64
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->getScreenWidth(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    .line 65
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_1

    .line 66
    new-array v2, v6, [I

    .line 67
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 68
    sget v4, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float v2, v4, v2

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 72
    :cond_1
    mul-float v4, v4, v3

    cmpl-float v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 73
    :goto_0
    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 75
    :goto_1
    sget-boolean v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_5

    :cond_4
    sget-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    if-nez v0, :cond_6

    if-eqz v2, :cond_6

    .line 76
    :cond_5
    sget-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    sput-boolean v7, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 78
    return v7

    .line 82
    :cond_6
    return v1

    .line 85
    :cond_7
    const/high16 v8, 0x42340000    # 45.0f

    const/4 v9, 0x0

    if-ne v2, v6, :cond_c

    .line 86
    sget-boolean v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sget v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sget v4, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 89
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    :cond_8
    invoke-static {v9, v8}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    .line 90
    cmpl-float v2, v2, v0

    if-gtz v2, :cond_a

    cmpl-float v0, v3, v0

    if-lez v0, :cond_9

    goto :goto_2

    .line 95
    :cond_9
    return v7

    .line 91
    :cond_a
    :goto_2
    invoke-static {}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cancelCumulative()V

    .line 92
    sput-boolean v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 93
    return v1

    .line 97
    :cond_b
    return v1

    .line 100
    :cond_c
    if-ne v2, v7, :cond_16

    .line 101
    sget-boolean v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    if-nez v2, :cond_d

    .line 102
    return v1

    .line 104
    :cond_d
    sput-boolean v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 107
    sget-wide v12, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downTime:J

    sub-long v12, v10, v12

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sget v14, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    sub-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    sget v15, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downY:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 110
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    :cond_e
    invoke-static {v9, v8}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->dpToPx(Landroid/content/Context;F)F

    move-result v8

    .line 112
    const-wide/16 v15, 0x15e

    cmp-long v9, v12, v15

    if-gez v9, :cond_f

    cmpg-float v2, v2, v8

    if-gez v2, :cond_f

    cmpg-float v2, v14, v8

    if-gez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_3

    :cond_f
    const/4 v2, 0x0

    .line 114
    :goto_3
    sget-boolean v8, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    if-eqz v8, :cond_15

    sget-object v8, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    if-eqz v8, :cond_15

    if-eqz v2, :cond_15

    sget-wide v8, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->lastSkipTime:J

    sub-long/2addr v10, v8

    cmp-long v2, v10, v4

    if-gez v2, :cond_15

    .line 115
    sget v2, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    .line 116
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->getScreenWidth(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    .line 117
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_10

    .line 118
    new-array v2, v6, [I

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    sget v4, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downX:F

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float v2, v4, v2

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 124
    :cond_10
    mul-float v4, v4, v3

    cmpl-float v0, v2, v4

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    .line 125
    :goto_4
    cmpg-float v2, v2, v4

    if-gez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_5

    :cond_12
    const/4 v2, 0x0

    .line 127
    :goto_5
    sget-boolean v3, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    if-eqz v3, :cond_13

    if-nez v0, :cond_14

    :cond_13
    sget-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    if-nez v0, :cond_15

    if-eqz v2, :cond_15

    .line 128
    :cond_14
    sget-object v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activePlayer:Ljava/lang/Object;

    sget-boolean v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->activeIsForward:Z

    invoke-static {v0, v1, v7}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->onDoubleTapSkip(Ljava/lang/Object;ZZ)V

    .line 129
    return v7

    .line 133
    :cond_15
    invoke-static {}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cancelCumulative()V

    .line 134
    return v1

    .line 137
    :cond_16
    const/4 v0, 0x3

    if-ne v2, v0, :cond_18

    .line 138
    sput-boolean v1, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->downIntercepted:Z

    .line 139
    sget-boolean v0, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cumulativeActive:Z

    if-eqz v0, :cond_17

    .line 140
    invoke-static {}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->cancelCumulative()V

    .line 142
    :cond_17
    return v1

    .line 145
    :cond_18
    return v1
.end method

.method private static updateOverlayViews(Ljava/lang/Object;ZI)V
    .locals 7

    .line 429
    if-nez p0, :cond_0

    return-void

    .line 431
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 432
    if-nez v0, :cond_1

    return-void

    .line 433
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 434
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 435
    if-nez p0, :cond_2

    return-void

    .line 437
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " seconds"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 440
    const-string v2, "playAnimation"

    const/4 v3, 0x0

    const-string v4, "setProgress"

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    .line 441
    :try_start_1
    const-string p1, "e"

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 442
    if-eqz p1, :cond_3

    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 444
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 445
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_3
    const-string p1, "c"

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 449
    if-eqz p1, :cond_4

    .line 450
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 451
    if-eqz p0, :cond_4

    .line 453
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v5

    invoke-virtual {p1, v4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 454
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 456
    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 460
    :cond_4
    goto :goto_2

    .line 461
    :cond_5
    :try_start_3
    const-string p1, "d"

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 462
    if-eqz p1, :cond_6

    .line 463
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 464
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 465
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_6
    const-string p1, "b"

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->findFieldInHierarchy(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 469
    if-eqz p1, :cond_7

    .line 470
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 471
    if-eqz p0, :cond_7

    .line 473
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v5

    invoke-virtual {p1, v4, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 474
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 476
    new-array p2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 477
    :catchall_1
    move-exception p0

    :goto_1
    nop

    .line 483
    :cond_7
    :goto_2
    goto :goto_3

    .line 481
    :catchall_2
    move-exception p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    :goto_3
    return-void
.end method
