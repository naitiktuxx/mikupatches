.class public final Lga2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga2/g;
.implements Lga2/k;
.implements Lga2/h;


# static fields
.field public static final synthetic k:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Ly92/r1;

.field public final b:Ldy1/baz;

.field public final c:Llp1/a;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lqp1/qux;

.field public final f:Lqp1/o;

.field public final g:Lrd3/bar;

.field public final h:Lcom/google/gson/Gson;

.field public final i:Lnq2/a;

.field public volatile j:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/a0;

    .line 2
    .line 3
    const-string v1, "shouldShowAds"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "getShouldShowAds()Z"

    .line 7
    .line 8
    const-class v4, Lga2/j;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/a0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/jvm/internal/k0;->a:Lkotlin/jvm/internal/l0;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/l0;->property1(Lkotlin/jvm/internal/z;)Lkotlin/reflect/KProperty1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 21
    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    sput-object v1, Lga2/j;->k:[Lkotlin/reflect/KProperty;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ly92/r1;Ldy1/baz;Llp1/a;Lkotlin/coroutines/CoroutineContext;Lqp1/qux;Lqp1/o;Lrd3/bar;)V
    .locals 1

    .line 1
    const-string v0, "premiumStateSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "qaPremiumFeatureHelper"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "environment"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "asyncContext"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "bizmonFeaturesInventory"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "premiumFeaturesInventory"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "familyGroupApi"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lga2/j;->a:Ly92/r1;

    .line 40
    .line 41
    iput-object p2, p0, Lga2/j;->b:Ldy1/baz;

    .line 42
    .line 43
    iput-object p3, p0, Lga2/j;->c:Llp1/a;

    .line 44
    .line 45
    iput-object p4, p0, Lga2/j;->d:Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    iput-object p5, p0, Lga2/j;->e:Lqp1/qux;

    .line 48
    .line 49
    iput-object p6, p0, Lga2/j;->f:Lqp1/o;

    .line 50
    .line 51
    iput-object p7, p0, Lga2/j;->g:Lrd3/bar;

    .line 52
    .line 53
    new-instance p1, Lcom/google/gson/Gson;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lga2/j;->h:Lcom/google/gson/Gson;

    .line 59
    .line 60
    new-instance p1, Lg23/baz;

    .line 61
    .line 62
    const/4 p2, 0x4

    .line 63
    invoke-direct {p1, p0, p2}, Lg23/baz;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    const-string p2, "initializer"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lnq2/a;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Lnq2/a;-><init>(Lg23/baz;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lga2/j;->i:Lnq2/a;

    .line 77
    .line 78
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/collections/a0;->q(Ljava/lang/Iterable;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lga2/e;

    .line 34
    .line 35
    new-instance v2, Lga2/c;

    .line 36
    .line 37
    invoke-virtual {v1}, Lga2/e;->b()Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1}, Lga2/e;->d()Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;->getIdentifier()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1}, Lga2/e;->c()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v1}, Lga2/e;->e()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-direct {v2, v3, v4, v5, v1}, Lga2/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lga2/j;->g:Lrd3/bar;

    .line 2
    .line 3
    invoke-interface {v0}, Lrd3/bar;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lpk1/bar;

    .line 8
    .line 9
    invoke-interface {v0}, Lpk1/bar;->getStatus()Lpk1/baz;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v0, v0, Lpk1/baz;->a:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z
    .locals 6

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lga2/j;->j:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lga2/j;->i()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lga2/j;->b:Ldy1/baz;

    .line 14
    .line 15
    iget-object v0, v0, Ldy1/baz;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/truecaller/qa/w;

    .line 18
    .line 19
    const-string v1, "disabledPremiumFeatures"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lbs/h;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    sget-object v0, Lkotlin/collections/i0;->a:Lkotlin/collections/i0;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    const-string v2, ","

    .line 32
    .line 33
    filled-new-array {v2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/4 v3, 0x6

    .line 38
    invoke-static {v0, v2, v1, v3}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/Iterable;

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/16 v3, 0xa

    .line 47
    .line 48
    invoke-static {v0, v3}, Lkotlin/collections/a0;->q(Ljava/lang/Iterable;I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    sget-object v4, Lcom/truecaller/premium/data/feature/PremiumFeature;->Companion:Lga2/b;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v3}, Lga2/b;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v4, v3

    .line 104
    check-cast v4, Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 105
    .line 106
    sget-object v5, Lcom/truecaller/premium/data/feature/PremiumFeature;->UNKNOWN:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 107
    .line 108
    if-eq v4, v5, :cond_3

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    :goto_2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    if-eqz p2, :cond_6

    .line 122
    .line 123
    iget-object p2, p0, Lga2/j;->c:Llp1/a;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    :cond_6
    iget-object p2, p0, Lga2/j;->j:Ljava/util/List;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    const/4 v2, 0x1

    .line 132
    if-eqz p2, :cond_9

    .line 133
    .line 134
    check-cast p2, Ljava/lang/Iterable;

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_8

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    move-object v4, v3

    .line 151
    check-cast v4, Lga2/c;

    .line 152
    .line 153
    invoke-virtual {v4}, Lga2/c;->a()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {p1}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v4, v5, v2}, Lkotlin/text/s;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    move-object v3, v0

    .line 169
    :goto_3
    check-cast v3, Lga2/c;

    .line 170
    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    invoke-virtual {v3}, Lga2/c;->c()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :cond_9
    sget-object p1, Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;->INCLUDED:Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;->getIdentifier()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v0, p1, v2}, Lkotlin/text/s;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_a

    .line 188
    .line 189
    return v2

    .line 190
    :cond_a
    :goto_4
    return v1
