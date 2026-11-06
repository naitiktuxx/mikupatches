.class public LXYXYXY/xf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LXYXYXY/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LXYXYXY/xf;

    invoke-direct {v0}, LXYXYXY/xf;-><init>()V

    sput-object v0, LXYXYXY/xf;->a:LXYXYXY/xf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/mymovie/MyApp;->sApp:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/mymovie/partner/PartnerConfig;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mymovie/partner/PartnerConfig;->playerInfo:Lcom/mymovie/partner/PartnerPlayerInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mymovie/partner/PartnerPlayerInfo;->pkgName:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/mymovie/partner/PartnerConfig;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mymovie/partner/PartnerConfig;->playerInfo:Lcom/mymovie/partner/PartnerPlayerInfo;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mymovie/partner/PartnerPlayerInfo;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/mymovie/partner/PartnerPlayerInfo;->scheme:Ljava/lang/String;

    invoke-virtual {p0, p1}, LXYXYXY/xf;->a(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/mymovie/partner/PartnerConfig;)Z
    .locals 0

    invoke-virtual {p0, p1}, LXYXYXY/xf;->c(Lcom/mymovie/partner/PartnerConfig;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;Lcom/mymovie/partner/PartnerConfig;LXYXYXY/xg;)Z
    .locals 7

    invoke-virtual {p0, p2}, LXYXYXY/xf;->c(Lcom/mymovie/partner/PartnerConfig;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p3, LXYXYXY/xg;->isLocalVod:Z

    const/4 v3, 0x1

    const-string v4, "data"

    if-eqz v2, :cond_1

    iget-object p2, p2, Lcom/mymovie/partner/PartnerConfig;->playerInfo:Lcom/mymovie/partner/PartnerPlayerInfo;

    iget-object p2, p2, Lcom/mymovie/partner/PartnerPlayerInfo;->pkgName:Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p3, LXYXYXY/xg;->data:Lcom/mymovie/datasource/MyLongVodDataSourceData;

    iget-object v5, v5, Lcom/mymovie/datasource/MyLongVodDataSourceData;->url:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "com.mikuplayer.tux.download.fileprovider"

    invoke-static {p1, v5, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, LXYXYXY/xg;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "video/*"

    invoke-virtual {v5, v2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008001

    invoke-virtual {v5, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, LXYXYXY/xg;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p3, 0x10008000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v3

    :catch_1
    return v1
.end method
