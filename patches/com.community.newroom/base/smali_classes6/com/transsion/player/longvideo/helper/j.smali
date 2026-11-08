.class public final Lcom/transsion/player/longvideo/helper/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/helper/j$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/player/longvideo/helper/j$a;


# instance fields
.field private final a:Lho/j;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/longvideo/helper/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/longvideo/helper/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/longvideo/helper/j;->e:Lcom/transsion/player/longvideo/helper/j$a;

    return-void
.end method

.method public constructor <init>(Lho/j;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lho/j;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    iput p1, p0, Lcom/transsion/player/longvideo/helper/j;->b:I

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->c:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    return v0
.end method

.method public final b(II)V
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/player/longvideo/helper/j;->d:I

    return-void
.end method

.method public final d(Lcom/transsion/player/longvideo/ui/LongVodUiType;I)V
    .locals 7

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/j;->a:Lho/j;

    iget-object v1, v0, Lho/j;->j:Lho/i;

    iget-object v1, v1, Lho/i;->i:Landroid/view/View;

    iget-object v2, v0, Lho/j;->j:Lho/i;

    iget-object v2, v2, Lho/i;->h:Landroid/view/View;

    iget-object v3, v0, Lho/j;->h:Lho/k;

    iget-object v3, v3, Lho/k;->C:Landroid/view/View;

    iget-object v0, v0, Lho/j;->h:Lho/k;

    iget-object v4, v0, Lho/k;->B:Landroid/view/View;

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->updateNotchSpaces(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    return-void
.end method
