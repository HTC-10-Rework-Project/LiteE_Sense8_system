.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
.source "ConcurrentSkipListMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SubMapEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap",
        "<TK;TV;>.SubMapIter<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V
    .locals 0

    .prologue
    .line 3215
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    .local p1, "this$1":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->this$1:Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 3223
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3216
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3217
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>.SubMapEntryIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3218
    .local v0, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->nextValue:Ljava/lang/Object;

    .line 3219
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;->advance()V

    .line 3220
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
