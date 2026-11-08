.class Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayerAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->fadeOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper;->access$000()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 196
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/PlayerAnimationHelper$1;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 197
    return-void
.end method
