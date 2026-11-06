.class public Lcom/mymovie/widget/ImageAdView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mymovie/widget/ImageAdView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mymovie/ad/config/AdConfig;

.field public final synthetic b:Lcom/mymovie/widget/ImageAdView;


# direct methods
.method public constructor <init>(Lcom/mymovie/widget/ImageAdView;Lcom/mymovie/ad/config/AdConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mymovie/widget/ImageAdView$a;->b:Lcom/mymovie/widget/ImageAdView;

    iput-object p2, p0, Lcom/mymovie/widget/ImageAdView$a;->a:Lcom/mymovie/ad/config/AdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
