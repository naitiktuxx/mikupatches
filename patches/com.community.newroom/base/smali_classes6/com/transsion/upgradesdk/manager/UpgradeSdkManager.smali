.class public Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    .locals 2

    const-class v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    invoke-direct {v1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;-><init>()V

    sput-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkUpgradeTask(Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;)V
    .locals 10

    const-string v0, "check error"

    sget-object v1, Lyv/f;->o:Lyv/d;

    invoke-virtual {v1}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    :try_start_0
    iput-object p1, v1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    iget-boolean v2, v1, Lyv/f;->h:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "Not Install Palm Store"

    invoke-interface {p1, v1}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-static {v3, v4, v2, v2, v1}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_1
    const-string v5, "3"

    const/4 v8, 0x0

    const/16 v9, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v1}, Lyv/f;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Lyv/f;->b(I)V

    goto :goto_1

    :cond_2
    iput-boolean v3, v1, Lyv/f;->l:Z

    invoke-virtual {v1, v2}, Lyv/f;->c(Ljava/util/List;)V

    :goto_1
    sget-object v1, Lzv/f;->f:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv/f;

    invoke-virtual {v1}, Lzv/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public dismissUpgradeDialog()V
    .locals 1

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    invoke-virtual {v0}, Lyv/f;->d()V

    return-void
.end method

.method public getUpgradeSdkCallback(Z)Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;
    .locals 2

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    new-instance v1, Lyv/e;

    invoke-direct {v1, v0, p1}, Lyv/e;-><init>(Lyv/f;Z)V

    return-object v1
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "key"

    const-string v1, "<set-?>"

    sget-object v2, Lyv/f;->o:Lyv/d;

    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object v3

    const-string v4, "init Finish: "

    :try_start_0
    const-string v5, "updatesdk"

    const/16 v6, 0x414

    const/4 v7, 0x0

    invoke-static {p1, v5, v6, v7, v7}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    const/16 v5, 0x18

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lxv/a;->a:Landroid/app/Application;

    iput-boolean p3, v3, Lyv/f;->d:Z

    invoke-static {p1}, Lbw/n;->f(Landroid/content/Context;)Lvv/b;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, v3, Lyv/f;->a:Lvv/b;

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p3

    iget-object p3, p3, Lvv/b;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "2"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lbw/n;->d()Z

    move-result p3

    if-nez p3, :cond_2

    iput-boolean v7, v3, Lyv/f;->h:Z

    const-string p1, "3"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_2
    sget-object p3, Lbw/i;->b:Lbw/h;

    sget-object v5, Lxv/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "application"

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v9

    :goto_0
    invoke-virtual {p3, v5}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v5

    const-string v10, "KV_UPGRADE_LAST_POP"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v10, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_1
    iput-boolean v5, v3, Lyv/f;->c:Z

    sget-object v5, Lyv/c;->d:Lyv/a;

    invoke-virtual {v5}, Lyv/a;->a()Lyv/c;

    move-result-object v5

    invoke-virtual {v5, p1}, Lyv/c;->b(Landroid/content/Context;)V

    sget-object p1, Lxv/a;->a:Landroid/app/Application;

    if-eqz p1, :cond_5

    move-object v9, p1

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3, v9}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object p1

    const-string p3, "KV_UPGRADE_IS_FORCE"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    move-result v7

    :cond_6
    iput-boolean v7, v3, Lyv/f;->e:Z

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Lvv/b;->g:Ljava/lang/String;

    const-string p1, "UpgradeSdkManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-boolean p3, Lbw/g;->a:Z

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    sget-wide v0, Lbw/g;->b:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    sput-wide p1, Lbw/g;->b:J

    const-string p1, "upgradeSdkLog"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    sput-boolean v8, Lbw/g;->a:Z

    :cond_9
    sget-boolean p3, Lbw/g;->a:Z

    :goto_3
    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-boolean p1, p1, Lyv/f;->d:Z

    invoke-virtual {v3}, Lyv/f;->a()V

    goto :goto_5

    :cond_a
    :goto_4
    const-string p1, "1"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_5
    return-void
.end method

.method public showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V
    .locals 0

    return-void
.end method
