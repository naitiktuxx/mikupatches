.class public final Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\n\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001.B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR*\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R6\u0010,\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180%\u0012\u0004\u0012\u00020\u0006\u0018\u00010$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Lcom/noober/background/view/BLTextView;",
        "button",
        "",
        "w0",
        "(Lcom/noober/background/view/BLTextView;)V",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "config",
        "t0",
        "(Lcom/transsion/home/bean/HomePreferencesConfig;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "c",
        "Lcom/transsion/home/bean/HomePreferencesConfig;",
        "",
        "",
        "d",
        "Ljava/util/Set;",
        "selectedIds",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSkip",
        "()Lkotlin/jvm/functions/Function0;",
        "v0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSkip",
        "Lkotlin/Function1;",
        "",
        "f",
        "Lkotlin/jvm/functions/Function1;",
        "getOnConfirm",
        "()Lkotlin/jvm/functions/Function1;",
        "u0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onConfirm",
        "g",
        "a",
        "Home_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

.field public static final h:I


# instance fields
.field private c:Lcom/transsion/home/bean/HomePreferencesConfig;

.field private final d:Ljava/util/Set;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->g:Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->dialog_home_preferences_enter_pop:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final q0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Lcom/noober/background/view/BLTextView;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->w0(Lcom/noober/background/view/BLTextView;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final s0(Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private final w0(Lcom/noober/background/view/BLTextView;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public final t0(Lcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->c:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final u0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final v0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/dialog/HomePreferencesEnterPopDialog;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method
