.class public Lcom/miku/filter/HomeTabFilter;
.super Ljava/lang/Object;
.source "HomeTabFilter.java"


# static fields
.field private static final BLOCKED_KEYWORDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MikuHomeTabs"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "football"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "trending"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cricket"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "channel"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "education"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "music"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "indian"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "hindi"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "tamil"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "telegu"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "telugu"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "game"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "buzzbox"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "midnight"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/miku/filter/HomeTabFilter;->BLOCKED_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterTabs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/HomeTabItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/HomeTabItem;",
            ">;"
        }
    .end annotation

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/HomeTabItem;

    .line 98
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/miku/filter/HomeTabFilter;->isTabBlocked(Lcom/transsion/home/bean/HomeTabItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_1
    if-eqz v1, :cond_2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filtered out home tab: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MikuHomeTabs"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    :goto_1
    goto :goto_0

    .line 104
    :cond_3
    return-object v0
.end method

.method public static isAnimeTab(Lcom/transsion/home/bean/HomeTabItem;)Z
    .locals 4

    .line 29
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    move-result-object v1

    .line 33
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "Animation"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    return v2

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object p0

    .line 37
    if-eqz p0, :cond_2

    const-string v1, "Anime"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 38
    return v2

    .line 40
    :cond_2
    return v0
.end method

.method public static isTabBlocked(Lcom/transsion/home/bean/HomeTabItem;)Z
    .locals 7

    .line 44
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 45
    return v0

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/miku/filter/HomeTabFilter;->isAnimeTab(Lcom/transsion/home/bean/HomeTabItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    return v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->isEducationTab()Ljava/lang/Boolean;

    move-result-object v1

    .line 54
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    return v2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->getType()Ljava/lang/String;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_4

    .line 61
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v3, "trentab"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "tvchanneltab"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "live"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    :cond_3
    return v2

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_6

    .line 70
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 71
    sget-object v3, Lcom/miku/filter/HomeTabFilter;->BLOCKED_KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 72
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    return v2

    .line 71
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    move-result-object p0

    .line 80
    if-eqz p0, :cond_8

    .line 81
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v1, Lcom/miku/filter/HomeTabFilter;->BLOCKED_KEYWORDS:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    aget-object v5, v1, v4

    .line 83
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 84
    return v2

    .line 82
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :cond_8
    return v0
.end method
