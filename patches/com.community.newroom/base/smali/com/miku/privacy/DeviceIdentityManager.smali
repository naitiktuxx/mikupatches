.class public Lcom/miku/privacy/DeviceIdentityManager;
.super Ljava/lang/Object;
.source "DeviceIdentityManager.java"


# static fields
.field private static final KEY_ANDROID_ID:Ljava/lang/String; = "random_android_id"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "random_device_id"

.field private static final KEY_FSID_UUID:Ljava/lang/String; = "random_fsid_uuid"

.field private static final KEY_GAID:Ljava/lang/String; = "random_gaid"

.field private static final PREF_NAME:Ljava/lang/String; = "miku_device_identity"

.field private static final TAG:Ljava/lang/String; = "MikuPrivacy"

.field private static cachedAndroidId:Ljava/lang/String;

.field private static cachedDeviceId:Ljava/lang/String;

.field private static cachedFsidUuid:Ljava/lang/String;

.field private static cachedGaid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAndroidId()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/miku/privacy/DeviceIdentityManager;

    monitor-enter v0

    .line 95
    :try_start_0
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 98
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    const-string v2, "random_android_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 106
    :cond_1
    const/16 v2, 0x10

    :try_start_2
    invoke-static {v2}, Lcom/miku/privacy/DeviceIdentityManager;->randomHex(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "random_android_id"

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    const-string v1, "MikuPrivacy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated fresh randomized AndroidID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedAndroidId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static getContext()Landroid/content/Context;
    .locals 5

    .line 26
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v0, :cond_0

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :cond_0
    nop

    .line 30
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 33
    :catchall_1
    move-exception v1

    :cond_1
    nop

    .line 34
    return-object v0
.end method

.method public static declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/miku/privacy/DeviceIdentityManager;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 78
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    const-string v2, "random_device_id"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    .line 83
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 86
    :cond_1
    const/16 v2, 0x20

    :try_start_2
    invoke-static {v2}, Lcom/miku/privacy/DeviceIdentityManager;->randomHex(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_2

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "random_device_id"

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    const-string v1, "MikuPrivacy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated fresh randomized DeviceID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedDeviceId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getFsidUuid()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/miku/privacy/DeviceIdentityManager;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 118
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_1

    .line 120
    const-string v2, "random_fsid_uuid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    .line 123
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 126
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    .line 127
    if-eqz v1, :cond_2

    .line 128
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "random_fsid_uuid"

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    const-string v1, "MikuPrivacy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated fresh randomized FsidUuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_2
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedFsidUuid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getGaid()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/miku/privacy/DeviceIdentityManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    const-string v2, "random_gaid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 66
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_2

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "random_gaid"

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    const-string v1, "MikuPrivacy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated fresh randomized GAID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    sget-object v1, Lcom/miku/privacy/DeviceIdentityManager;->cachedGaid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .line 38
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "miku_device_identity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPrivateSysIdPath()Ljava/lang/String;
    .locals 3

    .line 135
    invoke-static {}, Lcom/miku/privacy/DeviceIdentityManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, ".sys_id.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const-string v0, "/data/data/com.mikuplayer.tux/files/.sys_id.dat"

    return-object v0
.end method

.method private static randomHex(I)Ljava/lang/String;
    .locals 4

    .line 46
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 49
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
