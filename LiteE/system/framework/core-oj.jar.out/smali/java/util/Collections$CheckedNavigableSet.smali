.class Ljava/util/Collections$CheckedNavigableSet;
.super Ljava/util/Collections$CheckedSortedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSortedSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b581c0c444127caL


# instance fields
.field private final ns:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3387
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Class;)V

    .line 3388
    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 3389
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 3393
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3400
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3398
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 3392
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3406
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3417
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 3405
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 3394
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 3391
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3395
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3396
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3403
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3413
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 3402
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3409
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3421
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 3408
    .local p0, "this":Ljava/util/Collections$CheckedNavigableSet;, "Ljava/util/Collections$CheckedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
