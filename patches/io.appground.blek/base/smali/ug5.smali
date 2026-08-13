.class public abstract Lug5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ln02;

.field public static final e:Lxg0;

.field public static final m:Lxg0;

.field public static final n:Lxg0;

.field public static final p:Lxg0;

.field public static final synthetic r:I

.field public static final t:Lgp4;

.field public static final v:Lxg0;

.field public static final w:Lxg0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Luq;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Luq;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lxg0;

    .line 9
    .line 10
    const v2, -0x6d7d2fe8

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lug5;->v:Lxg0;

    .line 18
    .line 19
    new-instance v0, Lsh0;

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lsh0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lxg0;

    .line 27
    .line 28
    const v2, -0x1353e557

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Lug5;->e:Lxg0;

    .line 35
    .line 36
    new-instance v0, Luq;

    .line 37
    .line 38
    const/16 v1, 0xd

    .line 39
    .line 40
    invoke-direct {v0, v1}, Luq;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lxg0;

    .line 44
    .line 45
    const v2, 0x47df97f2

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lug5;->m:Lxg0;

    .line 52
    .line 53
    new-instance v0, Luq;

    .line 54
    .line 55
    const/16 v1, 0xe

    .line 56
    .line 57
    invoke-direct {v0, v1}, Luq;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Lxg0;

    .line 61
    .line 62
    const v2, 0x77d66093

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 66
    .line 67
    .line 68
    sput-object v1, Lug5;->w:Lxg0;

    .line 69
    .line 70
    new-instance v0, Lsh0;

    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lsh0;-><init>(I)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lxg0;

    .line 78
    .line 79
    const v2, 0x1916a511

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 83
    .line 84
    .line 85
    sput-object v1, Lug5;->p:Lxg0;

    .line 86
    .line 87
    new-instance v0, Lsh0;

    .line 88
    .line 89
    const/16 v1, 0xc

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lsh0;-><init>(I)V

    .line 92
    .line 93
    .line 94
    new-instance v1, Lxg0;

    .line 95
    .line 96
    const v2, 0x49f42f7a    # 2000367.2f

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v2, v0, v3}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 100
    .line 101
    .line 102
    sput-object v1, Lug5;->n:Lxg0;

    .line 103
    .line 104
    new-instance v0, Lgp4;

    .line 105
    .line 106
    const/4 v1, 0x6

    .line 107
    invoke-direct {v0, v1}, Lgp4;-><init>(I)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lug5;->t:Lgp4;

    .line 111
    .line 112
    return-void
.end method

