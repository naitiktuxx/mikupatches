import os
import shutil
import json

BASE_SRC = "build_staging/base"
PATCHES_BASE = "patches/com.community.newroom/base"

# 1. Ensure NsfwFilter.smali exists
assert os.path.exists("NsfwFilter.smali"), "NsfwFilter.smali must exist"
nsfw_dest = os.path.join(PATCHES_BASE, "smali/com/miku/filter/NsfwFilter.smali")
os.makedirs(os.path.dirname(nsfw_dest), exist_ok=True)
shutil.copyfile("NsfwFilter.smali", nsfw_dest)
print(f"Copied NsfwFilter.smali to {nsfw_dest}")

# 2. Patch SearchViewModel.smali
vm_src_path = os.path.join(PATCHES_BASE, "smali_classes6/com/transsion/search/viewmodel/SearchViewModel.smali")
if not os.path.exists(vm_src_path):
    vm_src_path = os.path.join(BASE_SRC, "smali_classes6/com/transsion/search/viewmodel/SearchViewModel.smali")

with open(vm_src_path, "r", encoding="utf-8") as f:
    vm_content = f.read()

# In v(String, SearchSuggestEntity):
v_target = """:cond_0
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getKeyword()Ljava/lang/String;"""

v_replacement = """:cond_0
    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miku/filter/NsfwFilter;->filterSuggestEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/search/bean/SearchSuggestEntity;->setItems(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/transsion/search/bean/SearchSuggestEntity;->getKeyword()Ljava/lang/String;"""

assert v_target in vm_content, "v_target not found in SearchViewModel.smali"
vm_content = vm_content.replace(v_target, v_replacement, 1)

# In p(String):
p_target = """.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->F()Z"""

p_replacement = """.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_nsfw_ok

    return-void

    :cond_nsfw_ok
    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchViewModel;->F()Z"""

assert p_target in vm_content, "p_target not found in SearchViewModel.smali"
vm_content = vm_content.replace(p_target, p_replacement, 1)

vm_dest_path = os.path.join(PATCHES_BASE, "smali_classes6/com/transsion/search/viewmodel/SearchViewModel.smali")
os.makedirs(os.path.dirname(vm_dest_path), exist_ok=True)
with open(vm_dest_path, "w", encoding="utf-8") as f:
    f.write(vm_content)
print(f"Wrote patched SearchViewModel.smali to {vm_dest_path}")

# 3. Patch SearchSuggestFragment.smali (com.transsion.search)
ssf_src_path = os.path.join(BASE_SRC, "smali_classes6/com/transsion/search/fragment/suggest/SearchSuggestFragment.smali")
with open(ssf_src_path, "r", encoding="utf-8") as f:
    ssf_content = f.read()

# In k0:
k0_target = """    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchSuggestEntity;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V"""

k0_replacement = """    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/transsion/search/bean/SearchSuggestEntity;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->filterSuggestEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V"""

assert k0_target in ssf_content, "k0_target not found in SearchSuggestFragment.smali"
ssf_content = ssf_content.replace(k0_target, k0_replacement, 1)

# In n0:
n0_target = """.method public final n0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->i0()Lcom/transsion/search/viewmodel/SearchViewModel;"""

n0_replacement = """.method public final n0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "keyWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_nsfw_ok

    iget-object v0, p0, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search/fragment/suggest/d;

    if-eqz v0, :cond_nsfw_ret

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_nsfw_ret
    return-void

    :cond_nsfw_ok
    invoke-direct {p0}, Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;->i0()Lcom/transsion/search/viewmodel/SearchViewModel;"""

assert n0_target in ssf_content, "n0_target not found in SearchSuggestFragment.smali"
ssf_content = ssf_content.replace(n0_target, n0_replacement, 1)

ssf_dest_path = os.path.join(PATCHES_BASE, "smali_classes6/com/transsion/search/fragment/suggest/SearchSuggestFragment.smali")
os.makedirs(os.path.dirname(ssf_dest_path), exist_ok=True)
with open(ssf_dest_path, "w", encoding="utf-8") as f:
    f.write(ssf_content)
print(f"Wrote patched SearchSuggestFragment.smali to {ssf_dest_path}")

# 4. Patch gr/c.smali (com.transsion.search_pugc viewmodel)
grc_src_path = os.path.join(BASE_SRC, "smali_classes7/gr/c.smali")
with open(grc_src_path, "r", encoding="utf-8") as f:
    grc_content = f.read()

# In n(String, UGCSearchSuggestData):
grc_n_target = """:cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getKeyword()Ljava/lang/String;"""

grc_n_replacement = """:cond_0
    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miku/filter/NsfwFilter;->filterSearchSuggestItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->setItems(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getKeyword()Ljava/lang/String;"""

assert grc_n_target in grc_content, "grc_n_target not found in gr/c.smali"
grc_content = grc_content.replace(grc_n_target, grc_n_replacement, 1)

# In j:
grc_j_target = """.method public final j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lgr/c;->t()Z"""

grc_j_replacement = """.method public final j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_nsfw_ok

    return-void

    :cond_nsfw_ok
    invoke-direct {p0}, Lgr/c;->t()Z"""

assert grc_j_target in grc_content, "grc_j_target not found in gr/c.smali"
grc_content = grc_content.replace(grc_j_target, grc_j_replacement, 1)

