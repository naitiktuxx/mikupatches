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

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 31
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->EASE_IN_OUT:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method public static animateBackButton(Landroid/view/View;)V
    .locals 2

    .line 186
    if-nez p0, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 190
    const v0, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 193
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 194
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 195
    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 196
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 198
    return-void
.end method

.method public static animateButtonPress(Landroid/view/View;)V
    .locals 2

    .line 204
    if-nez p0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 208
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 209
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 213
    const-wide/16 v0, 0x82

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 214
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 216
    return-void
.end method

.method public static animateColorOptionSelect(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 498
    if-nez p0, :cond_0

    return-void

    .line 500
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 502
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

    .line 505
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 506
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 507
    const v0, 0x3f8a3d71    # 1.08f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 508
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 509
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$8;-><init>(Landroid/view/View;)V

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 522
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 523
    return-void
.end method

.method public static animateDelayValueChange(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3

    .line 474
    if-nez p0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 476
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 477
    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 478
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 479
    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 491
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 492
    return-void
.end method

.method public static animateFitFill(Landroid/view/View;)V
    .locals 2

    .line 165
    if-nez p0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 169
    const v0, 0x3f733333    # 0.95f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 171
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 175
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 177
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 178
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 180
    return-void
.end method

.method public static animateForward(Landroid/view/View;)V
    .locals 2

    .line 103
    if-nez p0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 107
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 109
    const/high16 v0, 0x42340000    # 45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 115
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 118
    return-void
.end method

.method public static animateLock(Landroid/view/View;Z)V
    .locals 2

    .line 124
    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    const p1, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 130
    const/high16 p1, -0x3f000000    # -8.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 133
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 135
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 136
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 139
    return-void
.end method

.method public static animateMinusPlusPress(Landroid/view/View;)V
    .locals 2

    .line 458
    if-nez p0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 460
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 461
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 463
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 464
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 465
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 466
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 468
    return-void
.end method

.method public static animatePanelSlideIn(Landroid/view/View;)V
    .locals 2

    .line 405
    if-nez p0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 409
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 413
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 416
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 417
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 418
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 419
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 421
    return-void
.end method

.method public static animatePanelSlideOut(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 427
    if-nez p0, :cond_1

    .line 428
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 429
    :cond_0
    return-void

    .line 431
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 432
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 433
    :cond_2
    return-void

    .line 436
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 437
    const/high16 v1, 0x41800000    # 16.0f

    mul-float v0, v0, v1

    .line 439
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 440
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 442
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 443
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 444
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$6;-><init>(Ljava/lang/Runnable;)V

    .line 445
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 452
    return-void
.end method

.method public static animatePlayPause(Landroid/widget/ImageView;Z)V
    .locals 3

    .line 49
    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;

    if-eqz v1, :cond_2

    .line 57
    check-cast v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;

    goto :goto_0

    .line 59
    :cond_2
    new-instance v0, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;-><init>(Landroid/content/Context;)V

    .line 60
    xor-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->setPlaying(ZZ)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/player/longvideo/ui/PlayPauseMorphDrawable;->setPlaying(ZZ)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 68
    const p1, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 71
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 73
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 76
    return-void
.end method

.method public static animatePopupEnter(Landroid/view/View;)V
    .locals 2

    .line 226
    if-nez p0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 230
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 237
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 239
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 242
    return-void
.end method

.method public static animatePopupExit(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 248
    if-nez p0, :cond_1

    .line 249
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_0
    return-void

    .line 252
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 254
    :cond_2
    return-void

    .line 257
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 258
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v0, v0, v1

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 263
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 264
    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->ACCEL:Landroid/view/animation/AccelerateInterpolator;

    .line 265
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;

    invoke-direct {v0, p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$2;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 273
    return-void
.end method

.method public static animateResolutionSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 533
    if-nez p0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 536
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 537
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 538
    nop

    .line 540
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 541
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 544
    :cond_2
    if-eqz v0, :cond_3

    .line 545
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 548
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 549
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 550
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 551
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 552
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 553
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$9;-><init>(Landroid/view/View;)V

    .line 554
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 565
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 567
    if-eqz p2, :cond_4

    .line 568
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 569
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 570
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 571
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$10;-><init>(Landroid/view/View;)V

    .line 572
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 578
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 580
    :cond_4
    return-void
.end method

.method public static animateRewind(Landroid/view/View;)V
    .locals 2

    .line 82
    if-nez p0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 86
    const v0, 0x3f70a3d7    # 0.94f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 88
    const/high16 v0, -0x3dcc0000    # -45.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 92
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 94
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 97
    return-void
.end method

.method public static animateSelectionItem(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 6

    .line 361
    const/4 v0, -0x1

    const v1, -0xad3c4

    const-wide/16 v2, 0xb4

    if-eqz p2, :cond_0

    if-eq p2, p0, :cond_0

    .line 362
    invoke-static {p2, v1, v0, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 364
    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    if-eq p3, p1, :cond_1

    .line 365
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 366
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 367
    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 368
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;

    invoke-direct {v5, p3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$5;-><init>(Landroid/view/View;)V

    .line 369
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    .line 375
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 378
    :cond_1
    if-eqz p0, :cond_2

    .line 379
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 381
    :cond_2
    if-eqz p1, :cond_3

    .line 382
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 384
    const p0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 385
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 388
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 389
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 390
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 391
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 392
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 395
    :cond_3
    return-void
.end method

.method public static animateSpeedSelection(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 296
    if-nez p0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 299
    :cond_1
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 300
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 301
    nop

    .line 304
    const-wide/16 v1, 0xb4

    const v3, -0xad3c4

    const/4 v4, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    .line 305
    invoke-static {p1, v3, v4, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 309
    :cond_2
    if-eqz v0, :cond_3

    .line 310
    invoke-static {v0, v4, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateTextColor(Landroid/widget/TextView;IIJ)V

    .line 314
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 316
    const v0, 0x3f87ae14    # 1.06f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 318
    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->DECEL:Landroid/view/animation/DecelerateInterpolator;

    .line 319
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$3;-><init>(Landroid/view/View;)V

    .line 320
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 334
    if-eqz p2, :cond_4

    .line 335
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 336
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 337
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 338
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;

    invoke-direct {p1, p2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$4;-><init>(Landroid/view/View;)V

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 350
    :cond_4
    return-void
.end method

.method public static animateTextColor(Landroid/widget/TextView;IIJ)V
    .locals 3

    .line 587
    if-nez p0, :cond_0

    return-void

    .line 588
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

    .line 589
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 590
    new-instance p2, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;

    invoke-direct {p2, p0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$11;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 596
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 597
    return-void
.end method

.method public static attachSeekbarTouchFeedback(Landroid/view/View;)V
    .locals 1

    .line 145
    if-nez p0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    return-void
.end method

.method private static findTextView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 3

    .line 280
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 281
    :cond_0
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    .line 282
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 283
    check-cast p0, Landroid/view/ViewGroup;

    .line 284
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 285
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->findTextView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_2

    return-object v2

    .line 284
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_3
    return-object v0
.end method

.method public static isLandscape(Landroid/view/View;)Z
    .locals 2

    .line 35
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 38
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

    .line 37
    :cond_3
    :goto_0
    return v0
.end method
