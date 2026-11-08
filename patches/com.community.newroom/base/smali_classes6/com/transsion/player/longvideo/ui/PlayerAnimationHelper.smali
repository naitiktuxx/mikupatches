.class public Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;
.super Ljava/lang/Object;
.source "PlayerAnimationHelper.java"


# static fields
.field public static final FADE_IN_DURATION:J = 0xc8L

.field public static final FADE_OUT_DURATION:J = 0xfaL

.field private static final fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static final fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static final fadingOutViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetfadingOutViews()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 19
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 2

    .line 89
    if-nez p0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 91
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 96
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 99
    return-void
.end method

.method public static areControlsVisible(Landroid/view/View;)Z
    .locals 3

    .line 22
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 24
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 25
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 4

    .line 38
    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 41
    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 44
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 49
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 52
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 53
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 57
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3

    .line 60
    if-nez p0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 66
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 69
    return-void

    .line 71
    :cond_2
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 75
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 29
    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    if-nez p1, :cond_1

    .line 31
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 35
    :goto_0
    return-void
.end method
