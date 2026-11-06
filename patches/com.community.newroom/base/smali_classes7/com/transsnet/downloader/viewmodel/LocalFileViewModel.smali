.class public final Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
.super Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;


# instance fields
.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static synthetic k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->j(Z)V

    return-void
.end method


# virtual methods
.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j(Z)V
    .locals 0

    return-void
.end method
