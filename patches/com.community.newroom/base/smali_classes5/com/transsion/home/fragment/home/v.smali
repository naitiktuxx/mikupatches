.class public final Lcom/transsion/home/fragment/home/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/home/v$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/home/fragment/home/v$a;

.field public static final c:I


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/home/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/home/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/home/v;->b:Lcom/transsion/home/fragment/home/v$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/home/v;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "ivNovelIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/home/v;->c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V

    return-void
.end method

.method private final b()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/v;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final c(Lcom/transsion/home/fragment/home/v;Lcom/transsion/home/fragment/home/HomeNovelIconBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/v;->e()V

    invoke-virtual {p1}, Lcom/transsion/home/fragment/home/HomeNovelIconBean;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p1}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final d()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    const-string v2, "novel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "Trending"

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final e()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "module_name"

    const-string v2, "icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item_type"

    const-string v2, "novel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "Trending"

    invoke-virtual {v1, v2, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
