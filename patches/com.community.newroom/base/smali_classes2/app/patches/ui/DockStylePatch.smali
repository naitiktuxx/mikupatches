.class public final Lapp/patches/ui/DockStylePatch;
.super Ljava/lang/Object;
.source "DockStylePatch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private blurBitmap:Landroid/graphics/Bitmap;

.field private blurCanvas:Landroid/graphics/Canvas;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final clipPath:Landroid/graphics/Path;

.field private final cornerRadiusPx:F

.field private final ctx:Landroid/content/Context;

.field private final dockHeightPx:I

.field private final dockMarginBottomPx:I

.field private final dockPaddingSidePx:I

.field private final dockView:Landroid/view/View;

.field private final dockWidthPx:I

.field private final filterPaint:Landroid/graphics/Paint;

.field private final glassPaint:Landroid/graphics/Paint;

.field private isCapturingBlur:Z

.field private needsBlurUpdate:Z

.field private outputBitmap:Landroid/graphics/Bitmap;

.field private outputCanvas:Landroid/graphics/Canvas;

.field private outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final rectF:Landroid/graphics/RectF;

.field private final strokeWidthPx:F

.field private tabsAttached:Z


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lapp/patches/ui/DockStylePatch;->glassPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->filterPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    .line 46
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    .line 47
    const/4 v3, 0x0

    iput-boolean v3, p0, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 48
    iput-boolean v1, p0, Lapp/patches/ui/DockStylePatch;->needsBlurUpdate:Z

    .line 49
    iput-boolean v3, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

    .line 57
    iput-object p1, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    .line 61
    const/high16 p1, 0x43540000    # 212.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    .line 62
    const/high16 p1, 0x42500000    # 52.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockHeightPx:I

    .line 63
    const/high16 p1, 0x41900000    # 18.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockMarginBottomPx:I

    .line 64
    const/high16 p1, 0x41200000    # 10.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockPaddingSidePx:I

    .line 65
    const p1, 0x4479c000    # 999.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    .line 66
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->strokeWidthPx:F

    .line 68
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    const v1, -0x47edede8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    const p1, 0x38ffffff

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    return-void
.end method

.method private applyDockGeometry()V
    .registers 3

    .line 104
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 105
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1d

    .line 106
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 108
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockHeightPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 109
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockMarginBottomPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    iget-object v1, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_1d
    return-void
.end method

.method public static applyMattePillDock(Landroid/view/View;)V
    .registers 2

    .line 52
    if-nez p0, :cond_3

    return-void

    .line 53
    :cond_3
    new-instance v0, Lapp/patches/ui/DockStylePatch;

    invoke-direct {v0, p0}, Lapp/patches/ui/DockStylePatch;-><init>(Landroid/view/View;)V

    invoke-direct {v0}, Lapp/patches/ui/DockStylePatch;->init()V

    .line 54
    return-void
.end method

.method private attachTabTouchListenersIfNeeded()V
    .registers 5

    .line 115
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_b

    goto :goto_3a

    .line 116
    :cond_b
    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_39

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_39

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 120
    const/4 v3, 0x3

    if-lt v2, v3, :cond_39

    .line 121
    nop

    :goto_2a
    if-ge v1, v2, :cond_36

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 124
    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

    .line 127
    :cond_39
    return-void

    .line 115
    :cond_3a
    :goto_3a
    return-void
.end method

.method private dpToPx(F)I
    .registers 4

    .line 274
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    .line 275
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 274
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private static fastBoxBlur(Landroid/graphics/Bitmap;I)V
    .registers 19

    .line 246
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 248
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 249
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    const/4 v3, 0x2

    if-ge v2, v3, :cond_8d

    .line 252
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v10, :cond_88

    .line 253
    const/4 v4, 0x0

    :goto_23
    if-ge v4, v9, :cond_83

    .line 254
    nop

    .line 255
    neg-int v5, v0

    move v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2c
    if-gt v6, v0, :cond_6d

    .line 256
    add-int/lit8 v14, v10, -0x1

    add-int v15, v3, v6

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 257
    move v15, v5

    :goto_3b
    if-gt v15, v0, :cond_66

    .line 258
    add-int/lit8 v0, v9, -0x1

    move/from16 v16, v5

    add-int v5, v4, v15

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    mul-int v5, v14, v9

    add-int/2addr v5, v0

    aget v0, v11, v5

    .line 260
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v7, v5

    .line 261
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v12, v5

    .line 262
    and-int/lit16 v0, v0, 0xff

    add-int/2addr v13, v0

    .line 263
    add-int/lit8 v8, v8, 0x1

    .line 257
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move/from16 v5, v16

    goto :goto_3b

    .line 255
    :cond_66
    move/from16 v16, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    goto :goto_2c

    .line 266
    :cond_6d
    mul-int v0, v3, v9

    add-int/2addr v0, v4

    div-int/2addr v7, v8

    shl-int/lit8 v5, v7, 0x10

    const/high16 v6, -0x1000000

    or-int/2addr v5, v6

    div-int/2addr v12, v8

    shl-int/lit8 v6, v12, 0x8

    or-int/2addr v5, v6

    div-int/2addr v13, v8

    or-int/2addr v5, v13

    aput v5, v11, v0

    .line 253
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    goto :goto_23

    .line 252
    :cond_83
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_20

    .line 251
    :cond_88
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    goto :goto_1c

    .line 270
    :cond_8d
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 271
    return-void
