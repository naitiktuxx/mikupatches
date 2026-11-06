.class public final Lcom/transsion/baselib/report/launch/RoomInstallReferrer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

.field private static b:Lg5/a;

.field private static c:Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    invoke-direct {v0}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->a:Lcom/transsion/baselib/report/launch/RoomInstallReferrer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Lg5/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->g(Landroid/app/Application;Lg5/d;)V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->h(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic c()Lg5/a;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->b:Lg5/a;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Landroid/app/Application;Lg5/d;)V
    .locals 0

    return-void
.end method

.method private final h(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final j(Lcom/transsion/baselib/report/launch/c;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private final k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    iget v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;-><init>(Lcom/transsion/baselib/report/launch/RoomInstallReferrer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v2, "k_install_referrer"

    invoke-virtual {p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object p1

    const-string v2, "key_referrer_palm_store"

    invoke-virtual {p1, v2}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "SnowballReferrer"

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get referrer: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v4}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Lcom/transsion/baselib/report/launch/c;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/transsion/baselib/report/launch/RoomInstallReferrer;->j(Lcom/transsion/baselib/report/launch/c;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x2710

    cmp-long p1, v7, v9

    if-lez p1, :cond_7

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "wait referrer timeout"

    invoke-virtual {p1, v2, v0, v4}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    iput-wide v5, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->J$0:J

    iput v4, v0, Lcom/transsion/baselib/report/launch/RoomInstallReferrer$waitForPsReferrerResult$1;->label:I

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1
.end method


# virtual methods
.method public final e(Landroid/app/Application;Lcom/transsion/baselib/report/launch/RoomInstallReferrer$a;)V
    .locals 0

    return-void
.end method

.method public final f(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final i(Landroid/app/Application;Ljava/lang/String;Lg5/d;)V
    .locals 0

    return-void
.end method
