.class public final La/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/mpssdi/sarthak/view/home/Home;

.field public final b:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field public final c:Lcom/google/android/gms/location/LocationRequest;

.field public final d:La/b7;

.field public final e:Lcom/mpssdi/sarthak/view/home/Home;

.field public final f:La/p11;

.field public g:Z

.field public h:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public i:J

.field public j:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/mpssdi/sarthak/view/home/Home;Lcom/mpssdi/sarthak/view/home/Home;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, La/c7;->g:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, La/c7;->i:J

    .line 10
    .line 11
    iput-object p1, p0, La/c7;->a:Lcom/mpssdi/sarthak/view/home/Home;

    .line 12
    .line 13
    iput-object p2, p0, La/c7;->e:Lcom/mpssdi/sarthak/view/home/Home;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, La/c7;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 20
    .line 21
    invoke-static {p1}, La/p11;->c(Landroid/content/Context;)La/p11;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, La/c7;->f:La/p11;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 28
    .line 29
    const/16 p2, 0x64

    .line 30
    .line 31
    const-wide/16 v0, 0x7d0

    .line 32
    .line 33
    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x3e8

    .line 37
    .line 38
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->setIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, La/c7;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 51
    .line 52
    new-instance p1, La/b7;

    .line 53
    .line 54
    invoke-direct {p1, p0}, La/b7;-><init>(La/c7;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, La/c7;->d:La/b7;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 6

    .line 1
    iget-object v0, p0, La/c7;->a:Lcom/mpssdi/sarthak/view/home/Home;

    .line 2
    .line 3
    sget-object v1, La/bc1;->a:Ljava/util/List;

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, La/j4;->y(Landroid/location/Location;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v3, "development_settings_enabled"

    .line 29
    .line 30
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catch_0
    :cond_1
    move v2, v1

    .line 38
    :cond_2
    :goto_1
    const/4 v2, 0x0

    if-eqz v2, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iput-object p1, p0, La/c7;->j:Landroid/location/Location;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iget-wide v2, p0, La/c7;->i:J

    .line 48
    .line 49
    sub-long v2, v0, v2

    .line 50
    .line 51
    const-wide/16 v4, 0x7d0

    .line 52
    .line 53
    cmp-long v2, v2, v4

    .line 54
    .line 55
    if-gez v2, :cond_4

    .line 56
    .line 57
    :goto_2
    return-void

    .line 58
    :cond_4
    iput-wide v0, p0, La/c7;->i:J

    .line 59
    .line 60
    iget-object v0, p0, La/c7;->e:Lcom/mpssdi/sarthak/view/home/Home;

    .line 61
    .line 62
    iput-object p1, v0, Lcom/mpssdi/sarthak/view/home/Home;->F:Landroid/location/Location;

    .line 63
    .line 64
    new-instance v0, Landroid/content/Intent;

    .line 65
    .line 66
    const-string v1, "LOCATION_RECIVER"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "LOCATION"

    .line 72
    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p0, p0, La/c7;->f:La/p11;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, La/p11;->n(Landroid/content/Intent;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, La/c7;->a:Lcom/mpssdi/sarthak/view/home/Home;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    .line 5
    invoke-static {v0, v1}, La/ok0;->i(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, La/c7;->h:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->cancel()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, La/c7;->h:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 21
    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, La/c7;->h:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 28
    .line 29
    const/16 v1, 0x64

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, La/c7;->b:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 36
    .line 37
    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(ILcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, La/z6;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v1, p0, v2}, La/z6;-><init>(La/c7;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-instance v0, La/a7;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, v1}, La/a7;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    .line 3
    iget-object v1, p0, La/c7;->a:Lcom/mpssdi/sarthak/view/home/Home;

    .line 4
    .line 5
    invoke-static {v1, v0}, La/ok0;->i(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, La/c7;->c:Lcom/google/android/gms/location/LocationRequest;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, La/z6;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v1, p0, v3}, La/z6;-><init>(La/c7;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 47
    .line 48
    .line 49
    new-instance v1, La/z6;

    .line 50
    .line 51
    invoke-direct {v1, p0, v2}, La/z6;-><init>(La/c7;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 55
    .line 56
    .line 57
    return-void
.end method
