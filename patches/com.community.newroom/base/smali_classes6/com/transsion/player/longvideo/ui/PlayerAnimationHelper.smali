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
.method static bridge synthetic -$$Nest$sfgetfadingOutViews()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

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

    .line 36
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 1

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;Z)V

    .line 287
    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;Z)V
    .locals 3

    .line 260
    if-nez p0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 262
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 263
    const p1, 0x3f51eb85    # 0.82f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 264
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 266
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 267
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 268
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 269
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 270
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 271
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 273
    :cond_1
    const p1, 0x3f5c28f6    # 0.86f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 274
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 276
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 277
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 278
    const-wide/16 v1, 0xb4

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 279
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 280
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 283
    :goto_0
    return-void
.end method

.method public static areControlsVisible(Landroid/view/View;)Z
    .locals 2

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 41
    :cond_1
    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 42
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 43
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 6

    .line 126
    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    return-void

    .line 134
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterControlLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 135
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 137
    sget-object v4, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 140
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 141
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v1, p0, :cond_3

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 143
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 144
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    .line 141
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_3
    return-void

    .line 150
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    .line 151
    return-void

    .line 154
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 155
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 159
    nop

    .line 160
    if-eqz v0, :cond_8

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 162
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v4

    .line 163
    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 164
    const/high16 v4, -0x3f000000    # -8.0f

    mul-float v1, v1, v4

    .line 165
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 166
    :cond_6
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 167
    const/high16 v4, 0x41000000    # 8.0f

    mul-float v1, v1, v4

    .line 168
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 170
    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 174
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_9

    .line 175
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 178
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 179
    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 180
    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 181
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 182
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 184
    if-eqz v0, :cond_a

    .line 185
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 187
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 188
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 5

    .line 191
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    return-void

    .line 199
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterControlLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 202
    sget-object v2, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 206
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v2, p0, :cond_3

    .line 207
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 208
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 206
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_3
    return-void

    .line 215
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 216
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v0

    .line 219
    nop

    .line 220
    if-eqz v0, :cond_6

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 222
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getControlPositionType(Landroid/view/View;)I

    move-result v3

    .line 223
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 224
    const/high16 v3, -0x3f000000    # -8.0f

    mul-float v2, v2, v3

    goto :goto_1

    .line 225
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 226
    const/high16 v3, 0x41000000    # 8.0f

    mul-float v2, v2, v3

    goto :goto_1

    .line 230
    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 231
    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 232
    const-wide/16 v3, 0xb4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 233
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 235
    if-eqz v0, :cond_7

    .line 236
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 239
    :cond_7
    new-instance v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v0, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 248
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 249
    return-void

    .line 191
    :cond_8
    :goto_2
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 252
    if-nez p1, :cond_0

    .line 253
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 257
    :goto_0
    return-void
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    .line 398
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 400
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 401
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 402
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 404
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 406
    :cond_2
    return-object v0
.end method

