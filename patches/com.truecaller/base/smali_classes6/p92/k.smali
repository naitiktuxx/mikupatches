.class public final Lp92/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp92/g;
.implements Lp92/l;
.implements Lp92/h;


# static fields
.field public static final synthetic k:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lh92/s1;

.field public final b:Lp92/q;

.field public final c:Lvo1/baz;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lap1/qux;

.field public final f:Lap1/o;

.field public final g:Lxc3/bar;

.field public final h:Lcom/google/gson/Gson;

.field public final i:Le83/a;

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
    const-class v4, Lp92/k;

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
    sput-object v1, Lp92/k;->k:[Lkotlin/reflect/KProperty;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lh92/s1;Lp92/q;Lvo1/baz;Lkotlin/coroutines/CoroutineContext;Lap1/qux;Lap1/o;Lxc3/bar;)V
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
    iput-object p1, p0, Lp92/k;->a:Lh92/s1;

    .line 40
    .line 41
    iput-object p2, p0, Lp92/k;->b:Lp92/q;

    .line 42
    .line 43
    iput-object p3, p0, Lp92/k;->c:Lvo1/baz;

    .line 44
    .line 45
    iput-object p4, p0, Lp92/k;->d:Lkotlin/coroutines/CoroutineContext;

    .line 46
    .line 47
    iput-object p5, p0, Lp92/k;->e:Lap1/qux;

    .line 48
    .line 49
    iput-object p6, p0, Lp92/k;->f:Lap1/o;

    .line 50
    .line 51
    iput-object p7, p0, Lp92/k;->g:Lxc3/bar;

    .line 52
    .line 53
    new-instance p1, Lcom/google/gson/Gson;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lp92/k;->h:Lcom/google/gson/Gson;

    .line 59
    .line 60
    new-instance p1, Lox1/bar;

    .line 61
    .line 62
    const/4 p2, 0x4

    .line 63
    invoke-direct {p1, p0, p2}, Lox1/bar;-><init>(Ljava/lang/Object;I)V

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
    new-instance p2, Le83/a;

    .line 72
    .line 73
    invoke-direct {p2, p1}, Le83/a;-><init>(Lox1/bar;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lp92/k;->i:Le83/a;

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
    invoke-static {p0, v1}, Lkotlin/collections/y;->q(Ljava/lang/Iterable;I)I

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
    check-cast v1, Lp92/e;

    .line 34
    .line 35
    new-instance v2, Lp92/c;

    .line 36
    .line 37
    invoke-virtual {v1}, Lp92/e;->b()Lcom/truecaller/premium/data/feature/PremiumFeature;

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
    invoke-virtual {v1}, Lp92/e;->d()Lcom/truecaller/premium/data/feature/PremiumFeatureStatus;

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
    invoke-virtual {v1}, Lp92/e;->c()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v1}, Lp92/e;->e()Z

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
    invoke-direct {v2, v3, v4, v5, v1}, Lp92/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

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
.method public final b(Lmf3/qux;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lp92/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lp92/i;

    .line 7
    .line 8
    iget v1, v0, Lp92/i;->z:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lp92/i;->z:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lp92/i;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lp92/i;-><init>(Lp92/k;Lmf3/qux;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lp92/i;->x:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Llf3/bar;->a:Llf3/bar;

    .line 28
    .line 29
    iget v2, v0, Lp92/i;->z:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-static {p1}, Lsk3/bar;->Z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lp92/k;->g:Lxc3/bar;

    .line 52
    .line 53
    invoke-interface {p1}, Lxc3/bar;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lzj1/bar;

    .line 58
    .line 59
    iput v3, v0, Lp92/i;->z:I

    .line 60
    .line 61
    invoke-interface {p1, v0}, Lzj1/bar;->g(Lkf3/bar;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    check-cast p1, Lzj1/baz;

    .line 69
    .line 70
    iget-boolean p1, p1, Lzj1/baz;->a:Z

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public final c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    iget-object v0, p0, Lp92/k;->j:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lp92/k;->i()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lp92/k;->j:Ljava/util/List;

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
    check-cast v3, Lp92/c;

    .line 36
    .line 37
    invoke-virtual {v3}, Lp92/c;->a()Ljava/lang/String;

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
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    check-cast v1, Lp92/c;

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
    iget-object v0, p0, Lp92/k;->j:Ljava/util/List;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Li9/c;->C(Ljava/util/List;)Ljava/util/ArrayList;

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
    check-cast v4, Lp92/e;

    .line 36
    .line 37
    invoke-virtual {v4}, Lp92/e;->b()Lcom/truecaller/premium/data/feature/PremiumFeature;

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
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    check-cast v1, Lp92/e;

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
    invoke-virtual {v1}, Lp92/e;->e()Z

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
    invoke-virtual {p0, v0, v1}, Lp92/k;->c(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lp92/k;->e:Lap1/qux;

    .line 11
    .line 12
    check-cast v0, Lap1/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Lap1/a;->b()Z

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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 2
    .line 3
    check-cast v0, Lh92/t1;

    .line 4
    .line 5
    const-string v1, "availableFeatures"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lo13/b;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lp92/k;->h:Lcom/google/gson/Gson;

    .line 14
    .line 15
    new-instance v2, Lp92/j;

    .line 16
    .line 17
    invoke-direct {v2}, Lp92/j;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lhw/bar;->getType()Ljava/lang/reflect/Type;

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
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 43
    .line 44
    check-cast v0, Lh92/t1;

    .line 45
    .line 46
    invoke-virtual {v0}, Lh92/t1;->G()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 53
    .line 54
    check-cast v0, Lh92/t1;

    .line 55
    .line 56
    invoke-virtual {v0}, Lh92/t1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

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
    invoke-static {}, Li0/qux;->x()Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 71
    .line 72
    check-cast v0, Lh92/t1;

    .line 73
    .line 74
    invoke-virtual {v0}, Lh92/t1;->G()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 81
    .line 82
    check-cast v0, Lh92/t1;

    .line 83
    .line 84
    invoke-virtual {v0}, Lh92/t1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

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
    invoke-static {}, Li0/qux;->x()Ljava/util/ArrayList;

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
    invoke-static {v1}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

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
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 115
    .line 116
    check-cast v0, Lh92/t1;

    .line 117
    .line 118
    invoke-virtual {v0}, Lh92/t1;->G()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iget-object v0, p0, Lp92/k;->a:Lh92/s1;

    .line 125
    .line 126
    check-cast v0, Lh92/t1;

    .line 127
    .line 128
    invoke-virtual {v0}, Lh92/t1;->B()Lcom/truecaller/premium/data/tier/PremiumTierType;

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
    invoke-static {}, Li0/qux;->x()Ljava/util/ArrayList;

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
    invoke-static {v2}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

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
    invoke-static {v1}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

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
    invoke-static {v0}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->SPAM_BLOCKING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 182
    .line 183
    invoke-static {v1}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    sget-object v2, Lcom/truecaller/premium/data/feature/PremiumFeature;->CALL_RECORDING:Lcom/truecaller/premium/data/feature/PremiumFeature;

    .line 188
    .line 189
    invoke-static {v2}, Li0/qux;->K(Lcom/truecaller/premium/data/feature/PremiumFeature;)Lp92/e;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const/4 v3, 0x3

    .line 194
    new-array v3, v3, [Lp92/e;

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
    invoke-static {v3}, Lkotlin/collections/x;->j([Ljava/lang/Object;)Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    :goto_0
    invoke-static {v0}, Lp92/k;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :cond_4
    iput-object v0, p0, Lp92/k;->j:Ljava/util/List;

    .line 214
    .line 215
    return-void
.end method
