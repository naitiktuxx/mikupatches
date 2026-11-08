.class public Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;
.super Ljava/lang/Object;
.source "LandscapeAnimationHelper.java"


# static fields
.field private static final ACCEL:Landroid/view/animation/AccelerateInterpolator;

.field public static final BRAND_RED:I = -0xad3c4

.field public static final COLOR_WHITE:I = -0x1

.field private static final DECEL:Landroid/view/animation/DecelerateInterpolator;

.field private static final EASE_IN_OUT:Landroid/view/animation/AccelerateDecelerateInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 33
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->EASE_IN_OUT:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method public static animateBackButton(Landroid/view/View;)V
    .locals 2

    .line 200
    if-nez p0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 203
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 204
    const v0, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 208
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 209
    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 210
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 212
    return-void
.end method

.method public static animateButtonPress(Landroid/view/View;)V
    .locals 2

    .line 218
    if-nez p0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 222
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 226
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 227
    const-wide/16 v0, 0x82

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 230
    return-void
.end method

.method public static animateColorOptionSelect(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 512
    if-nez p0, :cond_0

    return-void

    .line 514
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 521
    const v0, 0x3f8a3d71    # 1.08f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 522
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 523
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 524
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;-><init>(Landroid/view/View;)V

    .line 525
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 537
    return-void
.end method

.method public static animateDelayValueChange(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3

    .line 488
    if-nez p0, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 490
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 491
    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 492
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 493
    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 506
    return-void
.end method

.method public static animateFitFill(Landroid/view/View;)V
    .locals 2

    .line 179
    if-nez p0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 183
    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 185
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 190
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 191
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 194
    return-void
.end method

.method public static animateForward(Landroid/view/View;)V
    .locals 2

    .line 98
    if-nez p0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 102
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 104
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 110
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    return-void
.end method

.method public static animateLock(Landroid/view/View;Z)V
    .locals 4

    .line 122
    if-nez p0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 128
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    .line 130
    const p1, 0x3f6147ae    # 0.88f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 131
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 133
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 134
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 136
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fb33333    # 1.4f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 138
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 142
    :cond_2
    const p1, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 145
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 146
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 148
    const-wide/16 v2, 0xdc

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fe66666    # 1.8f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 149
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 153
    :goto_0
    return-void
.end method

.method public static animateMinusPlusPress(Landroid/view/View;)V
    .locals 2

    .line 472
    if-nez p0, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 474
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 475
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 477
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 478
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 479
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 480
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 481
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 482
    return-void
.end method

.method public static animatePanelSlideIn(Landroid/view/View;)V
    .locals 2

    .line 419
    if-nez p0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 423
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 426
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 427
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 430
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 431
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 432
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 433
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 434
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 435
    return-void
.end method

.method public static animatePanelSlideOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 441
    if-nez p0, :cond_1

    .line 442
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 443
    :cond_0
    return-void

    .line 445
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 446
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 447
    :cond_2
    return-void

    .line 450
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 451
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 455
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 456
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 457
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 458
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;-><init>(Ljava/lang/Runnable;)V

    .line 459
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 466
    return-void
.end method

.method public static animatePlayPause(Landroid/widget/ImageView;Z)V
    .locals 4

    .line 50
    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;Z)V

    .line 53
    return-void

    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    if-eqz p1, :cond_2

    const-string v2, "ic_player_pause"

    goto :goto_0

    :cond_2
    const-string v2, "ic_player_play"

    :goto_0
    const-string v3, "drawable"

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_3
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 69
    :goto_1
    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;Z)V

    .line 70
    return-void
.end method

.method public static animatePopupEnter(Landroid/view/View;)V
    .locals 2

    .line 240
    if-nez p0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 244
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 248
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 251
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 252
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 253
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    return-void
.end method

.method public static animatePopupExit(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 262
    if-nez p0, :cond_1

    .line 263
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 264
    :cond_0
    return-void

    .line 266
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 268
    :cond_2
    return-void

    .line 271
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 272
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 278
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 279
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;-><init>(Ljava/lang/Runnable;)V

    .line 280
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 287
    return-void
.end method

.method public static animateResolutionSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 547
    if-nez p0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 550
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 551
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 552
    nop

    .line 554
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 555
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 558
    :cond_2
    if-eqz v0, :cond_3

    .line 559
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 562
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 563
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 564
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 565
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 566
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 567
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;-><init>(Landroid/view/View;)V

    .line 568
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 579
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 581
    if-eqz p2, :cond_4

    .line 582
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 583
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 584
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 585
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;-><init>(Landroid/view/View;)V

    .line 586
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 594
    :cond_4
    return-void
.end method

.method public static animateRewind(Landroid/view/View;)V
    .locals 2

    .line 76
    if-nez p0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 80
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 82
    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 88
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    return-void
.end method

.method public static animateSelectionItem(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 6

    .line 375
    const/4 v0, -0x1

    const v1, -0xad3c4

    const-wide/16 v2, 0xb4

    if-eqz p2, :cond_0

    if-eq p2, p0, :cond_0

    .line 376
    invoke-static {p2, v1, v0, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 378
    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    if-eq p3, p1, :cond_1

    .line 379
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 380
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 381
    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 382
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;

    invoke-direct {v5, p3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;-><init>(Landroid/view/View;)V

    .line 383
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 389
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 392
    :cond_1
    if-eqz p0, :cond_2

    .line 393
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 395
    :cond_2
    if-eqz p1, :cond_3

    .line 396
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 398
    const p0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 399
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 402
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 403
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 404
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 405
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 406
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 409
    :cond_3
    return-void
.end method

.method public static animateSpeedSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 310
    if-nez p0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 313
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 314
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 315
    nop

    .line 318
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 319
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 323
    :cond_2
    if-eqz v0, :cond_3

    .line 324
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 328
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 330
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 332
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 333
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;-><init>(Landroid/view/View;)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 345
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 348
    if-eqz p2, :cond_4

    .line 349
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 350
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 351
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 352
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;-><init>(Landroid/view/View;)V

    .line 353
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 364
    :cond_4
    return-void
.end method

.method public static animateTextColor(Landroid/widget/TextView;IIJ)V
    .locals 3

    .line 601
    if-nez p0, :cond_0

    return-void

    .line 602
    :cond_0
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 603
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    new-instance p2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;

    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 610
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 611
    return-void
.end method

.method public static attachSeekbarTouchFeedback(Landroid/view/View;)V
    .locals 1

    .line 159
    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    return-void
.end method

.method private static findTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3

    .line 294
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 295
    :cond_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    .line 296
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 297
    check-cast p0, Landroid/view/ViewGroup;

    .line 298
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 299
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_2

    return-object v2

    .line 298
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_3
    return-object v0
.end method

.method public static isLandscape(Landroid/view/View;)Z
    .locals 2

    .line 36
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 38
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 38
    :cond_3
    :goto_0
    return v0
.end method