.end method

.method private init()V
    .registers 4

    .line 78
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->applyDockGeometry()V

    .line 79
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 80
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockPaddingSidePx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    .line 84
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 91
    :cond_32
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->attachTabTouchListenersIfNeeded()V

    .line 94
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 96
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 100
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->needsBlurUpdate:Z

    .line 101
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 159
    return-void
.end method

.method public onPreDraw()Z
    .registers 13

    .line 164
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->attachTabTouchListenersIfNeeded()V

    .line 166
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15f

    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_15f

    .line 168
    :cond_12
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 169
    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 170
    if-lez v0, :cond_15e

    if-gtz v2, :cond_24

    goto/16 :goto_15e

    .line 172
    :cond_24
    iget-boolean v3, p0, Lapp/patches/ui/DockStylePatch;->needsBlurUpdate:Z

    if-nez v3, :cond_2d

    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2d

    .line 173
    return v1

    .line 176
    :cond_2d
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 177
    if-nez v3, :cond_36

    return v1

    .line 179
    :cond_36
    nop

    .line 180
    div-int/lit8 v4, v0, 0x8

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 181
    div-int/lit8 v5, v2, 0x8

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 183
    iget-object v6, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_55

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_55

    iget-object v6, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_66

    .line 184
    :cond_55
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    .line 185
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    .line 188
    :cond_66
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 189
    iget-object v6, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 190
    new-array v4, v4, [I

    .line 191
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 193
    const/4 v6, 0x0

    aget v7, v5, v6

    aget v8, v4, v6

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 194
    aget v5, v5, v1

    aget v4, v4, v1

    sub-int/2addr v5, v4

    int-to-float v4, v5

    .line 196
    iput-boolean v1, p0, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 197
    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 199
    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 200
    iget-object v9, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    const/16 v10, 0x8

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    invoke-virtual {v9, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 201
    iget-object v9, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    neg-float v7, v7

    neg-float v4, v4

    invoke-virtual {v9, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 202
    iget-object v4, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 205
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    .line 206
    iput-boolean v6, p0, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 209
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lapp/patches/ui/DockStylePatch;->fastBoxBlur(Landroid/graphics/Bitmap;I)V

    .line 212
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_ca

    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_ea

    .line 213
    :cond_ca
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    .line 214
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    .line 215
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 218
    :cond_ea
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 220
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v8, v8, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 222
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    iget-object v4, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v5, p0, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v5, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 223
    iget-object v3, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 224
    iget-object v4, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 226
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v8, v8, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 227
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget-object v7, p0, Lapp/patches/ui/DockStylePatch;->filterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v5, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->glassPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 230
    iget v0, p0, Lapp/patches/ui/DockStylePatch;->strokeWidthPx:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 231
    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 232
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v5, p0, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 233
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 235
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v0, v2, :cond_158

    .line 236
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->dockView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15b

    .line 238
    :cond_158
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 241
    :goto_15b
    iput-boolean v6, p0, Lapp/patches/ui/DockStylePatch;->needsBlurUpdate:Z

    .line 242
    return v1

    .line 170
    :cond_15e
    :goto_15e
    return v1

    .line 166
    :cond_15f
    :goto_15f
    return v1
.end method

.method public onScrollChanged()V
    .registers 2

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->needsBlurUpdate:Z

    .line 154
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    .line 133
    if-nez p2, :cond_28

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 135
    const p2, 0x3f51eb85    # 0.82f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 137
    const-wide/16 v0, 0x55

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_51

    .line 140
    :cond_28
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2e

    const/4 v0, 0x3

    if-ne p2, v0, :cond_51

    .line 141
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 142
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 144
    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x404ccccd    # 3.2f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    :cond_51
    :goto_51
    const/4 p1, 0x0

    return p1
.end method
