.class public final Lapp/patches/ui/DockStylePatch;
.super Ljava/lang/Object;
.source "DockStylePatch.java"

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyMattePillDock(Landroid/view/View;)V
    .registers 7
    .param p0, "bottomBarView"    # Landroid/view/View;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v3, -0xe9e9e6
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v3, 0x4479c000    # 999.0f
    invoke-static {v0, v3}, Lapp/patches/ui/DockStylePatch;->dpToPx(Landroid/content/Context;F)I
    move-result v3
    int-to-float v3, v3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v3, 0x3f800000    # 1.0f
    invoke-static {v0, v3}, Lapp/patches/ui/DockStylePatch;->dpToPx(Landroid/content/Context;F)I
    move-result v3
    const v4, -0xd5d5ce
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0
    invoke-virtual {p0, v3}, Landroid/view/View;->setElevation(F)V

    const/4 v3, 0x1
    invoke-virtual {p0, v3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v3
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v4, 0x41c00000    # 24.0f
    invoke-static {v0, v4}, Lapp/patches/ui/DockStylePatch;->dpToPx(Landroid/content/Context;F)I
    move-result v4

    const/high16 v5, 0x41800000    # 16.0f
    invoke-static {v0, v5}, Lapp/patches/ui/DockStylePatch;->dpToPx(Landroid/content/Context;F)I
    move-result v5

    invoke-virtual {v3, v4, v2, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v4, 0x42780000    # 62.0f
    invoke-static {v0, v4}, Lapp/patches/ui/DockStylePatch;->dpToPx(Landroid/content/Context;F)I
    move-result v4
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v3
    instance-of v4, v3, Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/ViewGroup;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    return-void
.end method

.method private static dpToPx(Landroid/content/Context;F)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v0
    const/4 v1, 0x1
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
    move-result v0
    float-to-int v0, v0
    return v0
.end method
