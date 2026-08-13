.class public final Lcom/truecaller/common/ui/avatar/AvatarXConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "Landroid/os/Parcelable;",
        "common-ui_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Ljava/lang/Integer;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqm/qux;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lqm/qux;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZZZZZZZZZZZLjava/lang/String;ZZZZLcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;)V
    .locals 2

    move-object/from16 v0, p32

    const-string v1, "manualBlockAvatarPolicy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    .line 9
    iput-boolean p8, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    .line 10
    const/4 p9, 0x1

    iput-boolean p9, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    .line 11
    iput-boolean p10, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    .line 12
    iput-boolean p11, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    .line 13
    iput-boolean p12, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    .line 14
    iput-boolean p13, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    move/from16 p1, p14

    .line 15
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    move-object/from16 p1, p15

    .line 16
    iput-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    move/from16 p1, p16

    .line 17
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    move/from16 p1, p17

    .line 18
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    move/from16 p1, p18

    .line 19
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    move/from16 p1, p19

    .line 20
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    move/from16 p1, p20

    .line 21
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    move/from16 p1, p21

    .line 22
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    move/from16 p1, p22

    .line 23
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    move/from16 p1, p23

    .line 24
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    move/from16 p1, p24

    .line 25
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    move/from16 p1, p25

    .line 26
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    move/from16 p1, p26

    .line 27
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    move-object/from16 p1, p27

    .line 28
    iput-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    move/from16 p1, p28

    .line 29
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    move/from16 p1, p29

    .line 30
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    move/from16 p1, p30

    .line 31
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    move/from16 p1, p31

    .line 32
    iput-boolean p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    .line 33
    iput-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLjava/lang/Integer;ZZZZZLjava/lang/String;ZZI)V
    .locals 36

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move/from16 v8, p4

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move/from16 v10, p6

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move v11, v3

    goto :goto_6

    :cond_6
    move/from16 v11, p7

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move v12, v3

    goto :goto_7

    :cond_7
    move/from16 v12, p8

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move v13, v3

    goto :goto_8

    :cond_8
    move/from16 v13, p9

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move v14, v3

    goto :goto_9

    :cond_9
    move/from16 v14, p10

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    move v15, v3

    goto :goto_a

    :cond_a
    move/from16 v15, p11

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    move/from16 v16, v3

    goto :goto_b

    :cond_b
    move/from16 v16, p12

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    const/4 v6, 0x1

    if-eqz v1, :cond_c

    move/from16 v17, v3

    goto :goto_c

    :cond_c
    move/from16 v17, v6

    :goto_c
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    move-object/from16 v18, v2

    goto :goto_d

    :cond_d
    move-object/from16 v18, p13

    :goto_d
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move/from16 v19, v3

    goto :goto_e

    :cond_e
    move/from16 v19, p14

    :goto_e
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move/from16 v20, v3

    goto :goto_f

    :cond_f
    move/from16 v20, v6

    :goto_f
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v21, v3

    goto :goto_10

    :cond_10
    move/from16 v21, p15

    :goto_10
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move/from16 v22, v3

    goto :goto_11

    :cond_11
    move/from16 v22, v6

    :goto_11
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v23, v3

    goto :goto_12

    :cond_12
    move/from16 v23, v6

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move/from16 v24, v6

    goto :goto_13

    :cond_13
    move/from16 v24, v3

    :goto_13
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move/from16 v25, v6

    goto :goto_14

    :cond_14
    move/from16 v25, v3

    :goto_14
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move/from16 v26, v3

    goto :goto_15

    :cond_15
    move/from16 v26, v6

    :goto_15
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    move/from16 v27, v3

    goto :goto_16

    :cond_16
    move/from16 v27, p16

    :goto_16
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    move/from16 v28, v3

    goto :goto_17

    :cond_17
    move/from16 v28, p17

    :goto_17
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    move/from16 v29, v3

    goto :goto_18

    :cond_18
    move/from16 v29, p18

    :goto_18
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    move-object/from16 v30, v2

    goto :goto_19

    :cond_19
    move-object/from16 v30, p19

    :goto_19
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    move/from16 v31, v3

    goto :goto_1a

    :cond_1a
    move/from16 v31, p20

    :goto_1a
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    move/from16 v32, v3

    goto :goto_1b

    :cond_1b
    move/from16 v32, p21

    :goto_1b
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1c

    move/from16 v33, v3

    goto :goto_1c

    :cond_1c
    move/from16 v33, v6

    :goto_1c
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 34
    sget-object v0, Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$BlockIconManualBlockAvatarPolicy;->a:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$BlockIconManualBlockAvatarPolicy;

    :goto_1d
    move-object/from16 v35, v0

    goto :goto_1e

    .line 35
    :cond_1d
    sget-object v0, Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$ProfilePictureManualBlockAvatarPolicy;->a:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$ProfilePictureManualBlockAvatarPolicy;

    goto :goto_1d

    :goto_1e
    const/4 v6, 0x0

    const/16 v34, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v35}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZZZZZZZZZZZLjava/lang/String;ZZZZLcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    if-eqz p1, :cond_0

    .line 36
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/16 v22, 0x0

    const/16 v23, -0xa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v23}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZLjava/lang/Integer;ZZZZZLjava/lang/String;ZZI)V

    return-void
