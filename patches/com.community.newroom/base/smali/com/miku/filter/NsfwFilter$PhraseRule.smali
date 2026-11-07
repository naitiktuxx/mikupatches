.class Lcom/miku/filter/NsfwFilter$PhraseRule;
.super Ljava/lang/Object;
.source "NsfwFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miku/filter/NsfwFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhraseRule"
.end annotation


# instance fields
.field final module:Ljava/lang/String;

.field final normalizedPhrase:Ljava/lang/String;

.field final rule:Ljava/lang/String;

.field final section:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/miku/filter/NsfwFilter$PhraseRule;->module:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/miku/filter/NsfwFilter$PhraseRule;->section:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/miku/filter/NsfwFilter$PhraseRule;->rule:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lcom/miku/filter/NsfwFilter$PhraseRule;->normalizedPhrase:Ljava/lang/String;

    .line 56
    return-void
.end method
