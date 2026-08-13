.class public final Lbr1/bar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(ZZZZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lbr1/bar;->a:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lbr1/bar;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lbr1/bar;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lbr1/bar;->d:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lbr1/bar;->e:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lbr1/bar;->f:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lbr1/bar;->g:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lbr1/bar;->h:Z

    .line 19
    .line 20
    iput-boolean p9, p0, Lbr1/bar;->i:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lbr1/bar;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lbr1/bar;

    .line 11
    .line 12
    iget-boolean v1, p0, Lbr1/bar;->a:Z

    .line 13
    .line 14
    iget-boolean v2, p1, Lbr1/bar;->a:Z

    .line 15
    .line 16
    if-eq v1, v2, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    iget-boolean v1, p0, Lbr1/bar;->b:Z

    .line 20
    .line 21
    iget-boolean v2, p1, Lbr1/bar;->b:Z

    .line 22
    .line 23
    if-eq v1, v2, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    iget-boolean v1, p0, Lbr1/bar;->c:Z

    .line 27
    .line 28
    iget-boolean v2, p1, Lbr1/bar;->c:Z

    .line 29
    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    iget-boolean v1, p0, Lbr1/bar;->d:Z

    .line 34
    .line 35
    iget-boolean v2, p1, Lbr1/bar;->d:Z

    .line 36
    .line 37
    if-eq v1, v2, :cond_5

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_5
    iget-boolean v1, p0, Lbr1/bar;->e:Z

    .line 41
    .line 42
    iget-boolean v2, p1, Lbr1/bar;->e:Z

    .line 43
    .line 44
    if-eq v1, v2, :cond_6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_6
    iget-boolean v1, p0, Lbr1/bar;->f:Z

    .line 48
    .line 49
    iget-boolean v2, p1, Lbr1/bar;->f:Z

    .line 50
    .line 51
    if-eq v1, v2, :cond_7

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_7
    iget-boolean v1, p0, Lbr1/bar;->g:Z

    .line 55
    .line 56
    iget-boolean v2, p1, Lbr1/bar;->g:Z

    .line 57
    .line 58
    if-eq v1, v2, :cond_8

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_8
    iget-boolean v1, p0, Lbr1/bar;->h:Z

    .line 62
    .line 63
    iget-boolean v2, p1, Lbr1/bar;->h:Z

    .line 64
    .line 65
    if-eq v1, v2, :cond_9

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_9
    iget-boolean v1, p0, Lbr1/bar;->i:Z

    .line 69
    .line 70
    iget-boolean p1, p1, Lbr1/bar;->i:Z

    .line 71
    .line 72
    if-eq v1, p1, :cond_a

    .line 73
    .line 74
    :goto_0
    const/4 p1, 0x0

    .line 75
    return p1

    .line 76
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lbr1/bar;->a:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/16 v3, 0x1f

    .line 13
    .line 14
    invoke-static {v0, v3, v1, v3}, Lqc/a;->j(IIII)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v4, p0, Lbr1/bar;->b:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    move v4, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v4, v1

    .line 25
    :goto_1
    add-int/2addr v0, v4

    .line 26
    mul-int/2addr v0, v3

    .line 27
    iget-boolean v4, p0, Lbr1/bar;->c:Z

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    move v4, v2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v4, v1

    .line 34
    :goto_2
    add-int/2addr v0, v4

    .line 35
    mul-int/2addr v0, v3

    .line 36
    iget-boolean v4, p0, Lbr1/bar;->d:Z

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    move v4, v2

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    move v4, v1

    .line 43
    :goto_3
    add-int/2addr v0, v4

    .line 44
    mul-int/2addr v0, v3

    .line 45
    iget-boolean v4, p0, Lbr1/bar;->e:Z

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    move v4, v2

    .line 50
    goto :goto_4

    .line 51
    :cond_4
    move v4, v1

    .line 52
    :goto_4
    add-int/2addr v0, v4

    .line 53
    mul-int/2addr v0, v3

    .line 54
    iget-boolean v4, p0, Lbr1/bar;->f:Z

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    move v4, v2

    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move v4, v1

    .line 61
    :goto_5
    add-int/2addr v0, v4

    .line 62
    mul-int/2addr v0, v3

    .line 63
    iget-boolean v4, p0, Lbr1/bar;->g:Z

    .line 64
    .line 65
    if-eqz v4, :cond_6

    .line 66
    .line 67
    move v4, v2

    .line 68
    goto :goto_6

    .line 69
    :cond_6
    move v4, v1

    .line 70
    :goto_6
    add-int/2addr v0, v4

    .line 71
    mul-int/2addr v0, v3

    .line 72
    iget-boolean v4, p0, Lbr1/bar;->h:Z

    .line 73
    .line 74
    if-eqz v4, :cond_7

    .line 75
    .line 76
    move v4, v2

    .line 77
    goto :goto_7

    .line 78
    :cond_7
    move v4, v1

    .line 79
    :goto_7
    add-int/2addr v0, v4

    .line 80
    mul-int/2addr v0, v3

    .line 81
    iget-boolean v4, p0, Lbr1/bar;->i:Z

    .line 82
    .line 83
    if-eqz v4, :cond_8

    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    move v2, v1

    .line 87
    :goto_8
    invoke-static {v0, v2, v3, v1}, Lcq2/bar;->l(IIII)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", isGoldWithSpam=false, isSpam="

    .line 2
    .line 3
    const-string v1, ", isGold="

    .line 4
    .line 5
    const-string v2, "CallerGradientConfig(isVerifiedBusinessWithSpam="

    .line 6
    .line 7
    iget-boolean v3, p0, Lbr1/bar;->a:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lbr1/bar;->b:Z

    .line 10
    .line 11
    invoke-static {v2, v0, v1, v3, v4}, Lbx/j;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", isPriority="

    .line 16
    .line 17
    const-string v2, ", isVerifiedBusiness="

    .line 18
    .line 19
    iget-boolean v3, p0, Lbr1/bar;->c:Z

    .line 20
    .line 21
    iget-boolean v4, p0, Lbr1/bar;->d:Z

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ", isIdentified="

    .line 27
    .line 28
    const-string v2, ", isPhonebook="

    .line 29
    .line 30
    iget-boolean v3, p0, Lbr1/bar;->e:Z

    .line 31
    .line 32
    iget-boolean v4, p0, Lbr1/bar;->f:Z

    .line 33
    .line 34
    invoke-static {v0, v3, v1, v4, v2}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ", isSmallBusinessEnabled="

    .line 38
    .line 39
    const-string v2, ", isSmallBusinessWithSpam="

    .line 40
    .line 41
    iget-boolean v3, p0, Lbr1/bar;->g:Z

    .line 42
    .line 43
    iget-boolean v4, p0, Lbr1/bar;->h:Z

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v4, v2}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, ", shouldShowFullScreenProfilePicture=false)"

    .line 49
    .line 50
    iget-boolean v2, p0, Lbr1/bar;->i:Z

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Lh40/f;->t(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
