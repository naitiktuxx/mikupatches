.class public final Lez;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:[Ljava/lang/String;

.field public static final p:[Ljava/lang/String;

.field public static final w:[Ljava/lang/String;


# instance fields
.field public final e:Lwf4;

.field public final v:Luy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lez;

    .line 2
    .line 3
    invoke-static {v0}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lta0;->m()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    const-string v0, "premium_v1"

    .line 11
    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lez;->m:[Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "premium_yearly"

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lez;->w:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "donation"

    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lez;->p:[Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Luy;Lkr0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lez;->v:Luy;

    .line 11
    .line 12
    sget-object p1, Lya1;->r:Lya1;

    .line 13
    .line 14
    invoke-static {p1}, Lqe5;->k(Ljava/lang/Object;)Lwf4;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lez;->e:Lwf4;

    .line 19
    .line 20
    new-instance p1, Laz;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, p0, v1, v0}, Laz;-><init>(Lez;Ljo0;I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-static {p2, v1, p1, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 29
    .line 30
    .line 31
    new-instance p1, Laz;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p1, p0, v1, v2}, Laz;-><init>(Lez;Ljo0;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2, v1, p1, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static final v(Lez;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lez;->e:Lwf4;

    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lwf4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    .line 10
    new-instance v2, Ly05;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-direct {v2, v3, v4}, Ly05;-><init>(J)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Lpd0;->K(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Lwf4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m(Ljava/lang/String;)Lly;
    .locals 1

    .line 1
    iget-object p0, p0, Lez;->v:Luy;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Luy;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lwf4;

    .line 16
    .line 17
    new-instance p1, Lly;

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-direct {p1, p0, v0}, Lly;-><init>(Lwf4;I)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public final w()Lo80;
    .locals 10

    .line 1
    const-string v0, "premium_v1"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lez;->m(Ljava/lang/String;)Lly;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "premium_yearly"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lez;->m(Ljava/lang/String;)Lly;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v1, Lcz;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3}, Loj4;-><init>(ILjo0;)V

    .line 18
    .line 19
    .line 20
    new-instance v6, Lxj1;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v6, v0, p0, v1, v4}, Lxj1;-><init>(Lqi1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Ldz;

    .line 27
    .line 28
    invoke-direct {v5, v2, v3}, Loj4;-><init>(ILjo0;)V

    .line 29
    .line 30
    .line 31
    sget p0, Loj1;->v:I

    .line 32
    .line 33
    new-instance v4, Lo80;

    .line 34
    .line 35
    const/4 v8, -0x2

    .line 36
    sget-object v9, La30;->r:La30;

    .line 37
    .line 38
    sget-object v7, Lwa1;->r:Lwa1;

    .line 39
    .line 40
    invoke-direct/range {v4 .. v9}, Lo80;-><init>(Lcq1;Lqi1;Lbr0;ILa30;)V

    .line 41
    .line 42
    .line 43
    return-object v4
.end method