grc_dest_path = os.path.join(PATCHES_BASE, "smali_classes7/gr/c.smali")
os.makedirs(os.path.dirname(grc_dest_path), exist_ok=True)
with open(grc_dest_path, "w", encoding="utf-8") as f:
    f.write(grc_content)
print(f"Wrote patched gr/c.smali to {grc_dest_path}")

# 5. Patch SearchSuggestFragment.smali (com.transsion.search_pugc)
pugc_ssf_src_path = os.path.join(BASE_SRC, "smali_classes6/com/transsion/search_pugc/fragment/suggest/SearchSuggestFragment.smali")
with open(pugc_ssf_src_path, "r", encoding="utf-8") as f:
    pugc_ssf_content = f.read()

pugc_k0_target = """    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V"""

pugc_k0_replacement = """    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/search_pugc/bean/UGCSearchSuggestData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->filterSearchSuggestItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V"""

assert pugc_k0_target in pugc_ssf_content, "pugc_k0_target not found in pugc SearchSuggestFragment.smali"
pugc_ssf_content = pugc_ssf_content.replace(pugc_k0_target, pugc_k0_replacement, 1)

pugc_o0_target = """.method public final o0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "keyWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->j0()Lgr/c;"""

pugc_o0_replacement = """.method public final o0(Ljava/lang/String;)V
    .locals 3

    const-string v0, "keyWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_nsfw_ok

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->c:Lcom/transsion/search_pugc/fragment/suggest/e;

    if-eqz v0, :cond_nsfw_ret

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_nsfw_ret
    return-void

    :cond_nsfw_ok
    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;->j0()Lgr/c;"""

assert pugc_o0_target in pugc_ssf_content, "pugc_o0_target not found in pugc SearchSuggestFragment.smali"
pugc_ssf_content = pugc_ssf_content.replace(pugc_o0_target, pugc_o0_replacement, 1)

pugc_dest_path = os.path.join(PATCHES_BASE, "smali_classes6/com/transsion/search_pugc/fragment/suggest/SearchSuggestFragment.smali")
os.makedirs(os.path.dirname(pugc_dest_path), exist_ok=True)
with open(pugc_dest_path, "w", encoding="utf-8") as f:
    f.write(pugc_ssf_content)
print(f"Wrote patched pugc SearchSuggestFragment.smali to {pugc_dest_path}")

# 6. Patch yq/j$b.smali (Google Suggest response parser for com.transsion.search)
yjb_src_path = os.path.join(BASE_SRC, "smali_classes7/yq/j$b.smali")
with open(yjb_src_path, "r", encoding="utf-8") as f:
    yjb_content = f.read()

yjb_target = """    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    new-instance v2, Lcom/transsion/search/bean/SuggestEntity;"""

yjb_replacement = """    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_nsfw_skip

    goto :goto_0

    :cond_nsfw_skip
    new-instance v2, Lcom/transsion/search/bean/SuggestEntity;"""

assert yjb_target in yjb_content, "yjb_target not found in yq/j$b.smali"
yjb_content = yjb_content.replace(yjb_target, yjb_replacement, 1)

yjb_dest_path = os.path.join(PATCHES_BASE, "smali_classes7/yq/j$b.smali")
os.makedirs(os.path.dirname(yjb_dest_path), exist_ok=True)
with open(yjb_dest_path, "w", encoding="utf-8") as f:
    f.write(yjb_content)
print(f"Wrote patched yq/j$b.smali to {yjb_dest_path}")

# 7. Patch fr/c$b.smali (Google Suggest response parser for com.transsion.search_pugc)
fcb_src_path = os.path.join(BASE_SRC, "smali_classes7/fr/c$b.smali")
with open(fcb_src_path, "r", encoding="utf-8") as f:
    fcb_content = f.read()

fcb_target = """    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/transsion/search_pugc/bean/SearchSuggestItem;"""

fcb_replacement = """    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/miku/filter/NsfwFilter;->isNsfwText(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_nsfw_skip

    goto :goto_0

    :cond_nsfw_skip
    new-instance v4, Lcom/transsion/search_pugc/bean/SearchSuggestItem;"""

assert fcb_target in fcb_content, "fcb_target not found in fr/c$b.smali"
fcb_content = fcb_content.replace(fcb_target, fcb_replacement, 1)

fcb_dest_path = os.path.join(PATCHES_BASE, "smali_classes7/fr/c$b.smali")
os.makedirs(os.path.dirname(fcb_dest_path), exist_ok=True)
with open(fcb_dest_path, "w", encoding="utf-8") as f:
    f.write(fcb_content)
print(f"Wrote patched fr/c$b.smali to {fcb_dest_path}")

# 8. Copy JSON to assets
import generate_nsfw_filter
assets_json_path = os.path.join(PATCHES_BASE, "assets/nsfw_blocklist.json")
os.makedirs(os.path.dirname(assets_json_path), exist_ok=True)
with open(assets_json_path, "w", encoding="utf-8") as f:
    json.dump(generate_nsfw_filter.SPEC, f, indent=2, ensure_ascii=False)
print(f"Wrote assets blocklist to {assets_json_path}")

print("All patch files generated successfully!")
