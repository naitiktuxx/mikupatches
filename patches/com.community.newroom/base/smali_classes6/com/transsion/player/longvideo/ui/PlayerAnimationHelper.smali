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

.method public static animatePlayPause(Landroid/view/View;)V
    .locals 1

    .line 414
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->animatePlayPause(Landroid/view/View;Z)V

    .line 415
    return-void
.end method

.method public static animatePlayPause(Landroid/view/View;Z)V
    .locals 4

    .line 332
    if-nez p0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 335
    :cond_1
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 336
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 338
    :cond_2
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isPlayPauseClashingWithLoading(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 340
    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    return-void

    .line 344
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 345
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 348
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 349
    const p1, 0x3f51eb85    # 0.82f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 350
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 352
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 353
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 354
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->playOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 355
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 356
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 359
    :cond_4
    const p1, 0x3f5c28f6    # 0.86f

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 360
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 362
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 363
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 364
    const-wide/16 v2, 0xb4

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 365
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 366
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 369
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

    .line 210
    if-nez p0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    return-void

    .line 218
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isPlayPauseClashingWithLoading(Landroid/view/View;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 220
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    return-void

    .line 226
    :cond_2
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterControlLayout(Landroid/view/View;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 227
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 229
    sget-object v5, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 232
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 234
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->hasVisibleLoadingChild(Landroid/view/ViewGroup;)Z

    move-result p0

    .line 236
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 237
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 239
    if-eqz p0, :cond_3

    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterPlayPause(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 241
    sget-object v4, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 244
    :cond_3
    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    .line 236
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_5
    return-void

    .line 251
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    .line 252
    return-void

    .line 255
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    .line 257
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 258
    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    .line 262
    if-eqz v0, :cond_9

    .line 263
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 264
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 267
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 268
    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 270
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeInInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 275
    return-void
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 4

    .line 278
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 281
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    return-void

    .line 286
    :cond_1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterControlLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 287
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 289
    sget-object v2, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 292
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 293
    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ge v2, p0, :cond_3

    .line 294
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 295
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 293
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_3
    return-void

    .line 302
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 303
    sget-object v0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 308
    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOutInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 320
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    return-void

    .line 278
    :cond_5
    :goto_1
    return-void
.end method

.method public static fadeVisibility(Landroid/view/View;I)V
    .locals 0

    .line 324
    if-nez p1, :cond_0

    .line 325
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V

    .line 329
    :goto_0
    return-void
.end method

.method public static getActivity(Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    .line 526
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 528
    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 529
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 530
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 532
    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 534
    :cond_2
    return-object v0
.end method

.method private static getControlPositionType(Landroid/view/View;)I
    .locals 6

    .line 176
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    .line 179
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 181
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

    .line 184
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

    if-nez v4, :cond_4

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "back"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 187
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

    .line 188
    :cond_3
    return v2

    .line 185
    :cond_4
    :goto_0
    return v0

    .line 182
    :cond_5
    :goto_1
    return v1

    .line 192
    :cond_6
    goto :goto_2

    .line 191
    :catch_0
    move-exception v3

    .line 196
    :goto_2
    :try_start_1
    new-array v3, v2, [I

    .line 197
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 198
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 199
    aget v4, v3, v0

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v5, v1

    if-ge v4, v5, :cond_7

    .line 200
    return v0

    .line 201
    :cond_7
    aget v0, v3, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v0, p0, :cond_8

    .line 202
    return v2

    .line 205
    :cond_8
    goto :goto_3

    .line 204
    :catch_1
    move-exception p0

    .line 206
    :goto_3
    return v1
.end method

.method private static getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I
    .locals 3

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 485
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 486
    return-object v0

    .line 489
    :cond_0
    nop

    .line 490
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

    .line 491
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_0

    .line 503
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 493
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p0, :cond_2

    .line 494
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 496
    :cond_2
    if-eqz p1, :cond_3

    .line 497
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    .line 498
    if-eqz p0, :cond_3

    .line 499
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 500
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_3
    nop

    .line 505
    :goto_1
    return-object v0
.end method

.method private static getDisplayRotation(Landroid/view/View;)I
    .locals 0

    .line 510
    :try_start_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    .line 511
    if-eqz p0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    .line 513
    if-eqz p0, :cond_0

    .line 514
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 515
    if-eqz p0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 521
    :cond_0
    goto :goto_0

    .line 520
    :catchall_0
    move-exception p0

    .line 522
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static hasVisibleLoadingChild(Landroid/view/ViewGroup;)Z
    .locals 7

    .line 126
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 130
    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 131
    return v4

    .line 133
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 134
    check-cast v2, Landroid/view/ViewGroup;

    .line 135
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 136
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    return v4

    .line 135
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_4
    return v0
.end method

.method public static isCenterControlLayout(Landroid/view/View;)Z
    .locals 3

    .line 77
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 80
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 82
    const-string v1, "centerControlLayout"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 83
    const/4 p0, 0x1

    return p0

    .line 87
    :cond_1
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 88
    :goto_0
    return v0
.end method

.method public static isCenterPlayPause(Landroid/view/View;)Z
    .locals 5

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 95
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v3, "ivCenterPause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_6

    const-string v3, "iv_middle_pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    const-string v3, "vd_pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLandscape(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    return v0

    .line 104
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 105
    instance-of v3, v1, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_5

    .line 107
    :try_start_1
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 108
    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    const-string v1, "vd_land_bottom_controller"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cl_bottom_control"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_4

    .line 111
    :cond_3
    return v0

    .line 115
    :cond_4
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 117
    :cond_5
    :goto_0
    return v4

    .line 98
    :cond_6
    :goto_1
    return v4

    .line 121
    :cond_7
    goto :goto_2

    .line 120
    :catchall_1
    move-exception p0

    .line 122
    :goto_2
    return v0
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

.method public static isLoadingView(Landroid/view/View;)Z
    .locals 4

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 57
    return v0

    .line 59
    :cond_1
    instance-of v1, p0, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 60
    return v2

    .line 63
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 64
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    const-string v1, "layout_loading"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vd_surface_loading"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "progressBar"

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vd_include_load"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    .line 68
    :cond_3
    return v2

    .line 72
    :cond_4
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 73
    :goto_0
    return v0
.end method

.method public static isPlayPauseClashingWithLoading(Landroid/view/View;)Z
    .locals 6

    .line 148
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterPlayPause(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 151
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 152
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 153
    check-cast v1, Landroid/view/ViewGroup;

    .line 154
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 156
    if-eqz v3, :cond_3

    if-eq v3, p0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 157
    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isLoadingView(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 158
    return v5

    .line 160
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->hasVisibleLoadingChild(Landroid/view/ViewGroup;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 161
    return v5

    .line 154
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_4
    goto :goto_1

    .line 166
    :catchall_0
    move-exception p0

    .line 168
    :goto_1
    return v0
.end method

.method public static isVerticalPauseClashingWithLoading(Landroid/view/View;)Z
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isPlayPauseClashingWithLoading(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static onLoadingChanged(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 3

    .line 372
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p0, :cond_1

    .line 373
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    if-eqz p3, :cond_3

    .line 376
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterPlayPause(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 378
    sget-object p3, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_2
    if-eqz p2, :cond_7

    .line 382
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 383
    sget-object p1, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 388
    :cond_3
    if-eqz p4, :cond_5

    .line 389
    if-eqz p2, :cond_4

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 391
    sget-object p3, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 395
    :cond_4
    if-eqz p1, :cond_7

    .line 396
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeIn(Landroid/view/View;)V

    goto :goto_1

    .line 399
    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->isCenterPlayPause(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 401
    sget-object p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_6
    if-eqz p2, :cond_7

    .line 405
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 406
    sget-object p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadingOutViews:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_7
    :goto_1
    return-void
.end method

.method public static setViewWidth(Landroid/view/View;I)V
    .locals 2

    .line 538
    if-nez p0, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, p1, :cond_1

    .line 541
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 542
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    :cond_1
    return-void
.end method

.method public static updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 10

    .line 418
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 419
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 420
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 421
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 422
    invoke-static {p3, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 423
    return-void

    .line 426
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

    .line 427
    :goto_0
    invoke-static {p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    .line 428
    nop

    .line 429
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p5, v3, :cond_6

    if-eq p5, v2, :cond_6

    .line 430
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

    .line 433
    :cond_6
    invoke-static {p4, v1}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->getDisplayCutoutInsets(Landroid/view/View;Landroid/app/Activity;)[I

    move-result-object v4

    .line 434
    aget v5, v4, v0

    .line 435
    aget v3, v4, v3

    .line 437
    nop

    .line 439
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 440
    const-string v6, "status_bar_height"

    const-string v7, "dimen"

    const-string v8, "android"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 441
    if-lez v6, :cond_7

    .line 442
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    :cond_7
    goto :goto_2

    .line 444
    :catchall_0
    move-exception v4

    .line 447
    :goto_2
    nop

    .line 448
    if-eqz p4, :cond_8

    .line 449
    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 450
    :cond_8
    if-eqz v1, :cond_9

    .line 451
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    goto :goto_3

    .line 450
    :cond_9
    const/high16 p4, 0x40400000    # 3.0f

    .line 453
    :goto_3
    const/high16 v1, 0x42180000    # 38.0f

    mul-float v1, v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 454
    const/high16 v1, 0x41600000    # 14.0f

    mul-float p4, p4, v1

    float-to-int p4, p4

    .line 459
    if-gtz v5, :cond_c

    if-lez v3, :cond_a

    goto :goto_4

    .line 468
    :cond_a
    if-ne p5, v2, :cond_b

    .line 469
    nop

    .line 470
    move v9, v0

    move v0, p4

    move p4, v9

    goto :goto_5

    .line 472
    :cond_b
    nop

    .line 473
    goto :goto_5

    .line 460
    :cond_c
    :goto_4
    if-lez v5, :cond_d

    .line 461
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 462
    invoke-static {v3, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    goto :goto_5

    .line 464
    :cond_d
    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 465
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    move v0, p4

    move p4, v9

    .line 477
    :goto_5
    invoke-static {p0, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 478
    invoke-static {p2, v0}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 479
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 480
    invoke-static {p3, p4}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->setViewWidth(Landroid/view/View;I)V

    .line 481
    return-void
.end method
