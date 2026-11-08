.class public final Lapp/patches/ui/DockStylePatch;
.super Ljava/lang/Object;
.source "DockStylePatch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurCanvas:Landroid/graphics/Canvas;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final cornerRadiusPx:F

.field private final ctx:Landroid/content/Context;

.field private final dockHeightPx:I

.field private final dockMarginBottomPx:I

.field private final dockWidthPx:I

.field private final filterPaint:Landroid/graphics/Paint;

.field private final glassPaint:Landroid/graphics/Paint;

.field private isCapturingBlur:Z

.field private final isDock:Z

.field private lastBlurTime:J

.field private lastH:I

.field private lastW:I

.field private outputBitmap:Landroid/graphics/Bitmap;

.field private outputCanvas:Landroid/graphics/Canvas;

.field private outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final rectF:Landroid/graphics/RectF;

.field private final strokeWidthPx:F

.field private tabsFormatted:Z

.field private final targetView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Z)V
    .registers 8

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lapp/patches/ui/DockStylePatch;->glassPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lapp/patches/ui/DockStylePatch;->filterPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    .line 50
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 52
    iput-boolean v1, p0, Lapp/patches/ui/DockStylePatch;->tabsFormatted:Z

    .line 53
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 54
    iput v1, p0, Lapp/patches/ui/DockStylePatch;->lastW:I

    .line 55
    iput v1, p0, Lapp/patches/ui/DockStylePatch;->lastH:I

    .line 68
    iput-object p1, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    .line 69
    iput-boolean p2, p0, Lapp/patches/ui/DockStylePatch;->isDock:Z

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    .line 72
    const/high16 p1, 0x43200000    # 160.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    .line 73
    const/high16 p1, 0x42380000    # 46.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockHeightPx:I

    .line 74
    const/high16 p1, 0x41900000    # 18.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockMarginBottomPx:I

    .line 75
    const p1, 0x4479c000    # 999.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    .line 76
    const p1, 0x3f99999a    # 1.2f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->strokeWidthPx:F

    .line 79
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    const p2, 0x66101014

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    const p1, 0x55ffffff    # 3.518437E13f

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    return-void
.end method

.method private applyDockGeometry()V
    .registers 3

    .line 137
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 138
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1d

    .line 139
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 140
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 141
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockHeightPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 142
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockMarginBottomPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 143
    iget-object v1, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_1d
    return-void
.end method

.method public static applyGlassSearchBar(Landroid/view/View;)V
    .registers 3

    .line 63
    if-nez p0, :cond_3

    return-void

    .line 64
    :cond_3
    new-instance v0, Lapp/patches/ui/DockStylePatch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lapp/patches/ui/DockStylePatch;-><init>(Landroid/view/View;Z)V

    invoke-direct {v0}, Lapp/patches/ui/DockStylePatch;->init()V

    .line 65
    return-void
.end method

.method public static applyMattePillDock(Landroid/view/View;)V
    .registers 3

    .line 58
    if-nez p0, :cond_3

    return-void

    .line 59
    :cond_3
    new-instance v0, Lapp/patches/ui/DockStylePatch;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lapp/patches/ui/DockStylePatch;-><init>(Landroid/view/View;Z)V

    invoke-direct {v0}, Lapp/patches/ui/DockStylePatch;->init()V

    .line 60
    return-void
.end method