.end method

.method public static a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;ZZZZLjava/lang/Integer;ZZZZZLjava/lang/String;ZZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    iget-object v6, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    move v8, v2

    goto :goto_2

    :cond_2
    move/from16 v8, p3

    :goto_2
    iget-boolean v9, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    iget-boolean v10, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    iget-boolean v11, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    move v12, v2

    goto :goto_3

    :cond_3
    move/from16 v12, p4

    :goto_3
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    move v13, v2

    goto :goto_4

    :cond_4
    move/from16 v13, p5

    :goto_4
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    move v14, v2

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    move v15, v2

    goto :goto_6

    :cond_6
    move/from16 v15, p6

    :goto_6
    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    iget-boolean v3, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    move/from16 v16, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    move-object/from16 v18, v2

    goto :goto_7

    :cond_7
    move-object/from16 v18, p7

    :goto_7
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    move/from16 v19, v2

    goto :goto_8

    :cond_8
    move/from16 v19, p8

    :goto_8
    iget-boolean v2, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    const/high16 v17, 0x40000

    and-int v17, p16, v17

    move/from16 v21, v1

    if-eqz v17, :cond_9

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    move/from16 v22, v1

    goto :goto_9

    :cond_9
    move/from16 v22, p9

    :goto_9
    const/high16 v1, 0x80000

    and-int v1, p16, v1

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    move/from16 v23, v1

    goto :goto_a

    :cond_a
    move/from16 v23, p10

    :goto_a
    const/high16 v1, 0x100000

    and-int v1, p16, v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    move/from16 v24, v1

    goto :goto_b

    :cond_b
    const/16 v24, 0x0

    :goto_b
    const/high16 v1, 0x200000

    and-int v1, p16, v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    move/from16 v25, v1

    goto :goto_c

    :cond_c
    const/16 v25, 0x0

    :goto_c
    const/high16 v1, 0x400000

    and-int v1, p16, v1

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    :goto_d
    move/from16 v26, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x1

    goto :goto_d

    :goto_e
    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    const/high16 v17, 0x1000000

    and-int v17, p16, v17

    move/from16 v27, v1

    if-eqz v17, :cond_e

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    move/from16 v28, v1

    goto :goto_f

    :cond_e
    move/from16 v28, p11

    :goto_f
    const/high16 v1, 0x2000000

    and-int v1, p16, v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    move/from16 v29, v1

    goto :goto_10

    :cond_f
    move/from16 v29, p12

    :goto_10
    const/high16 v1, 0x4000000

    and-int v1, p16, v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    move-object/from16 v30, v1

    goto :goto_11

    :cond_10
    move-object/from16 v30, p13

    :goto_11
    const/high16 v1, 0x8000000

    and-int v1, p16, v1

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    move/from16 v31, v1

    goto :goto_12

    :cond_11
    move/from16 v31, p14

    :goto_12
    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    const/high16 v17, 0x40000000    # 2.0f

    and-int v17, p16, v17

    move/from16 v33, v1

    if-eqz v17, :cond_12

    iget-boolean v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    move/from16 v34, v1

    goto :goto_13

    :cond_12
    move/from16 v34, p15

    :goto_13
    const/high16 v1, -0x80000000

    and-int v1, p16, v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    goto :goto_14

    :cond_13
    sget-object v1, Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$ProfilePictureManualBlockAvatarPolicy;->a:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy$ProfilePictureManualBlockAvatarPolicy;

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v0, "manualBlockAvatarPolicy"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v17, v3

    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v35, v1

    move/from16 v20, v2

    invoke-direct/range {v3 .. v35}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZZZZZZZZZZZLjava/lang/String;ZZZZLcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;)V

    return-object v3
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-boolean v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    iget-boolean v3, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    iget-object p1, p1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    .line 54
    .line 55
    const/16 v3, 0x4d5

    .line 56
    .line 57
    const/16 v4, 0x4cf

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    move v2, v4

    .line 62
    goto :goto_4

    .line 63
    :cond_4
    move v2, v3

    .line 64
    :goto_4
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    move v2, v4

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move v2, v3

    .line 74
    :goto_5
    add-int/2addr v1, v2

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    .line 78
    .line 79
    if-eqz v2, :cond_6

    .line 80
    .line 81
    move v2, v4

    .line 82
    goto :goto_6

    .line 83
    :cond_6
    move v2, v3

    .line 84
    :goto_6
    add-int/2addr v1, v2

    .line 85
    mul-int/lit8 v1, v1, 0x1f

    .line 86
    .line 87
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    .line 88
    .line 89
    if-eqz v2, :cond_7

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto :goto_7

    .line 93
    :cond_7
    move v2, v3

    .line 94
    :goto_7
    add-int/2addr v1, v2

    .line 95
    mul-int/lit8 v1, v1, 0x1f

    .line 96
    .line 97
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    .line 98
    .line 99
    if-eqz v2, :cond_8

    .line 100
    .line 101
    move v2, v4

    .line 102
    goto :goto_8

    .line 103
    :cond_8
    move v2, v3

    .line 104
    :goto_8
    add-int/2addr v1, v2

    .line 105
    mul-int/lit8 v1, v1, 0x1f

    .line 106
    .line 107
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    .line 108
    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    move v2, v4

    .line 112
    goto :goto_9

    .line 113
    :cond_9
    move v2, v3

    .line 114
    :goto_9
    add-int/2addr v1, v2

    .line 115
    mul-int/lit8 v1, v1, 0x1f

    .line 116
    .line 117
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    .line 118
    .line 119
    if-eqz v2, :cond_a

    .line 120
    .line 121
    move v2, v4

    .line 122
    goto :goto_a

    .line 123
    :cond_a
    move v2, v3

    .line 124
    :goto_a
    add-int/2addr v1, v2

    .line 125
    mul-int/lit8 v1, v1, 0x1f

    .line 126
    .line 127
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    .line 128
    .line 129
    if-eqz v2, :cond_b

    .line 130
    .line 131
    move v2, v4

    .line 132
    goto :goto_b

    .line 133
    :cond_b
    move v2, v3

    .line 134
    :goto_b
    add-int/2addr v1, v2

    .line 135
    mul-int/lit8 v1, v1, 0x1f

    .line 136
    .line 137
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    .line 138
    .line 139
    if-eqz v2, :cond_c

    .line 140
    .line 141
    move v2, v4

    .line 142
    goto :goto_c

    .line 143
    :cond_c
    move v2, v3

    .line 144
    :goto_c
    add-int/2addr v1, v2

    .line 145
    mul-int/lit8 v1, v1, 0x1f

    .line 146
    .line 147
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    .line 148
    .line 149
    if-eqz v2, :cond_d

    .line 150
    .line 151
    move v2, v4

    .line 152
    goto :goto_d

    .line 153
    :cond_d
    move v2, v3

    .line 154
    :goto_d
    add-int/2addr v1, v2

    .line 155
    mul-int/lit8 v1, v1, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    .line 158
    .line 159
    if-nez v2, :cond_e

    .line 160
    .line 161
    move v2, v0

    .line 162
    goto :goto_e

    .line 163
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_e
    add-int/2addr v1, v2

    .line 168
    mul-int/lit8 v1, v1, 0x1f

    .line 169
    .line 170
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    .line 171
    .line 172
    if-eqz v2, :cond_f

    .line 173
    .line 174
    move v2, v4

    .line 175
    goto :goto_f

    .line 176
    :cond_f
    move v2, v3

    .line 177
    :goto_f
    add-int/2addr v1, v2

    .line 178
    mul-int/lit8 v1, v1, 0x1f

    .line 179
    .line 180
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    .line 181
    .line 182
    if-eqz v2, :cond_10

    .line 183
    .line 184
    move v2, v4

    .line 185
    goto :goto_10

    .line 186
    :cond_10
    move v2, v3

    .line 187
    :goto_10
    add-int/2addr v1, v2

    .line 188
    mul-int/lit8 v1, v1, 0x1f

    .line 189
    .line 190
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    .line 191
    .line 192
    if-eqz v2, :cond_11

    .line 193
    .line 194
    move v2, v4

    .line 195
    goto :goto_11

    .line 196
    :cond_11
    move v2, v3

    .line 197
    :goto_11
    add-int/2addr v1, v2

    .line 198
    mul-int/lit8 v1, v1, 0x1f

    .line 199
    .line 200
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    .line 201
    .line 202
    if-eqz v2, :cond_12

    .line 203
    .line 204
    move v2, v4

    .line 205
    goto :goto_12

    .line 206
    :cond_12
    move v2, v3

    .line 207
    :goto_12
    add-int/2addr v1, v2

    .line 208
    mul-int/lit8 v1, v1, 0x1f

    .line 209
    .line 210
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    .line 211
    .line 212
    if-eqz v2, :cond_13

    .line 213
    .line 214
    move v2, v4

    .line 215
    goto :goto_13

    .line 216
    :cond_13
    move v2, v3

    .line 217
    :goto_13
    add-int/2addr v1, v2

    .line 218
    mul-int/lit8 v1, v1, 0x1f

    .line 219
    .line 220
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    .line 221
    .line 222
    if-eqz v2, :cond_14

    .line 223
    .line 224
    move v2, v4

    .line 225
    goto :goto_14

    .line 226
    :cond_14
    move v2, v3

    .line 227
    :goto_14
    add-int/2addr v1, v2

    .line 228
    mul-int/lit8 v1, v1, 0x1f

    .line 229
    .line 230
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    .line 231
    .line 232
    if-eqz v2, :cond_15

    .line 233
    .line 234
    move v2, v4

    .line 235
    goto :goto_15

    .line 236
    :cond_15
    move v2, v3

    .line 237
    :goto_15
    add-int/2addr v1, v2

    .line 238
    mul-int/lit8 v1, v1, 0x1f

    .line 239
    .line 240
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    .line 241
    .line 242
    if-eqz v2, :cond_16

    .line 243
    .line 244
    move v2, v4

    .line 245
    goto :goto_16

    .line 246
    :cond_16
    move v2, v3

    .line 247
    :goto_16
    add-int/2addr v1, v2

    .line 248
    mul-int/lit8 v1, v1, 0x1f

    .line 249
    .line 250
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    .line 251
    .line 252
    if-eqz v2, :cond_17

    .line 253
    .line 254
    move v2, v4

    .line 255
    goto :goto_17

    .line 256
    :cond_17
    move v2, v3

    .line 257
    :goto_17
    add-int/2addr v1, v2

    .line 258
    mul-int/lit8 v1, v1, 0x1f

    .line 259
    .line 260
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    .line 261
    .line 262
    if-eqz v2, :cond_18

    .line 263
    .line 264
    move v2, v4

    .line 265
    goto :goto_18

    .line 266
    :cond_18
    move v2, v3

    .line 267
    :goto_18
    add-int/2addr v1, v2

    .line 268
    mul-int/lit8 v1, v1, 0x1f

    .line 269
    .line 270
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    .line 271
    .line 272
    if-eqz v2, :cond_19

    .line 273
    .line 274
    move v2, v4

    .line 275
    goto :goto_19

    .line 276
    :cond_19
    move v2, v3

    .line 277
    :goto_19
    add-int/2addr v1, v2

    .line 278
    mul-int/lit8 v1, v1, 0x1f

    .line 279
    .line 280
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    .line 281
    .line 282
    if-nez v2, :cond_1a

    .line 283
    .line 284
    goto :goto_1a

    .line 285
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    :goto_1a
    add-int/2addr v1, v0

    .line 290
    mul-int/lit8 v1, v1, 0x1f

    .line 291
    .line 292
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    .line 293
    .line 294
    if-eqz v0, :cond_1b

    .line 295
    .line 296
    move v0, v4

    .line 297
    goto :goto_1b

    .line 298
    :cond_1b
    move v0, v3

    .line 299
    :goto_1b
    add-int/2addr v1, v0

    .line 300
    mul-int/lit8 v1, v1, 0x1f

    .line 301
    .line 302
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    .line 303
    .line 304
    if-eqz v0, :cond_1c

    .line 305
    .line 306
    move v0, v4

    .line 307
    goto :goto_1c

    .line 308
    :cond_1c
    move v0, v3

    .line 309
    :goto_1c
    add-int/2addr v1, v0

    .line 310
    mul-int/lit8 v1, v1, 0x1f

    .line 311
    .line 312
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    .line 313
    .line 314
    if-eqz v0, :cond_1d

    .line 315
    .line 316
    move v0, v4

    .line 317
    goto :goto_1d

    .line 318
    :cond_1d
    move v0, v3

    .line 319
    :goto_1d
    add-int/2addr v1, v0

    .line 320
    mul-int/lit8 v1, v1, 0x1f

    .line 321
    .line 322
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    .line 323
    .line 324
    if-eqz v0, :cond_1e

    .line 325
    .line 326
    move v3, v4

    .line 327
    :cond_1e
    add-int/2addr v1, v3

    .line 328
    mul-int/lit8 v1, v1, 0x1f

    .line 329
    .line 330
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    add-int/2addr v0, v1

    .line 337
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "AvatarXConfig(photoUri="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", normalizedAddress="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", groupId="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, ", letter="

    .line 31
    .line 32
    const-string v3, ", isSpam="

    .line 33
    .line 34
    iget-object v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v4, v2, v5, v3}, Landroidx/lifecycle/h1;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v2, ", isGroup="

    .line 42
    .line 43
    const-string v3, ", isAlphanumeric="

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    .line 46
    .line 47
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    .line 48
    .line 49
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, ", showTruecallerBadge="

    .line 53
    .line 54
    const-string v3, ", isPremium="

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    .line 57
    .line 58
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    .line 59
    .line 60
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v2, ", isGold="

    .line 64
    .line 65
    const-string v3, ", isVerifiedBusiness="

    .line 66
    .line 67
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    .line 68
    .line 69
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    .line 70
    .line 71
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v2, ", isPriority="

    .line 75
    .line 76
    const-string v3, ", isGovtService="

    .line 77
    .line 78
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    .line 79
    .line 80
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    .line 81
    .line 82
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v2, ", displayAvatarEvenIfSpammerOrBlocked="

    .line 86
    .line 87
    const-string v3, ", avatarBorderColor="

    .line 88
    .line 89
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    .line 90
    .line 91
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    .line 92
    .line 93
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, ", isBlocked="

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ", isHidden="

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, ", showProgress="

    .line 117
    .line 118
    const-string v3, ", showAddPhoto="

    .line 119
    .line 120
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    .line 121
    .line 122
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    .line 123
    .line 124
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v2, ", showEditPhoto="

    .line 128
    .line 129
    const-string v3, ", showBadge="

    .line 130
    .line 131
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    .line 132
    .line 133
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    .line 134
    .line 135
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v2, ", showBadgeRing="

    .line 139
    .line 140
    const-string v3, ", noBackground="

    .line 141
    .line 142
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    .line 143
    .line 144
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    .line 145
    .line 146
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v2, ", isFraud="

    .line 150
    .line 151
    const-string v3, ", isSmallBusinessEnabled="

    .line 152
    .line 153
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    .line 154
    .line 155
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    .line 156
    .line 157
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v2, ", showWarning="

    .line 161
    .line 162
    const-string v3, ", countryFlag="

    .line 163
    .line 164
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    .line 165
    .line 166
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    .line 167
    .line 168
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v2, ", isSoftThrottled="

    .line 172
    .line 173
    const-string v3, ", isConvictedFraud="

    .line 174
    .line 175
    iget-object v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    .line 176
    .line 177
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    .line 178
    .line 179
    invoke-static {v4, v2, v3, v1, v5}, Lcom/google/android/gms/common/bar;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 180
    .line 181
    .line 182
    const-string v2, ", forceBlockIcon="

    .line 183
    .line 184
    const-string v3, ", isManuallyBlocked="

    .line 185
    .line 186
    iget-boolean v4, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    .line 187
    .line 188
    iget-boolean v5, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    .line 189
    .line 190
    invoke-static {v1, v4, v2, v5, v3}, Ln5/o;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-boolean v2, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, ", manualBlockAvatarPolicy="

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, ")"

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a:Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->e:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->f:Z

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->g:Z

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->h:Z

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->i:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->j:Z

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->k:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->l:Z

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->m:Z

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->n:Z

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->o:Ljava/lang/Integer;

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x1

    .line 86
    invoke-static {p1, v1, v0}, Lx40/bar;->s(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->p:Z

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->q:Z

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->r:Z

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->s:Z

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->t:Z

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->u:Z

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->v:Z

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->w:Z

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->x:Z

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->y:Z

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    .line 138
    .line 139
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->z:Z

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->A:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->B:Z

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    .line 153
    .line 154
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->C:Z

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->D:Z

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    iget-boolean v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->E:Z

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->F:Lcom/truecaller/common/ui/avatar/ManualBlockAvatarPolicy;

    .line 170
    .line 171
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
