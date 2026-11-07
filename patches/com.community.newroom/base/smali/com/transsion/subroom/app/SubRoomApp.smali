.class public Lcom/transsion/subroom/app/SubRoomApp;
.super Lcom/tencent/tinker/loader/app/TinkerApplication;


# instance fields
.field private final del:Lcom/mymovie/MyApp;


# direct methods
.method static final constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0xf

    const-string v2, "com.transsion.subroom.app.SubRoomAppLike"

    const-string v3, "com.tencent.tinker.loader.TinkerLoader"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    new-instance v0, Lcom/mymovie/MyApp;

    invoke-direct {v0, p0}, Lcom/mymovie/MyApp;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/transsion/subroom/app/SubRoomApp;->del:Lcom/mymovie/MyApp;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->onCreate()V

    iget-object v0, p0, Lcom/transsion/subroom/app/SubRoomApp;->del:Lcom/mymovie/MyApp;

    invoke-virtual {v0}, Lcom/mymovie/MyApp;->onCreate()V

    return-void
.end method
