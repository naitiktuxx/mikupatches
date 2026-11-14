.class public Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;
.super Lcom/mpssdi/sarthak/utils/BaseFragment;
.source "SourceFile"

# interfaces
.implements La/sp0;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public A:D

.field public volatile B:Landroid/location/Location;

.field public C:D

.field public D:Lcom/google/android/gms/maps/model/LatLng;

.field public E:Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;

.field public F:Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

.field public volatile G:Z

.field public H:Landroid/hardware/Camera;

.field public I:I

.field public J:I

.field public K:I

.field public L:F

.field public M:F

.field public N:Lcom/mpssdi/sarthak/utils/face/FaceMatchingManager;

.field public O:Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;

.field public P:Lcom/mpssdi/sarthak/utils/face/tflight/TFLiteMaskClassifier;

.field public Q:J

.field public R:La/p11;

.field public S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

.field public volatile T:Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

.field public U:Ljava/util/concurrent/ExecutorService;

.field public volatile V:Z

.field public W:Landroidx/appcompat/app/AlertDialog;

.field public final e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

.field public final f:Landroid/os/Handler;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

.field public o:Lcom/mpssdi/sarthak/utils/ncnn/RectView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Lcom/google/android/material/card/MaterialCardView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Lcom/google/android/gms/maps/MapView;

.field public w:Z

.field public x:Z

.field public y:Lcom/google/android/gms/maps/model/Circle;

