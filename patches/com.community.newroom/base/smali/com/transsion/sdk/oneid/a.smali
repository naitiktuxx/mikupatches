.class public abstract Lcom/transsion/sdk/oneid/a;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getPrivateSysIdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
