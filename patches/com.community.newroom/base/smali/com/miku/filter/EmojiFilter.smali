.class public final Lcom/miku/filter/EmojiFilter;
.super Ljava/lang/Object;
.source "EmojiFilter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 23
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    nop

    .line 27
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ge v3, v0, :cond_4

    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 29
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 30
    invoke-static {v7}, Lcom/miku/filter/EmojiFilter;->isEmoji(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 31
    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    const/4 v4, 0x1

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 37
    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 38
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    const/4 v4, 0x1

    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 43
    const/4 v4, 0x0

    .line 46
    :cond_3
    :goto_1
    add-int/2addr v3, v8

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 49
    if-lez p0, :cond_5

    sub-int/2addr p0, v6

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 52
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static isEmoji(I)Z
    .locals 3

    .line 7
    const v0, 0x1f000

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const v0, 0x1faff

    if-gt p0, v0, :cond_0

    return v1

    .line 8
    :cond_0
    const/16 v0, 0x2600

    if-lt p0, v0, :cond_1

    const/16 v0, 0x27bf

    if-gt p0, v0, :cond_1

    return v1

    .line 9
    :cond_1
    const/16 v0, 0x2300

    if-lt p0, v0, :cond_2

    const/16 v0, 0x23ff

    if-gt p0, v0, :cond_2

    return v1

    .line 10
    :cond_2
    const/16 v0, 0x2b00

    if-lt p0, v0, :cond_3

    const/16 v0, 0x2bff

    if-gt p0, v0, :cond_3

    return v1

    .line 11
    :cond_3
    const/16 v0, 0x25a0

    if-lt p0, v0, :cond_4

    const/16 v0, 0x25ff

    if-gt p0, v0, :cond_4

    return v1

    .line 12
    :cond_4
    const v0, 0xfe00

    if-lt p0, v0, :cond_5

    const v0, 0xfe0f

    if-gt p0, v0, :cond_5

    return v1

    .line 13
    :cond_5
    const/16 v0, 0x200d

    if-eq p0, v0, :cond_a

    const/16 v0, 0x20e3

    if-ne p0, v0, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 15
    const/16 v2, 0x13

    if-ne v0, v2, :cond_7

    return v1

    .line 16
    :cond_7
    const/16 v2, 0x7f

    if-le p0, v2, :cond_9

    const/16 p0, 0x1c

    if-eq v0, p0, :cond_8

    const/16 p0, 0x1b

    if-ne v0, p0, :cond_9

    .line 17
    :cond_8
    return v1

    .line 19
    :cond_9
    const/4 p0, 0x0

    return p0

    .line 13
    :cond_a
    :goto_0
    return v1
.end method