.method private static getControlPositionType(Landroid/view/View;)I
    .locals 6

    .line 92
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 95
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 97
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "pause"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 100
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

    .line 103
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

    .line 104
    :cond_3
    return v2

    .line 101
    :cond_4
    :goto_0
    return v0

    .line 98
    :cond_5
    :goto_1
    return v1

    .line 108
    :cond_6
    goto :goto_2

    .line 107
    :catch_0
    move-exception v3

    .line 112
    :goto_2
    :try_start_1
    new-array v3, v2, [I

    .line 113
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 115
    aget v4, v3, v0

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v1

    if-ge v4, v5, :cond_7

    .line 116
    return v0

    .line 117
    :cond_7
    aget v0, v3, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, p0, :cond_8

    .line 118
    return v2

    .line 121
    :cond_8
    goto :goto_3

    .line 120
    :catch_1
    move-exception p0

    .line 122
    :goto_3
    return v1
.end method

.method private static getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I
    .locals 3

    .line 356
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 357
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 358
    return-object v0

    .line 361
    :cond_0
    nop

    .line 362
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

    .line 363
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    .line 375
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 365
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    .line 366
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 368
    :cond_2
    if-eqz p1, :cond_3

    .line 369
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 370
    if-eqz p0, :cond_3

    .line 371
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 372
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_3
    nop

    .line 377
    :goto_1
    return-object v0
.end method

.method private static getDisplayRotation(Landroid/view/View;)I
    .locals 0

    .line 382
    :try_start_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 383
    if-eqz p0, :cond_0

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 385
    if-eqz p0, :cond_0

    .line 386
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 387
    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 393
    :cond_0
    goto :goto_0

    .line 392
    :catchall_0
    move-exception p0

    .line 394
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCenterControlLayout(Landroid/view/View;)Z
    .locals 3

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 76
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string v1, "centerControlLayout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 79
    const/4 p0, 0x1

    return p0

    .line 83
    :cond_1
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 84
    :goto_0
    return v0
.end method

.method public static isLandscape(Landroid/view/View;)Z
    .locals 2

    .line 47
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 49
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 50
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

    .line 49
    :cond_3
    :goto_0
    return v0
.end method

.method public static isLoadingView(Landroid/view/View;)Z
    .locals 4

    .line 54
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p0, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 56
    return v2

    .line 59
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 60
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    const-string v1, "layout_loading"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vd_surface_loading"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "progressBar"

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vd_include_load"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 64
    :cond_2
    return v2

    .line 68
    :cond_3
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 69
    :goto_0
    return v0
.end method

.method public static isVerticalPauseClashingWithLoading(Landroid/view/View;)Z
    .locals 0

    .line 88
    const/4 p0, 0x0

    return p0
.end method

.method public static setViewWidth(Landroid/view/View;I)V
    .locals 2

    .line 410
    if-nez p0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 413
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 414
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :cond_1
    return-void
.end method

.method public static updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 10

    .line 290
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 291
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 292
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 293
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 294
    invoke-static {p3, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 295
    return-void

    .line 298
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

    .line 299
    :goto_0
    invoke-static {p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 300
    nop

    .line 301
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p5, v3, :cond_6

    if-eq p5, v2, :cond_6

    .line 302
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

    .line 305
    :cond_6
    invoke-static {p4, v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I

    move-result-object v4

    .line 306
    aget v5, v4, v0

    .line 307
    aget v3, v4, v3

    .line 309
    nop

    .line 311
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 312
    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 313
    if-lez v6, :cond_7

    .line 314
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_7
    goto :goto_2

    .line 316
    :catchall_0
    move-exception v4

    .line 319
    :goto_2
    nop

    .line 320
    if-eqz p4, :cond_8

    .line 321
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 322
    :cond_8
    if-eqz v1, :cond_9

    .line 323
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 322
    :cond_9
    const/high16 p4, 0x40400000    # 3.0f

    .line 325
    :goto_3
    const/high16 v1, 0x42180000    # 38.0f

    mul-float v1, v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 326
    const/high16 v1, 0x41600000    # 14.0f

    mul-float p4, p4, v1

    float-to-int p4, p4

    .line 331
    if-gtz v5, :cond_c

    if-lez v3, :cond_a

    goto :goto_4

    .line 340
    :cond_a
    if-ne p5, v2, :cond_b

    .line 341
    nop

    .line 342
    move v9, v0

    move v0, p4

    move p4, v9

    goto :goto_5

    .line 344
    :cond_b
    nop

    .line 345
    goto :goto_5

    .line 332
    :cond_c
    :goto_4
    if-lez v5, :cond_d

    .line 333
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 334
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_5

    .line 336
    :cond_d
    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 337
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    move v0, p4

    move p4, v9

    .line 349
    :goto_5
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 350
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 351
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 352
    invoke-static {p3, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 353
    return-void
.end method
