.class Lcom/miku/stream/StreamCacheHelper$1;
.super Ljava/lang/Object;
.source "StreamCacheHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miku/stream/StreamCacheHelper;->clearStreamCacheAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/miku/stream/StreamCacheHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/miku/stream/StreamCacheHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miku/stream/StreamCacheHelper;->clearStreamCache(Landroid/content/Context;)V

    .line 19
    return-void
.end method
