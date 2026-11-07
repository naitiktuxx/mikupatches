.class public final Lcom/transsion/postdetail/layer/local/j1;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private c:J

.field private d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/postdetail/layer/local/j1;->d:I

    new-instance p1, Lcom/transsion/postdetail/layer/local/h1;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/h1;-><init>(Lcom/transsion/postdetail/layer/local/j1;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->e:Ljava/lang/Runnable;

    new-instance p1, Lcom/transsion/postdetail/layer/local/i1;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/i1;-><init>(Lcom/transsion/postdetail/layer/local/j1;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/j1;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/j1;->f(Lcom/transsion/postdetail/layer/local/j1;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/j1;->e(Lcom/transsion/postdetail/layer/local/j1;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/layer/local/j1;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/j1;->c:J

    return-void
.end method

.method private static final e(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final f(Lcom/transsion/postdetail/layer/local/j1;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public static synthetic i(Lcom/transsion/postdetail/layer/local/j1;Ljava/lang/String;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xbb8

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/j1;->h(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/j1;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method
