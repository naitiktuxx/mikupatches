.class Lcom/miku/filter/NsfwFilter$RegexRule;
.super Ljava/lang/Object;
.source "NsfwFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miku/filter/NsfwFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexRule"
.end annotation


# instance fields
.field final module:Ljava/lang/String;

.field final pattern:Ljava/util/regex/Pattern;

.field final ruleName:Ljava/lang/String;

.field final section:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/miku/filter/NsfwFilter$RegexRule;->module:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/miku/filter/NsfwFilter$RegexRule;->section:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/miku/filter/NsfwFilter$RegexRule;->ruleName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/miku/filter/NsfwFilter$RegexRule;->pattern:Ljava/util/regex/Pattern;

    .line 82
    return-void
.end method
