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

.field private tabsAttached:Z

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
    iput-boolean v1, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

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
    const/high16 p1, 0x43340000    # 180.0f

    invoke-direct {p0, p1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result p1

    iput p1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    .line 73
    const/high16 p1, 0x42400000    # 48.0f

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

    .line 140
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1d

    .line 142
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockWidthPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 144
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockHeightPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 145
    iget v1, p0, Lapp/patches/ui/DockStylePatch;->dockMarginBottomPx:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 146
    iget-object v1, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
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

    .line 365
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 365
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private static fastBoxBlur(Landroid/graphics/Bitmap;I)V
    .registers 19

    .line 337
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 339
    mul-int v1, v9, v10

    new-array v11, v1, [I

    .line 340
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 342
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    const/4 v3, 0x2

    if-ge v2, v3, :cond_8d

    .line 343
    const/4 v3, 0x0

    :goto_20
    if-ge v3, v10, :cond_88

    .line 344
    const/4 v4, 0x0

    :goto_23
    if-ge v4, v9, :cond_83

    .line 345
    nop

    .line 346
    neg-int v5, v0

    move v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2c
    if-gt v6, v0, :cond_6d

    .line 347
    add-int/lit8 v14, v10, -0x1

    add-int v15, v3, v6

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 348
    move v15, v5

    :goto_3b
    if-gt v15, v0, :cond_66

    .line 349
    add-int/lit8 v0, v9, -0x1

    move/from16 v16, v5

    add-int v5, v4, v15

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    mul-int v5, v14, v9

    add-int/2addr v5, v0

    aget v0, v11, v5

    .line 351
    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v7, v5

    .line 352
    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v12, v5

    .line 353
    and-int/lit16 v0, v0, 0xff

    add-int/2addr v13, v0

    .line 354
    add-int/lit8 v8, v8, 0x1

    .line 348
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, p1

    move/from16 v5, v16

    goto :goto_3b

    .line 346
    :cond_66
    move/from16 v16, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    goto :goto_2c

    .line 357
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

    .line 344
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    goto :goto_23

    .line 343
    :cond_83
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p1

    goto :goto_20

    .line 342
    :cond_88
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p1

    goto :goto_1c

    .line 361
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

    .line 362
    return-void
.end method

.method private formatTabsAndAttachTouch()V
    .registers 8

    .line 162
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->removeTabMinWidthRestrictions()V

    .line 163
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-direct {p0, v0}, Lapp/patches/ui/DockStylePatch;->hideAllText(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_f

    return-void

    .line 166
    :cond_f
    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_74

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_74

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 169
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 170
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3d

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 172
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_3d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 176
    const/4 v3, 0x3

    if-lt v2, v3, :cond_74

    .line 177
    const/4 v3, 0x0

    :goto_45
    if-ge v3, v2, :cond_71

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

    if-eqz v6, :cond_67

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
    :cond_67
    iget-boolean v5, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

    if-nez v5, :cond_6e

    .line 190
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 193
    :cond_71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->tabsAttached:Z

    .line 196
    :cond_74
    return-void
.end method

.method private hideAllText(Landroid/view/View;)V
    .registers 4

    .line 151
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 152
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21

    .line 153
    :cond_a
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_21

    .line 154
    check-cast p1, Landroid/view/ViewGroup;

    .line 155
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->hideAllText(Landroid/view/View;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 159
    :cond_21
    :goto_21
    return-void
.end method

.method private init()V
    .registers 3

    .line 89
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_3b

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
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->removeTabMinWidthRestrictions()V

    .line 107
    invoke-direct {p0}, Lapp/patches/ui/DockStylePatch;->formatTabsAndAttachTouch()V

    goto :goto_4c

    .line 110
    :cond_3b
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lapp/patches/ui/DockStylePatch;->dpToPx(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 115
    :goto_4c
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 117
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 120
    :cond_5e
    return-void
.end method

.method private removeTabMinWidthRestrictions()V
    .registers 9

    .line 123
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 124
    :goto_6
    if-eqz v0, :cond_4f

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_4f

    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_4a

    aget-object v5, v1, v4

    .line 126
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 127
    const-string v7, "requestedTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "scrollableTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 128
    const-string v7, "tabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    const-string v7, "defaultTabMinWidth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 130
    :cond_3b
    const/4 v6, 0x1

    :try_start_3c
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    iget-object v6, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_45

    goto :goto_46

    .line 132
    :catchall_45
    move-exception v5

    :goto_46
    nop

    .line 125
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 135
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    .line 137
    :cond_4f
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 19

    .line 233
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_9

    .line 234
    invoke-direct/range {p0 .. p0}, Lapp/patches/ui/DockStylePatch;->formatTabsAndAttachTouch()V

    .line 237
    :cond_9
    iget-boolean v0, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1a8

    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_1a8

    .line 239
    :cond_18
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 240
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 241
    if-lez v3, :cond_1a7

    if-gtz v4, :cond_2a

    goto/16 :goto_1a7

    .line 243
    :cond_2a
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 244
    if-nez v0, :cond_33

    return v2

    .line 247
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 248
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_46

    iget-wide v7, v1, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x21

    cmp-long v11, v7, v9

    if-gez v11, :cond_46

    .line 249
    return v2

    .line 251
    :cond_46
    iput-wide v5, v1, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 253
    nop

    .line 254
    div-int/lit8 v5, v3, 0x8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 255
    div-int/lit8 v6, v4, 0x8

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 257
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_67

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v5, :cond_67

    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v6, :cond_78

    .line 258
    :cond_67
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    .line 259
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    .line 262
    :cond_78
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 263
    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 264
    new-array v5, v5, [I

    .line 265
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 267
    const/4 v7, 0x0

    aget v8, v6, v7

    aget v9, v5, v7

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 268
    aget v6, v6, v2

    aget v5, v5, v2

    sub-int/2addr v6, v5

    int-to-float v5, v6

    .line 270
    iput-boolean v2, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 271
    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 274
    const/high16 v6, 0x3f800000    # 1.0f

    :try_start_9c
    iget-object v10, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 275
    iget-object v11, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    const/16 v12, 0x8

    int-to-float v12, v12

    div-float v12, v6, v12

    invoke-virtual {v11, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 276
    iget-object v11, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    neg-float v8, v8

    neg-float v5, v5

    invoke-virtual {v11, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 278
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->blurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_bd
    .catchall {:try_start_9c .. :try_end_bd} :catchall_be

    goto :goto_bf

    .line 279
    :catchall_be
    move-exception v0

    .line 281
    :goto_bf
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 282
    iput-boolean v7, v1, Lapp/patches/ui/DockStylePatch;->isCapturingBlur:Z

    .line 283
    nop

    .line 286
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lapp/patches/ui/DockStylePatch;->fastBoxBlur(Landroid/graphics/Bitmap;I)V

    .line 290
    iget v0, v1, Lapp/patches/ui/DockStylePatch;->lastW:I

    if-ne v3, v0, :cond_d5

    iget v0, v1, Lapp/patches/ui/DockStylePatch;->lastH:I

    if-eq v4, v0, :cond_fe

    .line 291
    :cond_d5
    iput v3, v1, Lapp/patches/ui/DockStylePatch;->lastW:I

    .line 292
    iput v4, v1, Lapp/patches/ui/DockStylePatch;->lastH:I

    .line 293
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

    fill-array-data v5, :array_1aa

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v0

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 299
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 303
    :cond_fe
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_110

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_110

    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v4, :cond_130

    .line 304
    :cond_110
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    .line 305
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    .line 306
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 309
    :cond_130
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 311
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v0, v9, v9, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 313
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v6, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v6, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 314
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 315
    iget-object v5, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 317
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v9, v9, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 318
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->blurBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iget-object v7, v1, Lapp/patches/ui/DockStylePatch;->filterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 319
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v5, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->glassPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 321
    iget v3, v1, Lapp/patches/ui/DockStylePatch;->strokeWidthPx:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    .line 322
    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 323
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    iget-object v4, v1, Lapp/patches/ui/DockStylePatch;->rectF:Landroid/graphics/RectF;

    iget v5, v1, Lapp/patches/ui/DockStylePatch;->cornerRadiusPx:F

    iget-object v6, v1, Lapp/patches/ui/DockStylePatch;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 326
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, v1, Lapp/patches/ui/DockStylePatch;->outputDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq v0, v3, :cond_19e

    .line 327
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a6

    .line 329
    :cond_19e
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->invalidateSelf()V

    .line 330
    iget-object v0, v1, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 333
    :goto_1a6
    return v2

    .line 241
    :cond_1a7
    :goto_1a7
    return v2

    .line 237
    :cond_1a8
    :goto_1a8
    return v2

    nop

    :array_1aa
    .array-data 4
        0x0
        0x3ee66666    # 0.45f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScrollChanged()V
    .registers 3

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 227
    iget-object v0, p0, Lapp/patches/ui/DockStylePatch;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 228
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/patches/ui/DockStylePatch;->lastBlurTime:J

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    .line 203
    iget-boolean v0, p0, Lapp/patches/ui/DockStylePatch;->isDock:Z

    if-eqz v0, :cond_10

    const v1, 0x3f51eb85    # 0.82f

    goto :goto_13

    :cond_10
    const v1, 0x3f7851ec    # 0.97f

    .line 204
    :goto_13
    if-eqz v0, :cond_19

    const v0, 0x404ccccd    # 3.2f

    goto :goto_1b

    :cond_19
    const/high16 v0, 0x40200000    # 2.5f

    .line 206
    :goto_1b
    if-nez p2, :cond_3c

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 209
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 210
    const-wide/16 v0, 0x55

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 211
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_62

    .line 213
    :cond_3c
    const/4 v1, 0x1

    if-eq p2, v1, :cond_42

    const/4 v1, 0x3

    if-ne p2, v1, :cond_62

    .line 214
    :cond_42
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 215
    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 216
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 217
    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    :cond_62
    :goto_62
    const/4 p1, 0x0

    return p1
.end method
