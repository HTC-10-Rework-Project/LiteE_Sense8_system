.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final hiInclusive:Z

.field final isDescending:Z

.field private transient keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final loInclusive:Z

.field final m:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .locals 3
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "isDescending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<TK;TV;>;TK;ZTK;ZZ)V"
        }
    .end annotation

    .prologue
    .line 2591
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2595
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2596
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 2597
    invoke-static {v0, p2, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2598
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inconsistent range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2599
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2600
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2601
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2602
    iput-boolean p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2603
    iput-boolean p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2604
    iput-boolean p6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    .line 2605
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2994
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2998
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 2626
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez p1, :cond_0

    .line 2627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2628
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2630
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 2874
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2875
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2876
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v2

    .line 2875
    if-eqz v2, :cond_1

    .line 2878
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2879
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2881
    :cond_1
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2907
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2908
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_0

    .line 2909
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    return-object v1

    .line 2911
    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2824
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2825
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2860
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 2861
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2862
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2863
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2864
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v3

    .line 2863
    if-eqz v3, :cond_2

    .line 2866
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v2

    .line 2867
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2868
    const/4 v3, 0x1

    return v3

    .line 2865
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2870
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3072
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2986
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2986
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2987
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2988
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    xor-int/lit8 v6, v6, 0x1

    .line 2987
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3067
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    .line 3068
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/Set;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3034
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3026
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3010
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3014
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 2829
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2830
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .locals 6
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 2760
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2761
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v5, :cond_0

    .line 2762
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_1

    .line 2763
    or-int/lit8 p2, p2, 0x2

    .line 2767
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2768
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2

    :goto_1
    return-object v4

    .line 2765
    :cond_1
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 2768
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v4

    goto :goto_1

    .line 2769
    :cond_3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2770
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v4

    :cond_4
    return-object v4

    .line 2772
    :cond_5
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2773
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_6

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 2774
    :cond_6
    return-object v4

    .line 2775
    :cond_7
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2776
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v3

    .line 2777
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_5

    .line 2778
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TK;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v6, 0x0

    .line 2784
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v5, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2785
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v5, :cond_0

    .line 2786
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_1

    .line 2787
    or-int/lit8 p2, p2, 0x2

    .line 2791
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2792
    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_2

    .line 2793
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    .line 2794
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2795
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v5

    .line 2789
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1
    and-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 2797
    :cond_2
    return-object v6

    .line 2799
    :cond_3
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2800
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_4

    .line 2801
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    .line 2802
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_4

    .line 2803
    iget-object v2, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2804
    .local v2, "last":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2805
    return-object v2

    .line 2808
    .end local v2    # "last":Ljava/lang/Object;, "TK;"
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_4
    return-object v6

    .line 2811
    :cond_5
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    .line 2812
    .restart local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_6

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 2813
    :cond_6
    return-object v6

    .line 2814
    :cond_7
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2815
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v4

    .line 2816
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-eqz v4, :cond_5

    .line 2817
    return-object v1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2962
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 2978
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2978
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2962
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2979
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2963
    if-nez p1, :cond_0

    .line 2964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2965
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2668
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2669
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2670
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v0, :cond_1

    .line 2671
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2673
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3018
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3022
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method highestEntry()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 2715
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2717
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2718
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 2719
    :cond_1
    return-object v4

    .line 2720
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 2721
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 2722
    return-object v1
.end method

.method highestKey()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2692
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2693
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2694
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 2695
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2696
    .local v1, "last":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2697
    return-object v1

    .line 2699
    .end local v1    # "last":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 2622
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;",
            "Ljava/util/Comparator",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2637
    if-nez p1, :cond_0

    .line 2638
    return v3

    .line 2639
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2640
    return v4

    .line 2641
    :cond_1
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2642
    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    .line 2643
    return v4

    .line 2644
    :cond_2
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2645
    .local v0, "c":I
    if-gtz v0, :cond_3

    if-nez v0, :cond_4

    iget-boolean v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 2646
    :cond_3
    return v3

    .line 2647
    :cond_4
    return v4
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 2855
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2856
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3052
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 3053
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3049
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3038
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3030
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2655
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2656
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2657
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-eqz v0, :cond_1

    .line 2658
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2660
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3002
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 3006
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lowestEntry()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 2703
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2705
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2706
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2707
    return-object v4

    .line 2708
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->createSnapshot()Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 2709
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 2710
    return-object v1
.end method

.method lowestKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2680
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2681
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2682
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2683
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v2

    .line 2685
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 3057
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .line 3058
    .local v0, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    .end local v0    # "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    goto :goto_0
.end method

.method newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 11
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2920
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2921
    .local v8, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    .line 2922
    move-object v10, p1

    .line 2923
    .local v10, "tk":Ljava/lang/Object;, "TK;"
    move-object p1, p3

    .line 2924
    move-object p3, v10

    .line 2925
    move v9, p2

    .line 2926
    .local v9, "ti":Z
    move p2, p4

    .line 2927
    move p4, v9

    .line 2929
    .end local v9    # "ti":Z
    .end local v10    # "tk":Ljava/lang/Object;, "TK;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2930
    if-nez p1, :cond_3

    .line 2931
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2932
    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2940
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2941
    if-nez p3, :cond_5

    .line 2942
    iget-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2943
    iget-boolean p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2951
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2952
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 2951
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0

    .line 2935
    :cond_3
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-static {v8, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2936
    .local v7, "c":I
    if-ltz v7, :cond_4

    if-nez v7, :cond_1

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2937
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2946
    .end local v7    # "c":I
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {v8, p3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 2947
    .restart local v7    # "c":I
    if-gtz v7, :cond_6

    if-nez v7, :cond_2

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 2948
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3042
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3046
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2834
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2835
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2886
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2887
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2839
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2891
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeHighest()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 2742
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2744
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2745
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    .line 2746
    return-object v5

    .line 2747
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2748
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2749
    return-object v5

    .line 2750
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2751
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 2752
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method removeLowest()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 2727
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2729
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v2

    .line 2730
    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-nez v2, :cond_1

    .line 2731
    return-object v5

    .line 2732
    :cond_1
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2733
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2734
    return-object v5

    .line 2735
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v4, v1, v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2736
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 2737
    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v4, v1, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2900
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2901
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2895
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2896
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 2843
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v4, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2844
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const-wide/16 v2, 0x0

    .line 2845
    .local v2, "count":J
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2846
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v4

    .line 2845
    if-eqz v4, :cond_1

    .line 2848
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->getValidValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2849
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 2847
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0

    .line 2851
    :cond_1
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const v4, 0x7fffffff

    :goto_1
    return v4

    :cond_2
    long-to-int v4, v2

    goto :goto_1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2955
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 2974
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2974
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2955
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2975
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2957
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2958
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2959
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2968
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 2982
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2982
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1

    .prologue
    .line 2968
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2983
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2969
    if-nez p1, :cond_0

    .line 2970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2971
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v1, 0x0

    .line 2617
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {p2, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "c":I
    if-gtz v0, :cond_1

    .line 2618
    if-nez v0, :cond_0

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2617
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v1, 0x0

    .line 2611
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-static {p2, p1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "c":I
    if-ltz v0, :cond_1

    .line 2612
    if-nez v0, :cond_0

    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    xor-int/lit8 v1, v1, 0x1

    .line 2611
    .end local v0    # "c":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "c":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3062
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    .line 3063
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/Collection;

    goto :goto_0
.end method
