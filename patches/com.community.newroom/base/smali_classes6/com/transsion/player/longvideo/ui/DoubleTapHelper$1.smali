.class Lcom/transsion/player/longvideo/ui/DoubleTapHelper$1;
.super Ljava/lang/Object;
.source "DoubleTapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/longvideo/ui/DoubleTapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->-$$Nest$sfputcumulativeActive(Z)V

    .line 39
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->-$$Nest$sfputaccumulatedSeconds(I)V

    .line 40
    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->-$$Nest$sfputbasePosition(J)V

    .line 41
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->-$$Nest$sfputactivePlayer(Ljava/lang/Object;)V

    .line 42
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/DoubleTapHelper;->-$$Nest$sfputdownIntercepted(Z)V

    .line 43
    return-void
.end method