.method public static final a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lv1;->f(Landroid/app/Activity;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v1, Lrn2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lrn2;-><init>(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v2, 0x23

    .line 34
    .line 35
    if-lt p0, v2, :cond_1

    .line 36
    .line 37
    new-instance p0, Lg85;

    .line 38
    .line 39
    invoke-direct {p0, v0, v1}, Lf85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v2, 0x1e

    .line 44
    .line 45
    if-lt p0, v2, :cond_2

    .line 46
    .line 47
    new-instance p0, Lf85;

    .line 48
    .line 49
    invoke-direct {p0, v0, v1}, Lf85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 v2, 0x1a

    .line 54
    .line 55
    if-lt p0, v2, :cond_3

    .line 56
    .line 57
    new-instance p0, Le85;

    .line 58
    .line 59
    invoke-direct {p0, v0, v1}, Ld85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance p0, Ld85;

    .line 64
    .line 65
    invoke-direct {p0, v0, v1}, Ld85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    const/4 v0, 0x2

    .line 69
    invoke-virtual {p0, v0}, Lct5;->a(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lct5;->n()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/String;Lir1;II)Lpv4;
    .locals 3

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    sget-object v1, Lyi0;->v:Lyw2;

    .line 12
    .line 13
    if-ne p4, v1, :cond_1

    .line 14
    .line 15
    new-instance p4, Lpv4;

    .line 16
    .line 17
    new-instance v2, Lez2;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lez2;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p4, v2, v0, p1}, Lpv4;-><init>(Lns5;Lpv4;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p4}, Lir1;->j0(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    check-cast p4, Lpv4;

    .line 29
    .line 30
    and-int/lit8 p1, p3, 0x8

    .line 31
    .line 32
    or-int/lit8 p1, p1, 0x30

    .line 33
    .line 34
    and-int/lit8 p3, p3, 0xe

    .line 35
    .line 36
    or-int/2addr p1, p3

    .line 37
    invoke-virtual {p4, p0, p2, p1}, Lpv4;->v(Ljava/lang/Object;Lir1;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p0, v1, :cond_2

    .line 45
    .line 46
    new-instance p0, Lrv4;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-direct {p0, p4, p1}, Lrv4;-><init>(Lpv4;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p0}, Lir1;->j0(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast p0, Lxp1;

    .line 56
    .line 57
    invoke-static {p4, p0, p2}, Llu5;->v(Ljava/lang/Object;Lxp1;Lir1;)V

    .line 58
    .line 59
    .line 60
    return-object p4
.end method

.method public static final c(Lm42;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lm42;->v:I

    .line 4
    .line 5
    iget v2, p0, Lm42;->e:I

    .line 6
    .line 7
    iget v3, p0, Lm42;->m:I

    .line 8
    .line 9
    iget p0, p0, Lm42;->w:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final e(Lpv4;Lux4;Ljava/lang/String;Lir1;II)Liv4;
    .locals 1

    .line 1
    and-int/lit8 p4, p5, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p2, "DeferredAnimation"

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p3, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    invoke-virtual {p3}, Lir1;->L()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    sget-object v0, Lyi0;->v:Lyw2;

    .line 16
    .line 17
    if-nez p4, :cond_1

    .line 18
    .line 19
    if-ne p5, v0, :cond_2

    .line 20
    .line 21
    :cond_1
    new-instance p5, Liv4;

    .line 22
    .line 23
    invoke-direct {p5, p0, p1, p2}, Liv4;-><init>(Lpv4;Lux4;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p5}, Lir1;->j0(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    check-cast p5, Liv4;

    .line 30
    .line 31
    invoke-virtual {p3, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3, p5}, Lir1;->r(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    or-int/2addr p1, p2

    .line 40
    invoke-virtual {p3}, Lir1;->L()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    if-ne p2, v0, :cond_4

    .line 47
    .line 48
    :cond_3
    new-instance p2, Lr04;

    .line 49
    .line 50
    const/16 p1, 0x11

    .line 51
    .line 52
    invoke-direct {p2, p1, p0, p5}, Lr04;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    check-cast p2, Lxp1;

    .line 59
    .line 60
    invoke-static {p5, p2, p3}, Llu5;->v(Ljava/lang/Object;Lxp1;Lir1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lpv4;->t()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    iget-object p0, p5, Liv4;->e:Ljc3;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljc3;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lhv4;

    .line 76
    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    iget-object p1, p5, Liv4;->m:Lpv4;

    .line 80
    .line 81
    iget-object p2, p0, Lhv4;->r:Lmv4;

    .line 82
    .line 83
    iget-object p3, p0, Lhv4;->c:Lxp1;

    .line 84
    .line 85
    invoke-virtual {p1}, Lpv4;->n()Lkv4;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-interface {p4}, Lkv4;->v()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-interface {p3, p4}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iget-object p4, p0, Lhv4;->c:Lxp1;

    .line 98
    .line 99
    invoke-virtual {p1}, Lpv4;->n()Lkv4;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Lkv4;->m()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p4, v0}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    iget-object p0, p0, Lhv4;->a:Lxp1;

    .line 112
    .line 113
    invoke-virtual {p1}, Lpv4;->n()Lkv4;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p0, p1}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcg1;

    .line 122
    .line 123
    invoke-virtual {p2, p3, p4, p0}, Lmv4;->n(Ljava/lang/Object;Ljava/lang/Object;Lcg1;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-object p5
.end method

.method public static final g(Landroid/graphics/RectF;)Lnp3;
    .locals 4

    .line 1
    new-instance v0, Lnp3;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Lnp3;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final h(Lnp3;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Lnp3;->v:F

    .line 4
    .line 5
    iget v2, p0, Lnp3;->e:F

    .line 6
    .line 7
    iget v3, p0, Lnp3;->m:F

    .line 8
    .line 9
    iget p0, p0, Lnp3;->w:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final m(Landroid/content/Context;Ljava/lang/String;Llo0;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lj15;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lj15;

    .line 9
    .line 10
    iget v2, v1, Lj15;->d:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lj15;->d:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lj15;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Llo0;-><init>(Ljo0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lj15;->y:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lj15;->d:I

    .line 30
    .line 31
    const/16 v3, 0x1f

    .line 32
    .line 33
    const-string v4, "/"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    const/4 v7, 0x0

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    if-ne v2, v6, :cond_1

    .line 41
    .line 42
    iget v2, v1, Lj15;->k:I

    .line 43
    .line 44
    iget-object v6, v1, Lj15;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v8, v1, Lj15;->s:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v9, v1, Lj15;->g:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v1, v1, Lj15;->h:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Ljh5;->n(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lc0;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v7

    .line 63
    :cond_2
    invoke-static {v0}, Ljh5;->n(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/16 v8, 0x40

    .line 75
    .line 76
    invoke-virtual {v0, v2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 81
    .line 82
    if-eqz v2, :cond_3

    .line 83
    .line 84
    new-instance v8, Lgp4;

    .line 85
    .line 86
    const/16 v9, 0x9

    .line 87
    .line 88
    invoke-direct {v8, v9}, Lgp4;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v8, v3}, Lyp;->i([Ljava/lang/Object;Lgp4;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v8, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object v8, v7

    .line 98
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    move v2, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    move v2, v5

    .line 115
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v9, "default_input_method"

    .line 120
    .line 121
    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    filled-new-array {v4}, [Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    invoke-static {v0, v9}, Lkh4;->H(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lpd0;->f(Ljava/util/List;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/String;

    .line 141
    .line 142
    invoke-static/range {p0 .. p0}, Lso2;->v(Landroid/content/Context;)Lrt0;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    check-cast v9, Loi3;

    .line 147
    .line 148
    iget-object v9, v9, Loi3;->v:Lrt0;

    .line 149
    .line 150
    invoke-interface {v9}, Lrt0;->e()Lqi1;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    new-instance v10, Lbb0;

    .line 155
    .line 156
    const/4 v11, 0x3

    .line 157
    invoke-direct {v10, v9, v11}, Lbb0;-><init>(Lqi1;I)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v9, p0

    .line 161
    .line 162
    iput-object v9, v1, Lj15;->h:Landroid/content/Context;

    .line 163
    .line 164
    move-object/from16 v11, p1

    .line 165
    .line 166
    iput-object v11, v1, Lj15;->g:Ljava/lang/String;

    .line 167
    .line 168
    iput-object v8, v1, Lj15;->s:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v0, v1, Lj15;->b:Ljava/lang/String;

    .line 171
    .line 172
    iput v2, v1, Lj15;->k:I

    .line 173
    .line 174
    iput v6, v1, Lj15;->d:I

    .line 175
    .line 176
    invoke-static {v10, v1}, Lpw5;->t(Lqi1;Llo0;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    sget-object v6, Llr0;->r:Llr0;

    .line 181
    .line 182
    if-ne v1, v6, :cond_5

    .line 183
    .line 184
    return-object v6

    .line 185
    :cond_5
    move-object v6, v0

    .line 186
    move-object v0, v1

    .line 187
    move-object v1, v9

    .line 188
    move-object v9, v11

    .line 189
    :goto_3
    check-cast v0, Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    const-string v7, "custom:"

    .line 194
    .line 195
    invoke-static {v0, v7, v5}, Lrh4;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_6

    .line 200
    .line 201
    const-string v0, "custom"

    .line 202
    .line 203
    :cond_6
    move-object v7, v0

    .line 204
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .line 206
    if-lt v0, v3, :cond_8

    .line 207
    .line 208
    invoke-static {}, Lbn1;->g()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-static {v4, v0}, Lae4;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    goto :goto_4

    .line 217
    :cond_8
    const-string v0, ""

    .line 218
    .line 219
    :goto_4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    const-string v4, "io.appground.blek"

    .line 227
    .line 228
    invoke-static {v4, v3}, Lkh4;->E(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 233
    .line 234
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 235
    .line 236
    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 237
    .line 238
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    const-string v13, " 6.22.0 ("

    .line 245
    .line 246
    const-string v14, "-"

    .line 247
    .line 248
    const-string v15, "App version: "

    .line 249
    .line 250
    invoke-static {v15, v3, v13, v8, v14}, Ljy2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, ")\nDevice: "

    .line 258
    .line 259
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v2, " "

    .line 266
    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v4, " ("

    .line 274
    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v0, ")  Android "

    .line 285
    .line 286
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v0, "\nKeyboard: "

    .line 299
    .line 300
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v0, "\n\n"

    .line 313
    .line 314
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    if-eqz v9, :cond_a

    .line 322
    .line 323
    invoke-static {v9}, Lkh4;->f(Ljava/lang/CharSequence;)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_9

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v0, "Debug log:\n\n"

    .line 339
    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :cond_a
    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 351
    .line 352
    const-string v3, "android.intent.action.SENDTO"

    .line 353
    .line 354
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string v3, "mailto:"

    .line 358
    .line 359
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 364
    .line 365
    .line 366
    const-string v3, "support@appground.io"

    .line 367
    .line 368
    filled-new-array {v3}, [Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    const-string v4, "android.intent.extra.EMAIL"

    .line 373
    .line 374
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const v3, 0x7f13002d

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v1, " feedback"

    .line 397
    .line 398
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v3, "android.intent.extra.SUBJECT"

    .line 406
    .line 407
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    .line 409
    .line 410
    const-string v1, "android.intent.extra.TEXT"

    .line 411
    .line 412
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    .line 414
    .line 415
    return-object v2
.end method

.method public static final n()Ln02;
    .locals 14

    .line 1
    sget-object v0, Lug5;->a:Ln02;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v1, Lm02;

    .line 7
    .line 8
    const/4 v9, 0x0

    .line 9
    const/16 v11, 0x60

    .line 10
    .line 11
    const-string v2, "Outlined.KeyboardAlt"

    .line 12
    .line 13
    const/high16 v3, 0x41c00000    # 24.0f

    .line 14
    .line 15
    const/high16 v4, 0x41c00000    # 24.0f

    .line 16
    .line 17
    const/high16 v5, 0x41c00000    # 24.0f

    .line 18
    .line 19
    const/high16 v6, 0x41c00000    # 24.0f

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    invoke-direct/range {v1 .. v11}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 25
    .line 26
    .line 27
    sget v0, Le25;->v:I

    .line 28
    .line 29
    new-instance v0, Lzd4;

    .line 30
    .line 31
    sget-wide v2, Lud0;->e:J

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Lzd4;-><init>(J)V

    .line 34
    .line 35
    .line 36
    new-instance v4, Ldw1;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v4, v2}, Ldw1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v2, 0x40800000    # 4.0f

    .line 43
    .line 44
    const/high16 v3, 0x41a80000    # 21.0f

    .line 45
    .line 46
    invoke-virtual {v4, v3, v2}, Ldw1;->a(FF)V

    .line 47
    .line 48
    .line 49
    const/high16 v2, 0x40400000    # 3.0f

    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ldw1;->p(F)V

    .line 52
    .line 53
    .line 54
    const/high16 v9, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/high16 v10, 0x40c00000    # 6.0f

    .line 57
    .line 58
    const v5, 0x3ff33333    # 1.9f

    .line 59
    .line 60
    .line 61
    const/high16 v6, 0x40800000    # 4.0f

    .line 62
    .line 63
    const/high16 v7, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const v8, 0x409ccccd    # 4.9f

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v4 .. v10}, Ldw1;->m(FFFFFF)V

    .line 69
    .line 70
    .line 71
    const/high16 v11, 0x41500000    # 13.0f

    .line 72
    .line 73
    invoke-virtual {v4, v11}, Ldw1;->k(F)V

    .line 74
    .line 75
    .line 76
    const/high16 v9, 0x40000000    # 2.0f

    .line 77
    .line 78
    const/high16 v10, 0x40000000    # 2.0f

    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const v6, 0x3f8ccccd    # 1.1f

    .line 82
    .line 83
    .line 84
    const v7, 0x3f666666    # 0.9f

    .line 85
    .line 86
    .line 87
    const/high16 v8, 0x40000000    # 2.0f

    .line 88
    .line 89
    invoke-virtual/range {v4 .. v10}, Ldw1;->w(FFFFFF)V

    .line 90
    .line 91
    .line 92
    const/high16 v12, 0x41900000    # 18.0f

    .line 93
    .line 94
    invoke-virtual {v4, v12}, Ldw1;->n(F)V

    .line 95
    .line 96
    .line 97
    const/high16 v10, -0x40000000    # -2.0f

    .line 98
    .line 99
    const v5, 0x3f8ccccd    # 1.1f

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    const/high16 v7, 0x40000000    # 2.0f

    .line 104
    .line 105
    const v8, -0x4099999a    # -0.9f

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v4 .. v10}, Ldw1;->w(FFFFFF)V

    .line 109
    .line 110
    .line 111
    const/high16 v13, 0x40c00000    # 6.0f

    .line 112
    .line 113
    invoke-virtual {v4, v13}, Ldw1;->b(F)V

    .line 114
    .line 115
    .line 116
    const/high16 v9, 0x41a80000    # 21.0f

    .line 117
    .line 118
    const/high16 v10, 0x40800000    # 4.0f

    .line 119
    .line 120
    const/high16 v5, 0x41b80000    # 23.0f

    .line 121
    .line 122
    const v6, 0x409ccccd    # 4.9f

    .line 123
    .line 124
    .line 125
    const v7, 0x41b0cccd    # 22.1f

    .line 126
    .line 127
    .line 128
    const/high16 v8, 0x40800000    # 4.0f

    .line 129
    .line 130
    invoke-virtual/range {v4 .. v10}, Ldw1;->m(FFFFFF)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ldw1;->e()V

    .line 134
    .line 135
    .line 136
    const/high16 v5, 0x41980000    # 19.0f

    .line 137
    .line 138
    invoke-virtual {v4, v3, v5}, Ldw1;->a(FF)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v2}, Ldw1;->p(F)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v13}, Ldw1;->b(F)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v12}, Ldw1;->n(F)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v5}, Ldw1;->b(F)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ldw1;->e()V

    .line 154
    .line 155
    .line 156
    const/high16 v2, 0x41100000    # 9.0f

    .line 157
    .line 158
    const/high16 v3, 0x41000000    # 8.0f

    .line 159
    .line 160
    invoke-virtual {v4, v2, v3}, Ldw1;->a(FF)V

    .line 161
    .line 162
    .line 163
    const/high16 v5, 0x40000000    # 2.0f

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ldw1;->n(F)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ldw1;->k(F)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v2}, Ldw1;->p(F)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v3}, Ldw1;->b(F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ldw1;->e()V

    .line 178
    .line 179
    .line 180
    const/high16 v6, 0x40a00000    # 5.0f

    .line 181
    .line 182
    invoke-static {v4, v6, v3, v5, v5}, Lae4;->z(Ldw1;FFFF)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v6}, Ldw1;->p(F)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v3}, Ldw1;->b(F)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ldw1;->e()V

    .line 192
    .line 193
    .line 194
    const/high16 v7, 0x41800000    # 16.0f

    .line 195
    .line 196
    invoke-virtual {v4, v3, v7}, Ldw1;->a(FF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v3}, Ldw1;->n(F)V

    .line 200
    .line 201
    .line 202
    const/high16 v8, 0x3f800000    # 1.0f

    .line 203
    .line 204
    invoke-virtual {v4, v8}, Ldw1;->k(F)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v3}, Ldw1;->p(F)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v4, v7}, Ldw1;->b(F)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Ldw1;->e()V

    .line 214
    .line 215
    .line 216
    invoke-static {v4, v11, v3, v5, v5}, Lae4;->z(Ldw1;FFFF)V

    .line 217
    .line 218
    .line 219
    const/high16 v7, -0x40000000    # -2.0f

    .line 220
    .line 221
    invoke-virtual {v4, v7}, Ldw1;->n(F)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v3}, Ldw1;->b(F)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ldw1;->e()V

    .line 228
    .line 229
    .line 230
    const/high16 v8, 0x41400000    # 12.0f

    .line 231
    .line 232
    invoke-virtual {v4, v2, v8}, Ldw1;->a(FF)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v5}, Ldw1;->n(F)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v5}, Ldw1;->k(F)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v4, v2}, Ldw1;->p(F)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, v8}, Ldw1;->b(F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4}, Ldw1;->e()V

    .line 248
    .line 249
    .line 250
    invoke-static {v4, v6, v8, v5, v5}, Lae4;->z(Ldw1;FFFF)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v6}, Ldw1;->p(F)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v8}, Ldw1;->b(F)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ldw1;->e()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v11, v8}, Ldw1;->a(FF)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v5}, Ldw1;->n(F)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ldw1;->k(F)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4, v7}, Ldw1;->n(F)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v8}, Ldw1;->b(F)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ldw1;->e()V

    .line 278
    .line 279
    .line 280
    const/high16 v2, 0x41880000    # 17.0f

    .line 281
    .line 282
    invoke-static {v4, v2, v3, v5, v5}, Lae4;->z(Ldw1;FFFF)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v7}, Ldw1;->n(F)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v3}, Ldw1;->b(F)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4}, Ldw1;->e()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v2, v8}, Ldw1;->a(FF)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v5}, Ldw1;->n(F)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ldw1;->k(F)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v7}, Ldw1;->n(F)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v8}, Ldw1;->b(F)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ldw1;->e()V

    .line 310
    .line 311
    .line 312
    iget-object v2, v4, Ldw1;->v:Ljava/util/ArrayList;

    .line 313
    .line 314
    const/4 v3, 0x0

    .line 315
    invoke-static {v1, v2, v3, v0}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Lm02;->e()Ln02;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    sput-object v0, Lug5;->a:Ln02;

    .line 323
    .line 324
    return-object v0
