.class public final Lr90/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr90/a;
.implements Lmg3/a0;


# static fields
.field public static final synthetic m:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Lxc3/bar;

.field public final d:Lxc3/bar;

.field public final e:Lxc3/bar;

.field public final f:Lxc3/bar;

.field public final g:Lxc3/bar;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;

.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Ldp1/e;


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
    const-class v4, Lr90/d;

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
    sput-object v1, Lr90/d;->m:[Lkotlin/reflect/KProperty;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lxc3/bar;Lxc3/bar;Lxc3/bar;Lxc3/bar;Lxc3/bar;Lxc3/bar;Lxc3/bar;)V
    .locals 1

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adsConfigurationManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adsHolderFactory"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "houseAdsProvider"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "deviceManager"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "adsSettings"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "adsFeaturesInventory"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "confidenceFeatureHelperImpl"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lr90/d;->a:Landroid/content/Context;

    .line 50
    .line 51
    iput-object p2, p0, Lr90/d;->b:Lkotlin/coroutines/CoroutineContext;

    .line 52
    .line 53
    iput-object p3, p0, Lr90/d;->c:Lxc3/bar;

    .line 54
    .line 55
    iput-object p4, p0, Lr90/d;->d:Lxc3/bar;

    .line 56
    .line 57
    iput-object p5, p0, Lr90/d;->e:Lxc3/bar;

    .line 58
    .line 59
    iput-object p6, p0, Lr90/d;->f:Lxc3/bar;

    .line 60
    .line 61
    iput-object p7, p0, Lr90/d;->g:Lxc3/bar;

    .line 62
    .line 63
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    .line 65
    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p3, p0, Lr90/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 69
    .line 70
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p3, p0, Lr90/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    new-instance p3, Lr90/b;

    .line 78
    .line 79
    const/4 p4, 0x0

    .line 80
    invoke-direct {p3, p0, p4}, Lr90/b;-><init>(Lr90/d;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    iput-object p3, p0, Lr90/d;->j:Lkotlin/Lazy;

    .line 88
    .line 89
    new-instance p3, Lr90/b;

    .line 90
    .line 91
    const/4 p4, 0x1

    .line 92
    invoke-direct {p3, p0, p4}, Lr90/b;-><init>(Lr90/d;I)V

    .line 93
    .line 94
    .line 95
    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    iput-object p3, p0, Lr90/d;->k:Lkotlin/Lazy;

    .line 100
    .line 101
    new-instance p3, Lr90/b;

    .line 102
    .line 103
    const/4 p4, 0x2

    .line 104
    invoke-direct {p3, p0, p4}, Lr90/b;-><init>(Lr90/d;I)V

    .line 105
    .line 106
    .line 107
    const-string p4, "initializer"

    .line 108
    .line 109
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p4, Ldp1/e;

    .line 113
    .line 114
    invoke-direct {p4, p3}, Ldp1/e;-><init>(Lr90/b;)V

    .line 115
    .line 116
    .line 117
    iput-object p4, p0, Lr90/d;->l:Ldp1/e;

    .line 118
    .line 119
    invoke-interface {p8}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Lap1/bar;

    .line 124
    .line 125
    check-cast p3, Lap1/baz;

    .line 126
    .line 127
    iget-object p3, p3, Lap1/baz;->b:Lcp1/b;

    .line 128
    .line 129
    sget-object p4, Lcom/truecaller/featuretoggles/FeatureState;->DISABLED:Lcom/truecaller/featuretoggles/FeatureState;

    .line 130
    .line 131
    const-string p5, "featureDisableGamInitForPremium"

    .line 132
    .line 133
    invoke-virtual {p3, p5, p4}, Lcp1/b;->a(Ljava/lang/String;Lcom/truecaller/featuretoggles/FeatureState;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-eqz p3, :cond_0

    .line 138
    .line 139
    invoke-virtual {p0}, Lr90/d;->f()Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-nez p3, :cond_0

    .line 144
    .line 145
    return-void

    .line 146
    :cond_0
    invoke-interface {p8}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    check-cast p3, Lap1/bar;

    .line 151
    .line 152
    check-cast p3, Lap1/baz;

    .line 153
    .line 154
    iget-object p3, p3, Lap1/baz;->b:Lcp1/b;

    .line 155
    .line 156
    const-string p5, "featureSeparateThreadForGamInit"

    .line 157
    .line 158
    invoke-virtual {p3, p5, p4}, Lcp1/b;->a(Ljava/lang/String;Lcom/truecaller/featuretoggles/FeatureState;)Z

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    if-eqz p3, :cond_1

    .line 163
    .line 164
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string p3, "newSingleThreadExecutor(...)"

    .line 169
    .line 170
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance p3, Lmg3/a1;

    .line 174
    .line 175
    invoke-direct {p3, p2}, Lmg3/a1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 176
    .line 177
    .line 178
    move-object p2, p3

    .line 179
    :cond_1
    invoke-interface {p9}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p3

    .line 183
    check-cast p3, Lvx/bar;

    .line 184
    .line 185
    invoke-interface {p3}, Lvx/bar;->c()Z

    .line 186
    .line 187
    .line 188
    move-result p3

    .line 189
    if-eqz p3, :cond_2

    .line 190
    .line 191
    new-instance p3, Lr1/a;

    .line 192
    .line 193
    const/4 p4, 0x6

    .line 194
    invoke-direct {p3, p4, p0, p2}, Lr1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {p1, p3}, Lcom/truecaller/ads/util/x0;->B(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_2
    new-instance p1, Lr90/c;

    .line 202
    .line 203
    const/4 p3, 0x0

    .line 204
    invoke-direct {p1, p0, p3}, Lr90/c;-><init>(Lr90/d;Lkf3/bar;)V

    .line 205
    .line 206
    .line 207
    const/4 p4, 0x2

    .line 208
    invoke-static {p0, p2, p3, p1, p4}, Lmg3/d0;->I(Lmg3/a0;Lkotlin/coroutines/CoroutineContext;Lmg3/b0;Lkotlin/jvm/functions/Function2;I)Lmg3/b2;

    .line 209
    .line 210
    .line 211
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lr90/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "<get-values>(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lt90/v0;

    .line 35
    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Lt90/b1;

    .line 38
    .line 39
    iget-object v2, v3, Lt90/b1;->t:Lmg3/k1;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v2, v4}, Lmg3/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v3, Lt90/b1;->x:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    const-string v4, "iterator(...)"

    .line 52
    .line 53
    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    move-object v14, v4

    .line 67
    check-cast v14, Lt90/c2;

    .line 68
    .line 69
    const/4 v4, -0x1

    .line 70
    invoke-virtual {v14, v4}, Lt90/c2;->a(I)Lu90/a;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    move-object v5, v4

    .line 75
    check-cast v5, Lu90/baz;

    .line 76
    .line 77
    iget-object v5, v5, Lu90/baz;->b:Lt90/f;

    .line 78
    .line 79
    invoke-interface {v4}, Lu90/b;->getAdType()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    const/4 v11, 0x0

    .line 84
    const/16 v12, 0x70

    .line 85
    .line 86
    const-string v4, "dropped"

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    const-wide/16 v8, 0x0

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    invoke-static/range {v3 .. v12}, Lt90/b1;->e(Lt90/b1;Ljava/lang/String;Lt90/f;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/ads/AdValue;I)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v14, Lt90/c2;->a:Lu90/baz;

    .line 96
    .line 97
    invoke-interface {v4}, Lu90/a;->destroy()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final b(Lo00/b0;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lr90/d;->f()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lr90/d;->d(Lo00/b0;)Lt90/v0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lt90/b1;

    .line 18
    .line 19
    iget-boolean v0, p1, Lt90/b1;->C:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance v0, Lt90/a1;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p1, v1, p2, v2}, Lt90/a1;-><init>(Lt90/b1;ZLjava/lang/String;Lkf3/bar;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x3

    .line 32
    invoke-static {p1, v2, v2, v0, p2}, Lmg3/d0;->I(Lmg3/a0;Lkotlin/coroutines/CoroutineContext;Lmg3/b0;Lkotlin/jvm/functions/Function2;I)Lmg3/b2;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final c(Lo00/b0;I)Lu90/a;
    .locals 8

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    const/16 v7, 0x8

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move v3, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lqc/a;->g(Lr90/a;Lo00/b0;IZLjava/lang/String;ZI)Lu90/a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final d(Lo00/b0;)Lt90/v0;
    .locals 7

    .line 1
    iget-object v0, p0, Lr90/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lt90/v0;

    .line 8
    .line 9
    if-nez v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "<get-keys>(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Lo00/b0;

    .line 38
    .line 39
    iget-object v4, v3, Lo00/b0;->a:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, v3, Lo00/b0;->b:Ljava/lang/String;

    .line 42
    .line 43
    const-string v6, "/43067329/A*ACS*Unified*GPS"

    .line 44
    .line 45
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    const-string v6, "/43067329/A*ACS_CACHE_Unified*GPS"

    .line 52
    .line 53
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, p1, Lo00/b0;->a:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget-object v3, p1, Lo00/b0;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    iget-object v6, p1, Lo00/b0;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    iget-object v4, p1, Lo00/b0;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_0

    .line 92
    .line 93
    iget-object v3, v3, Lo00/b0;->e:Ljava/util/List;

    .line 94
    .line 95
    iget-object v4, p1, Lo00/b0;->e:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v2, 0x0

    .line 105
    :goto_1
    check-cast v2, Lo00/b0;

    .line 106
    .line 107
    iget-object v1, p0, Lr90/d;->d:Lxc3/bar;

    .line 108
    .line 109
    iget-object v3, p0, Lr90/d;->e:Lxc3/bar;

    .line 110
    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-interface {v3}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lv90/a;

    .line 118
    .line 119
    check-cast v4, Lv90/bar;

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Lv90/bar;->a(Lo00/b0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lt90/v0;

    .line 129
    .line 130
    if-eqz v4, :cond_4

    .line 131
    .line 132
    move-object v5, v4

    .line 133
    check-cast v5, Lt90/b1;

    .line 134
    .line 135
    const-string v6, "value"

    .line 136
    .line 137
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, v5, Lt90/b1;->a:Lo00/b0;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lt90/v0;

    .line 153
    .line 154
    if-nez v2, :cond_6

    .line 155
    .line 156
    :cond_4
    invoke-interface {v1}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lt90/b2;

    .line 161
    .line 162
    invoke-virtual {v1, p1, p0}, Lt90/b2;->a(Lo00/b0;Lr90/d;)Lt90/b1;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    goto :goto_2

    .line 167
    :cond_5
    invoke-interface {v1}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lt90/b2;

    .line 172
    .line 173
    invoke-virtual {v1, p1, p0}, Lt90/b2;->a(Lo00/b0;Lr90/d;)Lt90/b1;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :cond_6
    :goto_2
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-boolean v0, p1, Lo00/b0;->l:Z

    .line 181
    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    invoke-interface {v3}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lv90/a;

    .line 189
    .line 190
    check-cast v0, Lv90/bar;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    const-string v1, "config"

    .line 196
    .line 197
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v1, "listener"

    .line 201
    .line 202
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1}, Lv90/bar;->a(Lo00/b0;)V

    .line 206
    .line 207
    .line 208
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    iget-object v3, v0, Lv90/bar;->b:Luq2/bar;

    .line 211
    .line 212
    const-string v4, "adsFeatureHouseAdsTimeout"

    .line 213
    .line 214
    const-wide/16 v5, 0x0

    .line 215
    .line 216
    invoke-virtual {v3, v4, v5, v6}, Ldy1/d;->D(Ljava/lang/String;J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v3

    .line 220
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 221
    .line 222
    .line 223
    move-result-wide v3

    .line 224
    cmp-long v1, v3, v5

    .line 225
    .line 226
    if-lez v1, :cond_7

    .line 227
    .line 228
    iget-boolean v1, p1, Lo00/b0;->l:Z

    .line 229
    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    iget-object v0, v0, Lv90/bar;->d:Ljava/util/LinkedHashMap;

    .line 233
    .line 234
    new-instance v1, Lv90/qux;

    .line 235
    .line 236
    invoke-direct {v1, p1, p0}, Lv90/qux;-><init>(Lo00/b0;Lr90/d;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    :cond_7
    return-object v2

    .line 243
    :cond_8
    invoke-interface {v3}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Lv90/a;

    .line 248
    .line 249
    check-cast v0, Lv90/bar;

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Lv90/bar;->a(Lo00/b0;)V

    .line 252
    .line 253
    .line 254
    return-object v2

    .line 255
    :cond_9
    return-object v1
.end method

.method public final e(Lo00/b0;)Ljava/util/Set;
    .locals 7

    .line 1
    iget-object v0, p0, Lr90/d;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Set;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v2, p0, Lr90/d;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "<get-keys>(...)"

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v2, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    move-object v4, v3

    .line 47
    check-cast v4, Lo00/b0;

    .line 48
    .line 49
    iget-object v5, v4, Lo00/b0;->a:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v6, p1, Lo00/b0;->a:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    iget-object v5, v4, Lo00/b0;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v6, p1, Lo00/b0;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Lo00/b0;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v3, 0x0

    .line 77
    :goto_0
    check-cast v3, Lo00/b0;

    .line 78
    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Ljava/util/Set;

    .line 87
    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    :goto_1
    return-object v1

    .line 91
    :cond_4
    check-cast p1, Ljava/util/Collection;

    .line 92
    .line 93
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    .line 95
    .line 96
    return-object v1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lo00/b0;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lr90/d;->b:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h(Lo00/b0;I)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr90/d;->e(Lo00/b0;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->J0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lo00/l;

    .line 31
    .line 32
    invoke-interface {v1, p2}, Lo00/l;->O0(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lr90/d;->e:Lxc3/bar;

    .line 37
    .line 38
    invoke-interface {p2}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lv90/a;

    .line 43
    .line 44
    check-cast p2, Lv90/bar;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lv90/bar;->e(Lo00/b0;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final i(Lo00/b0;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr90/d;->e:Lxc3/bar;

    .line 7
    .line 8
    invoke-interface {v0}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lv90/a;

    .line 13
    .line 14
    check-cast v0, Lv90/bar;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lv90/bar;->f(Lo00/b0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lr90/d;->e(Lo00/b0;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->J0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lo00/l;

    .line 44
    .line 45
    invoke-interface {v0}, Lo00/l;->onAdLoaded()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public final j(Lo00/b0;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr90/d;->e:Lxc3/bar;

    .line 7
    .line 8
    invoke-interface {v0}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lv90/a;

    .line 13
    .line 14
    check-cast v0, Lv90/bar;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lv90/bar;->g(Lo00/b0;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final k(Lo00/b0;Lo00/l;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lr90/d;->d(Lo00/b0;)Lt90/v0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lt90/b1;

    .line 19
    .line 20
    iget-object v1, v0, Lt90/b1;->D:Lr2/x1;

    .line 21
    .line 22
    iget-object v2, v0, Lt90/b1;->j:Lxc3/bar;

    .line 23
    .line 24
    iget-object v3, v0, Lt90/b1;->p:Lxc3/bar;

    .line 25
    .line 26
    invoke-interface {v3}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lap1/bar;

    .line 31
    .line 32
    check-cast v3, Lap1/baz;

    .line 33
    .line 34
    invoke-virtual {v3}, Lap1/baz;->c()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lt90/b1;->d()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "CALLLOG"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ld13/w;

    .line 58
    .line 59
    check-cast v3, Ld13/x;

    .line 60
    .line 61
    iget-object v3, v3, Ld13/x;->b:Landroidx/lifecycle/j0;

    .line 62
    .line 63
    new-instance v4, Landroidx/lifecycle/k1;

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    invoke-direct {v4, v5, v1}, Landroidx/lifecycle/k1;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Landroidx/lifecycle/j0;->j(Landroidx/lifecycle/o0;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v2}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Ld13/w;

    .line 77
    .line 78
    check-cast v3, Ld13/x;

    .line 79
    .line 80
    invoke-virtual {v3}, Ld13/x;->e()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput-boolean v3, v0, Lt90/b1;->C:Z

    .line 85
    .line 86
    invoke-interface {v2}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ld13/w;

    .line 91
    .line 92
    check-cast v0, Ld13/x;

    .line 93
    .line 94
    iget-object v0, v0, Ld13/x;->b:Landroidx/lifecycle/j0;

    .line 95
    .line 96
    new-instance v2, Landroidx/lifecycle/k1;

    .line 97
    .line 98
    const/4 v3, 0x3

    .line 99
    invoke-direct {v2, v3, v1}, Landroidx/lifecycle/k1;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroidx/lifecycle/j0;->f(Landroidx/lifecycle/o0;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lr90/d;->d(Lo00/b0;)Lt90/v0;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lt90/b1;

    .line 110
    .line 111
    iget-object v1, v0, Lt90/b1;->x:Ljava/util/ArrayDeque;

    .line 112
    .line 113
    invoke-virtual {v0}, Lt90/b1;->b()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lt90/c2;

    .line 127
    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    iget v1, v1, Lt90/c2;->e:I

    .line 131
    .line 132
    const/4 v2, -0x1

    .line 133
    if-eq v1, v2, :cond_2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-interface {p2}, Lo00/l;->onAdLoaded()V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lr90/d;->e(Lo00/b0;)Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_2
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, v0, Lt90/b1;->B:Z

    .line 149
    .line 150
    invoke-static {v0, p3, p1}, Lt90/b1;->j(Lt90/b1;Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final l(Lo00/b0;Lo00/l;)V
    .locals 4

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lr90/d;->d(Lo00/b0;)Lt90/v0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lt90/b1;

    .line 16
    .line 17
    iget-object v1, v0, Lt90/b1;->p:Lxc3/bar;

    .line 18
    .line 19
    invoke-interface {v1}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lap1/bar;

    .line 24
    .line 25
    check-cast v1, Lap1/baz;

    .line 26
    .line 27
    invoke-virtual {v1}, Lap1/baz;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Lt90/b1;->d()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "CALLLOG"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Lt90/b1;->j:Lxc3/bar;

    .line 47
    .line 48
    invoke-interface {v1}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ld13/w;

    .line 53
    .line 54
    check-cast v1, Ld13/x;

    .line 55
    .line 56
    iget-object v1, v1, Ld13/x;->b:Landroidx/lifecycle/j0;

    .line 57
    .line 58
    iget-object v0, v0, Lt90/b1;->D:Lr2/x1;

    .line 59
    .line 60
    new-instance v2, Landroidx/lifecycle/k1;

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    invoke-direct {v2, v3, v0}, Landroidx/lifecycle/k1;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/lifecycle/j0;->j(Landroidx/lifecycle/o0;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lr90/d;->e(Lo00/b0;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lr90/d;->e(Lo00/b0;)Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lr90/d;->d(Lo00/b0;)Lt90/v0;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const/4 v0, 0x0

    .line 94
    check-cast p2, Lt90/b1;

    .line 95
    .line 96
    iput-boolean v0, p2, Lt90/b1;->B:Z

    .line 97
    .line 98
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method
