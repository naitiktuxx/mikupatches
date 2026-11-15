.class public LXYXYXY/vy;
.super LXYXYXY/vm;
.source "SourceFile"


# instance fields
.field public b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, LXYXYXY/vm;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    iput-object p1, p0, LXYXYXY/vy;->b:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic a(LXYXYXY/vy;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static synthetic b(LXYXYXY/vy;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LXYXYXY/vy;->b:Landroid/app/Dialog;

    return-void
.end method

.method public static synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
