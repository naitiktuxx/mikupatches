.class public final Lcom/mymovie/ad/AdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(JLXYXYXY/bf;LXYXYXY/bc;)V
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    :cond_0
    invoke-virtual {p2, p3}, LXYXYXY/bf;->f(LXYXYXY/bc;)V

    return-void
.end method

.method public static b(Landroid/content/Context;LXYXYXY/bc;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static c(Landroid/content/Context;LXYXYXY/bc;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static d(LXYXYXY/bc;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/mymovie/ad/AdManager;->i(LXYXYXY/bc;)Lcom/mymovie/ad/config/InterstitialAdConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mymovie/ad/config/InterstitialAdConfig;->adId:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/mymovie/ad/AdManager;->f(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static g(LXYXYXY/bc;)J
    .locals 2

    invoke-static {p0}, Lcom/mymovie/ad/AdManager;->i(LXYXYXY/bc;)Lcom/mymovie/ad/config/InterstitialAdConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/mymovie/ad/config/InterstitialAdConfig;->maxWaitTimeMs:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, LXYXYXY/be;->c:LXYXYXY/be;

    iget-object v0, v0, LXYXYXY/be;->a:Ljava/lang/String;

    invoke-static {v0}, LXYXYXY/vu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(LXYXYXY/bc;)Lcom/mymovie/ad/config/InterstitialAdConfig;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, LXYXYXY/bc;->c:Ljava/lang/String;

    const-string v1, "{}"

    invoke-static {p0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/mymovie/ad/config/InterstitialAdConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mymovie/ad/config/InterstitialAdConfig;

    return-object p0
.end method

.method public static j(J)Z
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_2

    return p1

    :cond_2
    return v3
.end method

.method public static k(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static loadInterstitialAd(Landroid/app/Activity;LXYXYXY/bc;LXYXYXY/bf;)V
    .locals 0
    .param p2    # LXYXYXY/bf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    return-void
.end method

.method public static tryToShowInterstitialAd(LXYXYXY/bc;LXYXYXY/bf;)V
    .locals 1
    .param p1    # LXYXYXY/bf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, LXYXYXY/bf;->e(LXYXYXY/bc;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
