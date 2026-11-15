.class public abstract LXYXYXY/vu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "ad_publisher_name"

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "block_list"

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "golden_egg"

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "share_link"

    invoke-static {v0, p0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static g()Z
    .locals 2

    const-string v0, "non_empty_key"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    sget-object v0, LXYXYXY/vu;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageUtil;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, LXYXYXY/vu;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method
