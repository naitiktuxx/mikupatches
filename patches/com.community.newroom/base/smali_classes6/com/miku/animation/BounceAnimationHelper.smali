.class public Lcom/miku/animation/BounceAnimationHelper;
.super Ljava/lang/Object;
.source "BounceAnimationHelper.java"


# static fields
.field private static final BOUNCE_SCALE:F = 1.08f

.field private static final BOUNCE_TRANSLATION_DP:F = -7.0f

.field private static final PHASE1_DURATION:J = 0x64L

.field private static final PHASE2_DURATION:J = 0xdcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateBounce(Landroid/view/View;)V
    .locals 3

    .line 17
    if-nez p0, :cond_0

    .line 18
    return-void

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 29
    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 30
    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 31
    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 35
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 36
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    :cond_2
    nop

    .line 43
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 46
    :goto_0
    const/high16 v0, -0x3f200000    # -7.0f

    mul-float v2, v2, v0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 50
    const v1, 0x3f8a3d71    # 1.08f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 52
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miku/animation/BounceAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/miku/animation/BounceAnimationHelper$1;-><init>(Landroid/view/View;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p0

    .line 69
    :goto_1
    return-void
.end method
