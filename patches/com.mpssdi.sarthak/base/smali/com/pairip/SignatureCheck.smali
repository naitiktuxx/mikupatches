.class public Lcom/pairip/SignatureCheck;
.super Ljava/lang/Object;
.source "SignatureCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pairip/SignatureCheck$SignatureTamperedException;
    }
.end annotation


# static fields
.field private static final ALLOWLISTED_SIG:Ljava/lang/String; = "Vn3kj4pUblROi2S+QfRRL9nhsaO2uoHQg6+dpEtxdTE="

.field private static final TAG:Ljava/lang/String; = "SignatureCheck"

.field private static expectedLegacyUpgradedSignature:Ljava/lang/String; = "AEx6Mw2VIg0S9cFdO8UFXJ6W1/OZephET9S1ZUSDqkA="

.field private static expectedSignature:Ljava/lang/String; = "AEx6Mw2VIg0S9cFdO8UFXJ6W1/OZephET9S1ZUSDqkA="

.field private static expectedTestSignature:Ljava/lang/String; = "AEx6Mw2VIg0S9cFdO8UFXJ6W1/OZephET9S1ZUSDqkA="


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyIntegrity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static verifySignatureMatches(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