.field public z:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->w:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x:Z

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->C:D

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->D:Lcom/google/android/gms/maps/model/LatLng;

    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->G:Z

    .line 42
    .line 43
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    iput v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->I:I

    .line 47
    .line 48
    iput v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->J:I

    .line 49
    .line 50
    iput v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->K:I

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->L:F

    .line 54
    .line 55
    iput v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->M:F

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    iput-wide v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->Q:J

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->V:Z

    .line 62
    .line 63
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 10
    .line 11
    new-instance v0, Lcom/mpssdi/sarthak/view/home/fragments/menu/Menu;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/mpssdi/sarthak/view/home/fragments/menu/Menu;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/utils/BaseActivity;->m(Lcom/mpssdi/sarthak/utils/BaseFragment;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f0c003e

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const v2, 0x7f090301

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    const v3, 0x7f0902fd

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/widget/TextView;

    .line 58
    .line 59
    const v4, 0x7f09008b

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Landroid/widget/Button;

    .line 67
    .line 68
    const v5, 0x7f090091

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/widget/Button;

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 84
    .line 85
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v1, La/w8;

    .line 102
    .line 103
    const/4 v2, 0x3

    .line 104
    invoke-direct {v1, v2, p0, p1}, La/w8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, La/j61;

    .line 111
    .line 112
    invoke-direct {v1, p0, p1, v0}, La/j61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Landroidx/appcompat/app/AlertDialog;Landroidx/fragment/app/FragmentActivity;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 127
    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setOpenDialog(Z)V

    .line 130
    .line 131
    .line 132
    new-instance v0, La/k61;

    .line 133
    .line 134
    invoke-direct {v0, p0, p2}, La/k61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-eqz p0, :cond_2

    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const/16 p1, 0x30

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_0
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, La/f61;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, La/f61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->k(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/16 v2, 0x2329

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setMark(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    :goto_0
    if-eqz v0, :cond_4

    .line 65
    .line 66
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->u(Landroid/view/SurfaceHolder;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-lez v1, :cond_4

    .line 98
    .line 99
    if-lez v2, :cond_4

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setWorking(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    .line 25
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    .line 29
    .line 30
    :catch_2
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final j(Landroid/location/Location;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, La/p11;->b(Landroid/location/Location;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->B:Landroid/location/Location;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final m([BLcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->O:Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;->isDetecting()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v2, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraLeft:I

    .line 15
    .line 16
    iget v3, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraTop:I

    .line 17
    .line 18
    iget v4, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraRight:I

    .line 19
    .line 20
    iget p2, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraBottom:I

    .line 21
    .line 22
    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->F:Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

    .line 26
    .line 27
    const/16 v2, 0x280

    .line 28
    .line 29
    const/16 v3, 0x1e0

    .line 30
    .line 31
    invoke-virtual {p2, p1, v2, v3, v1}, Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;->extractFeaturesWithBitmap([BIILandroid/graphics/Rect;)La/el1;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, La/el1;->b:Ljava/lang/Object;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 43
    .line 44
    new-instance p2, La/q61;

    .line 45
    .line 46
    invoke-direct {p2, p0}, La/q61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;->detectBlink(Landroid/graphics/Bitmap;Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector$BlinkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    const-string p0, "MarkAttendanceNew"

    .line 54
    .line 55
    invoke-static {p0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    new-array p0, p0, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p0}, La/oa1;->o([Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setOpenDialog(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setMark(Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 8
    .line 9
    iget-object v0, v0, La/p11;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroid/location/Location;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isMark()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v0, 0x7f120073

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->y(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p3, 0x7f0c005d

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 12
    .line 13
    new-instance p1, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->T:Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->T:Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 21
    .line 22
    const p2, 0x3f333333    # 0.7f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->setThreshold(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->T:Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->setResult(Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->V:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->v:Lcom/google/android/gms/maps/MapView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->y:Lcom/google/android/gms/maps/model/Circle;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->D:Lcom/google/android/gms/maps/model/LatLng;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->z:Landroid/location/Location;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->G:Z

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->E:Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->E:Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->U:Ljava/util/concurrent/ExecutorService;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    :try_start_0
    new-instance v4, La/e61;

    .line 38
    .line 39
    invoke-direct {v4, v2, v1}, La/e61;-><init>(Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    :try_start_1
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;->destroy()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    :catch_1
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->N:Lcom/mpssdi/sarthak/utils/face/FaceMatchingManager;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/face/FaceMatchingManager;->cleanup()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->N:Lcom/mpssdi/sarthak/utils/face/FaceMatchingManager;

    .line 63
    .line 64
    :cond_3
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->O:Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;->cleanup()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->O:Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;

    .line 72
    .line 73
    :cond_4
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->U:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->U:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 23
    .line 24
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->E()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->v:Lcom/google/android/gms/maps/MapView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x:Z

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->q()Landroid/util/Pair;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-boolean v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->w:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->v:Lcom/google/android/gms/maps/MapView;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->x:Z

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isOpenDialog()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    instance-of v2, v1, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    check-cast v1, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/BaseActivity;->n()V

    .line 63
    .line 64
    .line 65
    iput-object p0, v1, Lcom/mpssdi/sarthak/utils/BaseActivity;->b:La/sp0;

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setMark(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->r()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->D()V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->v:Lcom/google/android/gms/maps/MapView;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->U:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->surface:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 v0, 0x11

    .line 30
    .line 31
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->S:Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->rectView:Lcom/mpssdi/sarthak/utils/ncnn/RectView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->o:Lcom/mpssdi/sarthak/utils/ncnn/RectView;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->tvLocation:Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->p:Landroid/widget/TextView;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->tvOfficeDistance:Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->q:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->textViewTitle:Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->r:Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->locationBox:Lcom/google/android/material/card/MaterialCardView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->s:Lcom/google/android/material/card/MaterialCardView;

    .line 55
    .line 56
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->locationAccuracy:Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->t:Landroid/widget/TextView;

    .line 59
    .line 60
    iget-object v0, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->tvTime:Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->u:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/mpssdi/sarthak/databinding/MarkAttendanceFragmentNew1Binding;->mapContainer:Lcom/google/android/gms/maps/MapView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->v:Lcom/google/android/gms/maps/MapView;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_0

    .line 76
    .line 77
    goto/16 :goto_2

    .line 78
    .line 79
    :cond_0
    iget-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 80
    .line 81
    if-nez p2, :cond_1

    .line 82
    .line 83
    new-instance p2, La/p11;

    .line 84
    .line 85
    invoke-static {}, La/qf1;->t()La/qf1;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, La/of0;

    .line 90
    .line 91
    invoke-direct {v1, p1}, La/of0;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, La/av1;->a(La/qf1;La/of0;)La/av1;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x5

    .line 99
    invoke-direct {p2, p1, v0, p0, v1}, La/p11;-><init>(Landroid/content/Context;La/av1;Lcom/mpssdi/sarthak/utils/BaseFragment;I)V

    .line 100
    .line 101
    .line 102
    iput-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iput-object p0, p2, La/p11;->d:Ljava/lang/Object;

    .line 106
    .line 107
    :goto_0
    new-instance p1, Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->F:Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

    .line 113
    .line 114
    new-instance p1, Ljava/lang/Thread;

    .line 115
    .line 116
    new-instance p2, La/h61;

    .line 117
    .line 118
    const/4 v0, 0x4

    .line 119
    invoke-direct {p2, p0, v0}, La/h61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-nez p1, :cond_2

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    const/16 v0, 0x1e

    .line 138
    .line 139
    if-lt p2, v0, :cond_3

    .line 140
    .line 141
    new-instance p2, Landroid/graphics/Point;

    .line 142
    .line 143
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 155
    .line 156
    .line 157
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 158
    .line 159
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->J:I

    .line 160
    .line 161
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 162
    .line 163
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->K:I

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 167
    .line 168
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    .line 181
    .line 182
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 183
    .line 184
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->J:I

    .line 185
    .line 186
    iget p1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 187
    .line 188
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->K:I

    .line 189
    .line 190
    :goto_1
    iget p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->J:I

    .line 191
    .line 192
    int-to-float p1, p1

    .line 193
    const/high16 p2, 0x43f00000    # 480.0f

    .line 194
    .line 195
    div-float/2addr p1, p2

    .line 196
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->L:F

    .line 197
    .line 198
    iget p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->K:I

    .line 199
    .line 200
    int-to-float p1, p1

    .line 201
    const/high16 p2, 0x44200000    # 640.0f

    .line 202
    .line 203
    div-float/2addr p1, p2

    .line 204
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->M:F

    .line 205
    .line 206
    :goto_2
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->s()Z

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-nez p1, :cond_4

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_4
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 217
    .line 218
    if-nez p1, :cond_5

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_5
    iget-object p1, p1, La/p11;->c:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, La/av1;

    .line 224
    .line 225
    iget-object p1, p1, La/av1;->b:La/of0;

    .line 226
    .line 227
    iget-object p1, p1, La/of0;->c:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p1, La/wf2;

    .line 230
    .line 231
    invoke-virtual {p1}, La/wf2;->q()Lcom/mpssdi/sarthak/data/modal/UserNew;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    if-nez p1, :cond_6

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    invoke-virtual {p1}, Lcom/mpssdi/sarthak/data/modal/UserNew;->getFaceidentityPicture()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    instance-of v0, p2, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 247
    .line 248
    if-eqz v0, :cond_7

    .line 249
    .line 250
    check-cast p2, Lcom/mpssdi/sarthak/utils/BaseActivity;

    .line 251
    .line 252
    const v0, 0x7f1200a8

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p2, v0}, Lcom/mpssdi/sarthak/utils/BaseActivity;->j(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_7
    if-eqz p1, :cond_9

    .line 263
    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_8

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_8
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->r()V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-nez p1, :cond_a

    .line 280
    .line 281
    :goto_4
    return-void

    .line 282
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    instance-of p2, p1, Lcom/mpssdi/sarthak/view/home/Home;

    .line 287
    .line 288
    if-eqz p2, :cond_b

    .line 289
    .line 290
    new-instance p2, Landroid/os/Handler;

    .line 291
    .line 292
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    .line 298
    .line 299
    new-instance v0, La/m61;

    .line 300
    .line 301
    check-cast p1, Lcom/mpssdi/sarthak/view/home/Home;

    .line 302
    .line 303
    const/4 v1, 0x0

    .line 304
    invoke-direct {v0, v1, p0, p1}, La/m61;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    .line 309
    .line 310
    return-void

    .line 311
    :cond_b
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->A()V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public final p([BLcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->P:Lcom/mpssdi/sarthak/utils/face/tflight/TFLiteMaskClassifier;

    .line 6
    .line 7
    const-string v3, "MarkAttendanceNew"

    .line 8
    .line 9
    iget-object v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 10
    .line 11
    const/16 v5, 0x1e0

    .line 12
    .line 13
    const/16 v6, 0x280

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iget-object v8, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance v2, Landroid/graphics/Rect;

    .line 21
    .line 22
    iget v9, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraLeft:I

    .line 23
    .line 24
    iget v10, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraTop:I

    .line 25
    .line 26
    iget v11, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraRight:I

    .line 27
    .line 28
    iget v12, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraBottom:I

    .line 29
    .line 30
    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    .line 32
    .line 33
    iget-object v9, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->F:Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

    .line 34
    .line 35
    invoke-virtual {v9, p1, v6, v5, v2}, Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;->extractFeaturesWithBitmap([BIILandroid/graphics/Rect;)La/el1;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, v2, La/el1;->b:Ljava/lang/Object;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget-object v9, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->P:Lcom/mpssdi/sarthak/utils/face/tflight/TFLiteMaskClassifier;

    .line 46
    .line 47
    check-cast v2, Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {v9, v2}, Lcom/mpssdi/sarthak/utils/face/tflight/TFLiteMaskClassifier;->classify(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v9, "WithMask"

    .line 54
    .line 55
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 62
    .line 63
    .line 64
    iget-wide v9, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->Q:J

    .line 65
    .line 66
    sub-long v9, v0, v9

    .line 67
    .line 68
    const-wide/16 v11, 0x7d0

    .line 69
    .line 70
    cmp-long v2, v9, v11

    .line 71
    .line 72
    if-ltz v2, :cond_c

    .line 73
    .line 74
    iput-wide v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->Q:J

    .line 75
    .line 76
    new-instance v2, La/h61;

    .line 77
    .line 78
    const/16 v9, 0x9

    .line 79
    .line 80
    invoke-direct {v2, p0, v9}, La/h61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    invoke-static {v3}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 88
    .line 89
    .line 90
    new-array v2, v7, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-static {v2}, La/oa1;->v([Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->getRealFaceDetectionTime()J

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    const-wide/16 v11, 0x0

    .line 100
    .line 101
    cmp-long v2, v9, v11

    .line 102
    .line 103
    if-nez v2, :cond_2

    .line 104
    .line 105
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setRealFaceDetectionTime(J)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setEyeBlinkDetected(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->O:Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;

    .line 112
    .line 113
    if-eqz v2, :cond_1

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/EyeBlinkDetector;->reset()V

    .line 116
    .line 117
    .line 118
    :cond_1
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->canCheckEyeBlink(J)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_c

    .line 123
    .line 124
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setLastEyeBlinkCheck(J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->m([BLcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_2
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isEyeBlinkDetected()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->canCheckEyeBlink(J)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-eqz v2, :cond_c

    .line 143
    .line 144
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setLastEyeBlinkCheck(J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->m([BLcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :cond_3
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->canAttemptFaceMatch(J)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {v8, v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setLastFaceMatchAttempt(J)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isProcessingFaceMatch()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_4
    const/4 v0, 0x1

    .line 170
    invoke-virtual {v8, v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 174
    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_5
    iget-object v0, v0, La/p11;->c:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v0, La/av1;

    .line 185
    .line 186
    iget-object v0, v0, La/av1;->b:La/of0;

    .line 187
    .line 188
    iget-object v0, v0, La/of0;->c:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, La/wf2;

    .line 191
    .line 192
    invoke-virtual {v0}, La/wf2;->q()Lcom/mpssdi/sarthak/data/modal/UserNew;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-nez v0, :cond_6

    .line 197
    .line 198
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_6
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/data/modal/UserNew;->getFaceidentityPicture()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    :try_start_1
    invoke-static {v0}, Lcom/mpssdi/sarthak/utils/face/BitmapUtils;->base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_8

    .line 220
    .line 221
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 222
    .line 223
    .line 224
    new-instance p1, La/h61;

    .line 225
    .line 226
    const/16 p2, 0xb

    .line 227
    .line 228
    invoke-direct {p1, p0, p2}, La/h61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    .line 236
    .line 237
    iget v2, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraLeft:I

    .line 238
    .line 239
    iget v4, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraTop:I

    .line 240
    .line 241
    iget v9, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraRight:I

    .line 242
    .line 243
    iget p2, p2, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraBottom:I

    .line 244
    .line 245
    invoke-direct {v1, v2, v4, v9, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 246
    .line 247
    .line 248
    iget-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->F:Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;

    .line 249
    .line 250
    invoke-virtual {p2, p1, v6, v5, v1}, Lcom/mpssdi/sarthak/utils/ncnn/FaceRecognition;->extractFeaturesWithBitmap([BIILandroid/graphics/Rect;)La/el1;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    if-eqz p1, :cond_a

    .line 255
    .line 256
    iget-object p1, p1, La/el1;->b:Ljava/lang/Object;

    .line 257
    .line 258
    if-nez p1, :cond_9

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_9
    check-cast p1, Landroid/graphics/Bitmap;

    .line 262
    .line 263
    invoke-virtual {p0, v0, p1}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->t(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_a
    :goto_0
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :catch_1
    invoke-static {v3}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 275
    .line 276
    .line 277
    new-array p0, v7, [Ljava/lang/Object;

    .line 278
    .line 279
    invoke-static {p0}, La/oa1;->o([Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_b
    :goto_1
    invoke-virtual {v8, v7}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setProcessingFaceMatch(Z)V

    .line 290
    .line 291
    .line 292
    new-instance p1, La/h61;

    .line 293
    .line 294
    const/16 p2, 0xa

    .line 295
    .line 296
    invoke-direct {p1, p0, p2}, La/h61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    .line 301
    .line 302
    :cond_c
    :goto_2
    return-void
.end method

.method public final q()Landroid/util/Pair;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroid/util/Pair;

    .line 9
    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    new-instance p0, Landroid/util/Pair;

    .line 23
    .line 24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "airplane_mode_on"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const-string p0, "Airplane Mode is ON. Please turn it OFF to mark attendance."

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v2, "auto_time"

    .line 48
    .line 49
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    const-string p0, "Please turn \"ON\" ==> \"set time automatically\" in DateTime Setting"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const-string v2, "auto_time_zone"

    .line 59
    .line 60
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    const-string p0, "Automatic time zone is OFF. Please turn it ON to mark attendance."

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    sget-object v0, La/bc1;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v0, "development_settings_enabled"

    .line 76
    .line 77
    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 78
    .line 79
    .line 80
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    if-ne p0, v4, :cond_5

    .line 82
    .line 83
    move p0, v4

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    :cond_5
    move p0, v3

    .line 86
    :goto_0
    const/4 p0, 0x0

    if-eqz p0, :cond_6

    .line 87
    .line 88
    :try_start_2
    const-string p0, "Developer Options are enabled. Please disable them to mark attendance."

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    move-object p0, v1

    .line 92
    :goto_1
    new-instance v0, Landroid/util/Pair;

    .line 93
    .line 94
    if-nez p0, :cond_7

    .line 95
    .line 96
    move v3, v4

    .line 97
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :catch_1
    new-instance p0, Landroid/util/Pair;

    .line 106
    .line 107
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->G:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/Thread;

    .line 25
    .line 26
    new-instance v2, La/m61;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-direct {v2, v3, p0, v0}, La/m61;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final s()Z
    .locals 10

    .line 1
    const-string v0, "MarkAttendanceNew"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, v1, La/p11;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, La/av1;

    .line 19
    .line 20
    iget-object v1, v1, La/av1;->b:La/of0;

    .line 21
    .line 22
    iget-object v1, v1, La/of0;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, La/wf2;

    .line 25
    .line 26
    invoke-virtual {v1}, La/wf2;->q()Lcom/mpssdi/sarthak/data/modal/UserNew;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/data/modal/UserNew;->getLat()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/data/modal/UserNew;->get_long()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v3, :cond_6

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_6

    .line 48
    .line 49
    const-string v4, "0"

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_6

    .line 56
    .line 57
    const-string v5, "0.0"

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_6

    .line 64
    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_6

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_6

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_6

    .line 84
    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance v5, La/of0;

    .line 93
    .line 94
    invoke-direct {v5, v4}, La/of0;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v5, La/of0;->c:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v4, La/wf2;

    .line 100
    .line 101
    if-nez v4, :cond_4

    .line 102
    .line 103
    :goto_0
    return v2

    .line 104
    :cond_4
    invoke-virtual {v4}, La/wf2;->n()D

    .line 105
    .line 106
    .line 107
    move-result-wide v4

    .line 108
    iget-object v6, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->D:Lcom/google/android/gms/maps/model/LatLng;

    .line 109
    .line 110
    if-nez v6, :cond_5

    .line 111
    .line 112
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 121
    .line 122
    invoke-direct {v1, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->D:Lcom/google/android/gms/maps/model/LatLng;

    .line 126
    .line 127
    new-instance v1, Landroid/location/Location;

    .line 128
    .line 129
    const-string v3, "office"

    .line 130
    .line 131
    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->z:Landroid/location/Location;

    .line 135
    .line 136
    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->z:Landroid/location/Location;

    .line 140
    .line 141
    invoke-virtual {v1, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 142
    .line 143
    .line 144
    :cond_5
    iput-wide v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->C:D

    .line 145
    .line 146
    iput-wide v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->A:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    const/4 p0, 0x1

    .line 149
    return p0

    .line 150
    :catch_0
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 151
    .line 152
    .line 153
    new-array p0, v2, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-static {p0}, La/oa1;->o([Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    return v2

    .line 159
    :catch_1
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 160
    .line 161
    .line 162
    new-array p0, v2, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {p0}, La/oa1;->v([Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_6
    return v2
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .line 1
    const-string p2, "MarkAttendanceNew"

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_e

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 10
    .line 11
    if-eqz p1, :cond_e

    .line 12
    .line 13
    iget-object p3, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const/4 p4, 0x0

    .line 33
    if-eqz p3, :cond_3

    .line 34
    .line 35
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    const v0, 0x7fffffff

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/hardware/Camera$Size;

    .line 60
    .line 61
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    .line 62
    .line 63
    add-int/lit16 v2, v2, -0x280

    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 70
    .line 71
    add-int/lit16 v3, v3, -0x1e0

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    add-int/2addr v3, v2

    .line 78
    if-ge v3, v0, :cond_2

    .line 79
    .line 80
    move-object p4, v1

    .line 81
    move v0, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 84
    .line 85
    iget p3, p4, Landroid/hardware/Camera$Size;->width:I

    .line 86
    .line 87
    iget p4, p4, Landroid/hardware/Camera$Size;->height:I

    .line 88
    .line 89
    invoke-virtual {p1, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 90
    .line 91
    .line 92
    :cond_4
    const/4 p3, 0x0

    .line 93
    :try_start_1
    iget-object p4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 94
    .line 95
    invoke-virtual {p4, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_1
    invoke-static {p2}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 100
    .line 101
    .line 102
    new-array p1, p3, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p1}, La/oa1;->v([Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    iget-object p4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 122
    .line 123
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    .line 124
    .line 125
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    .line 126
    .line 127
    invoke-virtual {p4, v0, p1}, Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;->setAspectRatio(II)V

    .line 128
    .line 129
    .line 130
    :cond_5
    iget p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->J:I

    .line 131
    .line 132
    int-to-float p1, p1

    .line 133
    const/high16 p4, 0x43f00000    # 480.0f

    .line 134
    .line 135
    div-float/2addr p1, p4

    .line 136
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->L:F

    .line 137
    .line 138
    iget p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->K:I

    .line 139
    .line 140
    int-to-float p1, p1

    .line 141
    const/high16 p4, 0x44200000    # 640.0f

    .line 142
    .line 143
    div-float/2addr p1, p4

    .line 144
    iput p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->M:F

    .line 145
    .line 146
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 147
    .line 148
    const/4 p4, 0x3

    .line 149
    if-nez p1, :cond_6

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-nez p1, :cond_7

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-nez p1, :cond_8

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 167
    .line 168
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->I:I

    .line 172
    .line 173
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    const/4 v1, 0x1

    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    if-eq p1, v1, :cond_c

    .line 192
    .line 193
    const/4 v2, 0x2

    .line 194
    if-eq p1, v2, :cond_b

    .line 195
    .line 196
    if-eq p1, p4, :cond_a

    .line 197
    .line 198
    :cond_9
    move p1, p3

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    const/16 p1, 0x10e

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    const/16 p1, 0xb4

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_c
    const/16 p1, 0x5a

    .line 207
    .line 208
    :goto_3
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 209
    .line 210
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 211
    .line 212
    if-ne v2, v1, :cond_d

    .line 213
    .line 214
    add-int/2addr v0, p1

    .line 215
    rem-int/lit16 v0, v0, 0x168

    .line 216
    .line 217
    rsub-int p1, v0, 0x168

    .line 218
    .line 219
    rem-int/lit16 p1, p1, 0x168

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_d
    sub-int/2addr v0, p1

    .line 223
    add-int/lit16 v0, v0, 0x168

    .line 224
    .line 225
    rem-int/lit16 p1, v0, 0x168

    .line 226
    .line 227
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 228
    .line 229
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :catch_2
    invoke-static {p2}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 234
    .line 235
    .line 236
    new-array p1, p3, [Ljava/lang/Object;

    .line 237
    .line 238
    invoke-static {p1}, La/oa1;->v([Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :goto_5
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 242
    .line 243
    new-instance v0, La/p61;

    .line 244
    .line 245
    invoke-direct {v0, p0}, La/p61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 249
    .line 250
    .line 251
    :try_start_3
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :catch_3
    invoke-static {p2}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 258
    .line 259
    .line 260
    new-array p1, p3, [Ljava/lang/Object;

    .line 261
    .line 262
    invoke-static {p1}, La/oa1;->o([Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    new-instance p1, La/f61;

    .line 266
    .line 267
    const-string p2, "Camera preview failed. Please restart the app."

    .line 268
    .line 269
    invoke-direct {p1, p0, p2, p4}, La/f61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    .line 276
    .line 277
    :cond_e
    :goto_6
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->u(Landroid/view/SurfaceHolder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setPerformanceMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setLandmarkMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->setClassificationMode(I)Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/mlkit/vision/face/FaceDetectorOptions$Builder;->build()Lcom/google/mlkit/vision/face/FaceDetectorOptions;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/mlkit/vision/face/FaceDetection;->getClient(Lcom/google/mlkit/vision/face/FaceDetectorOptions;)Lcom/google/mlkit/vision/face/FaceDetector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p2, v1}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Lcom/google/mlkit/vision/face/FaceDetector;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, La/uy;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0, p2, p1}, La/uy;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance p2, La/ch;

    .line 46
    .line 47
    const/16 v1, 0x10

    .line 48
    .line 49
    invoke-direct {p2, v1, p0, v0}, La/ch;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final u(Landroid/view/SurfaceHolder;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 17
    .line 18
    .line 19
    :catch_2
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    move v4, v3

    .line 32
    :goto_0
    const/4 v5, -0x1

    .line 33
    if-ge v4, v2, :cond_2

    .line 34
    .line 35
    invoke-static {v4, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 36
    .line 37
    .line 38
    iget v6, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v4, v5

    .line 48
    :goto_1
    const-string v0, "MarkAttendanceNew"

    .line 49
    .line 50
    if-ltz v4, :cond_3

    .line 51
    .line 52
    :try_start_3
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iput-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 57
    .line 58
    iput v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->I:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_3
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, La/oa1;->v([Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 76
    .line 77
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 78
    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    move v4, v3

    .line 91
    :goto_3
    if-ge v4, v2, :cond_5

    .line 92
    .line 93
    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 94
    .line 95
    .line 96
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 97
    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    move v5, v4

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_4
    if-ltz v5, :cond_6

    .line 106
    .line 107
    :try_start_4
    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 112
    .line 113
    iput v5, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->I:I

    .line 114
    .line 115
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 116
    .line 117
    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, La/oa1;->t([Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :catch_4
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 131
    .line 132
    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, La/oa1;->o([Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->H:Landroid/hardware/Camera;

    .line 145
    .line 146
    const/4 v2, 0x3

    .line 147
    iget-object v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 148
    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    new-instance p1, La/f61;

    .line 152
    .line 153
    const-string v0, "Camera not available. Please check if another app is using it."

    .line 154
    .line 155
    invoke-direct {p1, p0, v0, v2}, La/f61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_7
    :try_start_5
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :catch_5
    invoke-static {v0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 167
    .line 168
    .line 169
    new-array p1, v3, [Ljava/lang/Object;

    .line 170
    .line 171
    invoke-static {p1}, La/oa1;->o([Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    new-instance p1, La/f61;

    .line 175
    .line 176
    const-string v0, "Camera setup failed. Please restart the app."

    .line 177
    .line 178
    invoke-direct {p1, p0, v0, v2}, La/f61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    .line 183
    .line 184
    :goto_6
    return-void
.end method

.method public final v([B)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->E:Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;

    .line 3
    .line 4
    if-eqz v1, :cond_9

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->G:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 13
    .line 14
    iget-object v2, v2, La/p11;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/location/Location;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v0

    .line 24
    :goto_0
    if-nez v2, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isOpenDialog()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_3
    const/16 v2, 0x1e0

    .line 39
    .line 40
    const/4 v4, 0x7

    .line 41
    const/16 v5, 0x280

    .line 42
    .line 43
    invoke-virtual {v1, p1, v5, v2, v4}, Lcom/mpssdi/sarthak/utils/ncnn/EngineWrapper;->detect([BIII)Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x3f333333    # 0.7f

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->setThreshold(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getTop()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getRight()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getBottom()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    new-instance v7, Landroid/graphics/Rect;

    .line 70
    .line 71
    int-to-float v8, v2

    .line 72
    iget v9, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->L:F

    .line 73
    .line 74
    mul-float/2addr v8, v9

    .line 75
    float-to-int v8, v8

    .line 76
    int-to-float v10, v4

    .line 77
    iget v11, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->M:F

    .line 78
    .line 79
    mul-float/2addr v10, v11

    .line 80
    float-to-int v10, v10

    .line 81
    int-to-float v12, v5

    .line 82
    mul-float/2addr v12, v9

    .line 83
    float-to-int v9, v12

    .line 84
    int-to-float v12, v6

    .line 85
    mul-float/2addr v12, v11

    .line 86
    float-to-int v11, v12

    .line 87
    invoke-direct {v7, v8, v10, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v7}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->updateLocation(Landroid/graphics/Rect;)Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->T:Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getHasFace()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->setCameraCoordinates(IIII)V

    .line 102
    .line 103
    .line 104
    iget v2, v1, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraRight:I

    .line 105
    .line 106
    iget v4, v1, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraLeft:I

    .line 107
    .line 108
    sub-int/2addr v2, v4

    .line 109
    iget v4, v1, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraBottom:I

    .line 110
    .line 111
    iget v5, v1, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->cameraTop:I

    .line 112
    .line 113
    sub-int/2addr v4, v5

    .line 114
    mul-int/2addr v4, v2

    .line 115
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->updateAdaptiveThresholds(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getHasFace()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/mpssdi/sarthak/utils/ncnn/DetectionResult;->getConfidence()F

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    iget-object v4, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->getCurrentDetectionThreshold()F

    .line 133
    .line 134
    .line 135
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    cmpl-float v2, v2, v4

    .line 137
    .line 138
    if-ltz v2, :cond_5

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_5
    move v3, v0

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 143
    .line 144
    if-eqz v3, :cond_6

    .line 145
    .line 146
    :try_start_1
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->incrementConsecutiveRealFrames()V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_6
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetConsecutiveRealFrames()V

    .line 151
    .line 152
    .line 153
    :goto_2
    if-eqz v3, :cond_7

    .line 154
    .line 155
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->getConsecutiveRealFrames()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v4, 0x3

    .line 162
    if-lt v2, v4, :cond_7

    .line 163
    .line 164
    iget-object v2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->isAttendanceMarked()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0, p1, v1}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->p([BLcom/mpssdi/sarthak/utils/ncnn/DetectionResult;)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_7
    if-nez v3, :cond_8

    .line 177
    .line 178
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 181
    .line 182
    .line 183
    :cond_8
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 184
    .line 185
    .line 186
    move-result-wide v1

    .line 187
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 188
    .line 189
    invoke-virtual {p1, v1, v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->shouldUpdateUI(J)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_9

    .line 194
    .line 195
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 196
    .line 197
    invoke-virtual {p1, v1, v2}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setLastUIUpdateTime(J)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 201
    .line 202
    new-instance v1, La/n61;

    .line 203
    .line 204
    invoke-direct {v1, p0, v3, v0}, La/n61;-><init>(Ljava/lang/Object;ZI)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .line 209
    .line 210
    :cond_9
    :goto_4
    return-void

    .line 211
    :catch_0
    const-string p0, "MarkAttendanceNew"

    .line 212
    .line 213
    invoke-static {p0}, La/hd2;->a(Ljava/lang/String;)La/oa1;

    .line 214
    .line 215
    .line 216
    new-array p0, v0, [Ljava/lang/Object;

    .line 217
    .line 218
    invoke-static {p0}, La/oa1;->o([Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->resetFaceDetection()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setMark(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n:Lcom/mpssdi/sarthak/utils/AutoFitSurfaceView;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-nez v0, :cond_2

    .line 33
    .line 34
    :goto_1
    return-void

    .line 35
    :cond_2
    new-instance v1, La/o1;

    .line 36
    .line 37
    const/16 v2, 0x1c

    .line 38
    .line 39
    invoke-direct {v1, v2, p0, v0}, La/o1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0x96

    .line 43
    .line 44
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->f:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, La/f61;

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    invoke-direct {v0, p0, p1, v1}, La/f61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->k(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->R:La/p11;

    .line 9
    .line 10
    iget-object v0, v0, La/p11;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/location/Location;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->r:Landroid/widget/TextView;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const p1, 0x7f120131

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;La/w4;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/utils/BaseFragment;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->n()V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const-string v5, "Ok"

    .line 34
    .line 35
    move-object v2, p1

    .line 36
    move-object v3, p2

    .line 37
    move-object v7, p3

    .line 38
    invoke-static/range {v1 .. v8}, La/q91;->h(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;La/w4;La/w4;)Landroidx/appcompat/app/AlertDialog;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->W:Landroidx/appcompat/app/AlertDialog;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;->e:Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;

    .line 52
    .line 53
    const/4 p3, 0x1

    .line 54
    invoke-virtual {p2, p3}, Lcom/mpssdi/sarthak/utils/face/FaceDetectionState;->setOpenDialog(Z)V

    .line 55
    .line 56
    .line 57
    new-instance p2, La/k61;

    .line 58
    .line 59
    const/4 p3, 0x2

    .line 60
    invoke-direct {p2, p0, p3}, La/k61;-><init>(Lcom/mpssdi/sarthak/view/home/fragments/mark_attendance_new/MarkAttendanceNew;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const/16 p1, 0x30

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method
