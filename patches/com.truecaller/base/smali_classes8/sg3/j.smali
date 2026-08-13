.class public abstract Lsg3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lng3/baz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lng3/baz;

    invoke-static {v0}, Lng3/qux;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, v0}, Lng3/baz;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lsg3/j;->a:Lng3/baz;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The main looper is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
