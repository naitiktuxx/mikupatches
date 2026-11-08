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

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    .line 27
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 28
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 2

    .line 106
    if-nez p0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 110
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

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

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 119
    return-void
.end method

.method public static areControlsVisible(Landroid/view/View;)Z
    .locals 2

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    return v0

    .line 40
    :cond_1
    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 42
    return v0

    .line 44
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 2

    .line 59
    if-nez p0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 63
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 66
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 73
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 77
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3

    .line 80
    if-nez p0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 87
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 90
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 103
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 48
    if-nez p0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 52
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 56
    :goto_0
    return-void
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    .line 209
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 211
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 212
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 213
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 215
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 217
    :cond_2
    return-object v0
.end method

.method public static getDisplayRotation(Landroid/view/View;)I
    .locals 2

    .line 221
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 225
    :catchall_0
    move-exception v0

    .line 228
    :cond_0
    if-eqz p0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 230
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    .line 231
    if-eqz p0, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    .line 235
    :cond_1
    goto :goto_0

    .line 234
    :catchall_1
    move-exception p0

    .line 237
    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static setViewWidth(Landroid/view/View;I)V
    .locals 2

    .line 198
    if-nez p0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_1

    .line 201
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 202
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_1
    return-void
.end method

.method public static updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 9

    .line 122
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 123
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 124
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 125
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 126
    invoke-static {p3, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 127
    return-void

    .line 130
    :cond_0
    const/4 p4, 0x0

    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    move-object v1, p4

    .line 131
    :goto_0
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 134
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p5, v4, :cond_3

    if-eq p5, v3, :cond_3

    .line 135
    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayRotation(Landroid/view/View;)I

    move-result p5

    .line 137
    :cond_3
    if-eq p5, v4, :cond_4

    if-eq p5, v3, :cond_4

    .line 138
    const/4 p5, 0x1

    .line 141
    :cond_4
    nop

    .line 142
    nop

    .line 143
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_8

    .line 145
    nop

    .line 146
    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 147
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    goto :goto_1

    .line 159
    :catchall_0
    move-exception p4

    const/4 v2, 0x0

    goto :goto_2

    .line 149
    :cond_5
    :goto_1
    if-nez p4, :cond_6

    if-eqz v1, :cond_6

    .line 150
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p4

    .line 152
    :cond_6
    if-eqz p4, :cond_7

    .line 153
    invoke-virtual {p4}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p4

    .line 154
    if-eqz p4, :cond_7

    .line 155
    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 159
    :catchall_1
    move-exception p4

    :goto_2
    const/4 p4, 0x0

    goto :goto_4

    .line 160
    :cond_7
    const/4 p4, 0x0

    const/4 v2, 0x0

    :goto_3
    goto :goto_4

    .line 143
    :cond_8
    const/4 p4, 0x0

    const/4 v2, 0x0

    .line 163
    :goto_4
    nop

    .line 165
    :try_start_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 166
    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 167
    if-lez v6, :cond_9

    .line 168
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    .line 167
    :cond_9
    const/4 v5, 0x0

    .line 171
    :goto_5
    goto :goto_6

    .line 170
    :catchall_2
    move-exception v5

    const/4 v5, 0x0

    .line 173
    :goto_6
    nop

    .line 174
    if-eqz v1, :cond_a

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    goto :goto_7

    .line 174
    :cond_a
    const/high16 v1, 0x40400000    # 3.0f

    .line 177
    :goto_7
    const/high16 v6, 0x42100000    # 36.0f

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 178
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 180
    nop

    .line 181
    nop

    .line 183
    if-ne p5, v4, :cond_d

    .line 184
    if-lez v2, :cond_b

    goto :goto_8

    :cond_b
    move v2, v1

    .line 185
    :goto_8
    if-lez p4, :cond_c

    move v0, p4

    :cond_c
    move p4, v0

    move v0, v2

    goto :goto_9

    .line 186
    :cond_d
    if-ne p5, v3, :cond_10

    .line 187
    if-lez v2, :cond_e

    move v0, v2

    .line 188
    :cond_e
    if-lez p4, :cond_f

    goto :goto_9

    :cond_f
    move p4, v1

    goto :goto_9

    .line 186
    :cond_10
    const/4 p4, 0x0

    .line 191
    :goto_9
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 192
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 193
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 194
    invoke-static {p3, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 195
    return-void
.end method
