.class public final Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;",
        "",
        "isEnabled",
        "",
        "interval",
        "",
        "showPageIndicator",
        "<init>",
        "(ZJZ)V",
        "()Z",
        "getInterval",
        "()J",
        "getShowPageIndicator",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "domain_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final interval:J

.field private final isEnabled:Z

.field private final showPageIndicator:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;-><init>(ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZJZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    .line 4
    iput-wide p2, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    .line 5
    iput-boolean p4, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    return-void
.end method

.method public synthetic constructor <init>(ZJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x1388

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;-><init>(ZJZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;ZJZILjava/lang/Object;)Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-boolean p4, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->copy(ZJZ)Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    return v0
.end method

.method public final copy(ZJZ)Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;-><init>(ZJZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;

    iget-boolean v1, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    iget-boolean v3, p1, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    iget-wide v5, p1, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    iget-boolean p1, p1, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowPageIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    .line 15
    .line 16
    const/16 v5, 0x20

    .line 17
    .line 18
    ushr-long v5, v3, v5

    .line 19
    .line 20
    xor-long/2addr v3, v5

    .line 21
    long-to-int v3, v3

    .line 22
    add-int/2addr v0, v3

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_1
    add-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->isEnabled:Z

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->interval:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lcom/truecaller/ads/domain/core/multiad/remoteconfig/MultiAdAutoScrollRemote;->showPageIndicator:Z

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v5, "MultiAdAutoScrollRemote(isEnabled="

    .line 10
    .line 11
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", interval="

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", showPageIndicator="

    .line 26
    .line 27
    const-string v1, ")"

    .line 28
    .line 29
    invoke-static {v4, v0, v3, v1}, Lc/w1;->n(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