.method private dpToPx(F)I
    .registers 4

    .line 398
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    .line 399
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 398
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private static fastBoxBlur(Landroid/graphics/Bitmap;I)V
    .registers 20

    .line 335
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 337
    if-lez v9, :cond_14d

    if-gtz v10, :cond_10

    goto/16 :goto_14d

    .line 338
    :cond_10
    mul-int v1, v9, v10

    .line 339
    new-array v11, v1, [I

    .line 340
    new-array v12, v1, [I

    .line 341
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 343
    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 346
    const/4 v4, 0x0

    :goto_27
    const/high16 v5, -0x1000000

    if-ge v4, v10, :cond_b2

    .line 347
    mul-int v6, v4, v9

    .line 348
    aget v7, v11, v6

    .line 349
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v13, v0, 0x1

    mul-int v8, v8, v13

    .line 350
    shr-int/lit8 v14, v7, 0x8

    and-int/lit16 v14, v14, 0xff

    mul-int v14, v14, v13

    .line 351
    and-int/lit16 v7, v7, 0xff

    mul-int v7, v7, v13

    .line 353
    const/4 v13, 0x1

    :goto_42
    if-gt v13, v0, :cond_5e

    .line 354
    add-int/lit8 v15, v9, -0x1

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int/2addr v15, v6

    aget v15, v11, v15

    .line 355
    shr-int/lit8 v2, v15, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v8, v2

    .line 356
    shr-int/lit8 v2, v15, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v14, v2

    .line 357
    and-int/lit16 v2, v15, 0xff

    add-int/2addr v7, v2

    .line 353
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_42

    .line 360
    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v9, :cond_ac

    .line 361
    add-int v13, v6, v2

    div-int v15, v8, v1

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v15, v5

    div-int v17, v14, v1

    shl-int/lit8 v17, v17, 0x8

    or-int v15, v15, v17

    div-int v17, v7, v1

    or-int v15, v15, v17

    aput v15, v12, v13

    .line 362
    sub-int v13, v2, v0

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/2addr v13, v6

    aget v13, v11, v13

    .line 363
    add-int/lit8 v15, v9, -0x1

    add-int v17, v2, v0

    const/16 v16, 0x1

    add-int/lit8 v3, v17, 0x1

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v6

    aget v3, v11, v3

    .line 364
    shr-int/lit8 v15, v3, 0x10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v5, v13, 0x10

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v15, v5

    add-int/2addr v8, v15

    .line 365
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v15, v13, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v5, v15

    add-int/2addr v14, v5

    .line 366
    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v5, v13, 0xff

    sub-int/2addr v3, v5

    add-int/2addr v7, v3

    .line 360
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, -0x1000000

    goto :goto_5f

    .line 346
    :cond_ac
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_27

    .line 371
    :cond_b2
    const/4 v2, 0x0

    :goto_b3
    if-ge v2, v9, :cond_140

    .line 372
    aget v3, v12, v2

    .line 373
    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    mul-int v4, v4, v5

    .line 374
    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    mul-int v6, v6, v5

    .line 375
    and-int/lit16 v3, v3, 0xff

    mul-int v3, v3, v5

    .line 377
    const/4 v5, 0x1

    :goto_ca
    if-gt v5, v0, :cond_e7

    .line 378
    add-int/lit8 v7, v10, -0x1

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v7, v7, v9

    add-int/2addr v7, v2

    aget v7, v12, v7

    .line 379
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 380
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 381
    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 377
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 384
    :cond_e7
    const/4 v5, 0x0

    :goto_e8
    if-ge v5, v10, :cond_138

    .line 385
    mul-int v7, v5, v9

    add-int/2addr v7, v2

    div-int v8, v4, v1

    shl-int/lit8 v8, v8, 0x10

    const/high16 v13, -0x1000000

    or-int/2addr v8, v13

    div-int v14, v6, v1

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v8, v14

    div-int v14, v3, v1

    or-int/2addr v8, v14

    aput v8, v11, v7

    .line 386
    sub-int v7, v5, v0

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int v7, v7, v9

    add-int/2addr v7, v2

    aget v7, v12, v7

    .line 387
    add-int/lit8 v14, v10, -0x1

    add-int v15, v5, v0

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    mul-int v14, v14, v9

    add-int/2addr v14, v2

    aget v14, v12, v14

    .line 388
    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v15, v8

    add-int/2addr v4, v15

    .line 389
    shr-int/lit8 v8, v14, 0x8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v15, v7, 0x8

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v8, v15

    add-int/2addr v6, v8

    .line 390
    and-int/lit16 v8, v14, 0xff

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v8, v7

    add-int/2addr v3, v8

    .line 384
    add-int/lit8 v5, v5, 0x1

    goto :goto_e8

    .line 371
    :cond_138
    const/high16 v13, -0x1000000

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b3

    .line 394
    :cond_140
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 395
    return-void

    .line 337
    :cond_14d
    :goto_14d
    return-void
.end method

.method private formatTabsAndAttachTouch()V
    .registers 8

    .line 159
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->tabsFormatted:Z

    if-eqz v0, :cond_5

    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_c

    return-void

    .line 162
    :cond_c
    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_75

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_75

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 166
    const/4 v3, 0x3

    if-lt v2, v3, :cond_75

    .line 167
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->removeTabMinWidthRestrictions()V

    .line 168
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-direct {p0, v3}, Lapp/patches/ui/DockStylePatch;->hideAllText(Landroid/view/View;)V

    .line 170
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_49

    .line 172
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 174
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_49
    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_72

    .line 178
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 179
    invoke-virtual {v4, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 180
    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 181
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 182
    instance-of v6, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_6c

    .line 183
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 185
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 186
    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :cond_6c
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 191
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->tabsFormatted:Z

    .line 194
    :cond_75
    return-void
.end method

.method private hideAllText(Landroid/view/View;)V
    .registers 4

    .line 148
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 149
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 150
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 151
    check-cast p1, Landroid/view/ViewGroup;

    .line 152
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->hideAllText(Landroid/view/View;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 156
    :cond_21
    :goto_21
    return-void
.end method

.method private init()V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_38

    .line 91
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->applyDockGeometry()V

    .line 92
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 93
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    .line 97
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 104
    :cond_34
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->formatTabsAndAttachTouch()V

    goto :goto_49

    .line 107
    :cond_38
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 112
    :goto_49
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 114
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 117
    :cond_5b
    return-void
.end method

.method private removeTabMinWidthRestrictions()V
    .registers 9

    .line 120
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    :goto_6
    if-eqz v0, :cond_4f

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_4f

    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_4a

    aget-object v5, v1, v4

    .line 123
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 124
    const-string v7, "requestedTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "scrollableTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 125
    const-string v7, "tabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "defaultTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 127
    :cond_3b
    const/4 v6, 0x1

    :try_start_3c
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    iget-object v6, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_45

    goto :goto_46

    .line 129
    :catchall_45
    move-exception v5

    :goto_46
    nop

    .line 122
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 132
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    .line 134
    :cond_4f
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 19

    .line 231
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v1, Lapp/patches/ui/DockStylePatch;->tabsFormatted:Z

    if-nez v0, :cond_d

    .line 232
    invoke-direct/range {p0 .. p0}, Lapp/patches/ui/DockStylePatch;->formatTabsAndAttachTouch()V

    .line 235
    :cond_d
    iget-boolean v0, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1a7

    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_1a7

    .line 237
    :cond_1c
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 238
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 239
    if-lez v3, :cond_1a6

    if-gtz v4, :cond_2e

    goto/16 :goto_1a6

    .line 241
    :cond_2e
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 242
    if-nez v0, :cond_37

    return v2

    .line 245
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 246
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_4a

    iget-wide v7, v1, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3c

    cmp-long v11, v7, v9

    if-gez v11, :cond_4a

    .line 247
    return v2

    .line 249
    :cond_4a
    iput-wide v5, v1, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 251
    nop

    .line 252
    div-int/lit8 v5, v3, 0x8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 253
    div-int/lit8 v6, v4, 0x8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 255
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_6b

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v5, :cond_6b

    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v6, :cond_7c

    .line 256
    :cond_6b
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    .line 257
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    .line 260
    :cond_7c
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 261
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 262
    new-array v5, v5, [I

    .line 263
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 265
    const/4 v7, 0x0

    aget v8, v6, v7

    aget v9, v5, v7

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 266
    aget v6, v6, v2

    aget v5, v5, v2

    sub-int/2addr v6, v5

    int-to-float v5, v6

    .line 268
    iput-boolean v2, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 269
    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 272
    const/high16 v6, 0x3f800000    # 1.0f

    :try_start_a0
    iget-object v10, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 273
    iget-object v11, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    const/16 v12, 0x8

    int-to-float v12, v12

    div-float v12, v6, v12

    invoke-virtual {v11, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 274
    iget-object v11, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    neg-float v8, v8

    neg-float v5, v5

    invoke-virtual {v11, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 275
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 276
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_c1
    .catchall {:try_start_a0 .. :try_end_c1} :catchall_c2

    goto :goto_c3

    .line 277
    :catchall_c2
    move-exception v0

    .line 279
    :goto_c3
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 280
    iput-boolean v7, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 281
    nop

    .line 284
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lapp/patches/ui/DockStylePatch;->fastBoxBlur(Landroid/graphics/Bitmap;I)V

    .line 288
    iget v0, v1, Lapp/patches/ui/DockStylePatch;->lastW:I

    if-ne v3, v0, :cond_d9

    iget v0, v1, Lapp/patches/ui/DockStylePatch;->lastH:I

    if-eq v4, v0, :cond_102

    .line 289
    :cond_d9
    iput v3, v1, Lapp/patches/ui/DockStylePatch;->lastW:I

    .line 290
    iput v4, v1, Lapp/patches/ui/DockStylePatch;->lastH:I

    .line 291
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v4

    const v6, 0x35ffffff

    const v8, 0x18ffffff

    const v10, -0x7f000001

    filled-new-array {v10, v6, v8}, [I

    move-result-object v15

    new-array v5, v5, [F

    fill-array-data v5, :array_1a8

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 297
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 301
    :cond_102
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_114

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_114

    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v4, :cond_134

    .line 302
    :cond_114
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    .line 303
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    .line 304
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 307
    :cond_134
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 309
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v0, v9, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 311
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v6, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 312
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 313
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 315
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 316
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->filterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 317
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v5, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->glassPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 319
    iget v3, v1, Lapp/patches/ui/DockStylePatch;->strokeWidthPx:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 320
    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 321
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v5, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 322
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 324
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v0, v3, :cond_1a2

    .line 325
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a5

    .line 327
    :cond_1a2
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 330
    :goto_1a5
    return v2

    .line 239
    :cond_1a6
    :goto_1a6
    return v2

    .line 235
    :cond_1a7
    :goto_1a7
    return v2

    :array_1a8
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScrollChanged()V
    .registers 2

    .line 225
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 226
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    .line 201
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_10

    const v1, 0x3f51eb85    # 0.82f

    goto :goto_13

    :cond_10
    const v1, 0x3f7851ec    # 0.97f

    .line 202
    :goto_13
    if-eqz v0, :cond_19

    const v0, 0x404ccccd    # 3.2f

    goto :goto_1b

    :cond_19
    const/high16 v0, 0x40200000    # 2.5f

    .line 204
    :goto_1b
    if-nez p2, :cond_3c

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 208
    const-wide/16 v0, 0x55

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_62

    .line 211
    :cond_3c
    const/4 v1, 0x1

    if-eq p2, v1, :cond_42

    const/4 v1, 0x3

    if-ne p2, v1, :cond_62

    .line 212
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 213
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 215
    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 216
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 219
    :cond_62
    :goto_62
    const/4 p1, 0x0

    return p1
.end method
