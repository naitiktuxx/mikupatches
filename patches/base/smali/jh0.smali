.class public final synthetic Ljh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbq1;


# instance fields
.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ljh0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lir1;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    and-int/lit8 v2, v1, 0x3

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    and-int/2addr v1, v4

    .line 23
    invoke-virtual {v0, v1, v2}, Lir1;->O(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/16 v20, 0x0

    .line 30
    .line 31
    const v21, 0x3fffe

    .line 32
    .line 33
    .line 34
    move-object/from16 v18, v0

    .line 35
    .line 36
    const-string v0, "Search function"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const-wide/16 v10, 0x0

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const/16 v16, 0x0

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    .line 57
    const/16 v19, 0x6

    .line 58
    .line 59
    invoke-static/range {v0 .. v21}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object/from16 v18, v0

    .line 64
    .line 65
    invoke-virtual/range {v18 .. v18}, Lir1;->R()V

    .line 66
    .line 67
    .line 68
    :goto_1
    sget-object v0, Loz4;->v:Loz4;

    .line 69
    .line 70
    return-object v0
.end method

.method private final r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lir1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    and-int/lit8 p1, p0, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    and-int/2addr p0, v0

    .line 20
    invoke-virtual {v5, p0, p1}, Lir1;->O(IZ)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lk10;->n()Ln02;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v6, 0x30

    .line 31
    .line 32
    const/16 v7, 0xc

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v5}, Lir1;->R()V

    .line 43
    .line 44
    .line 45
    :goto_1
    sget-object p0, Loz4;->v:Loz4;

    .line 46
    .line 47
    return-object p0
.end method

.method private final t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lir1;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    and-int/lit8 p1, p0, 0x3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    move p1, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    and-int/2addr p0, v1

    .line 21
    invoke-virtual {v5, p0, p1}, Lir1;->O(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    move p0, v0

    .line 28
    invoke-static {}, Lmx5;->t()Ln02;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v5}, Lw13;->v(Lir1;)Lgv0;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const p2, 0x4407aeea

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p2}, Lir1;->Y(I)V

    .line 40
    .line 41
    .line 42
    iget-wide p1, p1, Lgv0;->e:J

    .line 43
    .line 44
    new-instance v1, Lud0;

    .line 45
    .line 46
    invoke-direct {v1, p1, p2}, Lud0;-><init>(J)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v5}, Lxv5;->s(Ljava/lang/Object;Lir1;)Ldz2;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v5, p0}, Lir1;->y(Z)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ltf4;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lud0;

    .line 61
    .line 62
    iget-wide v3, p0, Lud0;->v:J

    .line 63
    .line 64
    const/16 v6, 0x30

    .line 65
    .line 66
    const/4 v7, 0x4

    .line 67
    const-string v1, "Fullscreen"

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v5}, Lir1;->R()V

    .line 75
    .line 76
    .line 77
    :goto_1
    sget-object p0, Loz4;->v:Loz4;

    .line 78
    .line 79
    return-object p0
.end method

