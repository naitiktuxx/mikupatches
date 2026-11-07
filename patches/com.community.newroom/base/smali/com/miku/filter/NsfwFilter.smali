.class public final Lcom/miku/filter/NsfwFilter;
.super Ljava/lang/Object;
.source "NsfwFilter.java"


# static fields
.field private static final ALLOWLIST_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALLOWLIST_PHRASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCKED_PHRASES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCKED_RATINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCKED_WORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPILED_PATTERNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIACRITICS_PATTERN:Ljava/util/regex/Pattern;

.field private static final REPEAT_2PLUS_TO_1:Ljava/util/regex/Pattern;

.field private static final REPEAT_3PLUS_TO_2:Ljava/util/regex/Pattern;

.field private static final SINGLE_LETTER_SEP:Ljava/util/regex/Pattern;

.field private static final WORD_SPLIT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1f6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    .line 20
    const-string v0, "[\\u0300-\\u036f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miku/filter/NsfwFilter;->DIACRITICS_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "(?<=\\b[a-zA-Z0-9])[._\\s\\-\u2013\u2014/]+(?=[a-zA-Z0-9]\\b)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miku/filter/NsfwFilter;->SINGLE_LETTER_SEP:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "(.)\\1{2,}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miku/filter/NsfwFilter;->REPEAT_3PLUS_TO_2:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "(.)\\1+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miku/filter/NsfwFilter;->REPEAT_2PLUS_TO_1:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "[^\\p{L}\\p{M}\\p{N}]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miku/filter/NsfwFilter;->WORD_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 28
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "bold and the beautiful"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u092c\u094b\u0932\u094d\u0921 \u090f\u0902\u0921 \u092c\u094d\u092f\u0942\u091f\u0940\u092b\u0941\u0932"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hotel transylvania"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u092d\u093e\u092d\u0940 \u091c\u0940 \u0918\u0930 \u092a\u0930 \u0939\u0948\u0902"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sexual harassment"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "assassin\'s creed"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u092d\u093e\u092d\u0940\u091c\u0940 \u0918\u0930 \u092a\u0930 \u0939\u0948\u0902"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sex and the city"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "lemony snicket"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "the bold type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u0947\u0915\u094d\u0938 \u090f\u091c\u0941\u0915\u0947\u0936\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sex education"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sexual health"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hot pursuit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sextuplets"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0926\u0947\u0938\u0940 \u092c\u0949\u092f\u091c\u093c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "adult life"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "scunthorpe"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hot wheels"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "dick tracy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "adult swim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "moby dick"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0926\u0947\u0938\u0940 \u0917\u0930\u094d\u0932"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "\u0926\u0947\u0938\u0940 \u0917\u0930\u094d\u0932"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "adulthood"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "adulthood"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "penistone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "penistone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "middlesex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "middlesex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "butterfly"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "butterfly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "analysis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "analysis"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "cocktail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "cocktail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hot fuzz"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "hot fuzz"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "lemonade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "lemonade"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "assassin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "assassin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "peacock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "peacock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "classic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "classic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "analyst"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "analyst"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0906\u0902\u091f\u0940 \u091c\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "\u0906\u0902\u091f\u0940 \u091c\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hancock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "hancock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0917\u0930\u092e \u0927\u0930\u092e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "\u0917\u0930\u092e \u0927\u0930\u092e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "dickens"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "dickens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "cockpit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "cockpit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hot rod"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "hot rod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hotshot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "hotshot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sextet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "sextet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "analog"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "analog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sexton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "sexton"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "butter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "butter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "wessex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "wessex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "sussex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "sussex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "button"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "button"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "class"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "class"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "glass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "glass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "banal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "banal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "canal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "canal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "hotel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "hotel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "essex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "essex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "grass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "grass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "pass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "pass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "bass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "bass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "\u0939\u094b\u091f\u0932"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "\u0939\u094b\u091f\u0932"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    const-string v1, "mass"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    const-string v1, "mass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "adult"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "adults"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "affair"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "anal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "ashlil"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "aunty"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bangbros"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bdsm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "besharams"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bgrade"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bhabhi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bhosda"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bhosdi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bhosdike"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bikini"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "blowjob"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "bondage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "boobs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "boomex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "brazzers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "brothel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "cabaret"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "camgirl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "camsoda"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "charmsukh"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chaturbate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "cheating"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chodna"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "choot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chudai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chudasi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "chut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "cock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "creampie"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "cumshot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "deepthroat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "desi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "devar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "dick"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "dildo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "ecchi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "ero"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "erotic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "erotica"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "erotik"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "escort"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "explicit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "exploitation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "fanservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "fetish"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "fingering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "fugi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "gaand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "gand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "gangbang"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "garam"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "grindhouse"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "gupchup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "handjob"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "hardcore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "hentai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "hooker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "horny"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "hot"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "hotshots"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "incest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "jawaani"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "jawani"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kaamuk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kama"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamakathai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamakathaikal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamam"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamasutra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamuk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kamukta"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "khula"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kink"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kinky"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "kooku"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "lauda"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "leaked"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "lemon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "lingerie"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "loda"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "lovemaking"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "lund"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mallu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "masala"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "masterani"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mastram"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "masturbate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "masturbation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mature"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "milf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mojflix"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "muth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "mutthi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "naked"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nanga"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nangapan"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nangi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "naturist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "naughty"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nipple"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nipples"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nsfw"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nude"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nudes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nudist"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nudity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "nuefliks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "onlyfans"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "oppai"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "orgy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "peepshow"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "penthouse"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "playboy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "porn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "pornhub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "porno"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "pornography"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "pornstar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "primeshots"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "prostitute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "prostitution"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "pussy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "r18"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "raand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "randi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "rasbhari"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "rasili"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "redtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sali"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sambhogam"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "seduction"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "seductive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sensual"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sex"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sexploitation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sextape"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sexual"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "sexy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "slut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "smut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "softcore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "spankbang"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "squirt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stepbrother"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stepdad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stepmom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stepsister"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stripchat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "stripper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "striptease"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "suhagraat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "swinger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "swingers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "taboo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "threesome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "tits"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "topless"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "triflicks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "ullu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "uncensored"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "uncut"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "unrated"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "upskirt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "vadults"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "vibrator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "voyeur"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "whore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "xhamster"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "xnxx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "xvideos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "xxx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "youporn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0902\u0921\u0930\u0935\u093f\u092f\u0930"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0928\u0915\u091f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0928\u0930\u0947\u091f\u0947\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0928\u0938\u0947\u0902\u0938\u0930\u094d\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0936\u094d\u0932\u0940\u0932"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0905\u0936\u094d\u0932\u0940\u0932\u0924\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0906\u0902\u091f\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0909\u0932\u094d\u0932\u0942"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u090f\u0921\u0932\u094d\u091f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u090f\u092e\u090f\u092e\u090f\u0938"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u093e\u092e\u0935\u093e\u0938\u0928\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u093e\u092e\u0938\u0942\u0924\u094d\u0930"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u093e\u092e\u0941\u0915"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u093e\u092e\u0941\u0915\u0924\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u0942\u0915\u0942"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0915\u0948\u092c\u0930\u0947"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0917\u0930\u094d\u092e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0917\u093e\u0901\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0917\u093e\u0902\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u093e\u0930\u094d\u092e\u0938\u0941\u0916"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u0941\u0924"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u0941\u0926\u093e\u0907"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u0941\u0926\u093e\u0908"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u0942\u0924"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u094b\u0926"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091a\u094b\u0926\u0928\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u091c\u0935\u093e\u0928\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0924\u0935\u093e\u092f\u092b"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0928\u0902\u0917\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0928\u0902\u0917\u093e\u092a\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0928\u0902\u0917\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0928\u0917\u094d\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0928\u0917\u094d\u0928\u0924\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092a\u0949\u0930\u094d\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092a\u094b\u0930\u094d\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092a\u094b\u0930\u094d\u0928\u094b\u0917\u094d\u0930\u093e\u092b\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092a\u094d\u0930\u093e\u0907\u092e\u0936\u0949\u091f\u094d\u0938"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092c\u093f\u0915\u093f\u0928\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092c\u0947\u0936\u0930\u094d\u092e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092c\u0947\u0936\u0930\u094d\u092e\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092c\u094b\u0932\u094d\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092d\u094b\u0938\u0921\u093c\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092d\u094b\u0938\u0921\u093c\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092e\u0938\u094d\u0924\u0930\u093e\u092e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092e\u0941\u091c\u0930\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092e\u0941\u0920"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u092f\u094c\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0930\u0902\u0921\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0930\u0938\u092d\u0930\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0930\u0938\u0940\u0932\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0930\u093e\u0902\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0932\u0902\u0921"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0932\u093f\u0902\u0917\u0930\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0932\u094c\u0921\u093c\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0935\u092f\u0938\u094d\u0915"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0935\u093e\u0938\u0928\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0935\u0947\u0936\u094d\u092f\u093e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0935\u0947\u0936\u094d\u092f\u093e\u0932\u092f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u0902\u092d\u094b\u0917"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u093e\u0932\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u0941\u0939\u093e\u0917\u0930\u093e\u0924"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u0947\u0915\u094d\u0938"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u0947\u0915\u094d\u0938\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u094d\u091f\u094d\u0930\u093f\u092a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0938\u094d\u091f\u094d\u0930\u093f\u092a\u0930"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0939\u0935\u0938"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 397
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0939\u0935\u0938\u0940"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0939\u0938\u094d\u0924\u092e\u0948\u0925\u0941\u0928"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0939\u0949\u091f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    const-string v1, "\u0939\u0949\u091f\u0936\u0949\u091f\u094d\u0938"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "director\'s cut explicit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "strong sexual content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "teacher student hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "boss secretary hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexually explicit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "explicit content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult web series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mature audiences"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mature audience"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "intimate scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "one night stand"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "erotic thriller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "romantic erotic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "chitrapat adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexual violence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "naughty america"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult animation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "lady doctor hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bold web series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "forbidden love"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexual content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bhojpuri adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot web series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "web series 18+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0935\u092f\u0938\u094d\u0915\u094b\u0902 \u0915\u0947 \u0932\u093f\u090f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mature content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "kissing scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "18+ web series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "erotic romance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "cheating wife"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "kavita bhabhi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "honeymoon hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "malayalam hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0935\u092f\u0938\u094d\u0915 \u0938\u093e\u092e\u0917\u094d\u0930\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bhabhi series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "savita bhabhi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexual themes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "rabbit movies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "item song hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "garam masala"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0915\u093e\u092e\u0938\u0942\u0924\u094d\u0930 3\u0921\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "kamasutra 3d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u094d\u091f\u094d\u0930\u093f\u092a \u0915\u094d\u0932\u092c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "devar bhabhi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "aunty series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u0941\u0939\u093e\u0917\u0930\u093e\u0924 \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "dubbed adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex & nudity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0935\u093e\u092f\u0930\u0932 \u090f\u092e\u090f\u092e\u090f\u0938"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u0947\u0915\u094d\u0938 \u0935\u0940\u0921\u093f\u092f\u094b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bhojpuri hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "romantic hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult movies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "leaked video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "indian adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "erotic drama"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bangla choti"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "dreams films"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bold content"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0930\u0948\u092c\u093f\u091f \u092e\u0942\u0935\u0940\u091c\u093c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mia khalifa"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mallu aunty"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adults only"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult movie"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u090f\u0921\u0932\u094d\u091f \u092b\u093f\u0932\u094d\u092e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bold scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bold series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sunny leone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bengali hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "viral video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "graphic sex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0907\u0902\u091f\u093f\u092e\u0947\u091f \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult hindi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "punjabi hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "desi bhabhi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult padam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "padosan hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sugar daddy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hindi adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "love making"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "romance 18+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0907\u0902\u091f\u0940\u092e\u0947\u091f \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot bhabhi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult film"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bangla hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bold hindi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u092c\u094d\u0932\u0942 \u092b\u093f\u0932\u094d\u092e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "desi aunty"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hidden cam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "amar adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "pinku eiga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "strip club"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u0935\u093f\u0924\u093e \u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0932\u0940\u0915 \u0935\u0940\u0921\u093f\u092f\u094b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u091a\u0941\u092e\u094d\u092c\u0928 \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0915\u0935\u093f\u0924\u093e \u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0915\u093f\u0938\u093f\u0902\u0917 \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex comedy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "adult only"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex worker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "dubbed hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bed scenes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "ladies hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "telugu sex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "desi adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot movies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "palang tod"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mms series"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexy video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "lap dance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0938\u0947\u0915\u094d\u0938 \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hindi hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sexy song"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u092a\u0932\u0902\u0917 \u0924\u094b\u0921\u093c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bhabhi ki"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "mujra hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "ott adult"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "18+ \u0939\u093f\u0902\u0926\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "nurse hot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "viral mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "bar dance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0917\u0930\u092e \u092e\u0938\u093e\u0932\u093e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u092c\u094d\u0932\u0942 \u092e\u0942\u0935\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex drama"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "18+ hindi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u092c\u094b\u0932\u094d\u0921 \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "tamil sex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0926\u0947\u0938\u0940 \u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u092f\u094c\u0928 \u0938\u0902\u092c\u0902\u0927"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "call girl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex scene"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0926\u0947\u0935\u0930 \u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot aunty"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hindi 18+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot dance"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "ero anime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "pink film"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "aunty ki"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "desi mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "desi sex"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0939\u0949\u091f \u092d\u093e\u092d\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "sex tape"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot wife"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0939\u0949\u091f \u0906\u0902\u091f\u0940"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0915\u0949\u0932 \u0917\u0930\u094d\u0932"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "hot sali"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "cam girl"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "spy cam"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "\u0939\u0949\u091f \u0938\u0940\u0928"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "c-grade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "b-grade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "ott 18+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "x-rated"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "b grade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "c grade"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "r-18"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "18+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    const-string v1, "21+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "18+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "21+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "a (adult)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "ao"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "adults only"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "nc-17"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "not rated (adult)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "r(a)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "r18"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "r18+"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "r18+ (australia)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "tv-ma (sexual)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "unrated (adult)"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "xxx"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "adult"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    const-string v1, "mature_18"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\b(18\\s*\\+|21\\s*\\+|r\\s*-?\\s*18)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\bs\\W?e\\W?x\\W?(y|ual)?\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\bp\\W?[o0]\\W?r\\W?n(o)?\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\bn\\W?s\\W?f\\W?w\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\bx{3,}\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\b(hot|bold|adult)\\s+(web\\s*series|scenes?|movie|movies|video|videos|content)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\b(bhabhi|aunty|devar|sali)\\s+(hot|ki|ka|ke|sex|mms)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\b(desi|indian|tamil|telugu|mallu|bangla)\\s+(sex|mms|hot|adult)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)\\b(season|episode|part)\\s*\\d*\\s*(uncut|uncensored|unrated|18\\+)\\b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(?i)(porn|xxx|nsfw|hentai|erotic|nude|naked|sex\\s*(video|scene|movie|tape)?|chudai|randi|mms|bhabhi\\s*hot|aunty\\s*hot|hot\\s*web\\s*series|18\\+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    const-string v1, "(\u0938\u0947\u0915\u094d\u0938|\u092a\u094b\u0930\u094d\u0928|\u0928\u0902\u0917\u093e|\u0928\u0917\u094d\u0928|\u0905\u0936\u094d\u0932\u0940\u0932|\u0915\u093e\u092e\u0941\u0915|\u091a\u0941\u0926\u093e\u0908|\u0930\u0902\u0921\u0940|\u092c\u094d\u0932\u0942\\s*\u092b\u093f\u0932\u094d\u092e|\u0939\u0949\u091f\\s*\u092d\u093e\u092d\u0940|\u090f\u0921\u0932\u094d\u091f|\u090f\u092e\u090f\u092e\u090f\u0938)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    return-void
.end method

.method private static checkPhrasesAndWords(Ljava/lang/String;)Z
    .locals 7

    .line 751
    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 754
    :cond_0
    sget-object v1, Lcom/miku/filter/NsfwFilter;->BLOCKED_PHRASES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 755
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 756
    if-ltz v4, :cond_5

    .line 757
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 758
    if-eqz v4, :cond_2

    invoke-static {v5}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 759
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 760
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 761
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v4, v6, :cond_4

    invoke-static {v2}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    .line 762
    :goto_4
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 763
    return v3

    .line 766
    :cond_5
    goto :goto_0

    .line 769
    :cond_6
    sget-object v1, Lcom/miku/filter/NsfwFilter;->WORD_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 770
    array-length v1, p0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_8

    aget-object v4, p0, v2

    .line 771
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/miku/filter/NsfwFilter;->BLOCKED_WORDS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 772
    return v3

    .line 770
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 776
    :cond_8
    return v0

    .line 751
    :cond_9
    :goto_6
    return v0
.end method

.method public static filterHomeHotKeywords(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 918
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterHotSearchKeywords(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 914
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 894
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 895
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 897
    invoke-static {v1}, Lcom/miku/filter/NsfwFilter;->isNsfw(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 898
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    :cond_1
    goto :goto_0

    .line 901
    :cond_2
    return-object v0

    .line 894
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static filterSearchSuggestItems(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 910
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static filterSuggestEntities(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 906
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->filterList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isAllowlisted(Ljava/lang/String;)Z
    .locals 1

    .line 611
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 612
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 613
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNsfw(Ljava/lang/Object;)Z
    .locals 7

    .line 783
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 784
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 785
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 788
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 792
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "getWord"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 793
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 794
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 795
    return v2

    .line 797
    :catchall_0
    move-exception v3

    :cond_2
    nop

    .line 801
    :try_start_1
    const-string v3, "getTitle"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 802
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 803
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 804
    return v2

    .line 806
    :catchall_1
    move-exception v3

    :cond_3
    nop

    .line 810
    :try_start_2
    const-string v3, "getContentRating"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 811
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 812
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 813
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 814
    sget-object v4, Lcom/miku/filter/NsfwFilter;->BLOCKED_RATINGS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_4

    .line 815
    return v2

    .line 818
    :catchall_2
    move-exception v3

    :cond_4
    nop

    .line 822
    :try_start_3
    const-string v3, "getRestrictKid"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 823
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 824
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v3, :cond_5

    .line 825
    return v2

    .line 827
    :catchall_3
    move-exception v3

    :cond_5
    nop

    .line 831
    :try_start_4
    const-string v3, "getSubject"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 832
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 833
    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfw(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v3, :cond_6

    .line 834
    return v2

    .line 836
    :catchall_4
    move-exception v3

    :cond_6
    nop

    .line 840
    :try_start_5
    const-string v3, "getStaff"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 841
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 842
    if-eqz v3, :cond_7

    .line 843
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getName"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 844
    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 845
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v3, :cond_7

    .line 846
    return v2

    .line 849
    :catchall_5
    move-exception v3

    :cond_7
    nop

    .line 853
    :try_start_6
    const-string v3, "getGenre"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 854
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 855
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v3, :cond_8

    .line 856
    return v2

    .line 858
    :catchall_6
    move-exception v3

    :cond_8
    nop

    .line 862
    :try_start_7
    const-string v3, "getTag"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 863
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 864
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_9

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v3, :cond_9

    .line 865
    return v2

    .line 867
    :catchall_7
    move-exception v3

    :cond_9
    nop

    .line 871
    :try_start_8
    const-string v3, "getCategory"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 872
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 873
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v3, :cond_a

    .line 874
    return v2

    .line 876
    :catchall_8
    move-exception v3

    :cond_a
    nop

    .line 880
    :try_start_9
    const-string v3, "getTopicType"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 881
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 882
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz p0, :cond_b

    .line 883
    return v2

    .line 885
    :catchall_9
    move-exception p0

    :cond_b
    nop

    .line 887
    return v0
.end method

.method public static isNsfwText(Ljava/lang/String;)Z
    .locals 5

    .line 689
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 690
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 691
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 694
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 695
    sget-object v2, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_EXACT:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 696
    return v0

    .line 700
    :cond_2
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->maskAllowlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 702
    return v0

    .line 706
    :cond_3
    sget-object v1, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 707
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 708
    return v3

    .line 710
    :cond_4
    goto :goto_0

    .line 711
    :cond_5
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->checkPhrasesAndWords(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 712
    return v3

    .line 716
    :cond_6
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 719
    sget-object v1, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 720
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 721
    return v3

    .line 723
    :cond_7
    goto :goto_1

    .line 726
    :cond_8
    invoke-static {p0}, Lcom/miku/filter/NsfwFilter;->checkPhrasesAndWords(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 727
    return v3

    .line 731
    :cond_9
    sget-object v1, Lcom/miku/filter/NsfwFilter;->REPEAT_3PLUS_TO_2:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 733
    sget-object v2, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 734
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    return v3

    .line 735
    :cond_a
    goto :goto_2

    .line 736
    :cond_b
    invoke-static {v1}, Lcom/miku/filter/NsfwFilter;->checkPhrasesAndWords(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v3

    .line 739
    :cond_c
    sget-object v2, Lcom/miku/filter/NsfwFilter;->REPEAT_2PLUS_TO_1:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v4, "$1"

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 741
    sget-object p0, Lcom/miku/filter/NsfwFilter;->COMPILED_PATTERNS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 742
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_d

    return v3

    .line 743
    :cond_d
    goto :goto_3

    .line 744
    :cond_e
    invoke-static {v2}, Lcom/miku/filter/NsfwFilter;->checkPhrasesAndWords(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v3

    .line 747
    :cond_f
    return v0
.end method

.method private static isWordChar(C)Z
    .locals 2

    .line 621
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 622
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    .line 623
    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static maskAllowlist(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 627
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 628
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 629
    sget-object v0, Lcom/miku/filter/NsfwFilter;->ALLOWLIST_PHRASES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 630
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 631
    if-ltz v2, :cond_5

    .line 633
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 634
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 635
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v1, v6, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/miku/filter/NsfwFilter;->isWordChar(C)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 636
    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 640
    :cond_5
    goto :goto_0

    .line 641
    :cond_6
    return-object p0

    .line 627
    :cond_7
    :goto_4
    const-string p0, ""

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 652
    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 655
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 658
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 659
    sget-object v1, Lcom/miku/filter/NsfwFilter;->DIACRITICS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 662
    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 663
    const/4 v1, 0x0

    .line 664
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 665
    nop

    .line 666
    sget-object v1, Lcom/miku/filter/NsfwFilter;->SINGLE_LETTER_SEP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 671
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 672
    aget-char v1, p0, v0

    const/16 v2, 0x61

    const/16 v3, 0x73

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 678
    :sswitch_0
    aput-char v2, p0, v0

    goto :goto_2

    .line 677
    :sswitch_1
    aput-char v3, p0, v0

    goto :goto_2

    .line 676
    :sswitch_2
    aput-char v2, p0, v0

    goto :goto_2

    .line 675
    :sswitch_3
    const/16 v1, 0x65

    aput-char v1, p0, v0

    goto :goto_2

    .line 674
    :sswitch_4
    const/16 v1, 0x69

    aput-char v1, p0, v0

    goto :goto_2

    .line 673
    :sswitch_5
    const/16 v1, 0x6f

    aput-char v1, p0, v0

    goto :goto_2

    .line 679
    :sswitch_6
    aput-char v3, p0, v0

    .line 671
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 652
    :cond_3
    :goto_3
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_6
        0x30 -> :sswitch_5
        0x31 -> :sswitch_4
        0x33 -> :sswitch_3
        0x34 -> :sswitch_2
        0x35 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method
