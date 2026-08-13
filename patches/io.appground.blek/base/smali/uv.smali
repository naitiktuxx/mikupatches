.class public abstract Luv;
.super Lwn1;
.source "SourceFile"


# instance fields
.field public g0:Lao1;

.field public h0:Lrk;

.field public final i0:Llt;

.field public final j0:Llt;

.field public final k0:Llt;

.field public l0:Z

.field public m0:Z

.field public n0:Lbf4;

.field public final o0:Ldk4;

.field public final p0:Ldk4;

.field public q0:Lbf4;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lwn1;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lql0;

    .line 5
    .line 6
    invoke-static {v0}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ltv;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Ltv;-><init>(Luv;I)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Ltv;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, p0, v4}, Ltv;-><init>(Luv;I)V

    .line 20
    .line 21
    .line 22
    new-instance v5, Ltv;

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    invoke-direct {v5, p0, v6}, Ltv;-><init>(Luv;I)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Llt;

    .line 29
    .line 30
    invoke-direct {v6, v0, v1, v5, v3}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 31
    .line 32
    .line 33
    iput-object v6, p0, Luv;->i0:Llt;

    .line 34
    .line 35
    const-class v0, Li74;

    .line 36
    .line 37
    invoke-static {v0}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ltv;

    .line 42
    .line 43
    const/4 v3, 0x3

    .line 44
    invoke-direct {v1, p0, v3}, Ltv;-><init>(Luv;I)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ltv;

    .line 48
    .line 49
    const/4 v5, 0x4

    .line 50
    invoke-direct {v3, p0, v5}, Ltv;-><init>(Luv;I)V

    .line 51
    .line 52
    .line 53
    new-instance v5, Ltv;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    invoke-direct {v5, p0, v6}, Ltv;-><init>(Luv;I)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Llt;

    .line 60
    .line 61
    invoke-direct {v6, v0, v1, v5, v3}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 62
    .line 63
    .line 64
    iput-object v6, p0, Luv;->j0:Llt;

    .line 65
    .line 66
    const-class v0, Lzn;

    .line 67
    .line 68
    invoke-static {v0}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Ltv;

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    invoke-direct {v1, p0, v3}, Ltv;-><init>(Luv;I)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Ltv;

    .line 79
    .line 80
    const/4 v5, 0x7

    .line 81
    invoke-direct {v3, p0, v5}, Ltv;-><init>(Luv;I)V

    .line 82
    .line 83
    .line 84
    new-instance v5, Ltv;

    .line 85
    .line 86
    const/16 v6, 0x8

    .line 87
    .line 88
    invoke-direct {v5, p0, v6}, Ltv;-><init>(Luv;I)V

    .line 89
    .line 90
    .line 91
    new-instance v6, Llt;

    .line 92
    .line 93
    invoke-direct {v6, v0, v1, v5, v3}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 94
    .line 95
    .line 96
    iput-object v6, p0, Luv;->k0:Llt;

    .line 97
    .line 98
    new-instance v0, Ldv;

    .line 99
    .line 100
    invoke-direct {v0, p0, v2}, Ldv;-><init>(Luv;I)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ldk4;

    .line 104
    .line 105
    invoke-direct {v1, v0}, Ldk4;-><init>(Lmp1;)V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Luv;->o0:Ldk4;

    .line 109
    .line 110
    new-instance v0, Ldv;

    .line 111
    .line 112
    invoke-direct {v0, p0, v4}, Ldv;-><init>(Luv;I)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Ldk4;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Ldk4;-><init>(Lmp1;)V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Luv;->p0:Ldk4;

    .line 121
    .line 122
    return-void
.end method

.method public static final Q(Luv;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lwn1;->b()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, ""

    .line 16
    .line 17
    return-object p0
.end method

.method public static R(Luv;Lcom/google/android/material/textfield/TextInputEditText;Lio/appground/blek/ui/controls/TextInputView;I)Lcv;
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_1
    new-instance p3, Lcv;

    .line 13
    .line 14
    invoke-direct {p3, p1, p0, p2}, Lcv;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Luv;Lio/appground/blek/ui/controls/TextInputView;)V

    .line 15
    .line 16
    .line 17
    return-object p3
.end method

