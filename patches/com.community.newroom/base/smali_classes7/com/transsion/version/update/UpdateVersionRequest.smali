.class public final Lcom/transsion/version/update/UpdateVersionRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lkotlinx/coroutines/n0;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "update"

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/version/update/g;

    invoke-direct {v0}, Lcom/transsion/version/update/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/transsion/version/update/a;
    .locals 1

    invoke-static {}, Lcom/transsion/version/update/UpdateVersionRequest;->g()Lcom/transsion/version/update/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/version/update/UpdateVersionRequest;->o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V

    return-void
.end method

.method private final f(Lcom/transsion/version/update/NoticeConfig;)Z
    .locals 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyTimes()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyInterval()F

    move-result v2

    float-to-long v2, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x18

    :goto_1
    const-string v4, ""

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v4

    :cond_3
    sget-object v6, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "showed_target_version_name"

    invoke-virtual {v7, v8, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "update_dialog_showed_times"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v16, Llg/a;->a:Llg/a$a;

    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkShowUpdateDialog \u4e4b\u524d\u5df2\u5c55\u793a\u7248\u672c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   \u8ba1\u5212\u7248\u672c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " \u5df2\u5c55\u793a\u6b21\u6570 "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v7, v9

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v8, "update_dialog_show_timestamp"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v8, v10, v11}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const/16 v6, 0x3c

    int-to-long v12, v6

    mul-long v14, v2, v12

    mul-long/2addr v14, v12

    const/16 v6, 0x3e8

    int-to-long v12, v6

    mul-long/2addr v14, v12

    sub-long/2addr v4, v10

    cmp-long v4, v14, v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v9

    :goto_2
    if-ge v7, v1, :cond_6

    if-eqz v4, :cond_6

    move v9, v5

    :cond_6
    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkShowUpdateDialog \u68c0\u67e5\u7ed3\u679c\u4e3a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u63d0\u9192\u6b21\u6570 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u95f4\u9694\u65f6\u957f\u4e3a "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u65f6 \u95f4\u9694\u65f6\u957f\u662f\u5426\u5408\u683c "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v16

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v9
.end method

.method private static final g()Lcom/transsion/version/update/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/version/update/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/version/update/a;

    return-object v0
.end method

.method private final i()Z
    .locals 4

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "NEW_USER_FIRST_LAUNCH"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return v1
.end method

.method private final j(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "check"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getHasUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "check_result"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "force_update"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_version_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "page_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    invoke-virtual {p1, v0}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    return-void
.end method

.method private final k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic l(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private static final m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string v1, "mb"

    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lhx/a;

    invoke-direct {p2}, Lhx/a;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lhx/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string v1, "mb"

    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lhx/a;

    invoke-direct {p2}, Lhx/a;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lhx/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    return-void
.end method

.method private static final p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final h()Lcom/transsion/version/update/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/version/update/a;

    return-object v0
.end method

.method public final q(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
