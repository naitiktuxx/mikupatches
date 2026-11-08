.class public Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlayPauseMorphDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DURATION_MS:J = 0xc8L


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsPlaying:Z

.field private final mLeftPath:Landroid/graphics/Path;

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mRightPath:Landroid/graphics/Path;

.field private mTargetProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    .line 35
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mIsPlaying:Z

    .line 38
    iput v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mTargetProgress:F

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    nop

    .line 46
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    .line 49
    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    :goto_0
    new-instance v1, Landroid/graphics/CornerPathEffect;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float p1, p1, v2

    invoke-direct {v1, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    .line 53
    return-void
.end method

.method private static lerp(FFF)F
    .locals 0

    .line 183
    sub-float/2addr p1, p0

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    .line 120
    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, v3, v6

    add-float/2addr v5, v7

    .line 121
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v7, v4, v6

    add-float/2addr v2, v7

    .line 123
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v4, 0x3f051eb8    # 0.52f

    mul-float v3, v3, v4

    .line 124
    const v4, 0x3ea3d70a    # 0.32f

    mul-float v4, v4, v3

    .line 125
    const v7, 0x3f733333    # 0.95f

    mul-float v7, v7, v3

    .line 126
    const v8, 0x3eb851ec    # 0.36f

    mul-float v8, v8, v3

    .line 127
    div-float/2addr v7, v6

    .line 130
    const v9, 0x3ed70a3d    # 0.42f

    mul-float v9, v9, v3

    sub-float v9, v5, v9

    .line 131
    const v10, 0x3ef5c28f    # 0.48f

    mul-float v3, v3, v10

    add-float/2addr v3, v5

    .line 132
    add-float v10, v9, v3

    div-float/2addr v10, v6

    .line 133
    sub-float v11, v2, v7

    .line 134
    add-float v12, v2, v7

    .line 137
    div-float/2addr v8, v6

    sub-float v13, v5, v8

    sub-float v14, v13, v4

    .line 138
    nop

    .line 139
    add-float/2addr v5, v8

    .line 140
    add-float/2addr v4, v5

    .line 142
    iget v8, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    .line 145
    invoke-static {v9, v14, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v15

    .line 146
    invoke-static {v11, v11, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v6

    .line 147
    invoke-static {v10, v13, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v1

    .line 148
    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v7, v16

    move/from16 v16, v3

    sub-float v3, v2, v7

    move/from16 v17, v4

    invoke-static {v3, v11, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v4

    .line 149
    invoke-static {v10, v13, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v13

    .line 150
    add-float/2addr v7, v2

    move/from16 v18, v2

    invoke-static {v7, v12, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v2

    .line 151
    invoke-static {v9, v14, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v9

    .line 152
    invoke-static {v12, v12, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v14

    .line 154
    move/from16 v19, v7

    iget-object v7, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 155
    iget-object v7, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v7, v15, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v6, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v6, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 159
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 162
    invoke-static {v10, v5, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v1

    .line 163
    invoke-static {v3, v11, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v2

    .line 164
    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v3, v4, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v6

    .line 165
    move/from16 v7, v18

    invoke-static {v7, v11, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v9

    .line 166
    invoke-static {v3, v4, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v3

    .line 167
    invoke-static {v7, v12, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v4

    .line 168
    invoke-static {v10, v5, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v5

    .line 169
    move/from16 v7, v19

    invoke-static {v7, v12, v8}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->lerp(FFF)F

    move-result v7

    .line 171
    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    .line 172
    iget-object v8, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 174
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 175
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 176
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 178
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mLeftPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 179
    iget-object v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mRightPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 180
    return-void

    .line 115
    :cond_1
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 200
    const/4 v0, -0x3

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mIsPlaying:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 104
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 105
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 97
    iget p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mTargetProgress:F

    iput p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    .line 98
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 99
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->invalidateSelf()V

    .line 100
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 93
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    .line 88
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->invalidateSelf()V

    .line 190
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 195
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->invalidateSelf()V

    .line 196
    return-void
.end method

.method public setPlaying(ZZ)V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mIsPlaying:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mIsPlaying:Z

    .line 64
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mTargetProgress:F

    .line 66
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 68
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 71
    :cond_2
    if-nez p2, :cond_3

    .line 72
    iget p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mTargetProgress:F

    iput p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    .line 73
    invoke-virtual {p0}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->invalidateSelf()V

    .line 74
    return-void

    .line 77
    :cond_3
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 p2, 0x0

    iget v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mProgress:F

    aput v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mTargetProgress:F

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    .line 78
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 82
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 83
    return-void
.end method