.method public static U(Landroid/view/KeyEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x3b

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0x39

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/16 p0, 0x71

    .line 26
    .line 27
    return p0

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isSymPressed()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_3

    .line 33
    .line 34
    const/16 p0, 0x3f

    .line 35
    .line 36
    return p0

    .line 37
    :cond_3
    const/4 p0, 0x0

    .line 38
    return p0
.end method


# virtual methods
.method public final B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0d0150

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move-object/from16 v4, p2

    .line 13
    .line 14
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v4, 0x7f0a0079

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    move-object v8, v5

    .line 26
    check-cast v8, Landroid/widget/Button;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    const v4, 0x7f0a0102

    .line 32
    .line 33
    .line 34
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    move-object v9, v6

    .line 39
    check-cast v9, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz v9, :cond_1

    .line 42
    .line 43
    const v4, 0x7f0a0134

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    move-object v10, v6

    .line 51
    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 52
    .line 53
    if-eqz v10, :cond_1

    .line 54
    .line 55
    const v4, 0x7f0a013c

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    move-object v11, v6

    .line 63
    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    .line 65
    if-eqz v11, :cond_1

    .line 66
    .line 67
    const v4, 0x7f0a037b

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v12, v6

    .line 75
    check-cast v12, Landroid/widget/LinearLayout;

    .line 76
    .line 77
    if-eqz v12, :cond_1

    .line 78
    .line 79
    const v4, 0x7f0a037c

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    move-object v13, v6

    .line 87
    check-cast v13, Lcom/google/android/material/button/MaterialButton;

    .line 88
    .line 89
    if-eqz v13, :cond_1

    .line 90
    .line 91
    move-object v7, v2

    .line 92
    check-cast v7, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    const v4, 0x7f0a048d

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    move-object v15, v6

    .line 102
    check-cast v15, Lio/appground/blek/ui/controls/TextInputView;

    .line 103
    .line 104
    if-eqz v15, :cond_1

    .line 105
    .line 106
    const v4, 0x7f0a0496

    .line 107
    .line 108
    .line 109
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    move-object/from16 v16, v6

    .line 114
    .line 115
    check-cast v16, Landroid/widget/CheckBox;

    .line 116
    .line 117
    if-eqz v16, :cond_1

    .line 118
    .line 119
    const v4, 0x7f0a04a2

    .line 120
    .line 121
    .line 122
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    move-object/from16 v17, v6

    .line 127
    .line 128
    check-cast v17, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 129
    .line 130
    if-eqz v17, :cond_1

    .line 131
    .line 132
    const v4, 0x7f0a04b4

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    move-object/from16 v18, v6

    .line 140
    .line 141
    check-cast v18, Lcom/google/android/material/card/MaterialCardView;

    .line 142
    .line 143
    if-eqz v18, :cond_1

    .line 144
    .line 145
    const v4, 0x7f0a04b5

    .line 146
    .line 147
    .line 148
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    move-object/from16 v19, v6

    .line 153
    .line 154
    check-cast v19, Lcom/google/android/material/button/MaterialButton;

    .line 155
    .line 156
    if-eqz v19, :cond_1

    .line 157
    .line 158
    const v4, 0x7f0a04b6

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    move-object/from16 v20, v6

    .line 166
    .line 167
    check-cast v20, Lcom/google/android/material/button/MaterialButton;

    .line 168
    .line 169
    if-eqz v20, :cond_1

    .line 170
    .line 171
    const v4, 0x7f0a04b7

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v4}, Lhh5;->v(Landroid/view/View;I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    move-object/from16 v21, v6

    .line 179
    .line 180
    check-cast v21, Landroid/widget/TextView;

    .line 181
    .line 182
    if-eqz v21, :cond_1

    .line 183
    .line 184
    new-instance v6, Lao1;

    .line 185
    .line 186
    move-object v14, v7

    .line 187
    invoke-direct/range {v6 .. v21}, Lao1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/FrameLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Lio/appground/blek/ui/controls/TextInputView;Landroid/widget/CheckBox;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V

    .line 188
    .line 189
    .line 190
    iput-object v6, v0, Luv;->g0:Lao1;

    .line 191
    .line 192
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    iget-object v2, v0, Luv;->g0:Lao1;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget-object v2, v2, Lao1;->m:Landroid/widget/FrameLayout;

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Luv;->Y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    .line 208
    iget-object v1, v0, Luv;->g0:Lao1;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    iget-object v1, v1, Lao1;->b:Lcom/google/android/material/button/MaterialButton;

    .line 214
    .line 215
    new-instance v2, Lbv;

    .line 216
    .line 217
    invoke-direct {v2, v0, v3}, Lbv;-><init>(Luv;I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Luv;->g0:Lao1;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object v1, v1, Lao1;->s:Lcom/google/android/material/button/MaterialButton;

    .line 229
    .line 230
    new-instance v2, Lbv;

    .line 231
    .line 232
    const/4 v4, 0x2

    .line 233
    invoke-direct {v2, v0, v4}, Lbv;-><init>(Luv;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lwn1;->y()Lap1;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-static {v1}, Li34;->e(Lvi2;)Lni2;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    new-instance v2, Lov;

    .line 248
    .line 249
    invoke-direct {v2, v0, v5, v3}, Lov;-><init>(Luv;Ljo0;I)V

    .line 250
    .line 251
    .line 252
    const/4 v0, 0x3

    .line 253
    invoke-static {v1, v5, v2, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 254
    .line 255
    .line 256
    :cond_0
    return-object v7

    .line 257
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "Missing required view with ID: "

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0}, Lk93;->j(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-object v5
.end method

.method public final C()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lwn1;->M:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Luv;->g0:Lao1;

    .line 6
    .line 7
    return-void
.end method

.method public final I(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lrk;

    .line 5
    .line 6
    iget-object v1, p0, Lwn1;->T:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lwn1;->E(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lwn1;->T:Landroid/view/LayoutInflater;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p1}, Lrk;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Luv;->h0:Lrk;

    .line 24
    .line 25
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lao1;->r:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iget-object v0, p0, Luv;->o0:Ldk4;

    .line 33
    .line 34
    invoke-virtual {v0}, Ldk4;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/View$OnKeyListener;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lao1;->w:Lcom/google/android/material/textfield/TextInputEditText;

    .line 49
    .line 50
    iget-object v0, p0, Luv;->g0:Lao1;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lao1;->w:Lcom/google/android/material/textfield/TextInputEditText;

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-static {p0, v0, v2, v1}, Luv;->R(Luv;Lcom/google/android/material/textfield/TextInputEditText;Lio/appground/blek/ui/controls/TextInputView;I)Lcv;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lao1;->a:Lio/appground/blek/ui/controls/TextInputView;

    .line 71
    .line 72
    iget-object v0, p0, Luv;->g0:Lao1;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Lao1;->a:Lio/appground/blek/ui/controls/TextInputView;

    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    invoke-static {p0, v2, v0, v3}, Luv;->R(Luv;Lcom/google/android/material/textfield/TextInputEditText;Lio/appground/blek/ui/controls/TextInputView;I)Lcv;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    iget-object p1, p1, Lao1;->a:Lio/appground/blek/ui/controls/TextInputView;

    .line 93
    .line 94
    new-instance v0, Lxt1;

    .line 95
    .line 96
    const/16 v4, 0x8

    .line 97
    .line 98
    invoke-direct {v0, v4, p0}, Lxt1;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lio/appground/blek/ui/controls/TextInputView;->setTextInputListener(Lnq4;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object p1, p1, Lao1;->r:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v4, 0x0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_1

    .line 126
    .line 127
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 128
    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    iget-object p1, p1, Lao1;->r:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Lpv;

    .line 140
    .line 141
    invoke-direct {v0, v4, p0}, Lpv;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    :goto_0
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lao1;->c:Landroid/widget/CheckBox;

    .line 153
    .line 154
    new-instance v0, Lbv;

    .line 155
    .line 156
    const/4 v5, 0x3

    .line 157
    invoke-direct {v0, p0, v5}, Lbv;-><init>(Luv;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Lao1;->c:Landroid/widget/CheckBox;

    .line 169
    .line 170
    new-instance v0, Lev;

    .line 171
    .line 172
    invoke-direct {v0, v4, p0}, Lev;-><init>(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iget-object p1, p1, Lao1;->e:Landroid/widget/Button;

    .line 184
    .line 185
    new-instance v0, Lbv;

    .line 186
    .line 187
    const/4 v6, 0x4

    .line 188
    invoke-direct {v0, p0, v6}, Lbv;-><init>(Luv;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    iget-object p1, p1, Lao1;->p:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    new-instance v6, Lqv;

    .line 208
    .line 209
    invoke-direct {v6, p0}, Lqv;-><init>(Luv;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    .line 214
    .line 215
    :cond_3
    new-instance v0, Lfv;

    .line 216
    .line 217
    invoke-direct {v0, v4, p0, p1}, Lfv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object p1, p1, Lao1;->w:Lcom/google/android/material/textfield/TextInputEditText;

    .line 229
    .line 230
    new-instance v0, Lgv;

    .line 231
    .line 232
    invoke-direct {v0, p0, v4}, Lgv;-><init>(Luv;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    iget-object p1, p1, Lao1;->a:Lio/appground/blek/ui/controls/TextInputView;

    .line 244
    .line 245
    new-instance v0, Lgv;

    .line 246
    .line 247
    invoke-direct {v0, p0, v3}, Lgv;-><init>(Luv;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Luv;->g0:Lao1;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    iget-object p1, p1, Lao1;->t:Lcom/google/android/material/button/MaterialButton;

    .line 259
    .line 260
    new-instance v0, Lbv;

    .line 261
    .line 262
    invoke-direct {v0, p0, v3}, Lbv;-><init>(Luv;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lwn1;->y()Lap1;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {p1}, Li34;->e(Lvi2;)Lni2;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    new-instance v0, Lov;

    .line 277
    .line 278
    invoke-direct {v0, p0, v2, v3}, Lov;-><init>(Luv;Ljo0;I)V

    .line 279
    .line 280
    .line 281
    invoke-static {p1, v2, v0, v5}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lwn1;->y()Lap1;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p1}, Li34;->e(Lvi2;)Lni2;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance v0, Lov;

    .line 293
    .line 294
    invoke-direct {v0, p0, v2, v1}, Lov;-><init>(Luv;Ljo0;I)V

    .line 295
    .line 296
    .line 297
    invoke-static {p1, v2, v0, v5}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 298
    .line 299
    .line 300
    return-void
.end method

.method public final S()Lzn;
    .locals 0

    .line 1
    iget-object p0, p0, Luv;->k0:Llt;

    .line 2
    .line 3
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzn;

    .line 8
    .line 9
    return-object p0
.end method

.method public final T()Lql0;
    .locals 0

    .line 1
    iget-object p0, p0, Luv;->i0:Llt;

    .line 2
    .line 3
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lql0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final V()Ln00;
    .locals 2

    .line 1
    invoke-virtual {p0}, Luv;->T()Lql0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lql0;->m:Lax1;

    .line 6
    .line 7
    iget-object p0, p0, Lax1;->m:Lb11;

    .line 8
    .line 9
    iget-object p0, p0, Lb11;->w:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Le00;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Le00;->m:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const-class v1, Ln00;

    .line 21
    .line 22
    invoke-static {v1}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    instance-of v1, p0, Ln00;

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v0, p0

    .line 36
    :goto_0
    check-cast v0, Ln00;

    .line 37
    .line 38
    :cond_1
    return-object v0
.end method

.method public final W()Li74;
    .locals 0

    .line 1
    iget-object p0, p0, Luv;->j0:Llt;

    .line 2
    .line 3
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Li74;

    .line 8
    .line 9
    return-object p0
.end method

.method public final X()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract Y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Z
.end method

.method public final Z(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Luv;->m0:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x3

    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 1

    .line 1
    iget-object p0, p0, Luv;->g0:Lao1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lao1;->a:Lio/appground/blek/ui/controls/TextInputView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lwn1;->f(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lwn1;->K:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput-boolean v0, p0, Lwn1;->K:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lwn1;->j()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lwn1;->l()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lwn1;->B:Lyn1;

    .line 24
    .line 25
    iget-object p0, p0, Lyn1;->q:Ltj;

    .line 26
    .line 27
    invoke-virtual {p0}, Ltj;->invalidateOptionsMenu()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
