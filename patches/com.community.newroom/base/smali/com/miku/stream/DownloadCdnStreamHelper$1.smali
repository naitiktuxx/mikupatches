.class Lcom/miku/stream/DownloadCdnStreamHelper$1;
.super Ljava/lang/Object;
.source "DownloadCdnStreamHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miku/stream/DownloadCdnStreamHelper;->resolveStreamListInternal(Lcom/transsion/videodetail/bean/VideoDetailStreamList;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fEp:I

.field final synthetic val$fSe:I

.field final synthetic val$fSubjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fSubjectId:Ljava/lang/String;

    iput p2, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fSe:I

    iput p3, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fEp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/miku/stream/DownloadCdnStreamHelper$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fSubjectId:Ljava/lang/String;

    iget v1, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fSe:I

    iget v2, p0, Lcom/miku/stream/DownloadCdnStreamHelper$1;->val$fEp:I

    invoke-static {v0, v1, v2}, Lcom/miku/stream/DownloadCdnStreamHelper;->access$000(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
