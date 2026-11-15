import os
import re

MOVIE_DETAIL_METHOD = """.method public final playAnyway()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Subject;->setRestrictKid(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->a:Lcom/transsnet/downloader/widget/DownloadView;

    iput-object v1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->J:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/h;

    if-eqz v1, :cond_rest

    iget-object v1, v1, Lcn/h;->u:Landroid/view/View;

    if-eqz v1, :cond_rest

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_rest
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->Y1(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_0
    return-void
.end method
"""

STREAM_DETAIL_METHOD = """.method public final playAnyway()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/Subject;->setRestrictKid(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/videodetail/StreamDetailFragment;->m:Z

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Ljx/i;

    if-eqz v1, :cond_rest

    iget-object v1, v1, Ljx/i;->v:Landroid/view/View;

    if-eqz v1, :cond_rest

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_rest
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/StreamDetailFragment;->w2(Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-direct {p0}, Lcom/transsion/videodetail/StreamDetailFragment;->u2()V

    :cond_0
    return-void
.end method
"""

def apply_hook(decompiled_dir, app_profile, verbose=False):
    """
    Ensures playAnyway() handler is injected into MovieDetailFragment and StreamDetailFragment
    so that tapping 'Play anyway' on the Restricted Content card unlocks playback and downloads.
    """
    # 1. MovieDetailFragment
    movie_smali = os.path.join(
        decompiled_dir,
        "smali_classes6",
        "com",
        "transsion",
        "moviedetail",
        "fragment",
        "MovieDetailFragment.smali",
    )
    if os.path.exists(movie_smali):
        with open(movie_smali, "r", encoding="utf-8") as f:
            content = f.read()

        if "playAnyway()V" not in content:
            # Append method at the end of class
            content = content.rstrip() + "\n\n" + MOVIE_DETAIL_METHOD
            with open(movie_smali, "w", encoding="utf-8") as f:
                f.write(content)
            if verbose:
                print("  -> Injected playAnyway() into MovieDetailFragment.smali")

    # 2. StreamDetailFragment
    stream_smali = os.path.join(
        decompiled_dir,
        "smali_classes7",
        "com",
        "transsion",
        "videodetail",
        "StreamDetailFragment.smali",
    )
    if os.path.exists(stream_smali):
        with open(stream_smali, "r", encoding="utf-8") as f:
            content = f.read()

        if "playAnyway()V" not in content:
            content = content.rstrip() + "\n\n" + STREAM_DETAIL_METHOD
            with open(stream_smali, "w", encoding="utf-8") as f:
                f.write(content)
            if verbose:
                print("  -> Injected playAnyway() into StreamDetailFragment.smali")
