.class public abstract La/e7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x5f

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, La/e7;->a:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x6at
        0x18t
        0x60t
        0x62t
        0x6ft
        0x60t
        0x6bt
        0x6at
        0x60t
        0x6ct
        0x68t
        0x60t
        0x1et
        0x1et
        0x60t
        0x63t
        0x6dt
        0x60t
        0x1ft
        0x1bt
        0x60t
        0x6ct
        0x6dt
        0x60t
        0x6et
        0x6at
        0x60t
        0x69t
        0x63t
        0x60t
        0x6ft
        0x63t
        0x60t
        0x69t
        0x1bt
        0x60t
        0x6at
        0x19t
        0x60t
        0x6ft
        0x6ft
        0x60t
        0x1ft
        0x63t
        0x60t
        0x6ct
        0x6at
        0x60t
        0x6dt
        0x62t
        0x60t
        0x6dt
        0x62t
        0x60t
        0x68t
        0x68t
        0x60t
        0x1bt
        0x6at
        0x60t
        0x63t
        0x62t
        0x60t
        0x6ct
        0x6ft
        0x60t
        0x6dt
        0x62t
        0x60t
        0x6et
        0x1bt
        0x60t
        0x6bt
        0x6et
        0x60t
        0x1bt
        0x6dt
        0x60t
        0x1ct
        0x6bt
        0x60t
        0x19t
        0x6bt
        0x60t
        0x68t
        0x6bt
        0x60t
        0x62t
        0x1ct
        0x60t
        0x18t
        0x19t
        0x60t
        0x6ft
        0x69t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/high16 v1, 0x8000000

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, La/t1;->c(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, La/t1;->w(Landroid/content/pm/SigningInfo;)[Landroid/content/pm/Signature;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    aget-object p0, p0, v2

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const/16 v1, 0x40

    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 52
    .line 53
    aget-object p0, p0, v2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_0
    const-string v0, "SHA-256"

    .line 60
    .line 61
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_1
    array-length v1, p0

    .line 75
    if-ge v2, v1, :cond_2

    .line 76
    .line 77
    if-lez v2, :cond_1

    .line 78
    .line 79
    const/16 v1, 0x3a

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    :cond_1
    aget-byte v1, p0, v2

    .line 85
    .line 86
    and-int/lit16 v1, v1, 0xff

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v3, "%02X"

    .line 97
    .line 98
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method public static isAppSecure(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDeveloperOptionsEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
