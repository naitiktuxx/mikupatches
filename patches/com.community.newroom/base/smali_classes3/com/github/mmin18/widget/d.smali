.class public Lcom/github/mmin18/widget/d;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Lcom/github/mmin18/widget/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fastBoxBlur(Landroid/graphics/Bitmap;I)V
    .locals 17

    .line 38
    move/from16 v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_6

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 42
    mul-int v2, v1, v10

    new-array v11, v2, [I

    .line 43
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v11

    move v5, v1

    move v8, v1

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 45
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_6

    .line 46
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_5

    .line 47
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_4

    .line 48
    nop

    .line 49
    neg-int v6, v0

    move v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-gt v7, v0, :cond_2

    .line 50
    add-int/lit8 v14, v10, -0x1

    add-int v15, v4, v7

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 51
    move v15, v6

    :goto_4
    if-gt v15, v0, :cond_1

    .line 52
    add-int/lit8 v0, v1, -0x1

    move/from16 v16, v6

    add-int v6, v5, v15

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 53
    mul-int v6, v14, v1

    add-int/2addr v6, v0

    aget v0, v11, v6

    .line 54
    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v9, v6

    .line 55
    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v12, v6

    .line 56
    and-int/lit16 v0, v0, 0xff

    add-int/2addr v13, v0

    .line 57
    add-int/lit8 v8, v8, 0x1

    .line 51
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move/from16 v6, v16

    goto :goto_4

    .line 49
    :cond_1
    move/from16 v16, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    goto :goto_3

    .line 60
    :cond_2
    if-lez v8, :cond_3

    .line 61
    mul-int v0, v4, v1

    add-int/2addr v0, v5

    div-int/2addr v9, v8

    shl-int/lit8 v6, v9, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    div-int/2addr v12, v8

    shl-int/lit8 v7, v12, 0x8

    or-int/2addr v6, v7

    div-int/2addr v13, v8

    or-int/2addr v6, v13

    aput v6, v11, v0

    .line 47
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p1

    goto :goto_2

    .line 46
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    goto :goto_1

    .line 45
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_0

    .line 66
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v11

    move v5, v1

    move v8, v1

    move v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_5

    .line 67
    :catchall_0
    move-exception v0

    .line 69
    :goto_5
    return-void

    .line 38
    :cond_7
    :goto_6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 16
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 23
    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 28
    const/4 p1, 0x3

    invoke-static {p2, p1}, Lcom/github/mmin18/widget/d;->fastBoxBlur(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 31
    :goto_1
    return-void

    .line 17
    :cond_3
    :goto_2
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 0

    .line 11
    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .locals 0

    .line 35
    return-void
.end method
