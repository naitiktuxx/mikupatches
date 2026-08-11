.class public final Lb64;
.super Lg64;
.source "SourceFile"


# virtual methods
.method public final v()Ljava/util/List;
    .locals 11

    .line 1
    new-instance v0, Lb93;

    .line 2
    .line 3
    new-instance v1, Lir4;

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    const v2, 0x7f1301df

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
    const-string v2, "theme_color"

    .line 16
    .line 17
    const v3, 0x7f03000f

    .line 18
    .line 19
    .line 20
    const v4, 0x7f030011

    .line 21
    .line 22
    .line 23
    const-string v5, "blue_grey"

    .line 24
    .line 25
    invoke-direct/range {v0 .. v7}, Lb93;-><init>(Lir4;Ljava/lang/String;IILjava/lang/String;ZI)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lb93;

    .line 29
    .line 30
    new-instance v2, Lir4;

    .line 31
    .line 32
    const v3, 0x7f1301cc

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v3}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/16 v8, 0x20

    .line 40
    .line 41
    const-string v3, "theme_option"

    .line 42
    .line 43
    const v4, 0x7f030012

    .line 44
    .line 45
    .line 46
    const v5, 0x7f030013

    .line 47
    .line 48
    .line 49
    const-string v6, "system"

    .line 50
    .line 51
    invoke-direct/range {v1 .. v8}, Lb93;-><init>(Lir4;Ljava/lang/String;IILjava/lang/String;ZI)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Lf93;

    .line 55
    .line 56
    new-instance v3, Lir4;

    .line 57
    .line 58
    const v4, 0x7f1301e3

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, p0, v4}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v4, "activate_outline_theme"

    .line 65
    .line 66
    const/4 v5, 0x4

    .line 67
    invoke-direct {v2, v3, v4, v5}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lf93;

    .line 71
    .line 72
    new-instance v4, Lir4;

    .line 73
    .line 74
    const v6, 0x7f13029d

    .line 75
    .line 76
    .line 77
    invoke-direct {v4, p0, v6}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    const-string v6, "start_full_screen"

    .line 81
    .line 82
    invoke-direct {v3, v4, v6, v5}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lf93;

    .line 86
    .line 87
    new-instance v6, Lir4;

    .line 88
    .line 89
    const v7, 0x7f130299

    .line 90
    .line 91
    .line 92
    invoke-direct {v6, p0, v7}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const-string v7, "keep_screen_on"

    .line 96
    .line 97
    invoke-direct {v4, v6, v7, v5}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    new-instance v6, Lf93;

    .line 101
    .line 102
    new-instance v7, Lir4;

    .line 103
    .line 104
    const v8, 0x7f13029b

    .line 105
    .line 106
    .line 107
    invoke-direct {v7, p0, v8}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const-string v8, "show_over_lock_screen"

    .line 111
    .line 112
    const/16 v9, 0x8

    .line 113
    .line 114
    invoke-direct {v6, v7, v8, v9}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    new-instance v7, Lf93;

    .line 118
    .line 119
    new-instance v8, Lir4;

    .line 120
    .line 121
    const v10, 0x7f130298

    .line 122
    .line 123
    .line 124
    invoke-direct {v8, p0, v10}, Lir4;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string p0, "haptic_feedback"

    .line 128
    .line 129
    invoke-direct {v7, v8, p0, v9}, Lf93;-><init>(Lir4;Ljava/lang/String;I)V

    .line 130
    .line 131
    .line 132
    const/4 p0, 0x7

    .line 133
    new-array p0, p0, [Lh93;

    .line 134
    .line 135
    const/4 v8, 0x0

    .line 136
    aput-object v0, p0, v8

    .line 137
    .line 138
    const/4 v0, 0x1

    .line 139
    aput-object v1, p0, v0

    .line 140
    .line 141
    const/4 v0, 0x2

    .line 142
    aput-object v2, p0, v0

    .line 143
    .line 144
    const/4 v0, 0x3

    .line 145
    aput-object v3, p0, v0

    .line 146
    .line 147
    aput-object v4, p0, v5

    .line 148
    .line 149
    const/4 v0, 0x5

    .line 150
    aput-object v6, p0, v0

    .line 151
    .line 152
    const/4 v0, 0x6

    .line 153
    aput-object v7, p0, v0

    .line 154
    .line 155
    invoke-static {p0}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    return-object p0
.end method
