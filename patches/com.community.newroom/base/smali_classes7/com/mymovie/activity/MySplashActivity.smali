.class public Lcom/mymovie/activity/MySplashActivity;
.super Lcom/transsion/subroom/activity/SplashActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/subroom/activity/SplashActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->access$001(Lcom/mymovie/activity/MySplashActivity;Z)V

    return-void
.end method

.method public static synthetic access$001(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/subroom/activity/SplashActivity;->modAdDoneh0(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->onFirebaseReady(Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void
.end method

.method private goToMain(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LXYXYXY/wg;

    invoke-direct {v1, p0, p1}, LXYXYXY/wg;-><init>(Lcom/mymovie/activity/MySplashActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onFirebaseReady(Z)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LXYXYXY/wi;

    invoke-direct {v1, p0, p1}, LXYXYXY/wi;-><init>(Lcom/mymovie/activity/MySplashActivity;Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupSplashAnimation()V
    .locals 8

    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x43340000    # 180.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v4, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "launch_tips"

    const-string v6, "mipmap"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/16 v6, 0x51

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const v5, 0x42580000    # 54.0f

    mul-float/2addr v5, v1

    float-to-int v1, v5

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "miku_splash_anim"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v3, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LXYXYXY/wg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LXYXYXY/wg;-><init>(Lcom/mymovie/activity/MySplashActivity;Z)V

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public modAfterAdh0(Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/subroom/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/mymovie/util/ReportHlp;->reportSplashCool()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mymovie/activity/MySplashActivity;->setupSplashAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/subroom/activity/SplashActivity;->onResume()V

    return-void
.end method
