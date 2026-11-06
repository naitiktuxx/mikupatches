.class public Lcom/mymovie/activity/MySplashActivity;
.super Lcom/transsion/subroom/activity/SplashActivity;
.source "SourceFile"


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
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LXYXYXY/bc;->d:LXYXYXY/bc;

    invoke-static {p0, v0}, Lcom/mymovie/ad/AdManager;->c(Landroid/content/Context;LXYXYXY/bc;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void

    :cond_0
    new-instance v1, Lcom/mymovie/activity/MySplashActivity$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/mymovie/activity/MySplashActivity$a;-><init>(Lcom/mymovie/activity/MySplashActivity;ZLXYXYXY/bc;)V

    invoke-static {p0, v0, v1}, Lcom/mymovie/ad/AdManager;->loadInterstitialAd(Landroid/app/Activity;LXYXYXY/bc;LXYXYXY/bf;)V

    return-void
.end method

.method public static synthetic c(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LXYXYXY/vu;->g()Z

    move-result v0

    const-wide/16 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v3, 0xfa0

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    add-long/2addr v1, v3

    invoke-static {}, LXYXYXY/vu;->g()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->onFirebaseReady(Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mymovie/activity/MySplashActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void
.end method

.method private goToMain(Z)V
    .locals 2

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


# virtual methods
.method public modAfterAdh0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mymovie/activity/MySplashActivity;->goToMain(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/subroom/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/mymovie/util/ReportHlp;->reportSplashCool()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/subroom/activity/SplashActivity;->onResume()V

    return-void
.end method
