.class public final Lcom/transsion/baselib/report/AppPeriodReport;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field public static final a:Lcom/transsion/baselib/report/AppPeriodReport;

.field private static b:Ljava/util/Timer;

.field private static c:Ljava/util/TimerTask;

.field private static final d:Z

.field private static e:J

.field private static f:Z

.field private static g:Ljava/lang/Long;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/baselib/report/AppPeriodReport;

    invoke-direct {v0}, Lcom/transsion/baselib/report/AppPeriodReport;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    const-string v1, "app_period_report_debug"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/baselib/report/AppPeriodReport;->c(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/baselib/report/AppPeriodReport;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1388

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x493e0

    :goto_0
    sput-wide v1, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xbb8

    :goto_1
    sput-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->h:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    return-wide v0
.end method

.method private final c(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic e(Lcom/transsion/baselib/report/AppPeriodReport;Ljava/lang/Long;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/report/AppPeriodReport;->d(Ljava/lang/Long;Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/Long;Z)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 0

    return-void
.end method
