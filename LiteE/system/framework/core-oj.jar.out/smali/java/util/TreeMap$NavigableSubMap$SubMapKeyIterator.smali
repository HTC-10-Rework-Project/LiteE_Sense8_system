.class final Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;
.super Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap$NavigableSubMap",
        "<TK;TV;>.SubMapIterator<TK;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1807
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "this$1":Ljava/util/TreeMap$NavigableSubMap;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    .line 1809
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;-><init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1810
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1835
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/16 v0, 0x15

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 1832
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1821
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1823
    :cond_0
    return-void
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1839
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$NavigableSubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1812
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 1815
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->removeAscending()V

    .line 1816
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 1825
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1827
    const/4 v0, 0x1

    return v0

    .line 1829
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1818
    .local p0, "this":Ljava/util/TreeMap$NavigableSubMap$SubMapKeyIterator;, "Ljava/util/TreeMap$NavigableSubMap<TK;TV;>.SubMapKeyIterator;"
    const/4 v0, 0x0

    return-object v0
.end method
