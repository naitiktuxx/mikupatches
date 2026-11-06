.class public Lcom/mymovie/MyApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final MY_APP_ID:Ljava/lang/String; = "478455"

.field private static final MY_PKG_NAME:Ljava/lang/String; = "com.mikuplayer.tux"

.field public static sApp:Landroid/app/Application;


# instance fields
.field app:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mymovie/SignSpoof;->install()V

    iput-object p1, p0, Lcom/mymovie/MyApp;->app:Landroid/app/Application;

    sput-object p1, Lcom/mymovie/MyApp;->sApp:Landroid/app/Application;

    return-void
.end method

.method public static ensureKeptPkgName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static ensureKeptPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "com.mikuplayer.tux"

    const-string v1, "com.community.oneroom"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeptPkgName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.community.oneroom"

    return-object v0
.end method

.method public static getMvAppID()Ljava/lang/String;
    .locals 1

    const-string v0, "478455"

    return-object v0
.end method

.method public static getMvAppKey()Ljava/lang/String;
    .locals 1

    const-string v0, "706a9c25ffdc1d3352ee0eaf16d8e76e"

    return-object v0
.end method

.method public static getMyDefaultPlayMode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual {v0}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUA()Ljava/lang/String;
    .locals 1

    const-string v0, "okhttp/4.12.0"

    return-object v0
.end method

.method public static log(I)V
    .locals 0

    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static log(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static log(Z)V
    .locals 0

    return-void
.end method

.method public static logTrace()V
    .locals 0

    return-void
.end method

.method public static logView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static log_trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static preloadAd(Landroid/app/Activity;LXYXYXY/bc;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/mymovie/ad/AdManager;->b(Landroid/content/Context;LXYXYXY/bc;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mymovie/ad/AdManager;->loadInterstitialAd(Landroid/app/Activity;LXYXYXY/bc;LXYXYXY/bf;)V

    return-void
.end method

.method public static preloadDownloadAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static preloadEnterVideoAd(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, LXYXYXY/bc;->h:LXYXYXY/bc;

    invoke-static {p0, v0}, Lcom/mymovie/MyApp;->preloadAd(Landroid/app/Activity;LXYXYXY/bc;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/mymovie/MyApp;->app:Landroid/app/Application;

    invoke-static {v0}, LXYXYXY/vu;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mymovie/MyApp;->app:Landroid/app/Application;

    new-instance v1, Lcom/mymovie/MyApp$a;

    invoke-direct {v1, p0}, Lcom/mymovie/MyApp$a;-><init>(Lcom/mymovie/MyApp;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