.method private final w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    check-cast v5, Lir1;

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    and-int/lit8 v1, v0, 0x3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    move v1, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    and-int/2addr v0, v4

    .line 23
    invoke-virtual {v5, v0, v1}, Lir1;->O(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Ljy5;->e:Ln02;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_1
    new-instance v6, Lm02;

    .line 36
    .line 37
    const/4 v14, 0x0

    .line 38
    const/16 v16, 0x60

    .line 39
    .line 40
    const-string v7, "Outlined.Payment"

    .line 41
    .line 42
    const/high16 v8, 0x41c00000    # 24.0f

    .line 43
    .line 44
    const/high16 v9, 0x41c00000    # 24.0f

    .line 45
    .line 46
    const/high16 v10, 0x41c00000    # 24.0f

    .line 47
    .line 48
    const/high16 v11, 0x41c00000    # 24.0f

    .line 49
    .line 50
    const-wide/16 v12, 0x0

    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    invoke-direct/range {v6 .. v16}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 54
    .line 55
    .line 56
    sget v0, Le25;->v:I

    .line 57
    .line 58
    new-instance v0, Lzd4;

    .line 59
    .line 60
    sget-wide v1, Lud0;->e:J

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Lzd4;-><init>(J)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Ldw1;

    .line 66
    .line 67
    invoke-direct {v7, v4}, Ldw1;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const/high16 v1, 0x41a00000    # 20.0f

    .line 71
    .line 72
    const/high16 v2, 0x40800000    # 4.0f

    .line 73
    .line 74
    invoke-virtual {v7, v1, v2}, Ldw1;->a(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7, v2, v2}, Ldw1;->t(FF)V

    .line 78
    .line 79
    .line 80
    const v12, -0x400147ae    # -1.99f

    .line 81
    .line 82
    .line 83
    const/high16 v13, 0x40000000    # 2.0f

    .line 84
    .line 85
    const v8, -0x4071eb85    # -1.11f

    .line 86
    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    const v10, -0x400147ae    # -1.99f

    .line 90
    .line 91
    .line 92
    const v11, 0x3f63d70a    # 0.89f

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {v7 .. v13}, Ldw1;->w(FFFFFF)V

    .line 96
    .line 97
    .line 98
    const/high16 v4, 0x40000000    # 2.0f

    .line 99
    .line 100
    const/high16 v14, 0x41900000    # 18.0f

    .line 101
    .line 102
    invoke-virtual {v7, v4, v14}, Ldw1;->t(FF)V

    .line 103
    .line 104
    .line 105
    const/high16 v12, 0x40000000    # 2.0f

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const v9, 0x3f8e147b    # 1.11f

    .line 109
    .line 110
    .line 111
    const v10, 0x3f63d70a    # 0.89f

    .line 112
    .line 113
    .line 114
    const/high16 v11, 0x40000000    # 2.0f

    .line 115
    .line 116
    invoke-virtual/range {v7 .. v13}, Ldw1;->w(FFFFFF)V

    .line 117
    .line 118
    .line 119
    const/high16 v15, 0x41800000    # 16.0f

    .line 120
    .line 121
    invoke-virtual {v7, v15}, Ldw1;->n(F)V

    .line 122
    .line 123
    .line 124
    const/high16 v13, -0x40000000    # -2.0f

    .line 125
    .line 126
    const v8, 0x3f8e147b    # 1.11f

    .line 127
    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    const/high16 v10, 0x40000000    # 2.0f

    .line 131
    .line 132
    const v11, -0x409c28f6    # -0.89f

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {v7 .. v13}, Ldw1;->w(FFFFFF)V

    .line 136
    .line 137
    .line 138
    const/high16 v8, 0x41b00000    # 22.0f

    .line 139
    .line 140
    const/high16 v9, 0x40c00000    # 6.0f

    .line 141
    .line 142
    invoke-virtual {v7, v8, v9}, Ldw1;->t(FF)V

    .line 143
    .line 144
    .line 145
    const/high16 v12, -0x40000000    # -2.0f

    .line 146
    .line 147
    const/4 v8, 0x0

    .line 148
    move v10, v9

    .line 149
    const v9, -0x4071eb85    # -1.11f

    .line 150
    .line 151
    .line 152
    move v11, v10

    .line 153
    const v10, -0x409c28f6    # -0.89f

    .line 154
    .line 155
    .line 156
    move/from16 v16, v11

    .line 157
    .line 158
    const/high16 v11, -0x40000000    # -2.0f

    .line 159
    .line 160
    move/from16 v3, v16

    .line 161
    .line 162
    invoke-virtual/range {v7 .. v13}, Ldw1;->w(FFFFFF)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7}, Ldw1;->e()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v1, v14}, Ldw1;->a(FF)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v2, v14}, Ldw1;->t(FF)V

    .line 172
    .line 173
    .line 174
    const/high16 v8, -0x3f400000    # -6.0f

    .line 175
    .line 176
    invoke-virtual {v7, v8}, Ldw1;->k(F)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v15}, Ldw1;->n(F)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v3}, Ldw1;->k(F)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7}, Ldw1;->e()V

    .line 186
    .line 187
    .line 188
    const/high16 v8, 0x41000000    # 8.0f

    .line 189
    .line 190
    invoke-virtual {v7, v1, v8}, Ldw1;->a(FF)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v2, v8}, Ldw1;->t(FF)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v2, v3}, Ldw1;->t(FF)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v15}, Ldw1;->n(F)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v4}, Ldw1;->k(F)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Ldw1;->e()V

    .line 206
    .line 207
    .line 208
    iget-object v1, v7, Ldw1;->v:Ljava/util/ArrayList;

    .line 209
    .line 210
    const/4 v2, 0x0

    .line 211
    invoke-static {v6, v1, v2, v0}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6}, Lm02;->e()Ln02;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sput-object v0, Ljy5;->e:Ln02;

    .line 219
    .line 220
    :goto_1
    const/16 v6, 0x30

    .line 221
    .line 222
    const/16 v7, 0xc

    .line 223
    .line 224
    const/4 v1, 0x0

    .line 225
    const/4 v2, 0x0

    .line 226
    const-wide/16 v3, 0x0

    .line 227
    .line 228
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_2
    invoke-virtual {v5}, Lir1;->R()V

    .line 233
    .line 234
    .line 235
    :goto_2
    sget-object v0, Loz4;->v:Loz4;

    .line 236
    .line 237
    return-object v0
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 60

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljh0;->r:I

    .line 4
    .line 5
    const/high16 v4, 0x41300000    # 11.0f

    .line 6
    .line 7
    const v5, -0x3f8f5c29    # -3.76f

    .line 8
    .line 9
    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v7, 0x41980000    # 19.0f

    .line 13
    .line 14
    const/high16 v8, 0x41600000    # 14.0f

    .line 15
    .line 16
    const/high16 v9, 0x40a00000    # 5.0f

    .line 17
    .line 18
    const/high16 v10, 0x41800000    # 16.0f

    .line 19
    .line 20
    const/high16 v13, 0x41b00000    # 22.0f

    .line 21
    .line 22
    const/high16 v14, 0x40000000    # 2.0f

    .line 23
    .line 24
    const/high16 v15, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/16 v16, 0x20

    .line 27
    .line 28
    sget-object v11, Lyi0;->v:Lyw2;

    .line 29
    .line 30
    sget-object v18, Loz4;->v:Loz4;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    packed-switch v1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, Lir1;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    and-int/lit8 v4, v1, 0x3

    .line 51
    .line 52
    if-eq v4, v2, :cond_0

    .line 53
    .line 54
    move v2, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v2, v12

    .line 57
    :goto_0
    and-int/2addr v1, v3

    .line 58
    invoke-virtual {v0, v1, v2}, Lir1;->O(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    sget-object v1, Lut5;->e:Ln02;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    :goto_1
    move-object/from16 v23, v1

    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_1
    new-instance v19, Lm02;

    .line 73
    .line 74
    const/16 v27, 0x0

    .line 75
    .line 76
    const/16 v29, 0x60

    .line 77
    .line 78
    const-string v20, "Filled.Search"

    .line 79
    .line 80
    const/high16 v21, 0x41c00000    # 24.0f

    .line 81
    .line 82
    const/high16 v22, 0x41c00000    # 24.0f

    .line 83
    .line 84
    const/high16 v23, 0x41c00000    # 24.0f

    .line 85
    .line 86
    const/high16 v24, 0x41c00000    # 24.0f

    .line 87
    .line 88
    const-wide/16 v25, 0x0

    .line 89
    .line 90
    const/16 v28, 0x0

    .line 91
    .line 92
    invoke-direct/range {v19 .. v29}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v1, v19

    .line 96
    .line 97
    sget v2, Le25;->v:I

    .line 98
    .line 99
    new-instance v2, Lzd4;

    .line 100
    .line 101
    sget-wide v4, Lud0;->e:J

    .line 102
    .line 103
    invoke-direct {v2, v4, v5}, Lzd4;-><init>(J)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Ldw1;

    .line 107
    .line 108
    invoke-direct {v4, v3}, Ldw1;-><init>(I)V

    .line 109
    .line 110
    .line 111
    const/high16 v3, 0x41780000    # 15.5f

    .line 112
    .line 113
    invoke-virtual {v4, v3, v8}, Ldw1;->a(FF)V

    .line 114
    .line 115
    .line 116
    const v3, -0x40b5c28f    # -0.79f

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v3}, Ldw1;->n(F)V

    .line 120
    .line 121
    .line 122
    const v3, -0x4170a3d7    # -0.28f

    .line 123
    .line 124
    .line 125
    const v5, -0x4175c28f    # -0.27f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v3, v5}, Ldw1;->r(FF)V

    .line 129
    .line 130
    .line 131
    const/high16 v24, 0x41800000    # 16.0f

    .line 132
    .line 133
    const/high16 v25, 0x41180000    # 9.5f

    .line 134
    .line 135
    const v20, 0x41768f5c    # 15.41f

    .line 136
    .line 137
    .line 138
    const v21, 0x414970a4    # 12.59f

    .line 139
    .line 140
    .line 141
    const/high16 v22, 0x41800000    # 16.0f

    .line 142
    .line 143
    const v23, 0x4131c28f    # 11.11f

    .line 144
    .line 145
    .line 146
    move-object/from16 v19, v4

    .line 147
    .line 148
    invoke-virtual/range {v19 .. v25}, Ldw1;->m(FFFFFF)V

    .line 149
    .line 150
    .line 151
    const/high16 v24, 0x41180000    # 9.5f

    .line 152
    .line 153
    const/high16 v25, 0x40400000    # 3.0f

    .line 154
    .line 155
    const/high16 v20, 0x41800000    # 16.0f

    .line 156
    .line 157
    const v21, 0x40bd1eb8    # 5.91f

    .line 158
    .line 159
    .line 160
    const v22, 0x415170a4    # 13.09f

    .line 161
    .line 162
    .line 163
    const/high16 v23, 0x40400000    # 3.0f

    .line 164
    .line 165
    invoke-virtual/range {v19 .. v25}, Ldw1;->m(FFFFFF)V

    .line 166
    .line 167
    .line 168
    move-object/from16 v3, v19

    .line 169
    .line 170
    const/high16 v4, 0x40400000    # 3.0f

    .line 171
    .line 172
    const v5, 0x40bd1eb8    # 5.91f

    .line 173
    .line 174
    .line 175
    const/high16 v6, 0x41180000    # 9.5f

    .line 176
    .line 177
    invoke-virtual {v3, v4, v5, v4, v6}, Ldw1;->h(FFFF)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v5, v10, v6, v10}, Ldw1;->h(FFFF)V

    .line 181
    .line 182
    .line 183
    const v24, 0x40875c29    # 4.23f

    .line 184
    .line 185
    .line 186
    const v25, -0x40370a3d    # -1.57f

    .line 187
    .line 188
    .line 189
    const v20, 0x3fce147b    # 1.61f

    .line 190
    .line 191
    .line 192
    const/16 v21, 0x0

    .line 193
    .line 194
    const v22, 0x4045c28f    # 3.09f

    .line 195
    .line 196
    .line 197
    const v23, -0x40e8f5c3    # -0.59f

    .line 198
    .line 199
    .line 200
    invoke-virtual/range {v19 .. v25}, Ldw1;->w(FFFFFF)V

    .line 201
    .line 202
    .line 203
    const v4, 0x3e8a3d71    # 0.27f

    .line 204
    .line 205
    .line 206
    const v5, 0x3e8f5c29    # 0.28f

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4, v5}, Ldw1;->r(FF)V

    .line 210
    .line 211
    .line 212
    const v4, 0x3f4a3d71    # 0.79f

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Ldw1;->k(F)V

    .line 216
    .line 217
    .line 218
    const v4, 0x409fae14    # 4.99f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v9, v4}, Ldw1;->r(FF)V

    .line 222
    .line 223
    .line 224
    const v4, 0x41a3eb85    # 20.49f

    .line 225
    .line 226
    .line 227
    invoke-virtual {v3, v4, v7}, Ldw1;->t(FF)V

    .line 228
    .line 229
    .line 230
    const v4, -0x3f6051ec    # -4.99f

    .line 231
    .line 232
    .line 233
    const/high16 v5, -0x3f600000    # -5.0f

    .line 234
    .line 235
    invoke-virtual {v3, v4, v5}, Ldw1;->r(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ldw1;->e()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v6, v8}, Ldw1;->a(FF)V

    .line 242
    .line 243
    .line 244
    const/high16 v24, 0x40a00000    # 5.0f

    .line 245
    .line 246
    const/high16 v25, 0x41180000    # 9.5f

    .line 247
    .line 248
    const v20, 0x40e051ec    # 7.01f

    .line 249
    .line 250
    .line 251
    const/high16 v21, 0x41600000    # 14.0f

    .line 252
    .line 253
    const/high16 v22, 0x40a00000    # 5.0f

    .line 254
    .line 255
    const v23, 0x413fd70a    # 11.99f

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {v19 .. v25}, Ldw1;->m(FFFFFF)V

    .line 259
    .line 260
    .line 261
    const v4, 0x40e051ec    # 7.01f

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v4, v9, v6, v9}, Ldw1;->h(FFFF)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v8, v4, v8, v6}, Ldw1;->h(FFFF)V

    .line 268
    .line 269
    .line 270
    const v4, 0x413fd70a    # 11.99f

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v4, v8, v6, v8}, Ldw1;->h(FFFF)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ldw1;->e()V

    .line 277
    .line 278
    .line 279
    iget-object v3, v3, Ldw1;->v:Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-static {v1, v3, v12, v2}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lm02;->e()Ln02;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    sput-object v1, Lut5;->e:Ln02;

    .line 289
    .line 290
    goto/16 :goto_1

    .line 291
    .line 292
    :goto_2
    const/16 v29, 0x30

    .line 293
    .line 294
    const/16 v30, 0xc

    .line 295
    .line 296
    const/16 v24, 0x0

    .line 297
    .line 298
    const/16 v25, 0x0

    .line 299
    .line 300
    const-wide/16 v26, 0x0

    .line 301
    .line 302
    move-object/from16 v28, v0

    .line 303
    .line 304
    invoke-static/range {v23 .. v30}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_2
    move-object/from16 v28, v0

    .line 309
    .line 310
    invoke-virtual/range {v28 .. v28}, Lir1;->R()V

    .line 311
    .line 312
    .line 313
    :goto_3
    return-object v18

    .line 314
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Ljh0;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0

    .line 319
    :pswitch_1
    invoke-direct/range {p0 .. p2}, Ljh0;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    return-object v0

    .line 324
    :pswitch_2
    invoke-direct/range {p0 .. p2}, Ljh0;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    return-object v0

    .line 329
    :pswitch_3
    move-object/from16 v6, p1

    .line 330
    .line 331
    check-cast v6, Lir1;

    .line 332
    .line 333
    move-object/from16 v0, p2

    .line 334
    .line 335
    check-cast v0, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    and-int/lit8 v1, v0, 0x3

    .line 342
    .line 343
    if-eq v1, v2, :cond_3

    .line 344
    .line 345
    move v12, v3

    .line 346
    :cond_3
    and-int/2addr v0, v3

    .line 347
    invoke-virtual {v6, v0, v12}, Lir1;->O(IZ)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_4

    .line 352
    .line 353
    invoke-static {}, Lp4;->w()Ln02;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    const/16 v7, 0x30

    .line 358
    .line 359
    const/16 v8, 0xc

    .line 360
    .line 361
    const/4 v2, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    const-wide/16 v4, 0x0

    .line 364
    .line 365
    invoke-static/range {v1 .. v8}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_4
    invoke-virtual {v6}, Lir1;->R()V

    .line 370
    .line 371
    .line 372
    :goto_4
    return-object v18

    .line 373
    :pswitch_4
    invoke-direct/range {p0 .. p2}, Ljh0;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    return-object v0

    .line 378
    :pswitch_5
    move-object/from16 v0, p1

    .line 379
    .line 380
    check-cast v0, Lir1;

    .line 381
    .line 382
    move-object/from16 v1, p2

    .line 383
    .line 384
    check-cast v1, Ljava/lang/Integer;

    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    and-int/lit8 v4, v1, 0x3

    .line 391
    .line 392
    if-eq v4, v2, :cond_5

    .line 393
    .line 394
    move v12, v3

    .line 395
    :cond_5
    and-int/2addr v1, v3

    .line 396
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_6

    .line 401
    .line 402
    const v1, 0x7f1301d4

    .line 403
    .line 404
    .line 405
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v19

    .line 409
    sget-object v1, Loy4;->v:Lsg4;

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    check-cast v1, Lmy4;

    .line 416
    .line 417
    iget-object v1, v1, Lmy4;->s:Lqr4;

    .line 418
    .line 419
    const/16 v39, 0x0

    .line 420
    .line 421
    const v40, 0x1fffe

    .line 422
    .line 423
    .line 424
    const/16 v20, 0x0

    .line 425
    .line 426
    const-wide/16 v21, 0x0

    .line 427
    .line 428
    const-wide/16 v23, 0x0

    .line 429
    .line 430
    const/16 v25, 0x0

    .line 431
    .line 432
    const-wide/16 v26, 0x0

    .line 433
    .line 434
    const/16 v28, 0x0

    .line 435
    .line 436
    const-wide/16 v29, 0x0

    .line 437
    .line 438
    const/16 v31, 0x0

    .line 439
    .line 440
    const/16 v32, 0x0

    .line 441
    .line 442
    const/16 v33, 0x0

    .line 443
    .line 444
    const/16 v34, 0x0

    .line 445
    .line 446
    const/16 v35, 0x0

    .line 447
    .line 448
    const/16 v38, 0x0

    .line 449
    .line 450
    move-object/from16 v37, v0

    .line 451
    .line 452
    move-object/from16 v36, v1

    .line 453
    .line 454
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_6
    move-object/from16 v37, v0

    .line 459
    .line 460
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 461
    .line 462
    .line 463
    :goto_5
    return-object v18

    .line 464
    :pswitch_6
    move-object/from16 v0, p1

    .line 465
    .line 466
    check-cast v0, Lir1;

    .line 467
    .line 468
    move-object/from16 v1, p2

    .line 469
    .line 470
    check-cast v1, Ljava/lang/Integer;

    .line 471
    .line 472
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    and-int/lit8 v4, v1, 0x3

    .line 477
    .line 478
    if-eq v4, v2, :cond_7

    .line 479
    .line 480
    move v2, v3

    .line 481
    goto :goto_6

    .line 482
    :cond_7
    move v2, v12

    .line 483
    :goto_6
    and-int/2addr v1, v3

    .line 484
    invoke-virtual {v0, v1, v2}, Lir1;->O(IZ)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-eqz v1, :cond_9

    .line 489
    .line 490
    sget-object v1, Lgw5;->w:Ln02;

    .line 491
    .line 492
    if-eqz v1, :cond_8

    .line 493
    .line 494
    goto/16 :goto_7

    .line 495
    .line 496
    :cond_8
    new-instance v19, Lm02;

    .line 497
    .line 498
    const/16 v27, 0x0

    .line 499
    .line 500
    const/16 v29, 0x60

    .line 501
    .line 502
    const-string v20, "Outlined.StarOutline"

    .line 503
    .line 504
    const/high16 v21, 0x41c00000    # 24.0f

    .line 505
    .line 506
    const/high16 v22, 0x41c00000    # 24.0f

    .line 507
    .line 508
    const/high16 v23, 0x41c00000    # 24.0f

    .line 509
    .line 510
    const/high16 v24, 0x41c00000    # 24.0f

    .line 511
    .line 512
    const-wide/16 v25, 0x0

    .line 513
    .line 514
    const/16 v28, 0x0

    .line 515
    .line 516
    invoke-direct/range {v19 .. v29}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 517
    .line 518
    .line 519
    move-object/from16 v1, v19

    .line 520
    .line 521
    sget v2, Le25;->v:I

    .line 522
    .line 523
    new-instance v2, Lzd4;

    .line 524
    .line 525
    sget-wide v7, Lud0;->e:J

    .line 526
    .line 527
    invoke-direct {v2, v7, v8}, Lzd4;-><init>(J)V

    .line 528
    .line 529
    .line 530
    new-instance v4, Ldw1;

    .line 531
    .line 532
    invoke-direct {v4, v3}, Ldw1;-><init>(I)V

    .line 533
    .line 534
    .line 535
    const v3, 0x4113d70a    # 9.24f

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4, v13, v3}, Ldw1;->a(FF)V

    .line 539
    .line 540
    .line 541
    const v7, -0x3f19eb85    # -7.19f

    .line 542
    .line 543
    .line 544
    const v8, -0x40e147ae    # -0.62f

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v7, v8}, Ldw1;->r(FF)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v15, v14}, Ldw1;->t(FF)V

    .line 551
    .line 552
    .line 553
    const v7, 0x41130a3d    # 9.19f

    .line 554
    .line 555
    .line 556
    const v8, 0x410a147b    # 8.63f

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v7, v8}, Ldw1;->t(FF)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v4, v14, v3}, Ldw1;->t(FF)V

    .line 563
    .line 564
    .line 565
    const v7, 0x40aeb852    # 5.46f

    .line 566
    .line 567
    .line 568
    const v8, 0x40975c29    # 4.73f

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4, v7, v8}, Ldw1;->r(FF)V

    .line 572
    .line 573
    .line 574
    const v7, 0x40ba3d71    # 5.82f

    .line 575
    .line 576
    .line 577
    const/high16 v8, 0x41a80000    # 21.0f

    .line 578
    .line 579
    invoke-virtual {v4, v7, v8}, Ldw1;->t(FF)V

    .line 580
    .line 581
    .line 582
    const v7, 0x418a28f6    # 17.27f

    .line 583
    .line 584
    .line 585
    invoke-virtual {v4, v15, v7}, Ldw1;->t(FF)V

    .line 586
    .line 587
    .line 588
    const v7, 0x419170a4    # 18.18f

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4, v7, v8}, Ldw1;->t(FF)V

    .line 592
    .line 593
    .line 594
    const v7, -0x402f5c29    # -1.63f

    .line 595
    .line 596
    .line 597
    const v8, -0x3f1f0a3d    # -7.03f

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v7, v8}, Ldw1;->r(FF)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v13, v3}, Ldw1;->t(FF)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v4}, Ldw1;->e()V

    .line 607
    .line 608
    .line 609
    const v3, 0x41766666    # 15.4f

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4, v15, v3}, Ldw1;->a(FF)V

    .line 613
    .line 614
    .line 615
    const v7, 0x401147ae    # 2.27f

    .line 616
    .line 617
    .line 618
    invoke-virtual {v4, v5, v7}, Ldw1;->r(FF)V

    .line 619
    .line 620
    .line 621
    const v5, -0x3f770a3d    # -4.28f

    .line 622
    .line 623
    .line 624
    invoke-virtual {v4, v6, v5}, Ldw1;->r(FF)V

    .line 625
    .line 626
    .line 627
    const v5, -0x3fc7ae14    # -2.88f

    .line 628
    .line 629
    .line 630
    const v7, -0x3fab851f    # -3.32f

    .line 631
    .line 632
    .line 633
    invoke-virtual {v4, v7, v5}, Ldw1;->r(FF)V

    .line 634
    .line 635
    .line 636
    const v5, -0x413d70a4    # -0.38f

    .line 637
    .line 638
    .line 639
    const v8, 0x408c28f6    # 4.38f

    .line 640
    .line 641
    .line 642
    invoke-virtual {v4, v8, v5}, Ldw1;->r(FF)V

    .line 643
    .line 644
    .line 645
    const v5, 0x40c33333    # 6.1f

    .line 646
    .line 647
    .line 648
    invoke-virtual {v4, v15, v5}, Ldw1;->t(FF)V

    .line 649
    .line 650
    .line 651
    const v5, 0x3fdae148    # 1.71f

    .line 652
    .line 653
    .line 654
    const v9, 0x408147ae    # 4.04f

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v5, v9}, Ldw1;->r(FF)V

    .line 658
    .line 659
    .line 660
    const v5, 0x3ec28f5c    # 0.38f

    .line 661
    .line 662
    .line 663
    invoke-virtual {v4, v8, v5}, Ldw1;->r(FF)V

    .line 664
    .line 665
    .line 666
    const v5, 0x403851ec    # 2.88f

    .line 667
    .line 668
    .line 669
    invoke-virtual {v4, v7, v5}, Ldw1;->r(FF)V

    .line 670
    .line 671
    .line 672
    const v5, 0x4088f5c3    # 4.28f

    .line 673
    .line 674
    .line 675
    invoke-virtual {v4, v6, v5}, Ldw1;->r(FF)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v4, v15, v3}, Ldw1;->t(FF)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v4}, Ldw1;->e()V

    .line 682
    .line 683
    .line 684
    iget-object v3, v4, Ldw1;->v:Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-static {v1, v3, v12, v2}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v1}, Lm02;->e()Ln02;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    sput-object v1, Lgw5;->w:Ln02;

    .line 694
    .line 695
    :goto_7
    const/16 v6, 0x30

    .line 696
    .line 697
    const/16 v7, 0xc

    .line 698
    .line 699
    move-object v5, v0

    .line 700
    move-object v0, v1

    .line 701
    const/4 v1, 0x0

    .line 702
    const/4 v2, 0x0

    .line 703
    const-wide/16 v3, 0x0

    .line 704
    .line 705
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 706
    .line 707
    .line 708
    goto :goto_8

    .line 709
    :cond_9
    move-object v5, v0

    .line 710
    invoke-virtual {v5}, Lir1;->R()V

    .line 711
    .line 712
    .line 713
    :goto_8
    return-object v18

    .line 714
    :pswitch_7
    move-object/from16 v0, p1

    .line 715
    .line 716
    check-cast v0, Lir1;

    .line 717
    .line 718
    move-object/from16 v1, p2

    .line 719
    .line 720
    check-cast v1, Ljava/lang/Integer;

    .line 721
    .line 722
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    and-int/lit8 v4, v1, 0x3

    .line 727
    .line 728
    if-eq v4, v2, :cond_a

    .line 729
    .line 730
    move v12, v3

    .line 731
    :cond_a
    and-int/2addr v1, v3

    .line 732
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    if-eqz v1, :cond_b

    .line 737
    .line 738
    const v1, 0x7f1301e0

    .line 739
    .line 740
    .line 741
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v19

    .line 745
    sget-object v1, Loy4;->v:Lsg4;

    .line 746
    .line 747
    invoke-virtual {v0, v1}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    check-cast v1, Lmy4;

    .line 752
    .line 753
    iget-object v1, v1, Lmy4;->s:Lqr4;

    .line 754
    .line 755
    const/16 v39, 0x0

    .line 756
    .line 757
    const v40, 0x1fffe

    .line 758
    .line 759
    .line 760
    const/16 v20, 0x0

    .line 761
    .line 762
    const-wide/16 v21, 0x0

    .line 763
    .line 764
    const-wide/16 v23, 0x0

    .line 765
    .line 766
    const/16 v25, 0x0

    .line 767
    .line 768
    const-wide/16 v26, 0x0

    .line 769
    .line 770
    const/16 v28, 0x0

    .line 771
    .line 772
    const-wide/16 v29, 0x0

    .line 773
    .line 774
    const/16 v31, 0x0

    .line 775
    .line 776
    const/16 v32, 0x0

    .line 777
    .line 778
    const/16 v33, 0x0

    .line 779
    .line 780
    const/16 v34, 0x0

    .line 781
    .line 782
    const/16 v35, 0x0

    .line 783
    .line 784
    const/16 v38, 0x0

    .line 785
    .line 786
    move-object/from16 v37, v0

    .line 787
    .line 788
    move-object/from16 v36, v1

    .line 789
    .line 790
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 791
    .line 792
    .line 793
    goto :goto_9

    .line 794
    :cond_b
    move-object/from16 v37, v0

    .line 795
    .line 796
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 797
    .line 798
    .line 799
    :goto_9
    return-object v18

    .line 800
    :pswitch_8
    move-object/from16 v5, p1

    .line 801
    .line 802
    check-cast v5, Lir1;

    .line 803
    .line 804
    move-object/from16 v0, p2

    .line 805
    .line 806
    check-cast v0, Ljava/lang/Integer;

    .line 807
    .line 808
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    and-int/lit8 v1, v0, 0x3

    .line 813
    .line 814
    if-eq v1, v2, :cond_c

    .line 815
    .line 816
    move v1, v3

    .line 817
    goto :goto_a

    .line 818
    :cond_c
    move v1, v12

    .line 819
    :goto_a
    and-int/2addr v0, v3

    .line 820
    invoke-virtual {v5, v0, v1}, Lir1;->O(IZ)Z

    .line 821
    .line 822
    .line 823
    move-result v0

    .line 824
    if-eqz v0, :cond_e

    .line 825
    .line 826
    sget-object v0, Lfw5;->e:Ln02;

    .line 827
    .line 828
    if-eqz v0, :cond_d

    .line 829
    .line 830
    goto/16 :goto_b

    .line 831
    .line 832
    :cond_d
    new-instance v22, Lm02;

    .line 833
    .line 834
    const/16 v30, 0x0

    .line 835
    .line 836
    const/16 v32, 0x60

    .line 837
    .line 838
    const-string v23, "Outlined.Feedback"

    .line 839
    .line 840
    const/high16 v24, 0x41c00000    # 24.0f

    .line 841
    .line 842
    const/high16 v25, 0x41c00000    # 24.0f

    .line 843
    .line 844
    const/high16 v26, 0x41c00000    # 24.0f

    .line 845
    .line 846
    const/high16 v27, 0x41c00000    # 24.0f

    .line 847
    .line 848
    const-wide/16 v28, 0x0

    .line 849
    .line 850
    const/16 v31, 0x0

    .line 851
    .line 852
    invoke-direct/range {v22 .. v32}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v0, v22

    .line 856
    .line 857
    sget v1, Le25;->v:I

    .line 858
    .line 859
    new-instance v1, Lzd4;

    .line 860
    .line 861
    sget-wide v6, Lud0;->e:J

    .line 862
    .line 863
    invoke-direct {v1, v6, v7}, Lzd4;-><init>(J)V

    .line 864
    .line 865
    .line 866
    new-instance v2, Ldw1;

    .line 867
    .line 868
    invoke-direct {v2, v3}, Ldw1;-><init>(I)V

    .line 869
    .line 870
    .line 871
    const/high16 v3, 0x41a00000    # 20.0f

    .line 872
    .line 873
    invoke-virtual {v2, v3, v14}, Ldw1;->a(FF)V

    .line 874
    .line 875
    .line 876
    const/high16 v6, 0x40800000    # 4.0f

    .line 877
    .line 878
    invoke-virtual {v2, v6, v14}, Ldw1;->t(FF)V

    .line 879
    .line 880
    .line 881
    const v27, -0x400147ae    # -1.99f

    .line 882
    .line 883
    .line 884
    const/high16 v28, 0x40000000    # 2.0f

    .line 885
    .line 886
    const v23, -0x40733333    # -1.1f

    .line 887
    .line 888
    .line 889
    const/16 v24, 0x0

    .line 890
    .line 891
    const v25, -0x400147ae    # -1.99f

    .line 892
    .line 893
    .line 894
    const v26, 0x3f666666    # 0.9f

    .line 895
    .line 896
    .line 897
    move-object/from16 v22, v2

    .line 898
    .line 899
    invoke-virtual/range {v22 .. v28}, Ldw1;->w(FFFFFF)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v2, v14, v13}, Ldw1;->t(FF)V

    .line 903
    .line 904
    .line 905
    const/high16 v7, -0x3f800000    # -4.0f

    .line 906
    .line 907
    invoke-virtual {v2, v6, v7}, Ldw1;->r(FF)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v2, v8}, Ldw1;->n(F)V

    .line 911
    .line 912
    .line 913
    const/high16 v27, 0x40000000    # 2.0f

    .line 914
    .line 915
    const/high16 v28, -0x40000000    # -2.0f

    .line 916
    .line 917
    const v23, 0x3f8ccccd    # 1.1f

    .line 918
    .line 919
    .line 920
    const/high16 v25, 0x40000000    # 2.0f

    .line 921
    .line 922
    const v26, -0x4099999a    # -0.9f

    .line 923
    .line 924
    .line 925
    invoke-virtual/range {v22 .. v28}, Ldw1;->w(FFFFFF)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v2, v13, v6}, Ldw1;->t(FF)V

    .line 929
    .line 930
    .line 931
    const/high16 v27, -0x40000000    # -2.0f

    .line 932
    .line 933
    const/16 v23, 0x0

    .line 934
    .line 935
    const v24, -0x40733333    # -1.1f

    .line 936
    .line 937
    .line 938
    const v25, -0x4099999a    # -0.9f

    .line 939
    .line 940
    .line 941
    const/high16 v26, -0x40000000    # -2.0f

    .line 942
    .line 943
    invoke-virtual/range {v22 .. v28}, Ldw1;->w(FFFFFF)V

    .line 944
    .line 945
    .line 946
    invoke-virtual {v2}, Ldw1;->e()V

    .line 947
    .line 948
    .line 949
    invoke-virtual {v2, v3, v10}, Ldw1;->a(FF)V

    .line 950
    .line 951
    .line 952
    const v3, 0x40a570a4    # 5.17f

    .line 953
    .line 954
    .line 955
    invoke-virtual {v2, v3, v10}, Ldw1;->t(FF)V

    .line 956
    .line 957
    .line 958
    const v3, -0x40e8f5c3    # -0.59f

    .line 959
    .line 960
    .line 961
    const v7, 0x3f170a3d    # 0.59f

    .line 962
    .line 963
    .line 964
    invoke-virtual {v2, v3, v7}, Ldw1;->r(FF)V

    .line 965
    .line 966
    .line 967
    const v3, -0x40eb851f    # -0.58f

    .line 968
    .line 969
    .line 970
    const v7, 0x3f147ae1    # 0.58f

    .line 971
    .line 972
    .line 973
    invoke-virtual {v2, v3, v7}, Ldw1;->r(FF)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2, v6, v6}, Ldw1;->t(FF)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2, v10}, Ldw1;->n(F)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {v2, v15}, Ldw1;->k(F)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v2}, Ldw1;->e()V

    .line 986
    .line 987
    .line 988
    invoke-static {v2, v4, v15, v14, v14}, Lae4;->z(Ldw1;FFFF)V

    .line 989
    .line 990
    .line 991
    const/high16 v3, -0x40000000    # -2.0f

    .line 992
    .line 993
    invoke-virtual {v2, v3}, Ldw1;->n(F)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v2}, Ldw1;->e()V

    .line 997
    .line 998
    .line 999
    const/high16 v7, 0x40c00000    # 6.0f

    .line 1000
    .line 1001
    invoke-virtual {v2, v4, v7}, Ldw1;->a(FF)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v2, v14}, Ldw1;->n(F)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v2, v6}, Ldw1;->k(F)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v2, v3}, Ldw1;->n(F)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v2}, Ldw1;->e()V

    .line 1014
    .line 1015
    .line 1016
    iget-object v2, v2, Ldw1;->v:Ljava/util/ArrayList;

    .line 1017
    .line 1018
    invoke-static {v0, v2, v12, v1}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v0}, Lm02;->e()Ln02;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    sput-object v0, Lfw5;->e:Ln02;

    .line 1026
    .line 1027
    :goto_b
    const/16 v6, 0x30

    .line 1028
    .line 1029
    const/16 v7, 0xc

    .line 1030
    .line 1031
    const/4 v1, 0x0

    .line 1032
    const/4 v2, 0x0

    .line 1033
    const-wide/16 v3, 0x0

    .line 1034
    .line 1035
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_c

    .line 1039
    :cond_e
    invoke-virtual {v5}, Lir1;->R()V

    .line 1040
    .line 1041
    .line 1042
    :goto_c
    return-object v18

    .line 1043
    :pswitch_9
    move-object/from16 v0, p1

    .line 1044
    .line 1045
    check-cast v0, Lir1;

    .line 1046
    .line 1047
    move-object/from16 v1, p2

    .line 1048
    .line 1049
    check-cast v1, Ljava/lang/Integer;

    .line 1050
    .line 1051
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1052
    .line 1053
    .line 1054
    move-result v1

    .line 1055
    and-int/lit8 v4, v1, 0x3

    .line 1056
    .line 1057
    if-eq v4, v2, :cond_f

    .line 1058
    .line 1059
    move v12, v3

    .line 1060
    :cond_f
    and-int/2addr v1, v3

    .line 1061
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v1

    .line 1065
    if-eqz v1, :cond_10

    .line 1066
    .line 1067
    const v1, 0x7f1301cf

    .line 1068
    .line 1069
    .line 1070
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v19

    .line 1074
    sget-object v1, Loy4;->v:Lsg4;

    .line 1075
    .line 1076
    invoke-virtual {v0, v1}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v1

    .line 1080
    check-cast v1, Lmy4;

    .line 1081
    .line 1082
    iget-object v1, v1, Lmy4;->s:Lqr4;

    .line 1083
    .line 1084
    const/16 v39, 0x0

    .line 1085
    .line 1086
    const v40, 0x1fffe

    .line 1087
    .line 1088
    .line 1089
    const/16 v20, 0x0

    .line 1090
    .line 1091
    const-wide/16 v21, 0x0

    .line 1092
    .line 1093
    const-wide/16 v23, 0x0

    .line 1094
    .line 1095
    const/16 v25, 0x0

    .line 1096
    .line 1097
    const-wide/16 v26, 0x0

    .line 1098
    .line 1099
    const/16 v28, 0x0

    .line 1100
    .line 1101
    const-wide/16 v29, 0x0

    .line 1102
    .line 1103
    const/16 v31, 0x0

    .line 1104
    .line 1105
    const/16 v32, 0x0

    .line 1106
    .line 1107
    const/16 v33, 0x0

    .line 1108
    .line 1109
    const/16 v34, 0x0

    .line 1110
    .line 1111
    const/16 v35, 0x0

    .line 1112
    .line 1113
    const/16 v38, 0x0

    .line 1114
    .line 1115
    move-object/from16 v37, v0

    .line 1116
    .line 1117
    move-object/from16 v36, v1

    .line 1118
    .line 1119
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_d

    .line 1123
    :cond_10
    move-object/from16 v37, v0

    .line 1124
    .line 1125
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 1126
    .line 1127
    .line 1128
    :goto_d
    return-object v18

    .line 1129
    :pswitch_a
    move-object/from16 v0, p1

    .line 1130
    .line 1131
    check-cast v0, Lir1;

    .line 1132
    .line 1133
    move-object/from16 v1, p2

    .line 1134
    .line 1135
    check-cast v1, Ljava/lang/Integer;

    .line 1136
    .line 1137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1138
    .line 1139
    .line 1140
    move-result v1

    .line 1141
    and-int/lit8 v4, v1, 0x3

    .line 1142
    .line 1143
    if-eq v4, v2, :cond_11

    .line 1144
    .line 1145
    move v12, v3

    .line 1146
    :cond_11
    and-int/2addr v1, v3

    .line 1147
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 1148
    .line 1149
    .line 1150
    move-result v1

    .line 1151
    if-eqz v1, :cond_12

    .line 1152
    .line 1153
    const-string v1, "Device"

    .line 1154
    .line 1155
    const/4 v2, 0x6

    .line 1156
    invoke-static {v1, v0, v2}, Lwt5;->m(Ljava/lang/String;Lir1;I)V

    .line 1157
    .line 1158
    .line 1159
    goto :goto_e

    .line 1160
    :cond_12
    invoke-virtual {v0}, Lir1;->R()V

    .line 1161
    .line 1162
    .line 1163
    :goto_e
    return-object v18

    .line 1164
    :pswitch_b
    move-object/from16 v7, p1

    .line 1165
    .line 1166
    check-cast v7, Lir1;

    .line 1167
    .line 1168
    move-object/from16 v0, p2

    .line 1169
    .line 1170
    check-cast v0, Ljava/lang/Integer;

    .line 1171
    .line 1172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    and-int/lit8 v1, v0, 0x3

    .line 1177
    .line 1178
    if-eq v1, v2, :cond_13

    .line 1179
    .line 1180
    move v12, v3

    .line 1181
    :cond_13
    and-int/2addr v0, v3

    .line 1182
    invoke-virtual {v7, v0, v12}, Lir1;->O(IZ)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    if-eqz v0, :cond_16

    .line 1187
    .line 1188
    new-instance v1, La01;

    .line 1189
    .line 1190
    const/4 v5, 0x0

    .line 1191
    const/16 v6, 0x3ffc

    .line 1192
    .line 1193
    const-string v2, "MacBook Pro"

    .line 1194
    .line 1195
    const-string v3, "AA:BB:CC:DD:EE:FF"

    .line 1196
    .line 1197
    const/4 v4, 0x0

    .line 1198
    invoke-direct/range {v1 .. v6}, La01;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v7}, Lir1;->L()Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    if-ne v0, v11, :cond_14

    .line 1206
    .line 1207
    new-instance v0, Lt4;

    .line 1208
    .line 1209
    const/16 v2, 0x1d

    .line 1210
    .line 1211
    invoke-direct {v0, v2}, Lt4;-><init>(I)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v7, v0}, Lir1;->j0(Ljava/lang/Object;)V

    .line 1215
    .line 1216
    .line 1217
    goto :goto_f

    .line 1218
    :cond_14
    const/16 v2, 0x1d

    .line 1219
    .line 1220
    :goto_f
    move-object v5, v0

    .line 1221
    check-cast v5, Lmp1;

    .line 1222
    .line 1223
    invoke-virtual {v7}, Lir1;->L()Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    if-ne v0, v11, :cond_15

    .line 1228
    .line 1229
    new-instance v0, Lt4;

    .line 1230
    .line 1231
    invoke-direct {v0, v2}, Lt4;-><init>(I)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v7, v0}, Lir1;->j0(Ljava/lang/Object;)V

    .line 1235
    .line 1236
    .line 1237
    :cond_15
    move-object v6, v0

    .line 1238
    check-cast v6, Lmp1;

    .line 1239
    .line 1240
    const/16 v8, 0xdb0

    .line 1241
    .line 1242
    sget-object v4, Lkk0;->a:Lkk0;

    .line 1243
    .line 1244
    move-object v3, v1

    .line 1245
    invoke-static/range {v3 .. v8}, Lwt5;->b(La01;Lkk0;Lmp1;Lmp1;Lir1;I)V

    .line 1246
    .line 1247
    .line 1248
    goto :goto_10

    .line 1249
    :cond_16
    invoke-virtual {v7}, Lir1;->R()V

    .line 1250
    .line 1251
    .line 1252
    :goto_10
    return-object v18

    .line 1253
    :pswitch_c
    move-object/from16 v4, p1

    .line 1254
    .line 1255
    check-cast v4, Lir1;

    .line 1256
    .line 1257
    move-object/from16 v0, p2

    .line 1258
    .line 1259
    check-cast v0, Ljava/lang/Integer;

    .line 1260
    .line 1261
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1262
    .line 1263
    .line 1264
    move-result v0

    .line 1265
    and-int/lit8 v1, v0, 0x3

    .line 1266
    .line 1267
    if-eq v1, v2, :cond_17

    .line 1268
    .line 1269
    move v12, v3

    .line 1270
    :cond_17
    and-int/2addr v0, v3

    .line 1271
    invoke-virtual {v4, v0, v12}, Lir1;->O(IZ)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v0

    .line 1275
    if-eqz v0, :cond_1a

    .line 1276
    .line 1277
    new-instance v0, La01;

    .line 1278
    .line 1279
    const/4 v9, 0x0

    .line 1280
    const/16 v10, 0x3ffc

    .line 1281
    .line 1282
    const-string v6, "MacBook Pro"

    .line 1283
    .line 1284
    const-string v7, "AA:BB:CC:DD:EE:FF"

    .line 1285
    .line 1286
    const/4 v8, 0x0

    .line 1287
    move-object v5, v0

    .line 1288
    invoke-direct/range {v5 .. v10}, La01;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v4}, Lir1;->L()Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v1

    .line 1295
    if-ne v1, v11, :cond_18

    .line 1296
    .line 1297
    new-instance v1, Lt4;

    .line 1298
    .line 1299
    const/16 v2, 0x1d

    .line 1300
    .line 1301
    invoke-direct {v1, v2}, Lt4;-><init>(I)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v4, v1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_11

    .line 1308
    :cond_18
    const/16 v2, 0x1d

    .line 1309
    .line 1310
    :goto_11
    check-cast v1, Lmp1;

    .line 1311
    .line 1312
    invoke-virtual {v4}, Lir1;->L()Ljava/lang/Object;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v3

    .line 1316
    if-ne v3, v11, :cond_19

    .line 1317
    .line 1318
    new-instance v3, Lt4;

    .line 1319
    .line 1320
    invoke-direct {v3, v2}, Lt4;-><init>(I)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v4, v3}, Lir1;->j0(Ljava/lang/Object;)V

    .line 1324
    .line 1325
    .line 1326
    :cond_19
    check-cast v3, Lmp1;

    .line 1327
    .line 1328
    const/16 v5, 0xdb0

    .line 1329
    .line 1330
    move-object v2, v1

    .line 1331
    sget-object v1, Lkk0;->r:Lkk0;

    .line 1332
    .line 1333
    invoke-static/range {v0 .. v5}, Lwt5;->b(La01;Lkk0;Lmp1;Lmp1;Lir1;I)V

    .line 1334
    .line 1335
    .line 1336
    goto :goto_12

    .line 1337
    :cond_1a
    invoke-virtual {v4}, Lir1;->R()V

    .line 1338
    .line 1339
    .line 1340
    :goto_12
    return-object v18

    .line 1341
    :pswitch_d
    move-object/from16 v0, p1

    .line 1342
    .line 1343
    check-cast v0, Lir1;

    .line 1344
    .line 1345
    move-object/from16 v1, p2

    .line 1346
    .line 1347
    check-cast v1, Ljava/lang/Integer;

    .line 1348
    .line 1349
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1350
    .line 1351
    .line 1352
    move-result v1

    .line 1353
    and-int/lit8 v4, v1, 0x3

    .line 1354
    .line 1355
    if-eq v4, v2, :cond_1b

    .line 1356
    .line 1357
    move v12, v3

    .line 1358
    :cond_1b
    and-int/2addr v1, v3

    .line 1359
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 1360
    .line 1361
    .line 1362
    move-result v1

    .line 1363
    if-eqz v1, :cond_1d

    .line 1364
    .line 1365
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v1

    .line 1369
    if-ne v1, v11, :cond_1c

    .line 1370
    .line 1371
    new-instance v1, Lt4;

    .line 1372
    .line 1373
    const/16 v2, 0x1d

    .line 1374
    .line 1375
    invoke-direct {v1, v2}, Lt4;-><init>(I)V

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v0, v1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 1379
    .line 1380
    .line 1381
    :cond_1c
    check-cast v1, Lmp1;

    .line 1382
    .line 1383
    const-string v2, "Pixel"

    .line 1384
    .line 1385
    const/16 v3, 0x36

    .line 1386
    .line 1387
    invoke-static {v2, v1, v0, v3}, Lwt5;->n(Ljava/lang/String;Lmp1;Lir1;I)V

    .line 1388
    .line 1389
    .line 1390
    goto :goto_13

    .line 1391
    :cond_1d
    invoke-virtual {v0}, Lir1;->R()V

    .line 1392
    .line 1393
    .line 1394
    :goto_13
    return-object v18

    .line 1395
    :pswitch_e
    move-object/from16 v0, p1

    .line 1396
    .line 1397
    check-cast v0, Lir1;

    .line 1398
    .line 1399
    move-object/from16 v1, p2

    .line 1400
    .line 1401
    check-cast v1, Ljava/lang/Integer;

    .line 1402
    .line 1403
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1404
    .line 1405
    .line 1406
    move-result v1

    .line 1407
    and-int/lit8 v4, v1, 0x3

    .line 1408
    .line 1409
    if-eq v4, v2, :cond_1e

    .line 1410
    .line 1411
    move v12, v3

    .line 1412
    :cond_1e
    and-int/2addr v1, v3

    .line 1413
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v1

    .line 1417
    if-eqz v1, :cond_1f

    .line 1418
    .line 1419
    const-string v1, "Pixel 6"

    .line 1420
    .line 1421
    const/4 v2, 0x6

    .line 1422
    invoke-static {v1, v0, v2}, Lwt5;->m(Ljava/lang/String;Lir1;I)V

    .line 1423
    .line 1424
    .line 1425
    goto :goto_14

    .line 1426
    :cond_1f
    invoke-virtual {v0}, Lir1;->R()V

    .line 1427
    .line 1428
    .line 1429
    :goto_14
    return-object v18

    .line 1430
    :pswitch_f
    move-object/from16 v8, p1

    .line 1431
    .line 1432
    check-cast v8, Lir1;

    .line 1433
    .line 1434
    move-object/from16 v0, p2

    .line 1435
    .line 1436
    check-cast v0, Ljava/lang/Integer;

    .line 1437
    .line 1438
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1439
    .line 1440
    .line 1441
    move-result v0

    .line 1442
    and-int/lit8 v1, v0, 0x3

    .line 1443
    .line 1444
    if-eq v1, v2, :cond_20

    .line 1445
    .line 1446
    move v12, v3

    .line 1447
    :cond_20
    and-int/2addr v0, v3

    .line 1448
    invoke-virtual {v8, v0, v12}, Lir1;->O(IZ)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v0

    .line 1452
    if-eqz v0, :cond_21

    .line 1453
    .line 1454
    invoke-static {}, Lbt5;->m()Ln02;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v3

    .line 1458
    const/16 v9, 0x30

    .line 1459
    .line 1460
    const/16 v10, 0xc

    .line 1461
    .line 1462
    const/4 v4, 0x0

    .line 1463
    const/4 v5, 0x0

    .line 1464
    const-wide/16 v6, 0x0

    .line 1465
    .line 1466
    invoke-static/range {v3 .. v10}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 1467
    .line 1468
    .line 1469
    goto :goto_15

    .line 1470
    :cond_21
    invoke-virtual {v8}, Lir1;->R()V

    .line 1471
    .line 1472
    .line 1473
    :goto_15
    return-object v18

    .line 1474
    :pswitch_10
    move-object/from16 v0, p1

    .line 1475
    .line 1476
    check-cast v0, Lir1;

    .line 1477
    .line 1478
    move-object/from16 v1, p2

    .line 1479
    .line 1480
    check-cast v1, Ljava/lang/Integer;

    .line 1481
    .line 1482
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1483
    .line 1484
    .line 1485
    move-result v1

    .line 1486
    and-int/lit8 v4, v1, 0x3

    .line 1487
    .line 1488
    if-eq v4, v2, :cond_22

    .line 1489
    .line 1490
    move v12, v3

    .line 1491
    :cond_22
    and-int/2addr v1, v3

    .line 1492
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 1493
    .line 1494
    .line 1495
    move-result v1

    .line 1496
    if-eqz v1, :cond_23

    .line 1497
    .line 1498
    const v1, 0x7f130092

    .line 1499
    .line 1500
    .line 1501
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v19

    .line 1505
    const/16 v39, 0x0

    .line 1506
    .line 1507
    const v40, 0x3fffe

    .line 1508
    .line 1509
    .line 1510
    const/16 v20, 0x0

    .line 1511
    .line 1512
    const-wide/16 v21, 0x0

    .line 1513
    .line 1514
    const-wide/16 v23, 0x0

    .line 1515
    .line 1516
    const/16 v25, 0x0

    .line 1517
    .line 1518
    const-wide/16 v26, 0x0

    .line 1519
    .line 1520
    const/16 v28, 0x0

    .line 1521
    .line 1522
    const-wide/16 v29, 0x0

    .line 1523
    .line 1524
    const/16 v31, 0x0

    .line 1525
    .line 1526
    const/16 v32, 0x0

    .line 1527
    .line 1528
    const/16 v33, 0x0

    .line 1529
    .line 1530
    const/16 v34, 0x0

    .line 1531
    .line 1532
    const/16 v35, 0x0

    .line 1533
    .line 1534
    const/16 v36, 0x0

    .line 1535
    .line 1536
    const/16 v38, 0x0

    .line 1537
    .line 1538
    move-object/from16 v37, v0

    .line 1539
    .line 1540
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 1541
    .line 1542
    .line 1543
    goto :goto_16

    .line 1544
    :cond_23
    move-object/from16 v37, v0

    .line 1545
    .line 1546
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 1547
    .line 1548
    .line 1549
    :goto_16
    return-object v18

    .line 1550
    :pswitch_11
    move-object/from16 v0, p1

    .line 1551
    .line 1552
    check-cast v0, Lir1;

    .line 1553
    .line 1554
    move-object/from16 v1, p2

    .line 1555
    .line 1556
    check-cast v1, Ljava/lang/Integer;

    .line 1557
    .line 1558
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1559
    .line 1560
    .line 1561
    move-result v1

    .line 1562
    and-int/lit8 v8, v1, 0x3

    .line 1563
    .line 1564
    if-eq v8, v2, :cond_24

    .line 1565
    .line 1566
    move v2, v3

    .line 1567
    goto :goto_17

    .line 1568
    :cond_24
    move v2, v12

    .line 1569
    :goto_17
    and-int/2addr v1, v3

    .line 1570
    invoke-virtual {v0, v1, v2}, Lir1;->O(IZ)Z

    .line 1571
    .line 1572
    .line 1573
    move-result v1

    .line 1574
    if-eqz v1, :cond_29

    .line 1575
    .line 1576
    sget-object v1, Ldv2;->v:Ldv2;

    .line 1577
    .line 1578
    const/high16 v2, 0x41800000    # 16.0f

    .line 1579
    .line 1580
    invoke-static {v1, v2}, Lkx5;->s(Lgv2;F)Lgv2;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v8

    .line 1584
    sget-object v10, Lc91;->j:Lvx;

    .line 1585
    .line 1586
    sget-object v11, Lpf5;->v:Lcp5;

    .line 1587
    .line 1588
    const/16 v2, 0x30

    .line 1589
    .line 1590
    invoke-static {v11, v10, v0, v2}, Lcw3;->v(Ljp;Lvx;Lir1;I)Ldw3;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v2

    .line 1594
    iget-wide v10, v0, Lir1;->T:J

    .line 1595
    .line 1596
    ushr-long v19, v10, v16

    .line 1597
    .line 1598
    xor-long v10, v10, v19

    .line 1599
    .line 1600
    long-to-int v10, v10

    .line 1601
    invoke-virtual {v0}, Lir1;->g()Lee3;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v11

    .line 1605
    invoke-static {v0, v8}, Lcg5;->p(Lir1;Lgv2;)Lgv2;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v8

    .line 1609
    sget-object v17, Lti0;->w:Lsi0;

    .line 1610
    .line 1611
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1612
    .line 1613
    .line 1614
    sget-object v5, Lsi0;->e:Lnj0;

    .line 1615
    .line 1616
    invoke-virtual {v0}, Lir1;->c0()V

    .line 1617
    .line 1618
    .line 1619
    iget-boolean v6, v0, Lir1;->S:Z

    .line 1620
    .line 1621
    if-eqz v6, :cond_25

    .line 1622
    .line 1623
    invoke-virtual {v0, v5}, Lir1;->h(Lmp1;)V

    .line 1624
    .line 1625
    .line 1626
    goto :goto_18

    .line 1627
    :cond_25
    invoke-virtual {v0}, Lir1;->m0()V

    .line 1628
    .line 1629
    .line 1630
    :goto_18
    sget-object v6, Lsi0;->n:Lff;

    .line 1631
    .line 1632
    invoke-static {v6, v0, v2}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1633
    .line 1634
    .line 1635
    sget-object v2, Lsi0;->p:Lff;

    .line 1636
    .line 1637
    invoke-static {v2, v0, v11}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1638
    .line 1639
    .line 1640
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v10

    .line 1644
    sget-object v11, Lsi0;->t:Lff;

    .line 1645
    .line 1646
    invoke-static {v11, v0, v10}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1647
    .line 1648
    .line 1649
    sget-object v10, Lsi0;->r:Lg9;

    .line 1650
    .line 1651
    invoke-static {v10, v0}, Lgg5;->a(Lxp1;Lir1;)V

    .line 1652
    .line 1653
    .line 1654
    sget-object v13, Lsi0;->w:Lff;

    .line 1655
    .line 1656
    invoke-static {v13, v0, v8}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1657
    .line 1658
    .line 1659
    const/16 v23, 0x0

    .line 1660
    .line 1661
    const/16 v24, 0xb

    .line 1662
    .line 1663
    const/16 v20, 0x0

    .line 1664
    .line 1665
    const/16 v21, 0x0

    .line 1666
    .line 1667
    move-object/from16 v19, v1

    .line 1668
    .line 1669
    const/high16 v22, 0x41800000    # 16.0f

    .line 1670
    .line 1671
    invoke-static/range {v19 .. v24}, Lkx5;->d(Lgv2;FFFFI)Lgv2;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v1

    .line 1675
    move-object/from16 v8, v19

    .line 1676
    .line 1677
    const/high16 v4, 0x42200000    # 40.0f

    .line 1678
    .line 1679
    invoke-static {v1, v4}, Lra4;->r(Lgv2;F)Lgv2;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    sget-object v4, Liv3;->v:Lhv3;

    .line 1684
    .line 1685
    invoke-static {v1, v4}, Lfz5;->v(Lgv2;Lo74;)Lgv2;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v1

    .line 1689
    sget-object v4, Lee0;->v:Lsg4;

    .line 1690
    .line 1691
    invoke-virtual {v0, v4}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 1692
    .line 1693
    .line 1694
    move-result-object v20

    .line 1695
    move-object/from16 v7, v20

    .line 1696
    .line 1697
    check-cast v7, Lce0;

    .line 1698
    .line 1699
    iget-wide v14, v7, Lce0;->v:J

    .line 1700
    .line 1701
    sget-object v7, Ljy5;->v:Lxx1;

    .line 1702
    .line 1703
    invoke-static {v1, v14, v15, v7}, Ltf5;->v(Lgv2;JLo74;)Lgv2;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v1

    .line 1707
    sget-object v7, Lc91;->s:Lwx;

    .line 1708
    .line 1709
    invoke-static {v7, v12}, Lw10;->w(Lwx;Z)Lrr2;

    .line 1710
    .line 1711
    .line 1712
    move-result-object v7

    .line 1713
    iget-wide v14, v0, Lir1;->T:J

    .line 1714
    .line 1715
    ushr-long v28, v14, v16

    .line 1716
    .line 1717
    xor-long v14, v14, v28

    .line 1718
    .line 1719
    long-to-int v14, v14

    .line 1720
    invoke-virtual {v0}, Lir1;->g()Lee3;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v15

    .line 1724
    invoke-static {v0, v1}, Lcg5;->p(Lir1;Lgv2;)Lgv2;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v1

    .line 1728
    invoke-virtual {v0}, Lir1;->c0()V

    .line 1729
    .line 1730
    .line 1731
    iget-boolean v12, v0, Lir1;->S:Z

    .line 1732
    .line 1733
    if-eqz v12, :cond_26

    .line 1734
    .line 1735
    invoke-virtual {v0, v5}, Lir1;->h(Lmp1;)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_19

    .line 1739
    :cond_26
    invoke-virtual {v0}, Lir1;->m0()V

    .line 1740
    .line 1741
    .line 1742
    :goto_19
    invoke-static {v6, v0, v7}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1743
    .line 1744
    .line 1745
    invoke-static {v2, v0, v15}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1746
    .line 1747
    .line 1748
    invoke-static {v14, v0, v11, v0, v10}, Ljn0;->Y(ILir1;Lff;Lir1;Lg9;)V

    .line 1749
    .line 1750
    .line 1751
    invoke-static {v13, v0, v1}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 1752
    .line 1753
    .line 1754
    sget-object v1, Lsw5;->m:Ln02;

    .line 1755
    .line 1756
    if-eqz v1, :cond_27

    .line 1757
    .line 1758
    :goto_1a
    move-object/from16 v19, v1

    .line 1759
    .line 1760
    goto/16 :goto_1b

    .line 1761
    .line 1762
    :cond_27
    new-instance v29, Lm02;

    .line 1763
    .line 1764
    const/16 v37, 0x0

    .line 1765
    .line 1766
    const/16 v39, 0x60

    .line 1767
    .line 1768
    const-string v30, "Outlined.Bluetooth"

    .line 1769
    .line 1770
    const/high16 v31, 0x41c00000    # 24.0f

    .line 1771
    .line 1772
    const/high16 v32, 0x41c00000    # 24.0f

    .line 1773
    .line 1774
    const/high16 v33, 0x41c00000    # 24.0f

    .line 1775
    .line 1776
    const/high16 v34, 0x41c00000    # 24.0f

    .line 1777
    .line 1778
    const-wide/16 v35, 0x0

    .line 1779
    .line 1780
    const/16 v38, 0x0

    .line 1781
    .line 1782
    invoke-direct/range {v29 .. v39}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1783
    .line 1784
    .line 1785
    move-object/from16 v1, v29

    .line 1786
    .line 1787
    sget v7, Le25;->v:I

    .line 1788
    .line 1789
    new-instance v7, Lzd4;

    .line 1790
    .line 1791
    sget-wide v14, Lud0;->e:J

    .line 1792
    .line 1793
    invoke-direct {v7, v14, v15}, Lzd4;-><init>(J)V

    .line 1794
    .line 1795
    .line 1796
    new-instance v12, Ldw1;

    .line 1797
    .line 1798
    invoke-direct {v12, v3}, Ldw1;-><init>(I)V

    .line 1799
    .line 1800
    .line 1801
    const v14, 0x418dae14    # 17.71f

    .line 1802
    .line 1803
    .line 1804
    const v15, 0x40f6b852    # 7.71f

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v12, v14, v15}, Ldw1;->a(FF)V

    .line 1808
    .line 1809
    .line 1810
    const/high16 v14, 0x40000000    # 2.0f

    .line 1811
    .line 1812
    const/high16 v15, 0x41400000    # 12.0f

    .line 1813
    .line 1814
    invoke-virtual {v12, v15, v14}, Ldw1;->t(FF)V

    .line 1815
    .line 1816
    .line 1817
    const/high16 v14, -0x40800000    # -1.0f

    .line 1818
    .line 1819
    invoke-virtual {v12, v14}, Ldw1;->n(F)V

    .line 1820
    .line 1821
    .line 1822
    const v14, 0x40f2e148    # 7.59f

    .line 1823
    .line 1824
    .line 1825
    invoke-virtual {v12, v14}, Ldw1;->k(F)V

    .line 1826
    .line 1827
    .line 1828
    const v14, 0x40cd1eb8    # 6.41f

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v12, v14, v9}, Ldw1;->t(FF)V

    .line 1832
    .line 1833
    .line 1834
    invoke-virtual {v12, v9, v14}, Ldw1;->t(FF)V

    .line 1835
    .line 1836
    .line 1837
    const v3, 0x412970a4    # 10.59f

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {v12, v3, v15}, Ldw1;->t(FF)V

    .line 1841
    .line 1842
    .line 1843
    const v3, 0x418cb852    # 17.59f

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v12, v9, v3}, Ldw1;->t(FF)V

    .line 1847
    .line 1848
    .line 1849
    const/high16 v3, 0x41980000    # 19.0f

    .line 1850
    .line 1851
    invoke-virtual {v12, v14, v3}, Ldw1;->t(FF)V

    .line 1852
    .line 1853
    .line 1854
    const v3, 0x41668f5c    # 14.41f

    .line 1855
    .line 1856
    .line 1857
    const/high16 v9, 0x41300000    # 11.0f

    .line 1858
    .line 1859
    invoke-virtual {v12, v9, v3}, Ldw1;->t(FF)V

    .line 1860
    .line 1861
    .line 1862
    const/high16 v3, 0x41b00000    # 22.0f

    .line 1863
    .line 1864
    invoke-virtual {v12, v9, v3}, Ldw1;->t(FF)V

    .line 1865
    .line 1866
    .line 1867
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1868
    .line 1869
    invoke-virtual {v12, v3}, Ldw1;->n(F)V

    .line 1870
    .line 1871
    .line 1872
    const v3, 0x40b6b852    # 5.71f

    .line 1873
    .line 1874
    .line 1875
    const v9, -0x3f4947ae    # -5.71f

    .line 1876
    .line 1877
    .line 1878
    invoke-virtual {v12, v3, v9}, Ldw1;->r(FF)V

    .line 1879
    .line 1880
    .line 1881
    const v3, -0x3f766666    # -4.3f

    .line 1882
    .line 1883
    .line 1884
    const v9, -0x3f76b852    # -4.29f

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v12, v3, v9}, Ldw1;->r(FF)V

    .line 1888
    .line 1889
    .line 1890
    const v3, 0x4089999a    # 4.3f

    .line 1891
    .line 1892
    .line 1893
    invoke-virtual {v12, v3, v9}, Ldw1;->r(FF)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v12}, Ldw1;->e()V

    .line 1897
    .line 1898
    .line 1899
    const/high16 v3, 0x41500000    # 13.0f

    .line 1900
    .line 1901
    const v9, 0x40ba8f5c    # 5.83f

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v12, v3, v9}, Ldw1;->a(FF)V

    .line 1905
    .line 1906
    .line 1907
    const v14, 0x3ff0a3d7    # 1.88f

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v12, v14, v14}, Ldw1;->r(FF)V

    .line 1911
    .line 1912
    .line 1913
    const v15, 0x411970a4    # 9.59f

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v12, v3, v15}, Ldw1;->t(FF)V

    .line 1917
    .line 1918
    .line 1919
    invoke-virtual {v12, v3, v9}, Ldw1;->t(FF)V

    .line 1920
    .line 1921
    .line 1922
    invoke-virtual {v12}, Ldw1;->e()V

    .line 1923
    .line 1924
    .line 1925
    const v9, 0x416e147b    # 14.88f

    .line 1926
    .line 1927
    .line 1928
    const v15, 0x418251ec    # 16.29f

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {v12, v9, v15}, Ldw1;->a(FF)V

    .line 1932
    .line 1933
    .line 1934
    const v9, 0x41915c29    # 18.17f

    .line 1935
    .line 1936
    .line 1937
    invoke-virtual {v12, v3, v9}, Ldw1;->t(FF)V

    .line 1938
    .line 1939
    .line 1940
    const v3, -0x3f8f5c29    # -3.76f

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v12, v3}, Ldw1;->k(F)V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {v12, v14, v14}, Ldw1;->r(FF)V

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v12}, Ldw1;->e()V

    .line 1950
    .line 1951
    .line 1952
    iget-object v3, v12, Ldw1;->v:Ljava/util/ArrayList;

    .line 1953
    .line 1954
    const/4 v9, 0x0

    .line 1955
    invoke-static {v1, v3, v9, v7}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v1}, Lm02;->e()Ln02;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v1

    .line 1962
    sput-object v1, Lsw5;->m:Ln02;

    .line 1963
    .line 1964
    goto/16 :goto_1a

    .line 1965
    .line 1966
    :goto_1b
    invoke-virtual {v0, v4}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v1

    .line 1970
    check-cast v1, Lce0;

    .line 1971
    .line 1972
    iget-wide v3, v1, Lce0;->e:J

    .line 1973
    .line 1974
    const/16 v25, 0x30

    .line 1975
    .line 1976
    const/16 v26, 0x4

    .line 1977
    .line 1978
    const/16 v20, 0x0

    .line 1979
    .line 1980
    const/16 v21, 0x0

    .line 1981
    .line 1982
    move-object/from16 v24, v0

    .line 1983
    .line 1984
    move-wide/from16 v22, v3

    .line 1985
    .line 1986
    invoke-static/range {v19 .. v26}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 1987
    .line 1988
    .line 1989
    const/4 v1, 0x1

    .line 1990
    invoke-virtual {v0, v1}, Lir1;->y(Z)V

    .line 1991
    .line 1992
    .line 1993
    sget-object v1, Lpf5;->m:Lgz5;

    .line 1994
    .line 1995
    sget-object v3, Lc91;->z:Lux;

    .line 1996
    .line 1997
    const/4 v9, 0x0

    .line 1998
    invoke-static {v1, v3, v0, v9}, Lne0;->v(Llp;Lux;Lir1;I)Lpe0;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v1

    .line 2002
    iget-wide v3, v0, Lir1;->T:J

    .line 2003
    .line 2004
    ushr-long v14, v3, v16

    .line 2005
    .line 2006
    xor-long/2addr v3, v14

    .line 2007
    long-to-int v3, v3

    .line 2008
    invoke-virtual {v0}, Lir1;->g()Lee3;

    .line 2009
    .line 2010
    .line 2011
    move-result-object v4

    .line 2012
    invoke-static {v0, v8}, Lcg5;->p(Lir1;Lgv2;)Lgv2;

    .line 2013
    .line 2014
    .line 2015
    move-result-object v7

    .line 2016
    invoke-virtual {v0}, Lir1;->c0()V

    .line 2017
    .line 2018
    .line 2019
    iget-boolean v9, v0, Lir1;->S:Z

    .line 2020
    .line 2021
    if-eqz v9, :cond_28

    .line 2022
    .line 2023
    invoke-virtual {v0, v5}, Lir1;->h(Lmp1;)V

    .line 2024
    .line 2025
    .line 2026
    goto :goto_1c

    .line 2027
    :cond_28
    invoke-virtual {v0}, Lir1;->m0()V

    .line 2028
    .line 2029
    .line 2030
    :goto_1c
    invoke-static {v6, v0, v1}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2031
    .line 2032
    .line 2033
    invoke-static {v2, v0, v4}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2034
    .line 2035
    .line 2036
    invoke-static {v3, v0, v11, v0, v10}, Ljn0;->Y(ILir1;Lff;Lir1;Lg9;)V

    .line 2037
    .line 2038
    .line 2039
    invoke-static {v13, v0, v7}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2040
    .line 2041
    .line 2042
    const v1, 0x7f130093

    .line 2043
    .line 2044
    .line 2045
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v38

    .line 2049
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2050
    .line 2051
    invoke-static {v8, v3}, Lra4;->m(Lgv2;F)Lgv2;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v39

    .line 2055
    sget-object v1, Loy4;->v:Lsg4;

    .line 2056
    .line 2057
    invoke-virtual {v0, v1}, Lir1;->c(Lwm3;)Ljava/lang/Object;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v1

    .line 2061
    check-cast v1, Lmy4;

    .line 2062
    .line 2063
    iget-object v1, v1, Lmy4;->c:Lqr4;

    .line 2064
    .line 2065
    const/16 v58, 0x0

    .line 2066
    .line 2067
    const v59, 0x1fffc

    .line 2068
    .line 2069
    .line 2070
    const-wide/16 v40, 0x0

    .line 2071
    .line 2072
    const-wide/16 v42, 0x0

    .line 2073
    .line 2074
    const/16 v44, 0x0

    .line 2075
    .line 2076
    const-wide/16 v45, 0x0

    .line 2077
    .line 2078
    const/16 v47, 0x0

    .line 2079
    .line 2080
    const-wide/16 v48, 0x0

    .line 2081
    .line 2082
    const/16 v50, 0x0

    .line 2083
    .line 2084
    const/16 v51, 0x0

    .line 2085
    .line 2086
    const/16 v52, 0x0

    .line 2087
    .line 2088
    const/16 v53, 0x0

    .line 2089
    .line 2090
    const/16 v54, 0x0

    .line 2091
    .line 2092
    const/16 v57, 0x30

    .line 2093
    .line 2094
    move-object/from16 v56, v0

    .line 2095
    .line 2096
    move-object/from16 v55, v1

    .line 2097
    .line 2098
    invoke-static/range {v38 .. v59}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 2099
    .line 2100
    .line 2101
    const/4 v1, 0x1

    .line 2102
    invoke-virtual {v0, v1}, Lir1;->y(Z)V

    .line 2103
    .line 2104
    .line 2105
    invoke-virtual {v0, v1}, Lir1;->y(Z)V

    .line 2106
    .line 2107
    .line 2108
    goto :goto_1d

    .line 2109
    :cond_29
    invoke-virtual {v0}, Lir1;->R()V

    .line 2110
    .line 2111
    .line 2112
    :goto_1d
    return-object v18

    .line 2113
    :pswitch_12
    move-object/from16 v10, p1

    .line 2114
    .line 2115
    check-cast v10, Lir1;

    .line 2116
    .line 2117
    move-object/from16 v0, p2

    .line 2118
    .line 2119
    check-cast v0, Ljava/lang/Integer;

    .line 2120
    .line 2121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2122
    .line 2123
    .line 2124
    move-result v0

    .line 2125
    and-int/lit8 v1, v0, 0x3

    .line 2126
    .line 2127
    if-eq v1, v2, :cond_2a

    .line 2128
    .line 2129
    const/4 v1, 0x1

    .line 2130
    :goto_1e
    const/16 v29, 0x1

    .line 2131
    .line 2132
    goto :goto_1f

    .line 2133
    :cond_2a
    const/4 v1, 0x0

    .line 2134
    goto :goto_1e

    .line 2135
    :goto_1f
    and-int/lit8 v0, v0, 0x1

    .line 2136
    .line 2137
    invoke-virtual {v10, v0, v1}, Lir1;->O(IZ)Z

    .line 2138
    .line 2139
    .line 2140
    move-result v0

    .line 2141
    if-eqz v0, :cond_2c

    .line 2142
    .line 2143
    sget-object v0, Lc91;->s:Lwx;

    .line 2144
    .line 2145
    const/4 v9, 0x0

    .line 2146
    invoke-static {v0, v9}, Lw10;->w(Lwx;Z)Lrr2;

    .line 2147
    .line 2148
    .line 2149
    move-result-object v0

    .line 2150
    iget-wide v1, v10, Lir1;->T:J

    .line 2151
    .line 2152
    ushr-long v3, v1, v16

    .line 2153
    .line 2154
    xor-long/2addr v1, v3

    .line 2155
    long-to-int v1, v1

    .line 2156
    invoke-virtual {v10}, Lir1;->g()Lee3;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    sget-object v3, Ldv2;->v:Ldv2;

    .line 2161
    .line 2162
    invoke-static {v10, v3}, Lcg5;->p(Lir1;Lgv2;)Lgv2;

    .line 2163
    .line 2164
    .line 2165
    move-result-object v3

    .line 2166
    sget-object v4, Lti0;->w:Lsi0;

    .line 2167
    .line 2168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2169
    .line 2170
    .line 2171
    sget-object v4, Lsi0;->e:Lnj0;

    .line 2172
    .line 2173
    invoke-virtual {v10}, Lir1;->c0()V

    .line 2174
    .line 2175
    .line 2176
    iget-boolean v5, v10, Lir1;->S:Z

    .line 2177
    .line 2178
    if-eqz v5, :cond_2b

    .line 2179
    .line 2180
    invoke-virtual {v10, v4}, Lir1;->h(Lmp1;)V

    .line 2181
    .line 2182
    .line 2183
    goto :goto_20

    .line 2184
    :cond_2b
    invoke-virtual {v10}, Lir1;->m0()V

    .line 2185
    .line 2186
    .line 2187
    :goto_20
    sget-object v4, Lsi0;->n:Lff;

    .line 2188
    .line 2189
    invoke-static {v4, v10, v0}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2190
    .line 2191
    .line 2192
    sget-object v0, Lsi0;->p:Lff;

    .line 2193
    .line 2194
    invoke-static {v0, v10, v2}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2195
    .line 2196
    .line 2197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v0

    .line 2201
    sget-object v1, Lsi0;->t:Lff;

    .line 2202
    .line 2203
    invoke-static {v1, v10, v0}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2204
    .line 2205
    .line 2206
    sget-object v0, Lsi0;->r:Lg9;

    .line 2207
    .line 2208
    invoke-static {v0, v10}, Lgg5;->a(Lxp1;Lir1;)V

    .line 2209
    .line 2210
    .line 2211
    sget-object v0, Lsi0;->w:Lff;

    .line 2212
    .line 2213
    invoke-static {v0, v10, v3}, Lgg5;->c(Lbq1;Lir1;Ljava/lang/Object;)V

    .line 2214
    .line 2215
    .line 2216
    const/4 v11, 0x0

    .line 2217
    const/16 v12, 0x3f

    .line 2218
    .line 2219
    const/4 v2, 0x0

    .line 2220
    const-wide/16 v3, 0x0

    .line 2221
    .line 2222
    const/4 v5, 0x0

    .line 2223
    const-wide/16 v6, 0x0

    .line 2224
    .line 2225
    const/4 v8, 0x0

    .line 2226
    const/4 v9, 0x0

    .line 2227
    invoke-static/range {v2 .. v12}, Lql3;->v(Lgv2;JFJIFLir1;II)V

    .line 2228
    .line 2229
    .line 2230
    const/4 v1, 0x1

    .line 2231
    invoke-virtual {v10, v1}, Lir1;->y(Z)V

    .line 2232
    .line 2233
    .line 2234
    goto :goto_21

    .line 2235
    :cond_2c
    invoke-virtual {v10}, Lir1;->R()V

    .line 2236
    .line 2237
    .line 2238
    :goto_21
    return-object v18

    .line 2239
    :pswitch_13
    move-object/from16 v7, p1

    .line 2240
    .line 2241
    check-cast v7, Lir1;

    .line 2242
    .line 2243
    move-object/from16 v0, p2

    .line 2244
    .line 2245
    check-cast v0, Ljava/lang/Integer;

    .line 2246
    .line 2247
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2248
    .line 2249
    .line 2250
    move-result v0

    .line 2251
    and-int/lit8 v1, v0, 0x3

    .line 2252
    .line 2253
    if-eq v1, v2, :cond_2d

    .line 2254
    .line 2255
    const/4 v12, 0x1

    .line 2256
    :goto_22
    const/16 v29, 0x1

    .line 2257
    .line 2258
    goto :goto_23

    .line 2259
    :cond_2d
    const/4 v12, 0x0

    .line 2260
    goto :goto_22

    .line 2261
    :goto_23
    and-int/lit8 v0, v0, 0x1

    .line 2262
    .line 2263
    invoke-virtual {v7, v0, v12}, Lir1;->O(IZ)Z

    .line 2264
    .line 2265
    .line 2266
    move-result v0

    .line 2267
    if-eqz v0, :cond_2e

    .line 2268
    .line 2269
    invoke-static {}, Lbt5;->m()Ln02;

    .line 2270
    .line 2271
    .line 2272
    move-result-object v2

    .line 2273
    const/16 v8, 0x30

    .line 2274
    .line 2275
    const/16 v9, 0xc

    .line 2276
    .line 2277
    const/4 v3, 0x0

    .line 2278
    const/4 v4, 0x0

    .line 2279
    const-wide/16 v5, 0x0

    .line 2280
    .line 2281
    invoke-static/range {v2 .. v9}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 2282
    .line 2283
    .line 2284
    goto :goto_24

    .line 2285
    :cond_2e
    invoke-virtual {v7}, Lir1;->R()V

    .line 2286
    .line 2287
    .line 2288
    :goto_24
    return-object v18

    .line 2289
    :pswitch_14
    move-object/from16 v0, p1

    .line 2290
    .line 2291
    check-cast v0, Lir1;

    .line 2292
    .line 2293
    move-object/from16 v1, p2

    .line 2294
    .line 2295
    check-cast v1, Ljava/lang/Integer;

    .line 2296
    .line 2297
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2298
    .line 2299
    .line 2300
    move-result v1

    .line 2301
    and-int/lit8 v3, v1, 0x3

    .line 2302
    .line 2303
    if-eq v3, v2, :cond_2f

    .line 2304
    .line 2305
    const/4 v12, 0x1

    .line 2306
    :goto_25
    const/16 v29, 0x1

    .line 2307
    .line 2308
    goto :goto_26

    .line 2309
    :cond_2f
    const/4 v12, 0x0

    .line 2310
    goto :goto_25

    .line 2311
    :goto_26
    and-int/lit8 v1, v1, 0x1

    .line 2312
    .line 2313
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 2314
    .line 2315
    .line 2316
    move-result v1

    .line 2317
    if-eqz v1, :cond_30

    .line 2318
    .line 2319
    const v1, 0x7f1300db

    .line 2320
    .line 2321
    .line 2322
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v19

    .line 2326
    const/16 v39, 0x0

    .line 2327
    .line 2328
    const v40, 0x3fffe

    .line 2329
    .line 2330
    .line 2331
    const/16 v20, 0x0

    .line 2332
    .line 2333
    const-wide/16 v21, 0x0

    .line 2334
    .line 2335
    const-wide/16 v23, 0x0

    .line 2336
    .line 2337
    const/16 v25, 0x0

    .line 2338
    .line 2339
    const-wide/16 v26, 0x0

    .line 2340
    .line 2341
    const/16 v28, 0x0

    .line 2342
    .line 2343
    const-wide/16 v29, 0x0

    .line 2344
    .line 2345
    const/16 v31, 0x0

    .line 2346
    .line 2347
    const/16 v32, 0x0

    .line 2348
    .line 2349
    const/16 v33, 0x0

    .line 2350
    .line 2351
    const/16 v34, 0x0

    .line 2352
    .line 2353
    const/16 v35, 0x0

    .line 2354
    .line 2355
    const/16 v36, 0x0

    .line 2356
    .line 2357
    const/16 v38, 0x0

    .line 2358
    .line 2359
    move-object/from16 v37, v0

    .line 2360
    .line 2361
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 2362
    .line 2363
    .line 2364
    goto :goto_27

    .line 2365
    :cond_30
    move-object/from16 v37, v0

    .line 2366
    .line 2367
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 2368
    .line 2369
    .line 2370
    :goto_27
    return-object v18

    .line 2371
    :pswitch_15
    move-object/from16 v5, p1

    .line 2372
    .line 2373
    check-cast v5, Lir1;

    .line 2374
    .line 2375
    move-object/from16 v0, p2

    .line 2376
    .line 2377
    check-cast v0, Ljava/lang/Integer;

    .line 2378
    .line 2379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2380
    .line 2381
    .line 2382
    move-result v0

    .line 2383
    and-int/lit8 v1, v0, 0x3

    .line 2384
    .line 2385
    if-eq v1, v2, :cond_31

    .line 2386
    .line 2387
    const/4 v12, 0x1

    .line 2388
    :goto_28
    const/16 v29, 0x1

    .line 2389
    .line 2390
    goto :goto_29

    .line 2391
    :cond_31
    const/4 v12, 0x0

    .line 2392
    goto :goto_28

    .line 2393
    :goto_29
    and-int/lit8 v0, v0, 0x1

    .line 2394
    .line 2395
    invoke-virtual {v5, v0, v12}, Lir1;->O(IZ)Z

    .line 2396
    .line 2397
    .line 2398
    move-result v0

    .line 2399
    if-eqz v0, :cond_32

    .line 2400
    .line 2401
    invoke-static {}, Ld01;->a()Ln02;

    .line 2402
    .line 2403
    .line 2404
    move-result-object v0

    .line 2405
    const/16 v6, 0x30

    .line 2406
    .line 2407
    const/16 v7, 0xc

    .line 2408
    .line 2409
    const/4 v1, 0x0

    .line 2410
    const/4 v2, 0x0

    .line 2411
    const-wide/16 v3, 0x0

    .line 2412
    .line 2413
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 2414
    .line 2415
    .line 2416
    goto :goto_2a

    .line 2417
    :cond_32
    invoke-virtual {v5}, Lir1;->R()V

    .line 2418
    .line 2419
    .line 2420
    :goto_2a
    return-object v18

    .line 2421
    :pswitch_16
    move-object/from16 v11, p1

    .line 2422
    .line 2423
    check-cast v11, Lir1;

    .line 2424
    .line 2425
    move-object/from16 v0, p2

    .line 2426
    .line 2427
    check-cast v0, Ljava/lang/Integer;

    .line 2428
    .line 2429
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2430
    .line 2431
    .line 2432
    move-result v0

    .line 2433
    and-int/lit8 v1, v0, 0x3

    .line 2434
    .line 2435
    if-eq v1, v2, :cond_33

    .line 2436
    .line 2437
    const/4 v1, 0x1

    .line 2438
    :goto_2b
    const/16 v29, 0x1

    .line 2439
    .line 2440
    goto :goto_2c

    .line 2441
    :cond_33
    const/4 v1, 0x0

    .line 2442
    goto :goto_2b

    .line 2443
    :goto_2c
    and-int/lit8 v0, v0, 0x1

    .line 2444
    .line 2445
    invoke-virtual {v11, v0, v1}, Lir1;->O(IZ)Z

    .line 2446
    .line 2447
    .line 2448
    move-result v0

    .line 2449
    if-eqz v0, :cond_35

    .line 2450
    .line 2451
    sget-object v0, Llw5;->e:Ln02;

    .line 2452
    .line 2453
    if-eqz v0, :cond_34

    .line 2454
    .line 2455
    :goto_2d
    move-object v6, v0

    .line 2456
    goto :goto_2e

    .line 2457
    :cond_34
    new-instance v29, Lm02;

    .line 2458
    .line 2459
    const/16 v37, 0x0

    .line 2460
    .line 2461
    const/16 v39, 0x60

    .line 2462
    .line 2463
    const-string v30, "Filled.Stop"

    .line 2464
    .line 2465
    const/high16 v31, 0x41c00000    # 24.0f

    .line 2466
    .line 2467
    const/high16 v32, 0x41c00000    # 24.0f

    .line 2468
    .line 2469
    const/high16 v33, 0x41c00000    # 24.0f

    .line 2470
    .line 2471
    const/high16 v34, 0x41c00000    # 24.0f

    .line 2472
    .line 2473
    const-wide/16 v35, 0x0

    .line 2474
    .line 2475
    const/16 v38, 0x0

    .line 2476
    .line 2477
    invoke-direct/range {v29 .. v39}, Lm02;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2478
    .line 2479
    .line 2480
    move-object/from16 v0, v29

    .line 2481
    .line 2482
    sget v1, Le25;->v:I

    .line 2483
    .line 2484
    new-instance v1, Lzd4;

    .line 2485
    .line 2486
    sget-wide v2, Lud0;->e:J

    .line 2487
    .line 2488
    invoke-direct {v1, v2, v3}, Lzd4;-><init>(J)V

    .line 2489
    .line 2490
    .line 2491
    new-instance v2, Ljava/util/ArrayList;

    .line 2492
    .line 2493
    move/from16 v3, v16

    .line 2494
    .line 2495
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2496
    .line 2497
    .line 2498
    new-instance v3, Led3;

    .line 2499
    .line 2500
    const/high16 v7, 0x40c00000    # 6.0f

    .line 2501
    .line 2502
    invoke-direct {v3, v7, v7}, Led3;-><init>(FF)V

    .line 2503
    .line 2504
    .line 2505
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    .line 2507
    .line 2508
    new-instance v3, Lkd3;

    .line 2509
    .line 2510
    const/high16 v15, 0x41400000    # 12.0f

    .line 2511
    .line 2512
    invoke-direct {v3, v15}, Lkd3;-><init>(F)V

    .line 2513
    .line 2514
    .line 2515
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    .line 2517
    .line 2518
    new-instance v3, Lqd3;

    .line 2519
    .line 2520
    invoke-direct {v3, v15}, Lqd3;-><init>(F)V

    .line 2521
    .line 2522
    .line 2523
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    .line 2525
    .line 2526
    new-instance v3, Lcd3;

    .line 2527
    .line 2528
    invoke-direct {v3, v7}, Lcd3;-><init>(F)V

    .line 2529
    .line 2530
    .line 2531
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    .line 2533
    .line 2534
    sget-object v3, Lad3;->m:Lad3;

    .line 2535
    .line 2536
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    .line 2538
    .line 2539
    const/4 v9, 0x0

    .line 2540
    invoke-static {v0, v2, v9, v1}, Lm02;->v(Lm02;Ljava/util/ArrayList;ILzd4;)V

    .line 2541
    .line 2542
    .line 2543
    invoke-virtual {v0}, Lm02;->e()Ln02;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v0

    .line 2547
    sput-object v0, Llw5;->e:Ln02;

    .line 2548
    .line 2549
    goto :goto_2d

    .line 2550
    :goto_2e
    const/16 v12, 0x30

    .line 2551
    .line 2552
    const/16 v13, 0xc

    .line 2553
    .line 2554
    const/4 v7, 0x0

    .line 2555
    const/4 v8, 0x0

    .line 2556
    const-wide/16 v9, 0x0

    .line 2557
    .line 2558
    invoke-static/range {v6 .. v13}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 2559
    .line 2560
    .line 2561
    goto :goto_2f

    .line 2562
    :cond_35
    invoke-virtual {v11}, Lir1;->R()V

    .line 2563
    .line 2564
    .line 2565
    :goto_2f
    return-object v18

    .line 2566
    :pswitch_17
    move-object/from16 v0, p1

    .line 2567
    .line 2568
    check-cast v0, Lir1;

    .line 2569
    .line 2570
    move-object/from16 v1, p2

    .line 2571
    .line 2572
    check-cast v1, Ljava/lang/Integer;

    .line 2573
    .line 2574
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2575
    .line 2576
    .line 2577
    move-result v1

    .line 2578
    and-int/lit8 v3, v1, 0x3

    .line 2579
    .line 2580
    if-eq v3, v2, :cond_36

    .line 2581
    .line 2582
    const/4 v12, 0x1

    .line 2583
    :goto_30
    const/16 v29, 0x1

    .line 2584
    .line 2585
    goto :goto_31

    .line 2586
    :cond_36
    const/4 v12, 0x0

    .line 2587
    goto :goto_30

    .line 2588
    :goto_31
    and-int/lit8 v1, v1, 0x1

    .line 2589
    .line 2590
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 2591
    .line 2592
    .line 2593
    move-result v1

    .line 2594
    if-eqz v1, :cond_37

    .line 2595
    .line 2596
    const v1, 0x7f13004a

    .line 2597
    .line 2598
    .line 2599
    invoke-static {v1, v0}, Lpw5;->g(ILir1;)Ljava/lang/String;

    .line 2600
    .line 2601
    .line 2602
    move-result-object v19

    .line 2603
    const/16 v39, 0x0

    .line 2604
    .line 2605
    const v40, 0x3fffe

    .line 2606
    .line 2607
    .line 2608
    const/16 v20, 0x0

    .line 2609
    .line 2610
    const-wide/16 v21, 0x0

    .line 2611
    .line 2612
    const-wide/16 v23, 0x0

    .line 2613
    .line 2614
    const/16 v25, 0x0

    .line 2615
    .line 2616
    const-wide/16 v26, 0x0

    .line 2617
    .line 2618
    const/16 v28, 0x0

    .line 2619
    .line 2620
    const-wide/16 v29, 0x0

    .line 2621
    .line 2622
    const/16 v31, 0x0

    .line 2623
    .line 2624
    const/16 v32, 0x0

    .line 2625
    .line 2626
    const/16 v33, 0x0

    .line 2627
    .line 2628
    const/16 v34, 0x0

    .line 2629
    .line 2630
    const/16 v35, 0x0

    .line 2631
    .line 2632
    const/16 v36, 0x0

    .line 2633
    .line 2634
    const/16 v38, 0x0

    .line 2635
    .line 2636
    move-object/from16 v37, v0

    .line 2637
    .line 2638
    invoke-static/range {v19 .. v40}, Ltq4;->e(Ljava/lang/String;Lgv2;JJLan1;JLum4;JIZIILxp1;Lqr4;Lir1;III)V

    .line 2639
    .line 2640
    .line 2641
    goto :goto_32

    .line 2642
    :cond_37
    move-object/from16 v37, v0

    .line 2643
    .line 2644
    invoke-virtual/range {v37 .. v37}, Lir1;->R()V

    .line 2645
    .line 2646
    .line 2647
    :goto_32
    return-object v18

    .line 2648
    :pswitch_18
    move-object/from16 v5, p1

    .line 2649
    .line 2650
    check-cast v5, Lir1;

    .line 2651
    .line 2652
    move-object/from16 v0, p2

    .line 2653
    .line 2654
    check-cast v0, Ljava/lang/Integer;

    .line 2655
    .line 2656
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2657
    .line 2658
    .line 2659
    move-result v0

    .line 2660
    and-int/lit8 v1, v0, 0x3

    .line 2661
    .line 2662
    if-eq v1, v2, :cond_38

    .line 2663
    .line 2664
    const/4 v12, 0x1

    .line 2665
    :goto_33
    const/16 v29, 0x1

    .line 2666
    .line 2667
    goto :goto_34

    .line 2668
    :cond_38
    const/4 v12, 0x0

    .line 2669
    goto :goto_33

    .line 2670
    :goto_34
    and-int/lit8 v0, v0, 0x1

    .line 2671
    .line 2672
    invoke-virtual {v5, v0, v12}, Lir1;->O(IZ)Z

    .line 2673
    .line 2674
    .line 2675
    move-result v0

    .line 2676
    if-eqz v0, :cond_39

    .line 2677
    .line 2678
    invoke-static {}, Lbt5;->m()Ln02;

    .line 2679
    .line 2680
    .line 2681
    move-result-object v0

    .line 2682
    const/16 v6, 0x30

    .line 2683
    .line 2684
    const/16 v7, 0xc

    .line 2685
    .line 2686
    const/4 v1, 0x0

    .line 2687
    const/4 v2, 0x0

    .line 2688
    const-wide/16 v3, 0x0

    .line 2689
    .line 2690
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 2691
    .line 2692
    .line 2693
    goto :goto_35

    .line 2694
    :cond_39
    invoke-virtual {v5}, Lir1;->R()V

    .line 2695
    .line 2696
    .line 2697
    :goto_35
    return-object v18

    .line 2698
    :pswitch_19
    move-object/from16 v0, p1

    .line 2699
    .line 2700
    check-cast v0, Lir1;

    .line 2701
    .line 2702
    move-object/from16 v1, p2

    .line 2703
    .line 2704
    check-cast v1, Ljava/lang/Integer;

    .line 2705
    .line 2706
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2707
    .line 2708
    .line 2709
    move-result v1

    .line 2710
    and-int/lit8 v3, v1, 0x3

    .line 2711
    .line 2712
    if-eq v3, v2, :cond_3a

    .line 2713
    .line 2714
    const/4 v2, 0x1

    .line 2715
    :goto_36
    const/16 v29, 0x1

    .line 2716
    .line 2717
    goto :goto_37

    .line 2718
    :cond_3a
    const/4 v2, 0x0

    .line 2719
    goto :goto_36

    .line 2720
    :goto_37
    and-int/lit8 v1, v1, 0x1

    .line 2721
    .line 2722
    invoke-virtual {v0, v1, v2}, Lir1;->O(IZ)Z

    .line 2723
    .line 2724
    .line 2725
    move-result v1

    .line 2726
    if-eqz v1, :cond_3c

    .line 2727
    .line 2728
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2729
    .line 2730
    .line 2731
    move-result-object v1

    .line 2732
    if-ne v1, v11, :cond_3b

    .line 2733
    .line 2734
    new-instance v1, Lkh0;

    .line 2735
    .line 2736
    const/4 v2, 0x3

    .line 2737
    invoke-direct {v1, v2}, Lkh0;-><init>(I)V

    .line 2738
    .line 2739
    .line 2740
    invoke-virtual {v0, v1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2741
    .line 2742
    .line 2743
    :cond_3b
    check-cast v1, Lxp1;

    .line 2744
    .line 2745
    const/16 v3, 0x36

    .line 2746
    .line 2747
    const/4 v9, 0x0

    .line 2748
    invoke-static {v1, v9, v0, v3}, Lyt5;->e(Lxp1;ZLir1;I)V

    .line 2749
    .line 2750
    .line 2751
    goto :goto_38

    .line 2752
    :cond_3c
    invoke-virtual {v0}, Lir1;->R()V

    .line 2753
    .line 2754
    .line 2755
    :goto_38
    return-object v18

    .line 2756
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2757
    .line 2758
    check-cast v0, Lir1;

    .line 2759
    .line 2760
    move-object/from16 v1, p2

    .line 2761
    .line 2762
    check-cast v1, Ljava/lang/Integer;

    .line 2763
    .line 2764
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2765
    .line 2766
    .line 2767
    move-result v1

    .line 2768
    and-int/lit8 v3, v1, 0x3

    .line 2769
    .line 2770
    if-eq v3, v2, :cond_3d

    .line 2771
    .line 2772
    const/4 v12, 0x1

    .line 2773
    :goto_39
    const/16 v29, 0x1

    .line 2774
    .line 2775
    goto :goto_3a

    .line 2776
    :cond_3d
    const/4 v12, 0x0

    .line 2777
    goto :goto_39

    .line 2778
    :goto_3a
    and-int/lit8 v1, v1, 0x1

    .line 2779
    .line 2780
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 2781
    .line 2782
    .line 2783
    move-result v1

    .line 2784
    if-eqz v1, :cond_44

    .line 2785
    .line 2786
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2787
    .line 2788
    .line 2789
    move-result-object v1

    .line 2790
    if-ne v1, v11, :cond_3e

    .line 2791
    .line 2792
    new-instance v1, Lkh0;

    .line 2793
    .line 2794
    const/4 v2, 0x4

    .line 2795
    invoke-direct {v1, v2}, Lkh0;-><init>(I)V

    .line 2796
    .line 2797
    .line 2798
    invoke-virtual {v0, v1}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2799
    .line 2800
    .line 2801
    :cond_3e
    check-cast v1, Lxp1;

    .line 2802
    .line 2803
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2804
    .line 2805
    .line 2806
    move-result-object v2

    .line 2807
    if-ne v2, v11, :cond_3f

    .line 2808
    .line 2809
    new-instance v2, Lkh0;

    .line 2810
    .line 2811
    const/4 v3, 0x5

    .line 2812
    invoke-direct {v2, v3}, Lkh0;-><init>(I)V

    .line 2813
    .line 2814
    .line 2815
    invoke-virtual {v0, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2816
    .line 2817
    .line 2818
    :cond_3f
    move-object/from16 v23, v2

    .line 2819
    .line 2820
    check-cast v23, Lxp1;

    .line 2821
    .line 2822
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2823
    .line 2824
    .line 2825
    move-result-object v2

    .line 2826
    if-ne v2, v11, :cond_40

    .line 2827
    .line 2828
    new-instance v2, Lkh0;

    .line 2829
    .line 2830
    const/4 v3, 0x6

    .line 2831
    invoke-direct {v2, v3}, Lkh0;-><init>(I)V

    .line 2832
    .line 2833
    .line 2834
    invoke-virtual {v0, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2835
    .line 2836
    .line 2837
    :cond_40
    move-object/from16 v24, v2

    .line 2838
    .line 2839
    check-cast v24, Lxp1;

    .line 2840
    .line 2841
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2842
    .line 2843
    .line 2844
    move-result-object v2

    .line 2845
    if-ne v2, v11, :cond_41

    .line 2846
    .line 2847
    new-instance v2, Lkh0;

    .line 2848
    .line 2849
    const/4 v3, 0x7

    .line 2850
    invoke-direct {v2, v3}, Lkh0;-><init>(I)V

    .line 2851
    .line 2852
    .line 2853
    invoke-virtual {v0, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2854
    .line 2855
    .line 2856
    :cond_41
    move-object/from16 v25, v2

    .line 2857
    .line 2858
    check-cast v25, Lxp1;

    .line 2859
    .line 2860
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2861
    .line 2862
    .line 2863
    move-result-object v2

    .line 2864
    if-ne v2, v11, :cond_42

    .line 2865
    .line 2866
    new-instance v2, Lt4;

    .line 2867
    .line 2868
    const/16 v3, 0x1d

    .line 2869
    .line 2870
    invoke-direct {v2, v3}, Lt4;-><init>(I)V

    .line 2871
    .line 2872
    .line 2873
    invoke-virtual {v0, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2874
    .line 2875
    .line 2876
    :cond_42
    move-object/from16 v26, v2

    .line 2877
    .line 2878
    check-cast v26, Lmp1;

    .line 2879
    .line 2880
    invoke-virtual {v0}, Lir1;->L()Ljava/lang/Object;

    .line 2881
    .line 2882
    .line 2883
    move-result-object v2

    .line 2884
    if-ne v2, v11, :cond_43

    .line 2885
    .line 2886
    new-instance v2, Lkh0;

    .line 2887
    .line 2888
    const/4 v3, 0x3

    .line 2889
    invoke-direct {v2, v3}, Lkh0;-><init>(I)V

    .line 2890
    .line 2891
    .line 2892
    invoke-virtual {v0, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 2893
    .line 2894
    .line 2895
    :cond_43
    move-object/from16 v27, v2

    .line 2896
    .line 2897
    check-cast v27, Lxp1;

    .line 2898
    .line 2899
    const v29, 0x6db6db6

    .line 2900
    .line 2901
    .line 2902
    const/16 v19, 0x0

    .line 2903
    .line 2904
    sget-object v20, Lya1;->r:Lya1;

    .line 2905
    .line 2906
    const/16 v21, 0x0

    .line 2907
    .line 2908
    move-object/from16 v28, v0

    .line 2909
    .line 2910
    move-object/from16 v22, v1

    .line 2911
    .line 2912
    invoke-static/range {v19 .. v29}, Lyt5;->w(La01;Ljava/util/List;ZLxp1;Lxp1;Lxp1;Lxp1;Lmp1;Lxp1;Lir1;I)V

    .line 2913
    .line 2914
    .line 2915
    goto :goto_3b

    .line 2916
    :cond_44
    move-object/from16 v28, v0

    .line 2917
    .line 2918
    invoke-virtual/range {v28 .. v28}, Lir1;->R()V

    .line 2919
    .line 2920
    .line 2921
    :goto_3b
    return-object v18

    .line 2922
    :pswitch_1b
    move-object/from16 v9, p1

    .line 2923
    .line 2924
    check-cast v9, Lir1;

    .line 2925
    .line 2926
    move-object/from16 v0, p2

    .line 2927
    .line 2928
    check-cast v0, Ljava/lang/Integer;

    .line 2929
    .line 2930
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2931
    .line 2932
    .line 2933
    move-result v0

    .line 2934
    and-int/lit8 v1, v0, 0x3

    .line 2935
    .line 2936
    if-eq v1, v2, :cond_45

    .line 2937
    .line 2938
    const/4 v1, 0x1

    .line 2939
    :goto_3c
    const/16 v29, 0x1

    .line 2940
    .line 2941
    goto :goto_3d

    .line 2942
    :cond_45
    const/4 v1, 0x0

    .line 2943
    goto :goto_3c

    .line 2944
    :goto_3d
    and-int/lit8 v0, v0, 0x1

    .line 2945
    .line 2946
    invoke-virtual {v9, v0, v1}, Lir1;->O(IZ)Z

    .line 2947
    .line 2948
    .line 2949
    move-result v0

    .line 2950
    if-eqz v0, :cond_4c

    .line 2951
    .line 2952
    new-instance v0, La01;

    .line 2953
    .line 2954
    const/4 v7, 0x0

    .line 2955
    const/16 v8, 0x3ffc

    .line 2956
    .line 2957
    const-string v4, "Active device"

    .line 2958
    .line 2959
    const-string v5, "a"

    .line 2960
    .line 2961
    const/4 v6, 0x0

    .line 2962
    move-object v3, v0

    .line 2963
    invoke-direct/range {v3 .. v8}, La01;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2964
    .line 2965
    .line 2966
    new-instance v3, La01;

    .line 2967
    .line 2968
    const-string v4, "First device"

    .line 2969
    .line 2970
    const-string v5, "b"

    .line 2971
    .line 2972
    invoke-direct/range {v3 .. v8}, La01;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2973
    .line 2974
    .line 2975
    new-instance v12, La01;

    .line 2976
    .line 2977
    const/16 v16, 0x0

    .line 2978
    .line 2979
    const/16 v17, 0x3ffc

    .line 2980
    .line 2981
    const-string v13, "Second device"

    .line 2982
    .line 2983
    const-string v14, "c"

    .line 2984
    .line 2985
    const/4 v15, 0x0

    .line 2986
    invoke-direct/range {v12 .. v17}, La01;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 2987
    .line 2988
    .line 2989
    new-array v1, v2, [La01;

    .line 2990
    .line 2991
    const/16 v28, 0x0

    .line 2992
    .line 2993
    aput-object v3, v1, v28

    .line 2994
    .line 2995
    const/16 v29, 0x1

    .line 2996
    .line 2997
    aput-object v12, v1, v29

    .line 2998
    .line 2999
    invoke-static {v1}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v1

    .line 3003
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3004
    .line 3005
    .line 3006
    move-result-object v3

    .line 3007
    if-ne v3, v11, :cond_46

    .line 3008
    .line 3009
    new-instance v3, Lr2;

    .line 3010
    .line 3011
    const/16 v4, 0x1d

    .line 3012
    .line 3013
    invoke-direct {v3, v4}, Lr2;-><init>(I)V

    .line 3014
    .line 3015
    .line 3016
    invoke-virtual {v9, v3}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3017
    .line 3018
    .line 3019
    :cond_46
    check-cast v3, Lxp1;

    .line 3020
    .line 3021
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3022
    .line 3023
    .line 3024
    move-result-object v4

    .line 3025
    if-ne v4, v11, :cond_47

    .line 3026
    .line 3027
    new-instance v4, Lkh0;

    .line 3028
    .line 3029
    const/4 v5, 0x0

    .line 3030
    invoke-direct {v4, v5}, Lkh0;-><init>(I)V

    .line 3031
    .line 3032
    .line 3033
    invoke-virtual {v9, v4}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3034
    .line 3035
    .line 3036
    :cond_47
    check-cast v4, Lxp1;

    .line 3037
    .line 3038
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v5

    .line 3042
    if-ne v5, v11, :cond_48

    .line 3043
    .line 3044
    new-instance v5, Lkh0;

    .line 3045
    .line 3046
    const/4 v6, 0x1

    .line 3047
    invoke-direct {v5, v6}, Lkh0;-><init>(I)V

    .line 3048
    .line 3049
    .line 3050
    invoke-virtual {v9, v5}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3051
    .line 3052
    .line 3053
    :cond_48
    check-cast v5, Lxp1;

    .line 3054
    .line 3055
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3056
    .line 3057
    .line 3058
    move-result-object v6

    .line 3059
    if-ne v6, v11, :cond_49

    .line 3060
    .line 3061
    new-instance v6, Lkh0;

    .line 3062
    .line 3063
    invoke-direct {v6, v2}, Lkh0;-><init>(I)V

    .line 3064
    .line 3065
    .line 3066
    invoke-virtual {v9, v6}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3067
    .line 3068
    .line 3069
    :cond_49
    check-cast v6, Lxp1;

    .line 3070
    .line 3071
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3072
    .line 3073
    .line 3074
    move-result-object v2

    .line 3075
    if-ne v2, v11, :cond_4a

    .line 3076
    .line 3077
    new-instance v2, Lt4;

    .line 3078
    .line 3079
    const/16 v7, 0x1d

    .line 3080
    .line 3081
    invoke-direct {v2, v7}, Lt4;-><init>(I)V

    .line 3082
    .line 3083
    .line 3084
    invoke-virtual {v9, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3085
    .line 3086
    .line 3087
    :cond_4a
    move-object v7, v2

    .line 3088
    check-cast v7, Lmp1;

    .line 3089
    .line 3090
    invoke-virtual {v9}, Lir1;->L()Ljava/lang/Object;

    .line 3091
    .line 3092
    .line 3093
    move-result-object v2

    .line 3094
    if-ne v2, v11, :cond_4b

    .line 3095
    .line 3096
    new-instance v2, Lkh0;

    .line 3097
    .line 3098
    const/4 v8, 0x3

    .line 3099
    invoke-direct {v2, v8}, Lkh0;-><init>(I)V

    .line 3100
    .line 3101
    .line 3102
    invoke-virtual {v9, v2}, Lir1;->j0(Ljava/lang/Object;)V

    .line 3103
    .line 3104
    .line 3105
    :cond_4b
    move-object v8, v2

    .line 3106
    check-cast v8, Lxp1;

    .line 3107
    .line 3108
    const v10, 0x6db6d80

    .line 3109
    .line 3110
    .line 3111
    const/4 v2, 0x1

    .line 3112
    invoke-static/range {v0 .. v10}, Lyt5;->w(La01;Ljava/util/List;ZLxp1;Lxp1;Lxp1;Lxp1;Lmp1;Lxp1;Lir1;I)V

    .line 3113
    .line 3114
    .line 3115
    goto :goto_3e

    .line 3116
    :cond_4c
    invoke-virtual {v9}, Lir1;->R()V

    .line 3117
    .line 3118
    .line 3119
    :goto_3e
    return-object v18

    .line 3120
    :pswitch_1c
    move v5, v12

    .line 3121
    move-object/from16 v0, p1

    .line 3122
    .line 3123
    check-cast v0, Lir1;

    .line 3124
    .line 3125
    move-object/from16 v1, p2

    .line 3126
    .line 3127
    check-cast v1, Ljava/lang/Integer;

    .line 3128
    .line 3129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 3130
    .line 3131
    .line 3132
    move-result v1

    .line 3133
    and-int/lit8 v3, v1, 0x3

    .line 3134
    .line 3135
    if-eq v3, v2, :cond_4d

    .line 3136
    .line 3137
    const/4 v12, 0x1

    .line 3138
    :goto_3f
    const/16 v29, 0x1

    .line 3139
    .line 3140
    goto :goto_40

    .line 3141
    :cond_4d
    move v12, v5

    .line 3142
    goto :goto_3f

    .line 3143
    :goto_40
    and-int/lit8 v1, v1, 0x1

    .line 3144
    .line 3145
    invoke-virtual {v0, v1, v12}, Lir1;->O(IZ)Z

    .line 3146
    .line 3147
    .line 3148
    move-result v1

    .line 3149
    if-eqz v1, :cond_4e

    .line 3150
    .line 3151
    move-object v5, v0

    .line 3152
    invoke-static {}, Lk10;->n()Ln02;

    .line 3153
    .line 3154
    .line 3155
    move-result-object v0

    .line 3156
    const/16 v6, 0x30

    .line 3157
    .line 3158
    const/16 v7, 0xc

    .line 3159
    .line 3160
    const-string v1, "Remove device"

    .line 3161
    .line 3162
    const/4 v2, 0x0

    .line 3163
    const-wide/16 v3, 0x0

    .line 3164
    .line 3165
    invoke-static/range {v0 .. v7}, Lb02;->v(Ln02;Ljava/lang/String;Lgv2;JLir1;II)V

    .line 3166
    .line 3167
    .line 3168
    goto :goto_41

    .line 3169
    :cond_4e
    move-object v5, v0

    .line 3170
    invoke-virtual {v5}, Lir1;->R()V

    .line 3171
    .line 3172
    .line 3173
    :goto_41
    return-object v18

    .line 3174
    nop

    .line 3175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
