.class Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    .line 1393
    iput p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .line 1394
    iput p3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .line 1395
    iput p4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1396
    iput p5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1397
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    .prologue
    .line 1410
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    .line 1411
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .locals 2

    .prologue
    .line 1401
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_0

    .line 1402
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->size:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1403
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->modCount:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1404
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v1, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v0, v1

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .line 1406
    .restart local v0    # "hi":I
    :cond_0
    return v0
.end method
