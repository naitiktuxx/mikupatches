.class public final Lcom/transsion/player/mediasession/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/player/mediasession/MusicIntentReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "",
        "a",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/mediasession/MusicIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_done

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_done

    const-string p2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Landroid/view/KeyEvent;

    if-eqz p2, :cond_done

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_done

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sget-object p2, Lko/l0;->a:Lko/l0;

    invoke-virtual {p2}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object p2

    # KEYCODE_MEDIA_PLAY (126)
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_check_pause

    if-eqz p2, :cond_done

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_send_play

    # KEYCODE_MEDIA_PAUSE (127)
    :cond_check_pause
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_check_toggle

    if-eqz p2, :cond_done

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->pause()V

    goto :goto_send_pause

    # KEYCODE_MEDIA_PLAY_PAUSE (85) or KEYCODE_HEADSETHOOK (79)
    :cond_check_toggle
    const/16 v0, 0x55

    if-eq p1, v0, :cond_do_toggle

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_check_stop

    :cond_do_toggle
    if-eqz p2, :cond_done

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_toggle_to_pause

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->pause()V

    goto :goto_send_pause

    :cond_toggle_to_pause
    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_send_play

    # KEYCODE_MEDIA_STOP (86)
    :cond_check_stop
    const/16 v0, 0x56

    if-ne p1, v0, :cond_check_next

    if-eqz p2, :cond_stop_dismiss

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->stop()V

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_stop_dismiss
    sget-object p1, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/h;->p()V

    goto :cond_done

    # KEYCODE_MEDIA_NEXT (87) or KEYCODE_MEDIA_FAST_FORWARD (90)
    :cond_check_next
    const/16 v0, 0x57

    if-eq p1, v0, :cond_do_fwd

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_check_prev

    :cond_do_fwd
    if-eqz p2, :cond_done

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_seek_fwd

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_seek_fwd

    move-wide v0, v2

    :cond_seek_fwd
    invoke-interface {p2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_goto_pause

    goto :goto_send_play

    :cond_goto_pause
    goto :goto_send_pause

    # KEYCODE_MEDIA_PREVIOUS (88) or KEYCODE_MEDIA_REWIND (89)
    :cond_check_prev
    const/16 v0, 0x58

    if-eq p1, v0, :cond_do_rew

    const/16 v0, 0x59

    if-ne p1, v0, :cond_done

    :cond_do_rew
    if-eqz p2, :cond_done

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_seek_rew

    move-wide v0, v2

    :cond_seek_rew
    invoke-interface {p2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_send_pause_prev

    goto :goto_send_play

    :cond_send_pause_prev
    goto :goto_send_pause

    :goto_send_play
    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_done

    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->t(Lcom/transsion/player/mediasession/MediaItem;)V

    goto :cond_done

    :goto_send_pause
    invoke-static {}, Lcom/transsion/player/mediasession/h;->c()Lcom/transsion/player/mediasession/MediaItem;

    move-result-object p2

    if-eqz p2, :cond_done

    sget-object p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->h:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;

    invoke-virtual {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$a;->a()Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->r(Lcom/transsion/player/mediasession/MediaItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :cond_done

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_done
    return-void
.end method