.end method

.method public final d(Lcom/truecaller/premium/data/feature/PremiumFeature;)Z
    .locals 5

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lga2/j;->j:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lga2/j;->i()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lga2/j;->j:Ljava/util/List;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lga2/c;

    .line 36
    .line 37
    invoke-virtual {v3}, Lga2/c;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p1}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    move-object v1, v2

    .line 52
    :cond_2
    check-cast v1, Lga2/c;

    .line 53
    .line 54
    :cond_3
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_4
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method public final e(Lcom/truecaller/premium/data/feature/PremiumFeature;)Z
    .locals 6

    .line 1
    const-string v0, "feature"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lga2/j;->j:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lb90/g;->u(Ljava/util/List;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v4, v3

    .line 35
    check-cast v4, Lga2/e;

    .line 36
    .line 37
    invoke-virtual {v4}, Lga2/e;->b()Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1}, Lcom/truecaller/premium/data/feature/PremiumFeature;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    move-object v1, v3

    .line 56
    :cond_2
    check-cast v1, Lga2/e;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    const-string p1, "<this>"

    .line 61
    .line 62
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lga2/e;->e()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    xor-int/2addr p1, v2

    .line 70
    return p1

    .line 71
    :cond_3
    return v2
.end method

.method public final f()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_SUPPORT:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lga2/j;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lga2/j;->e:Lqp1/qux;

    .line 11
    .line 12
    check-cast v0, Lqp1/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lqp1/a;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->PREMIUM_BADGE:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lga2/j;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 11
    .line 12
    check-cast v0, Ly92/s1;

    .line 13
    .line 14
    invoke-virtual {v0}, Ly92/s1;->G()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :cond_0
    return v1
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 2
    .line 3
    check-cast v0, Ly92/s1;

    .line 4
    .line 5
    const-string v1, "availableFeatures"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Li23/b;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lga2/j;->h:Lcom/google/gson/Gson;

    .line 14
    .line 15
    new-instance v2, Lga2/i;

    .line 16
    .line 17
    invoke-direct {v2}, Lga2/i;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lkw/bar;->getType()Ljava/lang/reflect/Type;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "getType(...)"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "fromJson(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Ljava/util/List;

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 43
    .line 44
    check-cast v0, Ly92/s1;

    .line 45
    .line 46
    invoke-virtual {v0}, Ly92/s1;->G()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 53
    .line 54
    check-cast v0, Ly92/s1;

    .line 55
    .line 56
    invoke-virtual {v0}, Ly92/s1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sget-object v1, Lcom/truecaller/premium/data/tier/PremiumTierType;->PREMIUM:Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    invoke-static {}, Laq1/d;->l()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 71
    .line 72
    check-cast v0, Ly92/s1;

    .line 73
    .line 74
    invoke-virtual {v0}, Ly92/s1;->G()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 81
    .line 82
    check-cast v0, Ly92/s1;

    .line 83
    .line 84
    invoke-virtual {v0}, Ly92/s1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sget-object v1, Lcom/truecaller/premium/data/tier/PremiumTierType;->GOLD:Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 89
    .line 90
    if-ne v0, v1, :cond_2

    .line 91
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Laq1/d;->l()Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GOLD_CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 105
    .line 106
    invoke-static {v1}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 115
    .line 116
    check-cast v0, Ly92/s1;

    .line 117
    .line 118
    invoke-virtual {v0}, Ly92/s1;->G()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iget-object v0, p0, Lga2/j;->a:Ly92/r1;

    .line 125
    .line 126
    check-cast v0, Ly92/s1;

    .line 127
    .line 128
    invoke-virtual {v0}, Ly92/s1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sget-object v1, Lcom/truecaller/premium/data/tier/PremiumTierType;->GOLD_FAMILY:Lcom/truecaller/premium/data/tier/PremiumTierType;

    .line 133
    .line 134
    if-ne v0, v1, :cond_3

    .line 135
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-static {}, Laq1/d;->l()Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    sget-object v2, Lcom/truecaller/premium/data/feature/PremiumFeature;->GOLD_CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 154
    .line 155
    invoke-static {v2}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->FAMILY_SHARING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 166
    .line 167
    invoke-static {v1}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    sget-object v0, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALLER_ID:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 176
    .line 177
    invoke-static {v0}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 182
    .line 183
    invoke-static {v1}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    sget-object v2, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALL_RECORDING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 188
    .line 189
    invoke-static {v2}, Laq1/d;->C(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lga2/e;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const/4 v3, 0x3

    .line 194
    new-array v3, v3, [Lga2/e;

    .line 195
    .line 196
    const/4 v4, 0x0

    .line 197
    aput-object v0, v3, v4

    .line 198
    .line 199
    const/4 v0, 0x1

    .line 200
    aput-object v1, v3, v0

    .line 201
    .line 202
    const/4 v0, 0x2

    .line 203
    aput-object v2, v3, v0

    .line 204
    .line 205
    invoke-static {v3}, Lkotlin/collections/z;->j([Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    :goto_0
    invoke-static {v0}, Lga2/j;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_4
    iput-object v0, p0, Lga2/j;->j:Ljava/util/List;

    .line 214
    .line 215
    return-void
.end method
