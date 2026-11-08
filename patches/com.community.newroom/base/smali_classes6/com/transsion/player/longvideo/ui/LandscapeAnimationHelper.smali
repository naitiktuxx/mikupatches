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
    const v0, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 188
    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 189
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 191
    return-void
.end method

.method public static animateButtonPress(Landroid/view/View;)V
    .locals 2

    .line 197
    if-nez p0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 201
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 206
    const-wide/16 v0, 0x82

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 207
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 209
    return-void
.end method

.method public static animateColorOptionSelect(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 491
    if-nez p0, :cond_0

    return-void

    .line 493
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 495
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

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 499
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 500
    const v0, 0x3f8a3d71    # 1.08f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 501
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 502
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 503
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;-><init>(Landroid/view/View;)V

    .line 504
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 515
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 516
    return-void
.end method

.method public static animateDelayValueChange(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3

    .line 467
    if-nez p0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 469
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 470
    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 471
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 472
    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 485
    return-void
.end method

.method public static animateFitFill(Landroid/view/View;)V
    .locals 2

    .line 158
    if-nez p0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 161
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 162
    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 164
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 169
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 170
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 171
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 173
    return-void
.end method

.method public static animateForward(Landroid/view/View;)V
    .locals 2

    .line 96
    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 100
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 102
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 108
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 111
    return-void
.end method

.method public static animateLock(Landroid/view/View;Z)V
    .locals 2

    .line 117
    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 121
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 122
    const v0, 0x3f6147ae    # 0.88f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 128
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 129
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const v0, 0x3fe66666    # 1.8f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 132
    return-void
.end method

.method public static animateMinusPlusPress(Landroid/view/View;)V
    .locals 2

    .line 451
    if-nez p0, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 453
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 454
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 456
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 457
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 458
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 459
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 461
    return-void
.end method

.method public static animatePanelSlideIn(Landroid/view/View;)V
    .locals 2

    .line 398
    if-nez p0, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 402
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 404
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 406
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 409
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 410
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 411
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 412
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 414
    return-void
.end method

.method public static animatePanelSlideOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 420
    if-nez p0, :cond_1

    .line 421
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 422
    :cond_0
    return-void

    .line 424
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 425
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 426
    :cond_2
    return-void

    .line 429
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 430
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 432
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 434
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 435
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 436
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 437
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;-><init>(Ljava/lang/Runnable;)V

    .line 438
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 445
    return-void
.end method

.method public static animatePlayPause(Landroid/widget/ImageView;Z)V
    .locals 3

    .line 50
    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    return-void

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    if-eqz p1, :cond_2

    const-string p1, "ic_player_pause"

    goto :goto_0

    :cond_2
    const-string p1, "ic_player_play"

    :goto_0
    const-string v2, "drawable"

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_3
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 68
    :goto_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public static animatePopupEnter(Landroid/view/View;)V
    .locals 2

    .line 219
    if-nez p0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 223
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 226
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 227
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 230
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 231
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 232
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 233
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 235
    return-void
.end method

.method public static animatePopupExit(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 241
    if-nez p0, :cond_1

    .line 242
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 243
    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 247
    :cond_2
    return-void

    .line 250
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 251
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 256
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 257
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 258
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;-><init>(Ljava/lang/Runnable;)V

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    return-void
.end method

.method public static animateResolutionSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 526
    if-nez p0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 529
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 530
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 531
    nop

    .line 533
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 534
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 537
    :cond_2
    if-eqz v0, :cond_3

    .line 538
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 541
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 542
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 543
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 544
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 545
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 546
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;-><init>(Landroid/view/View;)V

    .line 547
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 558
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 560
    if-eqz p2, :cond_4

    .line 561
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 562
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 563
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 564
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;-><init>(Landroid/view/View;)V

    .line 565
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 571
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 573
    :cond_4
    return-void
.end method

.method public static animateRewind(Landroid/view/View;)V
    .locals 2

    .line 75
    if-nez p0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 79
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 81
    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 87
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    return-void
.end method

.method public static animateSelectionItem(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 6

    .line 354
    const/4 v0, -0x1

    const v1, -0xad3c4

    const-wide/16 v2, 0xb4

    if-eqz p2, :cond_0

    if-eq p2, p0, :cond_0

    .line 355
    invoke-static {p2, v1, v0, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 357
    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    if-eq p3, p1, :cond_1

    .line 358
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 359
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 360
    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 361
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;

    invoke-direct {v5, p3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;-><init>(Landroid/view/View;)V

    .line 362
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 368
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 371
    :cond_1
    if-eqz p0, :cond_2

    .line 372
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 374
    :cond_2
    if-eqz p1, :cond_3

    .line 375
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 377
    const p0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 378
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 381
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 382
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 383
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 384
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 385
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 386
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 388
    :cond_3
    return-void
.end method

.method public static animateSpeedSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 289
    if-nez p0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 292
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 293
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 294
    nop

    .line 297
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 298
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 302
    :cond_2
    if-eqz v0, :cond_3

    .line 303
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 307
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 309
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 311
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 312
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;-><init>(Landroid/view/View;)V

    .line 313
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 327
    if-eqz p2, :cond_4

    .line 328
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 329
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 330
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 331
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;-><init>(Landroid/view/View;)V

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    :cond_4
    return-void
.end method

.method public static animateTextColor(Landroid/widget/TextView;IIJ)V
    .locals 3

    .line 580
    if-nez p0, :cond_0

    return-void

    .line 581
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

    .line 582
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 583
    new-instance p2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;

    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 589
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 590
    return-void
.end method

.method public static attachSeekbarTouchFeedback(Landroid/view/View;)V
    .locals 1

    .line 138
    if-nez p0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    return-void
.end method

.method private static findTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3

    .line 273
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 274
    :cond_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    .line 275
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 276
    check-cast p0, Landroid/view/ViewGroup;

    .line 277
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 278
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_2

    return-object v2

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
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
