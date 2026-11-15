.class public Lcom/pairip/VMRunner;
.super Ljava/lang/Object;
.source "VMRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pairip/VMRunner$VMRunnerException;
    }
.end annotation


# static fields
.field private static final PACKAGE_MANAGER_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VMRunner"

.field private static apkPath:Ljava/lang/String; = null

.field private static context:Landroid/content/Context; = null

.field private static job:Ljava/util/concurrent/Future; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private static loggingEnabled:Ljava/lang/String; = "false"

.field private static versionCode:I = 0x127


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInvokeRunnable(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pairip/VMRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/pairip/VMRunner$1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static executeVM([B[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/pairip/VMRunner;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getJob()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/pairip/VMRunner;->job:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public static invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/pairip/VMRunner;->context:Landroid/content/Context;

    return-void
.end method

.method public static setJob(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    sput-object p0, Lcom/pairip/VMRunner;->job:Ljava/util/concurrent/Future;

    return-void
.end method
