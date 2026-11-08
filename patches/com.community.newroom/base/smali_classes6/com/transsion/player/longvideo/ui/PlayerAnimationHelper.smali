.class public Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;
.super Ljava/lang/Object;
.source "PlayerAnimationHelper.java"


# static fields
.field public static final FADE_IN_DURATION:J = 0xc8L

.field public static final FADE_OUT_DURATION:J = 0xb4L

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
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    return-object v0
.end method

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 2

    .line 176
    if-nez p0, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 178
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 179
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 183
    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    return-void
.end method

.method public static areControlsVisible(Landroid/view/View;)Z
    .locals 2

    .line 38
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

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

    return v0

    .line 42
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 6

    .line 87
    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 89
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 93
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 97
    nop

    .line 98
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 100
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v4

    .line 101
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 102
    const/high16 v4, -0x3f000000    # -8.0f

    mul-float v3, v3, v4

    .line 103
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 104
    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 105
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    .line 106
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_5

    .line 113
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 117
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 118
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 125
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 126
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 5

    .line 129
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 132
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 135
    nop

    .line 136
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 138
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v3

    .line 139
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 140
    const/high16 v3, -0x3f000000    # -8.0f

    mul-float v2, v2, v3

    goto :goto_0

    .line 141
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 142
    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    goto :goto_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 148
    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 149
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 151
    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 155
    :cond_3
    new-instance v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 164
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 165
    return-void

    .line 129
    :cond_4
    :goto_1
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 173
    :goto_0
    return-void
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    .line 285
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 287
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 288
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 289
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 291
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 293
    :cond_2
    return-object v0
.end method

.method private static getControlPositionType(Landroid/view/View;)I
    .locals 6

    .line 53
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 56
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    const-string v4, "top"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "tool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "phone_bar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    const-string v4, "bottom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "operator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_6

    .line 65
    :cond_3
    return v2

    .line 62
    :cond_4
    :goto_0
    return v0

    .line 59
    :cond_5
    :goto_1
    return v1

    .line 69
    :cond_6
    goto :goto_2

    .line 68
    :catch_0
    move-exception v3

    .line 73
    :goto_2
    :try_start_1
    new-array v3, v2, [I

    .line 74
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 76
    aget v4, v3, v0

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v1

    if-ge v4, v5, :cond_7

    .line 77
    return v0

    .line 78
    :cond_7
    aget v0, v3, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, p0, :cond_8

    .line 79
    return v2

    .line 82
    :cond_8
    goto :goto_3

    .line 81
    :catch_1
    move-exception p0

    .line 83
    :goto_3
    return v1
.end method

.method private static getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I
    .locals 3

    .line 243
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 245
    return-object v0

    .line 248
    :cond_0
    nop

    .line 249
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    .line 262
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 252
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 255
    :cond_2
    if-eqz p1, :cond_3

    .line 256
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 257
    if-eqz p0, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 259
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_3
    nop

    .line 264
    :goto_1
    return-object v0
.end method

.method private static getDisplayRotation(Landroid/view/View;)I
    .locals 0

    .line 269
    :try_start_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 270
    if-eqz p0, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 272
    if-eqz p0, :cond_0

    .line 273
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 274
    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 280
    :cond_0
    goto :goto_0

    .line 279
    :catchall_0
    move-exception p0

    .line 281
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLandscape(Landroid/view/View;)Z
    .locals 2

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 48
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 49
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

    .line 48
    :cond_3
    :goto_0
    return v0
.end method

.method public static setViewWidth(Landroid/view/View;I)V
    .locals 2

    .line 297
    if-nez p0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 300
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :cond_1
    return-void
.end method

.method public static updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 8

    .line 190
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 191
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 192
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 193
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 194
    invoke-static {p3, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 195
    return-void

    .line 198
    :cond_0
    if-eqz p0, :cond_1

    move-object p4, p0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p4, p2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    move-object p4, p3

    goto :goto_0

    :cond_3
    move-object p4, p1

    .line 199
    :goto_0
    invoke-static {p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 200
    nop

    .line 201
    const/4 v2, -0x1

    if-ne p5, v2, :cond_4

    .line 202
    invoke-static {p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayRotation(Landroid/view/View;)I

    move-result p5

    .line 205
    :cond_4
    invoke-static {p4, v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I

    move-result-object v1

    .line 206
    aget v2, v1, v0

    .line 207
    const/4 v3, 0x1

    aget v1, v1, v3

    .line 209
    nop

    .line 211
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 212
    const-string v5, "status_bar_height"

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 213
    if-lez v5, :cond_5

    .line 214
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    :cond_5
    const/4 v4, 0x0

    .line 217
    :goto_1
    goto :goto_2

    .line 216
    :catchall_0
    move-exception v4

    const/4 v4, 0x0

    .line 219
    :goto_2
    nop

    .line 220
    if-eqz p4, :cond_6

    .line 221
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 220
    :cond_6
    const/high16 p4, 0x40400000    # 3.0f

    .line 223
    :goto_3
    const/high16 v5, 0x42100000    # 36.0f

    mul-float p4, p4, v5

    float-to-int p4, p4

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 225
    nop

    .line 226
    nop

    .line 228
    if-ne p5, v3, :cond_9

    .line 229
    if-lez v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, p4

    .line 230
    :goto_4
    if-lez v1, :cond_8

    move v0, v1

    :cond_8
    move p4, v0

    move v0, v2

    goto :goto_5

    .line 231
    :cond_9
    const/4 v3, 0x3

    if-ne p5, v3, :cond_b

    .line 232
    if-lez v2, :cond_a

    move v0, v2

    .line 233
    :cond_a
    if-lez v1, :cond_c

    move p4, v1

    goto :goto_5

    .line 231
    :cond_b
    const/4 p4, 0x0

    .line 236
    :cond_c
    :goto_5
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 237
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 238
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 239
    invoke-static {p3, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 240
    return-void
.end method
