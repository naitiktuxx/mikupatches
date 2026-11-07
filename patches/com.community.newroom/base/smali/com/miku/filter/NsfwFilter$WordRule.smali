.class Lcom/miku/filter/NsfwFilter$WordRule;
.super Ljava/lang/Object;
.source "NsfwFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miku/filter/NsfwFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WordRule"
.end annotation


# instance fields
.field final module:Ljava/lang/String;

.field final rule:Ljava/lang/String;

.field final section:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/miku/filter/NsfwFilter$WordRule;->module:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/miku/filter/NsfwFilter$WordRule;->section:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/miku/filter/NsfwFilter$WordRule;->rule:Ljava/lang/String;

    .line 68
    return-void
.end method