.end method

.method public static final p(IF)F
    .locals 3

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x42480000    # 50.0f

    .line 3
    .line 4
    cmpl-float v1, p0, v0

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    sub-float/2addr p0, v0

    .line 11
    div-float/2addr p0, v0

    .line 12
    invoke-static {p1, v2, p0, v2}, Lae4;->n(FFFF)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    div-float p1, v2, p1

    .line 18
    .line 19
    sub-float/2addr v2, p1

    .line 20
    div-float/2addr p0, v0

    .line 21
    mul-float/2addr p0, v2

    .line 22
    add-float/2addr p0, p1

    .line 23
    return p0
.end method

.method public static final r(Lns5;Ljava/lang/String;Lir1;I)Lpv4;
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0xe

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x0

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_1

    .line 15
    .line 16
    :cond_0
    and-int/lit8 v4, p3, 0x6

    .line 17
    .line 18
    if-ne v4, v2, :cond_2

    .line 19
    .line 20
    :cond_1
    move v4, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    move v4, v3

    .line 23
    :goto_0
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget-object v6, Lyi0;->v:Lyw2;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    if-ne v5, v6, :cond_5

    .line 33
    .line 34
    :cond_3
    invoke-static {}, Luv5;->n()Lyc4;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    invoke-virtual {v4}, Lyc4;->p()Lxp1;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    move-object v5, v7

    .line 46
    :goto_1
    invoke-static {v4}, Luv5;->r(Lyc4;)Lyc4;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    :try_start_0
    new-instance v9, Lpv4;

    .line 51
    .line 52
    invoke-direct {v9, p0, v7, p1}, Lpv4;-><init>(Lns5;Lpv4;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v8, v5}, Luv5;->g(Lyc4;Lyc4;Lxp1;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v9}, Lir1;->j0(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v5, v9

    .line 62
    :cond_5
    check-cast v5, Lpv4;

    .line 63
    .line 64
    instance-of p1, p0, La24;

    .line 65
    .line 66
    if-eqz p1, :cond_11

    .line 67
    .line 68
    const p1, -0x50eb3019

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lir1;->Y(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v6, :cond_6

    .line 79
    .line 80
    invoke-static {p2}, Llu5;->g(Lir1;)Lkr0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2, p1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    check-cast p1, Lkr0;

    .line 88
    .line 89
    invoke-virtual {p2, p1}, Lir1;->r(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-le v0, v2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p2, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-nez v8, :cond_8

    .line 100
    .line 101
    :cond_7
    and-int/lit8 v8, p3, 0x6

    .line 102
    .line 103
    if-ne v8, v2, :cond_9

    .line 104
    .line 105
    :cond_8
    move v8, v1

    .line 106
    goto :goto_2

    .line 107
    :cond_9
    move v8, v3

    .line 108
    :goto_2
    or-int/2addr v4, v8

    .line 109
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-nez v4, :cond_a

    .line 114
    .line 115
    if-ne v8, v6, :cond_b

    .line 116
    .line 117
    :cond_a
    new-instance v8, Lr04;

    .line 118
    .line 119
    const/16 v4, 0xf

    .line 120
    .line 121
    invoke-direct {v8, v4, p0, p1}, Lr04;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v8}, Lir1;->j0(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_b
    check-cast v8, Lxp1;

    .line 128
    .line 129
    invoke-static {p1, v8, p2}, Llu5;->v(Ljava/lang/Object;Lxp1;Lir1;)V

    .line 130
    .line 131
    .line 132
    move-object p1, p0

    .line 133
    check-cast p1, La24;

    .line 134
    .line 135
    iget-object v4, p1, La24;->m:Ljc3;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljc3;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object p1, p1, La24;->e:Ljc3;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljc3;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-le v0, v2, :cond_c

    .line 148
    .line 149
    invoke-virtual {p2, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_e

    .line 154
    .line 155
    :cond_c
    and-int/lit8 p3, p3, 0x6

    .line 156
    .line 157
    if-ne p3, v2, :cond_d

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_d
    move v1, v3

    .line 161
    :cond_e
    :goto_3
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    if-nez v1, :cond_f

    .line 166
    .line 167
    if-ne p3, v6, :cond_10

    .line 168
    .line 169
    :cond_f
    new-instance p3, Lqw0;

    .line 170
    .line 171
    const/16 v0, 0x1b

    .line 172
    .line 173
    invoke-direct {p3, p0, v7, v0}, Lqw0;-><init>(Ljava/lang/Object;Ljo0;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, p3}, Lir1;->j0(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_10
    check-cast p3, Lbq1;

    .line 180
    .line 181
    invoke-static {v4, p1, p3, p2}, Llu5;->p(Ljava/lang/Object;Ljava/lang/Object;Lbq1;Lir1;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v3}, Lir1;->y(Z)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_11
    const p1, -0x50dc2380

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p1}, Lir1;->Y(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lns5;->h()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v5, p0, p2, v3}, Lpv4;->v(Ljava/lang/Object;Lir1;I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v3}, Lir1;->y(Z)V

    .line 202
    .line 203
    .line 204
    :goto_4
    invoke-virtual {p2, v5}, Lir1;->n(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    invoke-virtual {p2}, Lir1;->L()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-nez p0, :cond_12

    .line 213
    .line 214
    if-ne p1, v6, :cond_13

    .line 215
    .line 216
    :cond_12
    new-instance p1, Lrv4;

    .line 217
    .line 218
    invoke-direct {p1, v5, v3}, Lrv4;-><init>(Lpv4;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_13
    check-cast p1, Lxp1;

    .line 225
    .line 226
    invoke-static {v5, p1, p2}, Llu5;->v(Ljava/lang/Object;Lxp1;Lir1;)V

    .line 227
    .line 228
    .line 229
    return-object v5

    .line 230
    :catchall_0
    move-exception p0

    .line 231
    invoke-static {v4, v8, v5}, Luv5;->g(Lyc4;Lyc4;Lxp1;)V

    .line 232
    .line 233
    .line 234
    throw p0
.end method

.method public static final s(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static final t(Lig0;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lv1;->f(Landroid/app/Activity;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    const/16 v1, 0x1d

    .line 16
    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    and-int/lit16 p0, p0, 0x800

    .line 32
    .line 33
    if-nez p0, :cond_5

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    new-instance v1, Lrn2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lrn2;-><init>(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v3, 0x23

    .line 56
    .line 57
    if-lt p0, v3, :cond_2

    .line 58
    .line 59
    new-instance p0, Lg85;

    .line 60
    .line 61
    invoke-direct {p0, v0, v1}, Lf85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 v3, 0x1e

    .line 66
    .line 67
    if-lt p0, v3, :cond_3

    .line 68
    .line 69
    new-instance p0, Lf85;

    .line 70
    .line 71
    invoke-direct {p0, v0, v1}, Lf85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/16 v3, 0x1a

    .line 76
    .line 77
    if-lt p0, v3, :cond_4

    .line 78
    .line 79
    new-instance p0, Le85;

    .line 80
    .line 81
    invoke-direct {p0, v0, v1}, Ld85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    new-instance p0, Ld85;

    .line 86
    .line 87
    invoke-direct {p0, v0, v1}, Ld85;-><init>(Landroid/view/Window;Lrn2;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0}, Lct5;->p()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    const/4 v0, 0x2

    .line 95
    if-ne p0, v0, :cond_5

    .line 96
    .line 97
    :goto_1
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :cond_5
    return v2
.end method

.method public static final v(Lpv4;Lmv4;Ljava/lang/Object;Ljava/lang/Object;Lcg1;Lir1;I)V
    .locals 8

    .line 1
    const v0, 0x33ae021d

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5, v0}, Lir1;->a0(I)Lir1;

    .line 5
    .line 6
    .line 7
    and-int/lit8 v0, p6, 0x6

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p5, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x2

    .line 20
    :goto_0
    or-int/2addr v0, p6

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, p6

    .line 23
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p5, p1}, Lir1;->n(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_2
    or-int/2addr v0, v1

    .line 39
    :cond_3
    and-int/lit16 v1, p6, 0x180

    .line 40
    .line 41
    if-nez v1, :cond_6

    .line 42
    .line 43
    and-int/lit16 v1, p6, 0x200

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p5, p2}, Lir1;->n(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p5, p2}, Lir1;->r(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_3
    if-eqz v1, :cond_5

    .line 57
    .line 58
    const/16 v1, 0x100

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    const/16 v1, 0x80

    .line 62
    .line 63
    :goto_4
    or-int/2addr v0, v1

    .line 64
    :cond_6
    and-int/lit16 v1, p6, 0xc00

    .line 65
    .line 66
    if-nez v1, :cond_9

    .line 67
    .line 68
    and-int/lit16 v1, p6, 0x1000

    .line 69
    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    invoke-virtual {p5, p3}, Lir1;->n(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_5

    .line 77
    :cond_7
    invoke-virtual {p5, p3}, Lir1;->r(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_5
    if-eqz v1, :cond_8

    .line 82
    .line 83
    const/16 v1, 0x800

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_8
    const/16 v1, 0x400

    .line 87
    .line 88
    :goto_6
    or-int/2addr v0, v1

    .line 89
    :cond_9
    and-int/lit16 v1, p6, 0x6000

    .line 90
    .line 91
    if-nez v1, :cond_c

    .line 92
    .line 93
    const v1, 0x8000

    .line 94
    .line 95
    .line 96
    and-int/2addr v1, p6

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    invoke-virtual {p5, p4}, Lir1;->n(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_7

    .line 104
    :cond_a
    invoke-virtual {p5, p4}, Lir1;->r(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :goto_7
    if-eqz v1, :cond_b

    .line 109
    .line 110
    const/16 v1, 0x4000

    .line 111
    .line 112
    goto :goto_8

    .line 113
    :cond_b
    const/16 v1, 0x2000

    .line 114
    .line 115
    :goto_8
    or-int/2addr v0, v1

    .line 116
    :cond_c
    and-int/lit16 v1, v0, 0x2493

    .line 117
    .line 118
    const/16 v2, 0x2492

    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    if-eq v1, v2, :cond_d

    .line 122
    .line 123
    move v1, v3

    .line 124
    goto :goto_9

    .line 125
    :cond_d
    const/4 v1, 0x0

    .line 126
    :goto_9
    and-int/2addr v0, v3

    .line 127
    invoke-virtual {p5, v0, v1}, Lir1;->O(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_f

    .line 132
    .line 133
    invoke-virtual {p0}, Lpv4;->t()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_e

    .line 138
    .line 139
    invoke-virtual {p1, p2, p3, p4}, Lmv4;->n(Ljava/lang/Object;Ljava/lang/Object;Lcg1;)V

    .line 140
    .line 141
    .line 142
    goto :goto_a

    .line 143
    :cond_e
    invoke-virtual {p1, p3, p4}, Lmv4;->t(Ljava/lang/Object;Lcg1;)V

    .line 144
    .line 145
    .line 146
    goto :goto_a

    .line 147
    :cond_f
    invoke-virtual {p5}, Lir1;->R()V

    .line 148
    .line 149
    .line 150
    :goto_a
    invoke-virtual {p5}, Lir1;->u()Lbp3;

    .line 151
    .line 152
    .line 153
    move-result-object p5

    .line 154
    if-eqz p5, :cond_10

    .line 155
    .line 156
    new-instance v0, Lik0;

    .line 157
    .line 158
    const/4 v7, 0x3

    .line 159
    move-object v1, p0

    .line 160
    move-object v2, p1

    .line 161
    move-object v3, p2

    .line 162
    move-object v4, p3

    .line 163
    move-object v5, p4

    .line 164
    move v6, p6

    .line 165
    invoke-direct/range {v0 .. v7}, Lik0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p5, Lbp3;->w:Lbq1;

    .line 169
    .line 170
    :cond_10
    return-void
.end method

.method public static final w(Lpv4;Ljava/lang/Object;Ljava/lang/Object;Lcg1;Lux4;Lir1;I)Lmv4;
    .locals 5

    .line 1
    invoke-virtual {p5, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p6

    .line 5
    invoke-virtual {p5}, Lir1;->L()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lyi0;->v:Lyw2;

    .line 10
    .line 11
    if-nez p6, :cond_0

    .line 12
    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Luv5;->n()Lyc4;

    .line 16
    .line 17
    .line 18
    move-result-object p6

    .line 19
    if-eqz p6, :cond_1

    .line 20
    .line 21
    invoke-virtual {p6}, Lyc4;->p()Lxp1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    move-object v2, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    invoke-static {p6}, Luv5;->r(Lyc4;)Lyc4;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :try_start_0
    new-instance v0, Lmv4;

    .line 34
    .line 35
    iget-object v4, p4, Lux4;->v:Lxp1;

    .line 36
    .line 37
    invoke-interface {v4, p2}, Lxp1;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lqh;

    .line 42
    .line 43
    invoke-virtual {v4}, Lqh;->w()V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, p1, v4, p4}, Lmv4;-><init>(Lpv4;Ljava/lang/Object;Lqh;Lux4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {p6, v3, v2}, Luv5;->g(Lyc4;Lyc4;Lxp1;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p5, v0}, Lir1;->j0(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    check-cast v0, Lmv4;

    .line 56
    .line 57
    const/4 p6, 0x0

    .line 58
    move-object p4, p3

    .line 59
    move-object p3, p2

    .line 60
    move-object p2, p1

    .line 61
    move-object p1, v0

    .line 62
    invoke-static/range {p0 .. p6}, Lug5;->v(Lpv4;Lmv4;Ljava/lang/Object;Ljava/lang/Object;Lcg1;Lir1;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, p0}, Lir1;->n(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p5, p1}, Lir1;->n(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    or-int/2addr p2, p3

    .line 74
    invoke-virtual {p5}, Lir1;->L()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-nez p2, :cond_3

    .line 79
    .line 80
    if-ne p3, v1, :cond_4

    .line 81
    .line 82
    :cond_3
    new-instance p3, Lr04;

    .line 83
    .line 84
    const/16 p2, 0xe

    .line 85
    .line 86
    invoke-direct {p3, p2, p0, p1}, Lr04;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p5, p3}, Lir1;->j0(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    check-cast p3, Lxp1;

    .line 93
    .line 94
    invoke-static {p1, p3, p5}, Llu5;->v(Ljava/lang/Object;Lxp1;Lir1;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    invoke-static {p6, v3, v2}, Luv5;->g(Lyc4;Lyc4;Lxp1;)V

    .line 101
    .line 102
    .line 103
    throw p0
.end method
