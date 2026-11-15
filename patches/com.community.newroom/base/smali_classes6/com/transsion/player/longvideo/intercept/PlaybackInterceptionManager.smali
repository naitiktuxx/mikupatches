.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$a;
    }
.end annotation


# instance fields
.field private a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

.field private b:Z

.field private c:Lho/j;

.field private d:Lgo/a;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/transsion/player/longvideo/intercept/d;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lkotlin/jvm/functions/Function0;

.field private p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->PORTRAIT:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final A(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private final B(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 8

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    instance-of v0, p4, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    move-object p3, p4

    check-cast p3, Landroidx/appcompat/app/AppCompatActivity;

    :cond_1
    move-object v1, p3

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p3

    new-instance p4, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;

    const/4 v5, 0x0

    move-object v0, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$loadLandPauseAd$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    move-object v5, p4

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    return-void
.end method

.method private static final E(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private static final F(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method

.method private static final I(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final J(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final K(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final L(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private static final U(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final V(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->W(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static final Y(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lho/j;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final Z()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method private static final a0(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->L(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method private static final b0()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->J(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic d()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->Z()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a0(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->Y(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->U(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->K(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->I(Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->V(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->F(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic l(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->A(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic m(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->z(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static synthetic n(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->E(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/player/longvideo/intercept/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-object p0
.end method

.method public static final synthetic r(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lho/j;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    return-object p0
.end method

.method public static final synthetic t(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->j:Z

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    return-void
.end method

.method private final x()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final z(Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/longvideo/intercept/d;->b()V

    :cond_0
    return-void
.end method

.method public final D(Lao/e;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    return-void
.end method

.method public final G(JLgo/a;Lcom/transsion/player/ui/longvideo/a;Lho/j;)V
    .locals 0

    return-void
.end method

.method public final H(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    return-void
.end method

.method public final M(Lcom/transsion/player/longvideo/ui/LongVodUiType;Lho/j;)V
    .locals 7

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onUiTypeChanged()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->a:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->b:Z

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->m:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->n:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->W(ZLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->onUiTypeChanged(Lcom/transsion/player/longvideo/ui/LongVodUiType;Lho/j;)V

    return-void
.end method

.method public final N(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onVideoPause()"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final O(Lao/e;Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 6

    const-string p1, "playbackInterceptView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerControl"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> onVideoStart()"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->cannelPauseAd()V

    :cond_1
    return-void
.end method

.method public final P()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onViewPause()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final Q()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onViewResume()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final R(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->h:Ljava/lang/String;

    sget-object v0, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/transsion/player/longvideo/intercept/h0;->e(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> setCurPlayStream() --> isVipResolutionRatio = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> resolutions = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> msg = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final T(Lgo/a;Lho/j;Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 6

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->d:Lgo/a;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->e:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->f:Lcom/transsion/player/longvideo/intercept/d;

    iput-object p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->l:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance p4, Lcom/transsion/player/longvideo/intercept/x;

    invoke-direct {p4}, Lcom/transsion/player/longvideo/intercept/x;-><init>()V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p3, p2, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    new-instance p4, Lcom/transsion/player/longvideo/intercept/y;

    invoke-direct {p4}, Lcom/transsion/player/longvideo/intercept/y;-><init>()V

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p3, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/player/longvideo/intercept/h0;->b(Lcom/transsion/moviedetailapi/bean/Subject;)I

    move-result p4

    iput p4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    invoke-virtual {p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/player/longvideo/intercept/h0;->f(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result p3

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> setDataSource(\u8bbe\u7f6e\u64ad\u653e\u8d44\u6e90) --> previewSeconds = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " --> isVipSource = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " --> playBean = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->n:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->j:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->i:Z

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->k:Z

    iget-object p1, p2, Lho/j;->j:Lho/i;

    iget-object p1, p1, Lho/i;->g:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p2, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->destroy()V

    return-void
.end method

.method public final W(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> destroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lho/j;->p:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->c:Lho/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final y(Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/ui/LongVodUiType;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    return-void
.end method
