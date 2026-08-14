.class public final Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u00c6\u0003JK\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;",
        "",
        "isAdEnabled",
        "",
        "isGamAdEnabled",
        "isTasAdEnabled",
        "isVbAdAllowed",
        "adLayout",
        "",
        "categories",
        "",
        "<init>",
        "(ZZZZLjava/lang/String;Ljava/util/List;)V",
        "()Z",
        "getAdLayout",
        "()Ljava/lang/String;",
        "getCategories",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "ui_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final adLayout:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAdEnabled:Z

.field private final isGamAdEnabled:Z

.field private final isTasAdEnabled:Z

.field private final isVbAdAllowed:Z


# direct methods
.method public constructor <init>(ZZZZLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "adLayout"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "categories"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    .line 19
    .line 20
    iput-boolean p4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    .line 21
    .line 22
    iput-object p5, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p6, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;ZZZZLjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->copy(ZZZZLjava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZZZZLjava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;
    .locals 8
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "adLayout"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;-><init>(ZZZZLjava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;

    iget-boolean v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    iget-object p1, p1, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAdLayout()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

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
    const/16 v3, 0x1f

    .line 13
    .line 14
    mul-int/2addr v0, v3

    .line 15
    iget-boolean v4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    move v4, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v4, v1

    .line 22
    :goto_1
    add-int/2addr v0, v4

    .line 23
    mul-int/2addr v0, v3

    .line 24
    iget-boolean v4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    move v4, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v4, v1

    .line 31
    :goto_2
    add-int/2addr v0, v4

    .line 32
    mul-int/2addr v0, v3

    .line 33
    iget-boolean v4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    .line 34
    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_3
    add-int/2addr v0, v1

    .line 39
    mul-int/2addr v0, v3

    .line 40
    iget-object v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v3, v1}, Lbar;->n(IILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v1, v0

    .line 53
    return v1
.end method

.method public final isAdEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isGamAdEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isTasAdEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isVbAdAllowed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isAdEnabled:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isGamAdEnabled:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isTasAdEnabled:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->isVbAdAllowed:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->adLayout:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/truecaller/insights/ui/notifications/smsid/ads/AdsMsgIdConfig;->categories:Ljava/util/List;

    .line 12
    .line 13
    const-string v6, ", isGamAdEnabled="

    .line 14
    .line 15
    const-string v7, ", isTasAdEnabled="

    .line 16
    .line 17
    const-string v8, "AdsMsgIdConfig(isAdEnabled="

    .line 18
    .line 19
    invoke-static {v8, v6, v7, v0, v1}, Lc/w1;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, ", isVbAdAllowed="

    .line 24
    .line 25
    const-string v6, ", adLayout="

    .line 26
    .line 27
    invoke-static {v1, v6, v0, v2, v3}, Lc/qux;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;ZZ)V

    .line 28
    .line 29
    .line 30
    const-string v1, ", categories="

    .line 31
    .line 32
    const-string v2, ")"

    .line 33
    .line 34
    invoke-static {v4, v1, v2, v0, v5}, Lex/p;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
