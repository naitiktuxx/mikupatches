.class Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;
.super Ljava/lang/Object;
.source "LandscapeAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper;->animateDelayValueChange(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newText:Ljava/lang/CharSequence;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;->val$textView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;->val$newText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;->val$newText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LandscapeAnimationHelper$7;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 499
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 501
    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 503
    return-void
.end method
