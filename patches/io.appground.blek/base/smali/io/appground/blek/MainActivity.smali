.class public final Lio/appground/blek/MainActivity;
.super Ltj;
.source "SourceFile"

# interfaces
.implements Ltr1;


# static fields
.field public static final synthetic Q:I


# instance fields
.field public volatile I:Lh4;

.field public final J:Ljava/lang/Object;

.field public K:Z

.field public final L:Llt;

.field public final M:Llt;

.field public final N:Llt;

.field public final O:Llt;

.field public final P:Llt;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ltj;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lig0;->h:Lzx3;

    .line 5
    .line 6
    iget-object v0, v0, Lzx3;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ld32;

    .line 9
    .line 10
    new-instance v1, Lrj;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lrj;-><init>(Lio/appground/blek/MainActivity;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "androidx:appcompat"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Ld32;->D(Ljava/lang/String;Lyx3;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lsj;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lsj;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lig0;->g(Lt63;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/Object;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lio/appground/blek/MainActivity;->J:Ljava/lang/Object;

    .line 35
    .line 36
    iput-boolean v1, p0, Lio/appground/blek/MainActivity;->K:Z

    .line 37
    .line 38
    new-instance v0, Lsj;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, p0, v2}, Lsj;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lig0;->g(Lt63;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Llo2;

    .line 48
    .line 49
    const/4 v3, 0x6

    .line 50
    invoke-direct {v0, p0, v3}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Llt;

    .line 54
    .line 55
    const-class v4, Lql0;

    .line 56
    .line 57
    invoke-static {v4}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Llo2;

    .line 62
    .line 63
    const/4 v6, 0x7

    .line 64
    invoke-direct {v5, p0, v6}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Llo2;

    .line 68
    .line 69
    const/16 v7, 0x8

    .line 70
    .line 71
    invoke-direct {v6, p0, v7}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, v4, v5, v0, v6}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 75
    .line 76
    .line 77
    iput-object v3, p0, Lio/appground/blek/MainActivity;->L:Llt;

    .line 78
    .line 79
    new-instance v0, Llo2;

    .line 80
    .line 81
    const/16 v3, 0x9

    .line 82
    .line 83
    invoke-direct {v0, p0, v3}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 84
    .line 85
    .line 86
    new-instance v3, Llt;

    .line 87
    .line 88
    const-class v4, Lfd2;

    .line 89
    .line 90
    invoke-static {v4}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Llo2;

    .line 95
    .line 96
    const/16 v6, 0xa

    .line 97
    .line 98
    invoke-direct {v5, p0, v6}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 99
    .line 100
    .line 101
    new-instance v6, Llo2;

    .line 102
    .line 103
    const/16 v7, 0xb

    .line 104
    .line 105
    invoke-direct {v6, p0, v7}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 106
    .line 107
    .line 108
    invoke-direct {v3, v4, v5, v0, v6}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Lio/appground/blek/MainActivity;->M:Llt;

    .line 112
    .line 113
    new-instance v0, Llo2;

    .line 114
    .line 115
    const/16 v3, 0xc

    .line 116
    .line 117
    invoke-direct {v0, p0, v3}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 118
    .line 119
    .line 120
    new-instance v3, Llt;

    .line 121
    .line 122
    const-class v4, Li74;

    .line 123
    .line 124
    invoke-static {v4}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    new-instance v5, Llo2;

    .line 129
    .line 130
    const/16 v6, 0xd

    .line 131
    .line 132
    invoke-direct {v5, p0, v6}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 133
    .line 134
    .line 135
    new-instance v6, Llo2;

    .line 136
    .line 137
    const/16 v7, 0xe

    .line 138
    .line 139
    invoke-direct {v6, p0, v7}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v3, v4, v5, v0, v6}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 143
    .line 144
    .line 145
    iput-object v3, p0, Lio/appground/blek/MainActivity;->N:Llt;

    .line 146
    .line 147
    new-instance v0, Llo2;

    .line 148
    .line 149
    invoke-direct {v0, p0, v1}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 150
    .line 151
    .line 152
    new-instance v1, Llt;

    .line 153
    .line 154
    const-class v3, Lzn;

    .line 155
    .line 156
    invoke-static {v3}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    new-instance v4, Llo2;

    .line 161
    .line 162
    invoke-direct {v4, p0, v2}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Llo2;

    .line 166
    .line 167
    const/4 v5, 0x2

    .line 168
    invoke-direct {v2, p0, v5}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 169
    .line 170
    .line 171
    invoke-direct {v1, v3, v4, v0, v2}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 172
    .line 173
    .line 174
    iput-object v1, p0, Lio/appground/blek/MainActivity;->O:Llt;

    .line 175
    .line 176
    new-instance v0, Llo2;

    .line 177
    .line 178
    const/4 v1, 0x3

    .line 179
    invoke-direct {v0, p0, v1}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 180
    .line 181
    .line 182
    new-instance v1, Llt;

    .line 183
    .line 184
    const-class v2, Liz;

    .line 185
    .line 186
    invoke-static {v2}, Lyq3;->v(Ljava/lang/Class;)Lta0;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    new-instance v3, Llo2;

    .line 191
    .line 192
    const/4 v4, 0x4

    .line 193
    invoke-direct {v3, p0, v4}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 194
    .line 195
    .line 196
    new-instance v4, Llo2;

    .line 197
    .line 198
    const/4 v5, 0x5

    .line 199
    invoke-direct {v4, p0, v5}, Llo2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 200
    .line 201
    .line 202
    invoke-direct {v1, v2, v3, v0, v4}, Llt;-><init>(Lta0;Lmp1;Lmp1;Lmp1;)V

    .line 203
    .line 204
    .line 205
    iput-object v1, p0, Lio/appground/blek/MainActivity;->P:Llt;

    .line 206
    .line 207
    return-void
.end method


# virtual methods
.method public final i(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lig0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/appground/blek/MainActivity;->q()Lh4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lh4;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n()Lp45;
    .locals 5

    .line 1
    invoke-super {p0}, Lig0;->n()Lp45;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lwx0;

    .line 6
    .line 7
    invoke-static {p0, v1}, Lsv5;->n(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lwx0;

    .line 12
    .line 13
    check-cast p0, Lct0;

    .line 14
    .line 15
    invoke-virtual {p0}, Lct0;->v()Lcf2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lc54;

    .line 20
    .line 21
    iget-object v3, p0, Lct0;->v:Lht0;

    .line 22
    .line 23
    iget-object p0, p0, Lct0;->e:Let0;

    .line 24
    .line 25
    const/4 v4, 0x6

    .line 26
    invoke-direct {v2, v4, v3, p0}, Lc54;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lhx1;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v1, v0, v2}, Lhx1;-><init>(Lcf2;Lp45;Lc54;)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    const v0, 0x7f14000b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ltj;->setTheme(I)V

    .line 5
    .line 6
    .line 7
    const-string v0, "system"

    .line 8
    .line 9
    sget-object v1, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v3, "theme_option"

    .line 15
    .line 16
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :goto_0
    const/4 v3, 0x2

    .line 23
    const/4 v4, -0x1

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const v7, 0x2eef76

    .line 32
    .line 33
    .line 34
    if-eq v6, v7, :cond_3

    .line 35
    .line 36
    const v7, 0x5978fff

    .line 37
    .line 38
    .line 39
    if-eq v6, v7, :cond_2

    .line 40
    .line 41
    const v7, 0x6233516

    .line 42
    .line 43
    .line 44
    if-eq v6, v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const-string v0, "black"

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const-string v0, "dark"

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    :goto_1
    move v0, v4

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v0, v3

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    move v0, v5

    .line 76
    :goto_2
    if-eq v0, v4, :cond_6

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    if-eq v0, v5, :cond_6

    .line 81
    .line 82
    if-eq v0, v3, :cond_6

    .line 83
    .line 84
    const-string v0, "AppCompatDelegate"

    .line 85
    .line 86
    const-string v1, "setDefaultNightMode() called with an unknown mode"

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    sget v1, Lek;->a:I

    .line 93
    .line 94
    if-eq v1, v0, :cond_9

    .line 95
    .line 96
    sput v0, Lek;->a:I

    .line 97
    .line 98
    sget-object v1, Lek;->k:Ljava/lang/Object;

    .line 99
    .line 100
    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lek;->b:Lxp;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    new-instance v3, Lrp;

    .line 107
    .line 108
    invoke-direct {v3, v0}, Lrp;-><init>(Lxp;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    :goto_3
    invoke-virtual {v3}, Lrp;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    invoke-virtual {v3}, Lrp;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lek;

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    check-cast v0, Lpk;

    .line 132
    .line 133
    invoke-virtual {v0, v5, v5}, Lpk;->g(ZZ)Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    move-object p0, v0

    .line 139
    goto :goto_4

    .line 140
    :cond_8
    monitor-exit v1

    .line 141
    goto :goto_5

    .line 142
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    throw p0

    .line 144
    :cond_9
    :goto_5
    invoke-virtual {p0, p1}, Lio/appground/blek/MainActivity;->i(Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    const-string v0, "blue_grey"

    .line 148
    .line 149
    sget-object v1, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v3, "activate_outline_theme"

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    const v1, 0x7f140426

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Ltj;->setTheme(I)V

    .line 167
    .line 168
    .line 169
    :cond_a
    sget-object v1, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    const-string v3, "theme_color"

    .line 175
    .line 176
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v1, v0}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_11

    .line 185
    .line 186
    const-string v0, "dynamic"

    .line 187
    .line 188
    invoke-static {v1, v0}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_10

    .line 193
    .line 194
    sget-object v0, Lh81;->v:[I

    .line 195
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    .line 198
    const/16 v1, 0x1f

    .line 199
    .line 200
    if-ge v0, v1, :cond_b

    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_b
    sget v1, Ln30;->v:I

    .line 205
    .line 206
    const/16 v1, 0x21

    .line 207
    .line 208
    if-ge v0, v1, :cond_e

    .line 209
    .line 210
    const/16 v1, 0x20

    .line 211
    .line 212
    if-lt v0, v1, :cond_c

    .line 213
    .line 214
    const-string v0, "Tiramisu"

    .line 215
    .line 216
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Ln30;->v(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_c
    sget-object v0, Lh81;->e:Ljava/util/Map;

    .line 229
    .line 230
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 231
    .line 232
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 233
    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lg81;

    .line 243
    .line 244
    if-nez v0, :cond_d

    .line 245
    .line 246
    sget-object v0, Lh81;->m:Ljava/util/Map;

    .line 247
    .line 248
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Lg81;

    .line 259
    .line 260
    :cond_d
    if-eqz v0, :cond_11

    .line 261
    .line 262
    invoke-interface {v0}, Lg81;->v()Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_11

    .line 267
    .line 268
    :cond_e
    :goto_6
    sget-object v0, Lh81;->v:[I

    .line 269
    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    if-eqz v0, :cond_f

    .line 293
    .line 294
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    if-eqz v0, :cond_f

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-eqz v0, :cond_f

    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    :cond_f
    if-eqz v2, :cond_11

    .line 311
    .line 312
    invoke-virtual {v2, v1, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_10
    invoke-virtual {p0}, Ltj;->getResources()Landroid/content/res/Resources;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    const v2, 0x7f030011

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {v0, v1}, Lyp;->o([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-lez v0, :cond_11

    .line 335
    .line 336
    invoke-virtual {p0}, Ltj;->getResources()Landroid/content/res/Resources;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const v2, 0x7f030010

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v0}, Ltj;->setTheme(I)V

    .line 358
    .line 359
    .line 360
    :cond_11
    :goto_7
    sget-object v0, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    const-string v1, "theme_option"

    .line 366
    .line 367
    const-string v2, "system"

    .line 368
    .line 369
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const-string v1, "black"

    .line 374
    .line 375
    invoke-static {v0, v1}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_12

    .line 380
    .line 381
    const v0, 0x7f14038d

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v0}, Ltj;->setTheme(I)V

    .line 385
    .line 386
    .line 387
    :cond_12
    new-instance v0, Lgy3;

    .line 388
    .line 389
    const/16 v1, 0x16

    .line 390
    .line 391
    invoke-direct {v0, v1}, Lgy3;-><init>(I)V

    .line 392
    .line 393
    .line 394
    new-instance v8, Ljk4;

    .line 395
    .line 396
    invoke-direct {v8, v4, v4, v0}, Ljk4;-><init>(IILxp1;)V

    .line 397
    .line 398
    .line 399
    sget v0, Lu81;->v:I

    .line 400
    .line 401
    sget v2, Lu81;->e:I

    .line 402
    .line 403
    new-instance v3, Lgy3;

    .line 404
    .line 405
    invoke-direct {v3, v1}, Lgy3;-><init>(I)V

    .line 406
    .line 407
    .line 408
    new-instance v9, Ljk4;

    .line 409
    .line 410
    invoke-direct {v9, v0, v2, v3}, Ljk4;-><init>(IILxp1;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    sget-object v0, Lu81;->m:Lb91;

    .line 425
    .line 426
    const/16 v1, 0x1d

    .line 427
    .line 428
    if-nez v0, :cond_18

    .line 429
    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 431
    .line 432
    const/16 v2, 0x23

    .line 433
    .line 434
    if-lt v0, v2, :cond_13

    .line 435
    .line 436
    new-instance v0, La91;

    .line 437
    .line 438
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 439
    .line 440
    .line 441
    goto :goto_8

    .line 442
    :cond_13
    const/16 v2, 0x1e

    .line 443
    .line 444
    if-lt v0, v2, :cond_14

    .line 445
    .line 446
    new-instance v0, Lz81;

    .line 447
    .line 448
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_14
    if-lt v0, v1, :cond_15

    .line 453
    .line 454
    new-instance v0, Ly81;

    .line 455
    .line 456
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 457
    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_15
    const/16 v2, 0x1c

    .line 461
    .line 462
    if-lt v0, v2, :cond_16

    .line 463
    .line 464
    new-instance v0, Lx81;

    .line 465
    .line 466
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_16
    const/16 v2, 0x1a

    .line 471
    .line 472
    if-lt v0, v2, :cond_17

    .line 473
    .line 474
    new-instance v0, Lw81;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 477
    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_17
    new-instance v0, Lv81;

    .line 481
    .line 482
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 483
    .line 484
    .line 485
    :goto_8
    sput-object v0, Lu81;->m:Lb91;

    .line 486
    .line 487
    :cond_18
    move-object v7, v0

    .line 488
    new-instance v6, Lvw;

    .line 489
    .line 490
    const/4 v12, 0x1

    .line 491
    move-object v10, p0

    .line 492
    invoke-direct/range {v6 .. v12}, Lvw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 493
    .line 494
    .line 495
    check-cast v11, Landroid/view/ViewGroup;

    .line 496
    .line 497
    move p0, v4

    .line 498
    :goto_9
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-ge p0, v0, :cond_1b

    .line 503
    .line 504
    add-int/lit8 v0, p0, 0x1

    .line 505
    .line 506
    invoke-virtual {v11, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object p0

    .line 510
    if-eqz p0, :cond_1a

    .line 511
    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    instance-of p0, p0, Lb91;

    .line 517
    .line 518
    if-eqz p0, :cond_19

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_19
    move p0, v0

    .line 522
    goto :goto_9

    .line 523
    :cond_1a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 524
    .line 525
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 526
    .line 527
    .line 528
    throw p0

    .line 529
    :cond_1b
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 530
    .line 531
    .line 532
    move-result-object p0

    .line 533
    new-instance v0, Lt81;

    .line 534
    .line 535
    invoke-direct {v0, v6, p0}, Lt81;-><init>(Lvw;Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    const/16 p0, 0x8

    .line 542
    .line 543
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 550
    .line 551
    .line 552
    :goto_a
    invoke-virtual {v6}, Lvw;->run()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 556
    .line 557
    .line 558
    move-result-object p0

    .line 559
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v7, p0}, Lb91;->v(Landroid/view/Window;)V

    .line 563
    .line 564
    .line 565
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 566
    .line 567
    if-gt p0, v1, :cond_1c

    .line 568
    .line 569
    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 570
    .line 571
    .line 572
    move-result-object p0

    .line 573
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 574
    .line 575
    .line 576
    move-result-object p0

    .line 577
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    and-int/lit16 v0, v0, -0x101

    .line 585
    .line 586
    or-int/lit16 v0, v0, 0xe00

    .line 587
    .line 588
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 589
    .line 590
    .line 591
    :cond_1c
    if-nez p1, :cond_1d

    .line 592
    .line 593
    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 594
    .line 595
    .line 596
    move-result-object p0

    .line 597
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 601
    .line 602
    .line 603
    move-result p0

    .line 604
    const/high16 p1, 0x100000

    .line 605
    .line 606
    and-int/2addr p0, p1

    .line 607
    if-nez p0, :cond_1d

    .line 608
    .line 609
    iget-object p0, v10, Lio/appground/blek/MainActivity;->O:Llt;

    .line 610
    .line 611
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object p0

    .line 615
    check-cast p0, Lzn;

    .line 616
    .line 617
    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    iget-object p0, p0, Lzn;->m:Ljc3;

    .line 622
    .line 623
    invoke-virtual {p0, p1}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    :cond_1d
    new-instance p0, Lko2;

    .line 627
    .line 628
    invoke-direct {p0, v10, v4}, Lko2;-><init>(Lio/appground/blek/MainActivity;I)V

    .line 629
    .line 630
    .line 631
    new-instance p1, Lxg0;

    .line 632
    .line 633
    const v0, 0x696029da

    .line 634
    .line 635
    .line 636
    invoke-direct {p1, v0, p0, v5}, Lxg0;-><init>(ILjava/lang/Object;Z)V

    .line 637
    .line 638
    .line 639
    invoke-static {v10, p1}, Ljg0;->v(Lig0;Lxg0;)V

    .line 640
    .line 641
    .line 642
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ltj;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/appground/blek/MainActivity;->q()Lh4;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Lh4;->g:Lb10;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lb10;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-super {p0, p1}, Lig0;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    iget-object p0, p0, Lio/appground/blek/MainActivity;->O:Llt;

    .line 8
    .line 9
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lzn;

    .line 14
    .line 15
    iget-object p0, p0, Lzn;->m:Ljc3;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljc3;->setValue(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3}, Lig0;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 8
    .line 9
    .line 10
    array-length p1, p3

    .line 11
    const/4 p2, 0x0

    .line 12
    :goto_0
    if-ge p2, p1, :cond_1

    .line 13
    .line 14
    aget v0, p3, p2

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    add-int/lit8 p2, p2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    iget-object p0, p0, Lio/appground/blek/MainActivity;->L:Llt;

    .line 23
    .line 24
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lql0;

    .line 29
    .line 30
    invoke-virtual {p0}, Lql0;->j()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lig0;->onResume()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Leu5;->p(Lio/appground/blek/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    :catch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lzs5;->t(Landroid/content/Context;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lio/appground/blek/MainActivity;->L:Llt;

    .line 22
    .line 23
    invoke-virtual {p0}, Llt;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lql0;

    .line 28
    .line 29
    invoke-virtual {p0}, Lql0;->j()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final q()Lh4;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appground/blek/MainActivity;->I:Lh4;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/appground/blek/MainActivity;->J:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lio/appground/blek/MainActivity;->I:Lh4;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lh4;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lh4;-><init>(Lig0;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lio/appground/blek/MainActivity;->I:Lh4;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appground/blek/MainActivity;->I:Lh4;

    .line 27
    .line 28
    return-object p0
.end method

.method public final w()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/appground/blek/MainActivity;->q()Lh4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lh4;->w()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
