.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;,
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field count:I

.field final items:[Ljava/lang/Object;

.field transient itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<TE;>.Itrs;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field putIndex:I

.field takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 225
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 226
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    .prologue
    .line 238
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 239
    if-gtz p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 241
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 244
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 245
    return-void
.end method

.method public constructor <init>(IZLjava/util/Collection;)V
    .locals 8
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 267
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 268
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 270
    const/4 v3, 0x0

    .line 272
    .local v3, "i":I
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 274
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :catch_0
    move-exception v2

    .line 275
    .local v2, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    .end local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v6

    .line 280
    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    throw v6

    .line 277
    .end local v3    # "i":I
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v4    # "i":I
    :cond_0
    :try_start_4
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 278
    if-ne v4, p1, :cond_1

    const/4 v6, 0x0

    :goto_3
    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    return-void

    :cond_1
    move v6, v4

    .line 278
    goto :goto_3

    .line 279
    :catchall_1
    move-exception v6

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 274
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :catch_1
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 167
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 169
    .local v0, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v1, v0, v2

    .line 170
    .local v1, "x":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v3, v0, v2

    .line 171
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 172
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 173
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    .line 175
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 176
    return-object v1
.end method

.method private enqueue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 154
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 155
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 156
    :cond_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 157
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 158
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 625
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 626
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 628
    :try_start_0
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 629
    .local v2, "k":I
    if-lez v2, :cond_3

    .line 630
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 631
    .local v1, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 632
    .local v4, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 634
    .local v0, "i":I
    :cond_0
    const/4 v5, 0x0

    aput-object v5, v1, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    array-length v5, v1

    if-ne v0, v5, :cond_1

    const/4 v0, 0x0

    .line 636
    :cond_1
    if-ne v0, v4, :cond_0

    .line 637
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 638
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 639
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v5, :cond_2

    .line 640
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 641
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 645
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v4    # "putIndex":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 647
    return-void

    .line 644
    .end local v2    # "k":I
    :catchall_0
    move-exception v5

    .line 645
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 644
    throw v5
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 509
    if-nez p1, :cond_0

    return v5

    .line 510
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 511
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 513
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v4, :cond_4

    .line 514
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 515
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 516
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 518
    .local v0, "i":I
    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 519
    const/4 v4, 0x1

    .line 525
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    return v4

    .line 520
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    .line 521
    :cond_3
    if-ne v0, v3, :cond_1

    .line 525
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    return v5

    .line 524
    :catchall_0
    move-exception v4

    .line 525
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 524
    throw v4
.end method

.method final dec(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 135
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    if-nez p1, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length p1, v0

    .end local p1    # "i":I
    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 8
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x0

    .line 666
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    if-ne p1, p0, :cond_0

    .line 668
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 669
    :cond_0
    if-gtz p2, :cond_1

    .line 670
    return v6

    .line 671
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 672
    .local v1, "items":[Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 673
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 675
    :try_start_0
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 676
    .local v3, "n":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .local v4, "take":I
    const/4 v0, 0x0

    .line 679
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 681
    :try_start_1
    aget-object v5, v1, v4

    .line 682
    .local v5, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 683
    const/4 v6, 0x0

    aput-object v6, v1, v4

    .line 684
    add-int/lit8 v4, v4, 0x1

    array-length v6, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    .line 685
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :cond_3
    if-lez v0, :cond_6

    .line 691
    :try_start_2
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v6, v0

    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 692
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 693
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v6, :cond_4

    .line 694
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v6, :cond_5

    .line 695
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 699
    :cond_4
    :goto_1
    if-lez v0, :cond_6

    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 700
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 696
    :cond_5
    if-le v0, v4, :cond_4

    .line 697
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 703
    .end local v0    # "i":I
    .end local v3    # "n":I
    .end local v4    # "take":I
    :catchall_0
    move-exception v6

    .line 704
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    throw v6

    .line 704
    .restart local v0    # "i":I
    .restart local v3    # "n":I
    .restart local v4    # "take":I
    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 687
    return v3

    .line 688
    :catchall_1
    move-exception v6

    .line 690
    if-lez v0, :cond_9

    .line 691
    :try_start_3
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v7, v0

    iput v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 692
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 693
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v7, :cond_7

    .line 694
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v7, :cond_8

    .line 695
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 699
    :cond_7
    :goto_2
    if-lez v0, :cond_9

    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 700
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 696
    :cond_8
    if-le v0, v4, :cond_7

    .line 697
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    goto :goto_2

    .line 688
    :cond_9
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method final itemAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 314
    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    return v1

    .line 316
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 317
    return v1

    .line 319
    :catchall_0
    move-exception v1

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 357
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 358
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 360
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v4, :cond_1

    .line 361
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 362
    const/4 v1, 0x0

    .line 368
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    return v1

    .line 363
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    const/4 v1, 0x1

    .line 368
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 366
    return v1

    .line 367
    :catchall_0
    move-exception v1

    .line 368
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 367
    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 412
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 416
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    return-object v1

    .line 415
    :catchall_0
    move-exception v1

    .line 416
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 376
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 378
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v1

    .line 378
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    throw v1
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 396
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 397
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 399
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 400
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 401
    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    return-object v1

    .line 402
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 406
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 404
    return-object v1

    .line 405
    :catchall_0
    move-exception v1

    .line 406
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    throw v1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 334
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 336
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 337
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    throw v1

    .line 338
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 342
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 451
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 452
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    return v1

    .line 455
    :catchall_0
    move-exception v1

    .line 456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 478
    if-nez p1, :cond_0

    return v5

    .line 479
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v4, :cond_4

    .line 483
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 484
    .local v1, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 485
    .local v3, "putIndex":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 487
    .local v0, "i":I
    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    const/4 v4, 0x1

    .line 496
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 489
    return v4

    .line 491
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v4, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    .line 492
    :cond_3
    if-ne v0, v3, :cond_1

    .line 496
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    return v5

    .line 495
    :catchall_0
    move-exception v4

    .line 496
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    throw v4
.end method

.method removeAt(I)V
    .locals 6
    .param p1, "removeIndex"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 188
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 189
    .local v1, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    if-ne p1, v4, :cond_2

    .line 191
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aput-object v5, v1, v4

    .line 192
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 193
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 194
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v4, :cond_1

    .line 195
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    .line 214
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 215
    return-void

    .line 200
    :cond_2
    move v0, p1

    .local v0, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 201
    .local v3, "putIndex":I
    :goto_1
    move v2, v0

    .line 202
    .local v2, "pred":I
    add-int/lit8 v0, v0, 0x1

    array-length v4, v1

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    .line 203
    :cond_3
    if-ne v0, v3, :cond_4

    .line 204
    aput-object v5, v1, v2

    .line 205
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 210
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 211
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->removedAt(I)V

    goto :goto_0

    .line 208
    :cond_4
    aget-object v4, v1, v0

    aput-object v4, v1, v2

    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 428
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 429
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 431
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 431
    return v1

    .line 432
    :catchall_0
    move-exception v1

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1364
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/16 v0, 0x1110

    .line 1363
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 384
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 386
    :goto_0
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 389
    :catchall_0
    move-exception v1

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 389
    throw v1

    .line 388
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 388
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 543
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 547
    .local v2, "items":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int v1, v4, v5

    .line 548
    .local v1, "end":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-static {v2, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 549
    .local v0, "a":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v1, v4, :cond_0

    .line 550
    array-length v4, v2

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v4, v5

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    return-object v0

    .line 552
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 553
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    throw v4
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 595
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 597
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 598
    .local v2, "items":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 599
    .local v0, "count":I
    array-length v4, v2

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 600
    .local v1, "firstLeg":I
    array-length v4, p1

    if-ge v4, v0, :cond_2

    .line 601
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int/2addr v5, v0

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 601
    invoke-static {v2, v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 608
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    .line 609
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    const/4 v5, 0x0

    invoke-static {v2, v5, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    return-object p1

    .line 604
    :cond_2
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v5, 0x0

    invoke-static {v2, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    array-length v4, p1

    if-le v4, v0, :cond_0

    .line 606
    const/4 v4, 0x0

    aput-object v4, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    .end local v0    # "count":I
    .end local v1    # "firstLeg":I
    .end local v2    # "items":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 612
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 611
    throw v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
