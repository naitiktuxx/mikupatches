.class public final Luy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfw0;
.implements Lcy;


# static fields
.field public static final i:Landroid/os/Handler;


# instance fields
.field public final a:Lkr0;

.field public b:J

.field public final c:Lay;

.field public final d:Ljava/util/HashMap;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final j:Ljava/util/HashSet;

.field public k:J

.field public final l:Ljava/util/HashSet;

.field public final o:Lp84;

.field public final q:Lwf4;

.field public final r:Landroid/app/Application;

.field public final s:Ljava/util/HashSet;

.field public final u:Ljava/util/HashMap;

.field public y:Ljava/lang/String;

.field public final z:Lp84;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Luy;->i:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lkr0;Lyy;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luy;->r:Landroid/app/Application;

    .line 5
    .line 6
    iput-object p2, p0, Luy;->a:Lkr0;

    .line 7
    .line 8
    iget-object p1, p3, Lyy;->v:Landroid/app/Application;

    .line 9
    .line 10
    new-instance p2, Lzx;

    .line 11
    .line 12
    invoke-direct {p2, p1}, Lzx;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p0, p2, Lzx;->m:Luy;

    .line 16
    .line 17
    new-instance p3, Lg06;

    .line 18
    .line 19
    const/16 v0, 0x11

    .line 20
    .line 21
    invoke-direct {p3, v0}, Lg06;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p2, Lzx;->v:Lg06;

    .line 25
    .line 26
    const/4 p3, 0x1

    .line 27
    iput-boolean p3, p2, Lzx;->w:Z

    .line 28
    .line 29
    iget-object v0, p2, Lzx;->m:Luy;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    iget-object v0, p2, Lzx;->v:Lg06;

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p2, Lzx;->v:Lg06;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, p2, Lzx;->m:Luy;

    .line 44
    .line 45
    iget-object v2, p2, Lzx;->v:Lg06;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p2, Lzx;->m:Luy;

    .line 50
    .line 51
    invoke-virtual {p2}, Lzx;->v()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    new-instance v3, Ldk5;

    .line 58
    .line 59
    invoke-direct {v3, v2, p1, v0, p2}, Ldk5;-><init>(Lg06;Landroid/content/Context;Luy;Lzx;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance v3, Lay;

    .line 64
    .line 65
    invoke-direct {v3, v2, p1, v0, p2}, Lay;-><init>(Lg06;Landroid/content/Context;Luy;Lzx;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p2}, Lzx;->v()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    new-instance v3, Ldk5;

    .line 76
    .line 77
    invoke-direct {v3, v2, p1, p2}, Ldk5;-><init>(Lg06;Landroid/content/Context;Lzx;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v3, Lay;

    .line 82
    .line 83
    invoke-direct {v3, v2, p1, p2}, Lay;-><init>(Lg06;Landroid/content/Context;Lzx;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iput-object v3, p0, Luy;->c:Lay;

    .line 87
    .line 88
    const-wide/16 p1, 0x3e8

    .line 89
    .line 90
    iput-wide p1, p0, Luy;->b:J

    .line 91
    .line 92
    const-wide/32 p1, -0xdbba00

    .line 93
    .line 94
    .line 95
    iput-wide p1, p0, Luy;->k:J

    .line 96
    .line 97
    new-instance p1, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Luy;->d:Ljava/util/HashMap;

    .line 103
    .line 104
    new-instance p1, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Luy;->u:Ljava/util/HashMap;

    .line 110
    .line 111
    new-instance p1, Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object p1, p0, Luy;->j:Ljava/util/HashSet;

    .line 117
    .line 118
    new-instance p1, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object p1, p0, Luy;->l:Ljava/util/HashSet;

    .line 124
    .line 125
    const/4 p1, 0x5

    .line 126
    invoke-static {p3, p1, v1}, Ly52;->n(IILa30;)Lp84;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Luy;->z:Lp84;

    .line 131
    .line 132
    const/4 p1, 0x7

    .line 133
    const/4 p2, 0x0

    .line 134
    invoke-static {p2, p1, v1}, Ly52;->n(IILa30;)Lp84;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iput-object p1, p0, Luy;->o:Lp84;

    .line 139
    .line 140
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-static {p1}, Lqe5;->k(Ljava/lang/Object;)Lwf4;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iput-object p1, p0, Luy;->q:Lwf4;

    .line 147
    .line 148
    if-nez p4, :cond_3

    .line 149
    .line 150
    new-instance p1, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    array-length p1, p4

    .line 157
    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p1}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    :goto_1
    iput-object p1, p0, Luy;->h:Ljava/util/List;

    .line 166
    .line 167
    if-nez p5, :cond_4

    .line 168
    .line 169
    new-instance p2, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_4
    array-length p2, p5

    .line 176
    invoke-static {p5, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p2}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    :goto_2
    iput-object p2, p0, Luy;->g:Ljava/util/List;

    .line 185
    .line 186
    new-instance p3, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object p3, p0, Luy;->s:Ljava/util/HashSet;

    .line 192
    .line 193
    if-eqz p6, :cond_5

    .line 194
    .line 195
    array-length p4, p6

    .line 196
    invoke-static {p6, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p4

    .line 200
    invoke-static {p4}, Lqd0;->h([Ljava/lang/Object;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    invoke-virtual {p3, p4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 205
    .line 206
    .line 207
    :cond_5
    invoke-virtual {p0, p1}, Luy;->c(Ljava/util/List;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p2}, Luy;->c(Ljava/util/List;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, p0}, Lay;->p(Lcy;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    const-string p0, "Pending purchases for one-time products must be supported."

    .line 218
    .line 219
    invoke-static {p0}, Lc0;->k(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v1

    .line 223
    :cond_7
    const-string p0, "Please provide a valid listener for purchases updates."

    .line 224
    .line 225
    invoke-static {p0}, Lc0;->k(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1
.end method

.method public static final m(Luy;[Ljava/lang/String;Ljava/lang/String;Llo0;)Ljava/io/Serializable;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p3, Lmy;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p3

    .line 9
    check-cast v0, Lmy;

    .line 10
    .line 11
    iget v1, v0, Lmy;->b:I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    and-int v3, v1, v2

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v2

    .line 20
    iput v1, v0, Lmy;->b:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lmy;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3}, Lmy;-><init>(Luy;Llo0;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object p3, v0, Lmy;->g:Ljava/lang/Object;

    .line 29
    .line 30
    iget v1, v0, Lmy;->b:I

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v2, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Lmy;->h:[Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p3}, Ljh5;->n(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lc0;->y(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {p3}, Ljh5;->n(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Luy;->c:Lay;

    .line 54
    .line 55
    new-instance p3, Lum2;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p2, p3, Lum2;->r:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p3}, Lum2;->v()Le3;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p1, v0, Lmy;->h:[Ljava/lang/String;

    .line 67
    .line 68
    iput v2, v0, Lmy;->b:I

    .line 69
    .line 70
    invoke-static {p0, p2, v0}, Lnw5;->r(Lay;Le3;Llo0;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    sget-object p0, Llr0;->r:Llr0;

    .line 75
    .line 76
    if-ne p3, p0, :cond_3

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    :goto_1
    check-cast p3, Lgn3;

    .line 80
    .line 81
    iget-object p0, p3, Lgn3;->v:Lgz;

    .line 82
    .line 83
    new-instance p2, Ljava/util/LinkedList;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lgz;->v:I

    .line 89
    .line 90
    if-eqz p0, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    iget-object p0, p3, Lgn3;->e:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eqz p3, :cond_8

    .line 104
    .line 105
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    check-cast p3, Lcom/android/billingclient/api/Purchase;

    .line 110
    .line 111
    array-length v0, p1

    .line 112
    const/4 v1, 0x0

    .line 113
    move v2, v1

    .line 114
    :goto_2
    if-ge v2, v0, :cond_5

    .line 115
    .line 116
    aget-object v3, p1, v2

    .line 117
    .line 118
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->v()Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    move v6, v1

    .line 127
    :cond_6
    :goto_3
    if-ge v6, v5, :cond_7

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    add-int/lit8 v6, v6, 0x1

    .line 134
    .line 135
    check-cast v7, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v7, v3}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_6

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    :goto_4
    return-object p2
.end method

.method public static final p(Luy;Lcom/android/billingclient/api/Purchase;ILlo0;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string v0, "obfuscatedAccountId"

    .line 2
    .line 3
    const-string v1, "obfuscatedProfileId"

    .line 4
    .line 5
    instance-of v2, p3, Lty;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, p3

    .line 10
    check-cast v2, Lty;

    .line 11
    .line 12
    iget v3, v2, Lty;->k:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lty;->k:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lty;

    .line 25
    .line 26
    invoke-direct {v2, p0, p3}, Lty;-><init>(Luy;Llo0;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p3, v2, Lty;->s:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lty;->k:I

    .line 32
    .line 33
    sget-object v4, Loz4;->v:Loz4;

    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-ne v3, v5, :cond_1

    .line 40
    .line 41
    iget-object p1, v2, Lty;->g:Lal3;

    .line 42
    .line 43
    iget-object p2, v2, Lty;->h:Lcom/android/billingclient/api/Purchase;

    .line 44
    .line 45
    invoke-static {p3}, Ljh5;->n(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object p3, p1

    .line 49
    move-object p1, p2

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lc0;->y(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v6

    .line 58
    :cond_2
    invoke-static {p3}, Ljh5;->n(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p3, p0, Luy;->u:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->v()Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Lpd0;->i(Ljava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Lwf4;

    .line 76
    .line 77
    if-eqz p3, :cond_13

    .line 78
    .line 79
    invoke-virtual {p3}, Lwf4;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    check-cast p3, Lal3;

    .line 84
    .line 85
    if-nez p3, :cond_3

    .line 86
    .line 87
    goto/16 :goto_b

    .line 88
    .line 89
    :cond_3
    iget-object v3, p3, Lal3;->w:Ljava/lang/String;

    .line 90
    .line 91
    const-string v7, "subs"

    .line 92
    .line 93
    invoke-static {v3, v7}, Lz52;->p(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const-string v7, ""

    .line 98
    .line 99
    const-wide/16 v8, 0x0

    .line 100
    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    iget-object v3, p3, Lal3;->a:Ljava/util/ArrayList;

    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    invoke-static {v3}, Lpd0;->f(Ljava/util/List;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lzk3;

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    iget-object v3, v3, Lzk3;->e:Lyk3;

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    iget-object v3, v3, Lyk3;->v:Ljava/util/ArrayList;

    .line 120
    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    invoke-static {v3}, Lpd0;->f(Ljava/util/List;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lxk3;

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    move-object v3, v6

    .line 131
    :goto_1
    new-instance v10, Lvb3;

    .line 132
    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    iget-wide v8, v3, Lxk3;->e:J

    .line 136
    .line 137
    :cond_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    if-eqz v3, :cond_7

    .line 142
    .line 143
    iget-object v3, v3, Lxk3;->m:Ljava/lang/String;

    .line 144
    .line 145
    if-nez v3, :cond_6

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    move-object v7, v3

    .line 149
    :cond_7
    :goto_2
    invoke-direct {v10, v8, v7}, Lvb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_8
    invoke-virtual {p3}, Lal3;->v()Lwk3;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    new-instance v10, Lvb3;

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    iget-wide v8, v3, Lwk3;->e:J

    .line 162
    .line 163
    :cond_9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    if-eqz v3, :cond_b

    .line 168
    .line 169
    iget-object v3, v3, Lwk3;->m:Ljava/lang/String;

    .line 170
    .line 171
    if-nez v3, :cond_a

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_a
    move-object v7, v3

    .line 175
    :cond_b
    :goto_3
    invoke-direct {v10, v8, v7}, Lvb3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    iget-object v3, v10, Lvb3;->r:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v3, Ljava/lang/Number;

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide v7

    .line 186
    iget-object v3, v10, Lvb3;->a:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v3, Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    iget-object v9, p3, Lal3;->m:Ljava/lang/String;

    .line 195
    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v11, "&pcc="

    .line 199
    .line 200
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v3, "&pam="

    .line 207
    .line 208
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v3, "&sku="

    .line 215
    .line 216
    invoke-static {v10, v3, v9}, Lae4;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    new-instance v8, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v9, "https://anleitung-backend.appspot.com/api/report?ack="

    .line 227
    .line 228
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string p2, "&b=0&t="

    .line 235
    .line 236
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    iput-object p1, v2, Lty;->h:Lcom/android/billingclient/api/Purchase;

    .line 250
    .line 251
    iput-object p3, v2, Lty;->g:Lal3;

    .line 252
    .line 253
    iput v5, v2, Lty;->k:I

    .line 254
    .line 255
    sget-object v3, Lp31;->v:Lnw0;

    .line 256
    .line 257
    sget-object v3, Lvv0;->c:Lvv0;

    .line 258
    .line 259
    new-instance v7, Liv;

    .line 260
    .line 261
    const/16 v8, 0x9

    .line 262
    .line 263
    invoke-direct {v7, p2, v6, v8}, Liv;-><init>(Ljava/lang/Object;Ljo0;I)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v7, v2}, Lcx5;->a(Lbr0;Lbq1;Ljo0;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    sget-object v2, Llr0;->r:Llr0;

    .line 271
    .line 272
    if-ne p2, v2, :cond_c

    .line 273
    .line 274
    return-object v2

    .line 275
    :cond_c
    :goto_5
    :try_start_0
    iget-object p2, p1, Lcom/android/billingclient/api/Purchase;->m:Lorg/json/JSONObject;

    .line 276
    .line 277
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    if-nez v2, :cond_d

    .line 286
    .line 287
    if-nez p2, :cond_d

    .line 288
    .line 289
    move-object v3, v6

    .line 290
    goto :goto_6

    .line 291
    :cond_d
    new-instance v3, Ld3;

    .line 292
    .line 293
    invoke-direct {v3, v2, p2}, Ld3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :goto_6
    if-eqz v3, :cond_e

    .line 297
    .line 298
    iget-object p2, v3, Ld3;->v:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz p2, :cond_e

    .line 301
    .line 302
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 303
    .line 304
    .line 305
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_7

    .line 307
    :catch_0
    :cond_e
    move-object p2, v6

    .line 308
    :goto_7
    :try_start_1
    iget-object v2, p1, Lcom/android/billingclient/api/Purchase;->m:Lorg/json/JSONObject;

    .line 309
    .line 310
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    if-nez v0, :cond_f

    .line 319
    .line 320
    if-nez v1, :cond_f

    .line 321
    .line 322
    move-object v2, v6

    .line 323
    goto :goto_8

    .line 324
    :cond_f
    new-instance v2, Ld3;

    .line 325
    .line 326
    invoke-direct {v2, v0, v1}, Ld3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :goto_8
    if-eqz v2, :cond_10

    .line 330
    .line 331
    iget-object v0, v2, Ld3;->e:Ljava/lang/String;

    .line 332
    .line 333
    if-eqz v0, :cond_10

    .line 334
    .line 335
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 336
    .line 337
    .line 338
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :catch_1
    :cond_10
    iget-object p0, p0, Luy;->r:Landroid/app/Application;

    .line 340
    .line 341
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    new-instance v0, Lks3;

    .line 352
    .line 353
    invoke-direct {v0}, Lks3;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    iput-object p0, v0, Lks3;->c:Ljava/lang/String;

    .line 361
    .line 362
    iput v5, v0, Lks3;->h:I

    .line 363
    .line 364
    if-eqz p2, :cond_11

    .line 365
    .line 366
    invoke-static {p2}, Lrn2;->D(Ljava/util/UUID;)[B

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    goto :goto_9

    .line 371
    :cond_11
    iget-object p0, v0, Lks3;->g:[B

    .line 372
    .line 373
    :goto_9
    iput-object p0, v0, Lks3;->g:[B

    .line 374
    .line 375
    if-eqz v6, :cond_12

    .line 376
    .line 377
    invoke-static {v6}, Lrn2;->D(Ljava/util/UUID;)[B

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    goto :goto_a

    .line 382
    :cond_12
    iget-object p0, v0, Lks3;->s:[B

    .line 383
    .line 384
    :goto_a
    iput-object p0, v0, Lks3;->s:[B

    .line 385
    .line 386
    iput-object p1, v0, Lks3;->b:Ljava/lang/String;

    .line 387
    .line 388
    invoke-static {p3}, Lrn2;->E(Lal3;)Ljs3;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    new-array p1, v5, [Ljs3;

    .line 393
    .line 394
    const/4 p2, 0x0

    .line 395
    aput-object p0, p1, p2

    .line 396
    .line 397
    iput-object p1, v0, Lks3;->k:[Ljs3;

    .line 398
    .line 399
    invoke-static {v0}, Lrn2;->C(Lks3;)V

    .line 400
    .line 401
    .line 402
    :cond_13
    :goto_b
    return-object v4
.end method

.method public static final v(Luy;Lcom/android/billingclient/api/Purchase;Llo0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Luy;->j:Ljava/util/HashSet;

    .line 2
    .line 3
    instance-of v1, p2, Ljy;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Ljy;

    .line 9
    .line 10
    iget v2, v1, Ljy;->b:I

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
    iput v2, v1, Ljy;->b:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljy;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Ljy;-><init>(Luy;Llo0;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Ljy;->g:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Ljy;->b:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    iget-object p1, v1, Ljy;->h:Lcom/android/billingclient/api/Purchase;

    .line 39
    .line 40
    invoke-static {p2}, Ljh5;->n(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lc0;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :cond_2
    invoke-static {p2}, Ljh5;->n(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Luy;->c:Lay;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    new-instance v6, Le3;

    .line 72
    .line 73
    invoke-direct {v6, v5}, Le3;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v2, v6, Le3;->e:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p1, v1, Ljy;->h:Lcom/android/billingclient/api/Purchase;

    .line 79
    .line 80
    iput v5, v1, Ljy;->b:I

    .line 81
    .line 82
    invoke-static {}, Ljf5;->v()Lpf0;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v5, Lrr3;

    .line 87
    .line 88
    const/4 v7, 0x6

    .line 89
    invoke-direct {v5, v7, v3}, Lrr3;-><init>(IZ)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v5, Lrr3;->a:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {p2, v6, v5}, Lay;->e(Le3;Lrr3;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Lpf0;->v0(Llo0;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    sget-object v1, Llr0;->r:Llr0;

    .line 102
    .line 103
    if-ne p2, v1, :cond_4

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_4
    :goto_1
    check-cast p2, Lym0;

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object p2, p2, Lym0;->v:Lgz;

    .line 112
    .line 113
    iget p2, p2, Lgz;->v:I

    .line 114
    .line 115
    if-nez p2, :cond_5

    .line 116
    .line 117
    iget-object p2, p0, Luy;->a:Lkr0;

    .line 118
    .line 119
    new-instance v0, Lg;

    .line 120
    .line 121
    const/16 v1, 0xb

    .line 122
    .line 123
    invoke-direct {v0, p0, p1, v4, v1}, Lg;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljo0;I)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x3

    .line 127
    invoke-static {p2, v4, v0, v1}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->v()Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    :goto_2
    if-ge v3, p2, :cond_5

    .line 139
    .line 140
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    check-cast v0, Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object v1, Ley;->r:Ley;

    .line 152
    .line 153
    invoke-virtual {p0, v0, v1}, Luy;->u(Ljava/lang/String;Ley;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    :goto_3
    sget-object p0, Loz4;->v:Loz4;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_6
    const-string p0, "Purchase token must be set"

    .line 161
    .line 162
    invoke-static {p0}, Lc0;->k(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v4
.end method

.method public static final w(Luy;Llo0;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Luy;->g:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, v0, Luy;->c:Lay;

    .line 8
    .line 9
    iget-object v4, v0, Luy;->h:Ljava/util/List;

    .line 10
    .line 11
    instance-of v5, v1, Lry;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    move-object v5, v1

    .line 16
    check-cast v5, Lry;

    .line 17
    .line 18
    iget v6, v5, Lry;->s:I

    .line 19
    .line 20
    const/high16 v7, -0x80000000

    .line 21
    .line 22
    and-int v8, v6, v7

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v7

    .line 27
    iput v6, v5, Lry;->s:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v5, Lry;

    .line 31
    .line 32
    invoke-direct {v5, v0, v1}, Lry;-><init>(Luy;Llo0;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v1, v5, Lry;->h:Ljava/lang/Object;

    .line 36
    .line 37
    iget v6, v5, Lry;->s:I

    .line 38
    .line 39
    const/4 v7, 0x7

    .line 40
    const/16 v8, 0x1b

    .line 41
    .line 42
    const/16 v9, 0xf

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    const-string v12, "Product list must be set to a non empty list."

    .line 47
    .line 48
    const/4 v13, 0x2

    .line 49
    const/4 v14, 0x1

    .line 50
    sget-object v15, Llr0;->r:Llr0;

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    if-eq v6, v14, :cond_2

    .line 55
    .line 56
    if-ne v6, v13, :cond_1

    .line 57
    .line 58
    invoke-static {v1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-static {v0}, Lc0;->y(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :cond_2
    invoke-static {v1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object/from16 p1, v10

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    :cond_4
    move-object/from16 p1, v10

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/lang/String;

    .line 109
    .line 110
    move-object/from16 p1, v10

    .line 111
    .line 112
    new-instance v10, Ld32;

    .line 113
    .line 114
    invoke-direct {v10, v9, v11}, Ld32;-><init>(IZ)V

    .line 115
    .line 116
    .line 117
    iput-object v6, v10, Ld32;->a:Ljava/lang/Object;

    .line 118
    .line 119
    const-string v6, "inapp"

    .line 120
    .line 121
    iput-object v6, v10, Ld32;->c:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v10}, Ld32;->s()Lln3;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-object/from16 v10, p1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    move-object/from16 p1, v10

    .line 134
    .line 135
    new-instance v4, Lrr3;

    .line 136
    .line 137
    invoke-direct {v4, v8, v11}, Lrr3;-><init>(IZ)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v1}, Lrr3;->A(Ljava/util/ArrayList;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v4, Lrr3;->a:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Lvh5;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    new-instance v1, Lbv3;

    .line 150
    .line 151
    invoke-direct {v1, v4}, Lbv3;-><init>(Lrr3;)V

    .line 152
    .line 153
    .line 154
    iput v14, v5, Lry;->s:I

    .line 155
    .line 156
    invoke-static {}, Ljf5;->v()Lpf0;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    new-instance v6, Lbv3;

    .line 161
    .line 162
    invoke-direct {v6, v7, v11}, Lbv3;-><init>(IZ)V

    .line 163
    .line 164
    .line 165
    iput-object v4, v6, Lbv3;->a:Ljava/lang/Object;

    .line 166
    .line 167
    invoke-virtual {v3, v1, v6}, Lay;->w(Lbv3;Lbv3;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Lpf0;->v0(Llo0;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-ne v1, v15, :cond_7

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_7
    :goto_2
    check-cast v1, Lbl3;

    .line 178
    .line 179
    iget-object v4, v1, Lbl3;->v:Lgz;

    .line 180
    .line 181
    iget-object v1, v1, Lbl3;->e:Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {v0, v4, v1}, Luy;->g(Lgz;Ljava/util/List;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    invoke-static {v12}, Lc0;->k(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object p1

    .line 191
    :goto_3
    if-eqz v2, :cond_d

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_a

    .line 214
    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    check-cast v4, Ljava/lang/String;

    .line 220
    .line 221
    new-instance v6, Ld32;

    .line 222
    .line 223
    invoke-direct {v6, v9, v11}, Ld32;-><init>(IZ)V

    .line 224
    .line 225
    .line 226
    iput-object v4, v6, Ld32;->a:Ljava/lang/Object;

    .line 227
    .line 228
    const-string v4, "subs"

    .line 229
    .line 230
    iput-object v4, v6, Ld32;->c:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-virtual {v6}, Ld32;->s()Lln3;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    new-instance v2, Lrr3;

    .line 241
    .line 242
    invoke-direct {v2, v8, v11}, Lrr3;-><init>(IZ)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v1}, Lrr3;->A(Ljava/util/ArrayList;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v2, Lrr3;->a:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Lvh5;

    .line 251
    .line 252
    if-eqz v1, :cond_c

    .line 253
    .line 254
    new-instance v1, Lbv3;

    .line 255
    .line 256
    invoke-direct {v1, v2}, Lbv3;-><init>(Lrr3;)V

    .line 257
    .line 258
    .line 259
    iput v13, v5, Lry;->s:I

    .line 260
    .line 261
    invoke-static {}, Ljf5;->v()Lpf0;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    new-instance v4, Lbv3;

    .line 266
    .line 267
    invoke-direct {v4, v7, v11}, Lbv3;-><init>(IZ)V

    .line 268
    .line 269
    .line 270
    iput-object v2, v4, Lbv3;->a:Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {v3, v1, v4}, Lay;->w(Lbv3;Lbv3;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v5}, Lpf0;->v0(Llo0;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    if-ne v1, v15, :cond_b

    .line 280
    .line 281
    :goto_5
    return-object v15

    .line 282
    :cond_b
    :goto_6
    check-cast v1, Lbl3;

    .line 283
    .line 284
    iget-object v2, v1, Lbl3;->v:Lgz;

    .line 285
    .line 286
    iget-object v1, v1, Lbl3;->e:Ljava/util/List;

    .line 287
    .line 288
    invoke-virtual {v0, v2, v1}, Luy;->g(Lgz;Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_c
    invoke-static {v12}, Lc0;->k(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    return-object p1

    .line 296
    :cond_d
    :goto_7
    sget-object v0, Loz4;->v:Loz4;

    .line 297
    .line 298
    return-object v0
.end method


# virtual methods
.method public final a(Lvi2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->v()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_1
    if-ge v4, v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    check-cast v5, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v6, p0, Luy;->d:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lwf4;

    .line 51
    .line 52
    if-nez v6, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    iget-object v1, v3, Lcom/android/billingclient/api/Purchase;->m:Lorg/json/JSONObject;

    .line 60
    .line 61
    const-string v2, "purchaseState"

    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x4

    .line 69
    if-eq v1, v2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Luy;->j(Lcom/android/billingclient/api/Purchase;)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Ltq3;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lp3;

    .line 80
    .line 81
    const/4 v7, 0x6

    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v4, p0

    .line 84
    invoke-direct/range {v2 .. v7}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljo0;I)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x3

    .line 88
    iget-object v1, v4, Luy;->a:Lkr0;

    .line 89
    .line 90
    invoke-static {v1, v6, v2, p0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 91
    .line 92
    .line 93
    move-object p0, v4

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    move-object v4, p0

    .line 96
    invoke-virtual {v4, v3}, Luy;->j(Lcom/android/billingclient/api/Purchase;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move-object v4, p0

    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_4

    .line 124
    .line 125
    sget-object p2, Ley;->r:Ley;

    .line 126
    .line 127
    invoke-virtual {v4, p1, p2}, Luy;->u(Ljava/lang/String;Ley;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v1, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "SKU_"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {}, Ley;->values()[Ley;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    aget-object v1, v2, v1

    .line 49
    .line 50
    invoke-static {v1}, Lqe5;->k(Ljava/lang/Object;)Lwf4;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {v2}, Lqe5;->k(Ljava/lang/Object;)Lwf4;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lj1;->r()Lli4;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v6, Lhy;

    .line 64
    .line 65
    invoke-direct {v6, v3, v5}, Lhy;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v6}, Lpw5;->n(Lqi1;)Lqi1;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v5, Liy;

    .line 73
    .line 74
    invoke-direct {v5, p0, v2}, Liy;-><init>(Luy;Ljo0;)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Lgj1;

    .line 78
    .line 79
    const/4 v7, 0x2

    .line 80
    invoke-direct {v6, v3, v5, v7}, Lgj1;-><init>(Lqi1;Lbq1;I)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lfo;

    .line 84
    .line 85
    const/16 v5, 0x9

    .line 86
    .line 87
    invoke-direct {v3, v6, v2, v5}, Lfo;-><init>(Ljava/lang/Object;Ljo0;I)V

    .line 88
    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    iget-object v6, p0, Luy;->a:Lkr0;

    .line 92
    .line 93
    invoke-static {v6, v2, v3, v5}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Luy;->d:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Luy;->u:Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public final d(Llo0;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lsy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lsy;

    .line 7
    .line 8
    iget v1, v0, Lsy;->s:I

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
    iput v1, v0, Lsy;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lsy;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lsy;-><init>(Luy;Llo0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lsy;->h:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lsy;->s:I

    .line 28
    .line 29
    iget-object v2, p0, Luy;->c:Lay;

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    sget-object v5, Llr0;->r:Llr0;

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    if-eq v1, v4, :cond_2

    .line 38
    .line 39
    if-ne v1, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lc0;->y(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-static {p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p1}, Ljh5;->n(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lum2;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "inapp"

    .line 65
    .line 66
    iput-object v1, p1, Lum2;->r:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lum2;->v()Le3;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput v4, v0, Lsy;->s:I

    .line 73
    .line 74
    invoke-static {v2, p1, v0}, Lnw5;->r(Lay;Le3;Llo0;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v5, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    :goto_1
    check-cast p1, Lgn3;

    .line 82
    .line 83
    iget-object v1, p1, Lgn3;->v:Lgz;

    .line 84
    .line 85
    iget v1, v1, Lgz;->v:I

    .line 86
    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    iget-object p1, p1, Lgn3;->e:Ljava/util/List;

    .line 91
    .line 92
    iget-object v1, p0, Luy;->h:Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {p0, p1, v1}, Luy;->b(Ljava/util/List;Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    new-instance p1, Lum2;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "subs"

    .line 103
    .line 104
    iput-object v1, p1, Lum2;->r:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1}, Lum2;->v()Le3;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput v3, v0, Lsy;->s:I

    .line 111
    .line 112
    invoke-static {v2, p1, v0}, Lnw5;->r(Lay;Le3;Llo0;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-ne p1, v5, :cond_6

    .line 117
    .line 118
    :goto_3
    return-object v5

    .line 119
    :cond_6
    :goto_4
    check-cast p1, Lgn3;

    .line 120
    .line 121
    iget-object v0, p1, Lgn3;->v:Lgz;

    .line 122
    .line 123
    iget v0, v0, Lgz;->v:I

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_7
    iget-object p1, p1, Lgn3;->e:Ljava/util/List;

    .line 129
    .line 130
    iget-object v0, p0, Luy;->g:Ljava/util/List;

    .line 131
    .line 132
    invoke-virtual {p0, p1, v0}, Luy;->b(Ljava/util/List;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    :goto_5
    sget-object p0, Loz4;->v:Loz4;

    .line 136
    .line 137
    return-object p0
.end method

.method public final e(Lvi2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lgz;Ljava/util/List;)V
    .locals 4

    .line 1
    iget v0, p1, Lgz;->v:I

    .line 2
    .line 3
    iget-object p1, p1, Lgz;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, " "

    .line 9
    .line 10
    const-string v2, "onProductDetailsResponse: "

    .line 11
    .line 12
    const-string v3, "uy"

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_0
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Lal3;

    .line 63
    .line 64
    iget-object v1, p2, Lal3;->m:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Luy;->u:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lwf4;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2, p2}, Lwf4;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_2
    :goto_1
    :pswitch_2
    if-nez v0, :cond_3

    .line 106
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    iput-wide p1, p0, Luy;->k:J

    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    const-wide/32 p1, -0xdbba00

    .line 115
    .line 116
    .line 117
    iput-wide p1, p0, Luy;->k:J

    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lcom/android/billingclient/api/Purchase;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/billingclient/api/Purchase;->m:Lorg/json/JSONObject;

    .line 2
    .line 3
    sget-object v1, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->v()Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :cond_0
    :goto_0
    if-ge v3, v2, :cond_6

    .line 22
    .line 23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    check-cast v4, Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, p0, Luy;->d:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lwf4;

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v6, "purchaseState"

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const/4 v8, 0x4

    .line 50
    const/4 v9, 0x2

    .line 51
    if-eq v6, v8, :cond_2

    .line 52
    .line 53
    move v6, v7

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v6, v9

    .line 56
    :goto_1
    const/4 v8, 0x0

    .line 57
    if-eq v6, v7, :cond_4

    .line 58
    .line 59
    if-eq v6, v9, :cond_3

    .line 60
    .line 61
    move-object v6, v8

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    sget-object v6, Ley;->a:Ley;

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const-string v6, "acknowledged"

    .line 67
    .line 68
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    sget-object v6, Ley;->h:Ley;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    sget-object v6, Ley;->c:Ley;

    .line 78
    .line 79
    :goto_2
    if-eqz v6, :cond_0

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string v7, "SKU_"

    .line 88
    .line 89
    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v8, v6}, Lwf4;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final k(Lvi2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Lvi2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    new-instance v0, Lq;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1, p0}, Lq;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-wide v1, p0, Luy;->b:J

    .line 8
    .line 9
    sget-object v3, Luy;->i:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Luy;->b:J

    .line 15
    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    mul-long/2addr v0, v2

    .line 19
    const-wide/32 v2, 0xdbba0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Luy;->b:J

    .line 27
    .line 28
    return-void
.end method

.method public final s(Lgz;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lgz;->v:I

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, Luy;->a:Lkr0;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p2, v2}, Luy;->b(Ljava/util/List;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lqy;

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-direct {p1, p0, v2, p2}, Lqy;-><init>(Luy;Ljo0;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2, p1, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    new-instance p1, Lqy;

    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    invoke-direct {p1, p0, v2, p2}, Lqy;-><init>(Luy;Ljo0;I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, p1, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final t(Lgz;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lgz;->v:I

    .line 5
    .line 6
    iget-object p1, p1, Lgz;->m:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, 0x3e8

    .line 14
    .line 15
    iput-wide v0, p0, Luy;->b:J

    .line 16
    .line 17
    new-instance p1, Lqy;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p1, p0, v1, v0}, Lqy;-><init>(Luy;Ljo0;I)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    iget-object p0, p0, Luy;->a:Lkr0;

    .line 26
    .line 27
    invoke-static {p0, v1, p1, v0}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Lq;

    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    invoke-direct {p1, v0, p0}, Lq;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-wide v0, p0, Luy;->b:J

    .line 38
    .line 39
    sget-object v2, Luy;->i:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    iget-wide v0, p0, Luy;->b:J

    .line 45
    .line 46
    const-wide/16 v2, 0x2

    .line 47
    .line 48
    mul-long/2addr v0, v2

    .line 49
    const-wide/32 v2, 0xdbba0

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iput-wide v0, p0, Luy;->b:J

    .line 57
    .line 58
    return-void
.end method

.method public final u(Ljava/lang/String;Ley;)V
    .locals 3

    .line 1
    sget-object v0, Lvc0;->z:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v1, "SKU_"

    .line 14
    .line 15
    invoke-static {v1, p1}, Lae4;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Luy;->d:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lwf4;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lwf4;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final y(Lvi2;)V
    .locals 2

    .line 1
    iget-object p1, p0, Luy;->q:Lwf4;

    .line 2
    .line 3
    invoke-virtual {p1}, Lwf4;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Luy;->c:Lay;

    .line 16
    .line 17
    iget-boolean v0, p1, Lay;->A:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lay;->C()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lqy;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {p1, p0, v0, v1}, Lqy;-><init>(Luy;Ljo0;I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Luy;->a:Lkr0;

    .line 37
    .line 38
    invoke-static {p0, v0, p1, v1}, Lcx5;->w(Lkr0;Lbr0;Lbq1;I)Lbf4;

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final z(Lvi2;)V
    .locals 0

    .line 1
    return-void
.end method
