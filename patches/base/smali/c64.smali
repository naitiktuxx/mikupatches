.class public final Lc64;
.super Lg64;
.source "SourceFile"


# virtual methods
.method public final v()Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Lb93;

    .line 2
    .line 3
    new-instance v1, Lir4;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    const v2, 0x7f1301cc

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v7, 0x20

    .line 14
    .line 15
    const-string v2, "theme_option"

    .line 16
    .line 17
    const v3, 0x7f030012

    .line 18
    .line 19
    .line 20
    const v4, 0x7f030013

    .line 21
    .line 22
    .line 23
    const-string v5, "system"

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lb93;-><init>(Lir4;Ljava/lang/String;IILjava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lf93;

    .line 29
    .line 30
    new-instance v2, Lir4;

    .line 31
    .line 32
    const v3, 0x7f130299

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v3}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string v3, "keep_screen_on"

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    invoke-direct {v1, v2, v3, v4}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lf93;

    .line 45
    .line 46
    new-instance v3, Lir4;

    .line 47
    .line 48
    const v5, 0x7f13029b

    .line 49
    .line 50
    .line 51
    invoke-direct {v3, p0, v5}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string v5, "show_over_lock_screen"

    .line 55
    .line 56
    const/16 v6, 0x8

    .line 57
    .line 58
    invoke-direct {v2, v3, v5, v6}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lf93;

    .line 62
    .line 63
    new-instance v5, Lir4;

    .line 64
    .line 65
    const v7, 0x7f130298

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, p0, v7}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string p0, "haptic_feedback"

    .line 72
    .line 73
    invoke-direct {v3, v5, p0, v6}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    new-array p0, v4, [Lh93;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    aput-object v0, p0, v4

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    aput-object v1, p0, v0

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    aput-object v2, p0, v0

    .line 86
    .line 87
    const/4 v0, 0x3

    .line 88
    aput-object v3, p0, v0

    .line 89
    .line 90
    invoke-static {p0}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0
.end method
