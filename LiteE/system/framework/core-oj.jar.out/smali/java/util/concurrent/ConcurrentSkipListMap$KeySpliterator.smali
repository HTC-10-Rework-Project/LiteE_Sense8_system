.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V
    .locals 0
    .param p5, "est"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 3323
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    .line 3324
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 3385
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v5, 0x0

    .line 3349
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 3350
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3351
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3352
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3353
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3354
    :goto_0
    if-eqz v1, :cond_1

    .line 3356
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 3361
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void

    .line 3358
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_3

    .line 3359
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3354
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0
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
    .line 3391
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v6, 0x0

    .line 3364
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 3365
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3366
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3367
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3368
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 3370
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2

    .line 3371
    const/4 v1, 0x0

    .line 3380
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3381
    return v6

    .line 3374
    .restart local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_3

    .line 3375
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3376
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3377
    const/4 v5, 0x1

    return v5

    .line 3368
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 3326
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    const/4 v5, 0x0

    .line 3328
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3329
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3330
    .local v8, "f":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_3

    iget-object v7, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_3

    .line 3331
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v10, :cond_3

    .line 3333
    iget-object v11, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .local v11, "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v11, :cond_2

    iget-object v6, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2

    .line 3334
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .local v9, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 3335
    iget-object v4, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .local v4, "sk":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_2

    invoke-static {v1, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    .line 3336
    if-eqz v8, :cond_0

    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 3337
    :cond_0
    iput-object v9, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3338
    iget-object v2, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3339
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_1

    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iput-object v11, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3340
    iget v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    .line 3341
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:I

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    return-object v0

    .line 3339
    .restart local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    goto :goto_1

    .line 3331
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "sk":Ljava/lang/Object;, "TK;"
    .end local v6    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v9    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iput-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .restart local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_0

    .line 3345
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_3
    return-object v5
.end method
