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

.field private static final playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 37
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 29
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    return-object v0
.end method

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 1

    .line 247
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;Z)V

    .line 248
    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;Z)V
    .locals 3

    .line 216
    if-nez p0, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isVerticalPauseClashingWithLoading(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_animate_normal

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_animate_normal
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 221
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 223
    const p1, 0x3f51eb85    # 0.82f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 224
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 226
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 227
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 228
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 229
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 234
    :cond_1
    const p1, 0x3f5c28f6    # 0.86f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 237
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 238
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 239
    const-wide/16 v1, 0xb4

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 240
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 241
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 244
    :goto_0
    return-void
.end method

.method public static areControlsVisible(Landroid/view/View;)Z
    .locals 2

    .line 40
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 42
    :cond_1
    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 43
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 44
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 6

    .line 115
    if-nez p0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isVerticalPauseClashingWithLoading(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 124
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 132
    nop

    .line 133
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 135
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v4

    .line 136
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 137
    const/high16 v4, -0x3f000000    # -8.0f

    mul-float v3, v3, v4

    .line 138
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 140
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v3, v3, v4

    .line 141
    invoke-virtual {p0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 147
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v1

    if-ltz v3, :cond_6

    .line 148
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 151
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 153
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 154
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 157
    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 161
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 5

    .line 164
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 167
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 170
    nop

    .line 171
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 173
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v3

    .line 174
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 175
    const/high16 v3, -0x3f000000    # -8.0f

    mul-float v2, v2, v3

    goto :goto_0

    .line 176
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 177
    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    goto :goto_0

    .line 181
    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 182
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 183
    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 184
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 186
    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 190
    :cond_3
    new-instance v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 199
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 200
    return-void

    .line 164
    :cond_4
    :goto_1
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 203
    if-nez p1, :cond_0

    .line 204
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 208
    :goto_0
    return-void
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    .line 359
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 361
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 362
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 363
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 365
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 367
    :cond_2
    return-object v0
.end method

.method private static getControlPositionType(Landroid/view/View;)I
    .locals 6

    .line 81
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 84
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 89
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

    .line 92
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

    .line 93
    :cond_3
    return v2

    .line 90
    :cond_4
    :goto_0
    return v0

    .line 87
    :cond_5
    :goto_1
    return v1

    .line 97
    :cond_6
    goto :goto_2

    .line 96
    :catch_0
    move-exception v3

    .line 101
    :goto_2
    :try_start_1
    new-array v3, v2, [I

    .line 102
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 104
    aget v4, v3, v0

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v1

    if-ge v4, v5, :cond_7

    .line 105
    return v0

    .line 106
    :cond_7
    aget v0, v3, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, p0, :cond_8

    .line 107
    return v2

    .line 110
    :cond_8
    goto :goto_3

    .line 109
    :catch_1
    move-exception p0

    .line 111
    :goto_3
    return v1
.end method

.method private static getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I
    .locals 3

    .line 317
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 318
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 319
    return-object v0

    .line 322
    :cond_0
    nop

    .line 323
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

    .line 324
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    .line 336
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 326
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 329
    :cond_2
    if-eqz p1, :cond_3

    .line 330
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 331
    if-eqz p0, :cond_3

    .line 332
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 333
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :cond_3
    nop

    .line 338
    :goto_1
    return-object v0
.end method

.method private static getDisplayRotation(Landroid/view/View;)I
    .locals 0

    .line 343
    :try_start_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 344
    if-eqz p0, :cond_0

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 346
    if-eqz p0, :cond_0

    .line 347
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 348
    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 354
    :cond_0
    goto :goto_0

    .line 353
    :catchall_0
    move-exception p0

    .line 355
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isLandscape(Landroid/view/View;)Z
    .locals 2

    .line 48
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 50
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 51
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

    .line 50
    :cond_3
    :goto_0
    return v0
.end method

.method public static isVerticalPauseClashingWithLoading(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static setViewWidth(Landroid/view/View;I)V
    .locals 2

    .line 371
    if-nez p0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 374
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 375
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_1
    return-void
.end method

.method public static updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 10

    .line 251
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 252
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 253
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 254
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 255
    invoke-static {p3, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 256
    return-void

    .line 259
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

    .line 260
    :goto_0
    invoke-static {p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 261
    nop

    .line 262
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p5, v3, :cond_6

    if-eq p5, v2, :cond_6

    .line 263
    if-eqz p4, :cond_4

    move-object p5, p4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p5

    goto :goto_1

    :cond_5
    const/4 p5, 0x0

    :goto_1
    invoke-static {p5}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayRotation(Landroid/view/View;)I

    move-result p5

    .line 266
    :cond_6
    invoke-static {p4, v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I

    move-result-object v4

    .line 267
    aget v5, v4, v0

    .line 268
    aget v3, v4, v3

    .line 270
    nop

    .line 272
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 273
    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 274
    if-lez v6, :cond_7

    .line 275
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_7
    goto :goto_2

    .line 277
    :catchall_0
    move-exception v4

    .line 280
    :goto_2
    nop

    .line 281
    if-eqz p4, :cond_8

    .line 282
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 283
    :cond_8
    if-eqz v1, :cond_9

    .line 284
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 283
    :cond_9
    const/high16 p4, 0x40400000    # 3.0f

    .line 286
    :goto_3
    const/high16 v1, 0x42180000    # 38.0f

    mul-float v1, v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 287
    const/high16 v1, 0x41600000    # 14.0f

    mul-float p4, p4, v1

    float-to-int p4, p4

    .line 292
    if-gtz v5, :cond_c

    if-lez v3, :cond_a

    goto :goto_4

    .line 301
    :cond_a
    if-ne p5, v2, :cond_b

    .line 302
    nop

    .line 303
    move v9, v0

    move v0, p4

    move p4, v9

    goto :goto_5

    .line 305
    :cond_b
    nop

    .line 306
    goto :goto_5

    .line 293
    :cond_c
    :goto_4
    if-lez v5, :cond_d

    .line 294
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 295
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_5

    .line 297
    :cond_d
    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 298
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    move v0, p4

    move p4, v9

    .line 310
    :goto_5
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 311
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 312
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 313
    invoke-static {p3, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 314
    return-void
.end method
