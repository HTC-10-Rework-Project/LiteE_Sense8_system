.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;,
        Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;
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
.field private static final ALLOCATIONSPINLOCK:J

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private volatile transient allocationSpinLock:I

.field private transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient queue:[Ljava/lang/Object;

.field private transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1013
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    .line 1017
    :try_start_0
    sget-object v1, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    .line 1018
    const-class v2, Ljava/util/concurrent/PriorityBlockingQueue;

    const-string/jumbo v3, "allocationSpinLock"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1017
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 192
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 204
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 205
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 221
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 224
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 225
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 226
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 246
    new-instance v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 247
    iget-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 248
    const/4 v1, 0x1

    .line 249
    .local v1, "heapify":Z
    const/4 v5, 0x1

    .line 250
    .local v5, "screen":Z
    instance-of v7, p1, Ljava/util/SortedSet;

    if-eqz v7, :cond_3

    move-object v6, p1

    .line 251
    check-cast v6, Ljava/util/SortedSet;

    .line 252
    .local v6, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v6}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v7

    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 253
    const/4 v1, 0x0

    .line 263
    .end local v6    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    .line 266
    .local v3, "n":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, [Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 267
    const-class v7, [Ljava/lang/Object;

    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 268
    :cond_1
    if-eqz v5, :cond_5

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2

    iget-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    if-eqz v7, :cond_5

    .line 269
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 270
    aget-object v7, v0, v2

    if-nez v7, :cond_4

    .line 271
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 255
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_3
    instance-of v7, p1, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 257
    check-cast v4, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 258
    .local v4, "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    move-result-object v7

    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 259
    const/4 v5, 0x0

    .line 260
    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/util/concurrent/PriorityBlockingQueue;

    if-ne v7, v8, :cond_0

    .line 261
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    .end local v4    # "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    .end local v2    # "i":I
    :cond_5
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 274
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 275
    if-eqz v1, :cond_6

    .line 276
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    .line 277
    :cond_6
    return-void
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 322
    iget v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v2, v5, -0x1

    .line 323
    .local v2, "n":I
    if-gez v2, :cond_0

    .line 324
    return-object v7

    .line 326
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 327
    .local v0, "array":[Ljava/lang/Object;
    aget-object v3, v0, v6

    .line 328
    .local v3, "result":Ljava/lang/Object;, "TE;"
    aget-object v4, v0, v2

    .line 329
    .local v4, "x":Ljava/lang/Object;, "TE;"
    aput-object v7, v0, v2

    .line 330
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 331
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1

    .line 332
    invoke-static {v6, v4, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 335
    :goto_0
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 336
    return-object v3

    .line 334
    :cond_1
    invoke-static {v6, v4, v0, v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    goto :goto_0
.end method

.method private heapify()V
    .locals 6

    .prologue
    .line 437
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 438
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 439
    .local v4, "n":I
    ushr-int/lit8 v5, v4, 0x1

    add-int/lit8 v2, v5, -0x1

    .line 440
    .local v2, "half":I
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 441
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_0

    .line 442
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 443
    aget-object v5, v0, v3

    invoke-static {v3, v5, v0, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 442
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 446
    .end local v3    # "i":I
    :cond_0
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 447
    aget-object v5, v0, v3

    invoke-static {v3, v5, v0, v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 446
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 449
    :cond_1
    return-void
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 612
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_1

    .line 613
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 614
    .local v0, "array":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 615
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 616
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 617
    return v1

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 924
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 925
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 927
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 931
    return-void

    .line 928
    :catchall_0
    move-exception v0

    .line 929
    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 928
    throw v0
.end method

.method private removeAt(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 626
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 627
    .local v0, "array":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v3, v4, -0x1

    .line 628
    .local v3, "n":I
    if-ne v3, p1, :cond_1

    .line 629
    aput-object v5, v0, p1

    .line 645
    :cond_0
    :goto_0
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 646
    return-void

    .line 631
    :cond_1
    aget-object v2, v0, v3

    .line 632
    .local v2, "moved":Ljava/lang/Object;, "TE;"
    aput-object v5, v0, v3

    .line 633
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 634
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_2

    .line 635
    invoke-static {p1, v2, v0, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 638
    :goto_1
    aget-object v4, v0, p1

    if-ne v4, v2, :cond_0

    .line 639
    if-nez v1, :cond_3

    .line 640
    invoke-static {p1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {p1, v2, v0, v3, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    goto :goto_1

    .line 642
    :cond_3
    invoke-static {p1, v2, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .locals 7
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p1, "x":Ljava/lang/Object;, "TT;"
    if-lez p3, :cond_2

    move-object v3, p1

    .line 394
    check-cast v3, Ljava/lang/Comparable;

    .line 395
    .local v3, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v2, p3, 0x1

    .line 396
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    .line 397
    shl-int/lit8 v5, p0, 0x1

    add-int/lit8 v1, v5, 0x1

    .line 398
    .local v1, "child":I
    aget-object v0, p2, v1

    .line 399
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    .line 400
    .local v4, "right":I
    if-ge v4, p3, :cond_0

    move-object v5, v0

    .line 401
    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, p2, v4

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    .line 402
    move v1, v4

    aget-object v0, p2, v4

    .line 403
    :cond_0
    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 408
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v4    # "right":I
    :cond_1
    aput-object v3, p2, p0

    .line 410
    .end local v2    # "half":I
    .end local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :cond_2
    return-void

    .line 405
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .restart local v4    # "right":I
    :cond_3
    aput-object v0, p2, p0

    .line 406
    move p0, v1

    goto :goto_0
.end method

.method private static siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 5
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-lez p3, :cond_2

    .line 416
    ushr-int/lit8 v2, p3, 0x1

    .line 417
    .local v2, "half":I
    :goto_0
    if-ge p0, v2, :cond_1

    .line 418
    shl-int/lit8 v4, p0, 0x1

    add-int/lit8 v1, v4, 0x1

    .line 419
    .local v1, "child":I
    aget-object v0, p2, v1

    .line 420
    .local v0, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 421
    .local v3, "right":I
    if-ge v3, p3, :cond_0

    aget-object v4, p2, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 422
    move v1, v3

    aget-object v0, p2, v3

    .line 423
    :cond_0
    invoke-interface {p4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    .line 428
    .end local v0    # "c":Ljava/lang/Object;
    .end local v1    # "child":I
    .end local v3    # "right":I
    :cond_1
    aput-object p1, p2, p0

    .line 430
    .end local v2    # "half":I
    :cond_2
    return-void

    .line 425
    .restart local v0    # "c":Ljava/lang/Object;
    .restart local v1    # "child":I
    .restart local v2    # "half":I
    .restart local v3    # "right":I
    :cond_3
    aput-object v0, p2, p0

    .line 426
    move p0, v1

    goto :goto_0
.end method

.method private static siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .line 356
    check-cast v1, Ljava/lang/Comparable;

    .line 357
    .local v1, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    .line 358
    add-int/lit8 v3, p0, -0x1

    ushr-int/lit8 v2, v3, 0x1

    .line 359
    .local v2, "parent":I
    aget-object v0, p2, v2

    .line 360
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 365
    .end local v0    # "e":Ljava/lang/Object;
    .end local v2    # "parent":I
    :cond_0
    aput-object v1, p2, p0

    .line 366
    return-void

    .line 362
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    .line 363
    move p0, v2

    goto :goto_0
.end method

.method private static siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    if-lez p0, :cond_0

    .line 371
    add-int/lit8 v2, p0, -0x1

    ushr-int/lit8 v1, v2, 0x1

    .line 372
    .local v1, "parent":I
    aget-object v0, p2, v1

    .line 373
    .local v0, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 378
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "parent":I
    :cond_0
    aput-object p1, p2, p0

    .line 379
    return-void

    .line 375
    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v1    # "parent":I
    :cond_1
    aput-object v0, p2, p0

    .line 376
    move p0, v1

    goto :goto_0
.end method

.method private tryGrow([Ljava/lang/Object;I)V
    .locals 10
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldCap"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v9, 0x7ffffff7

    const/4 v4, 0x0

    .line 289
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    const/4 v7, 0x0

    .line 291
    .local v7, "newArray":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    if-nez v0, :cond_5

    .line 292
    sget-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    .line 291
    if-eqz v0, :cond_5

    .line 294
    const/16 v0, 0x40

    if-ge p2, v0, :cond_1

    .line 295
    add-int/lit8 v0, p2, 0x2

    .line 294
    :goto_0
    add-int v8, p2, v0

    .line 297
    .local v8, "newCap":I
    sub-int v0, v8, v9

    if-lez v0, :cond_3

    .line 298
    add-int/lit8 v6, p2, 0x1

    .line 299
    .local v6, "minCap":I
    if-ltz v6, :cond_0

    if-le v6, v9, :cond_2

    .line 300
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v6    # "minCap":I
    :catchall_0
    move-exception v0

    .line 306
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 305
    throw v0

    .line 296
    .end local v8    # "newCap":I
    :cond_1
    shr-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 301
    .restart local v6    # "minCap":I
    .restart local v8    # "newCap":I
    :cond_2
    const v8, 0x7ffffff7

    .line 303
    .end local v6    # "minCap":I
    :cond_3
    if-le v8, p2, :cond_4

    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v0, p1, :cond_4

    .line 304
    new-array v7, v8, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .end local v7    # "newArray":[Ljava/lang/Object;
    :cond_4
    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 309
    .end local v8    # "newCap":I
    :cond_5
    if-nez v7, :cond_6

    .line 310
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 311
    :cond_6
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    if-eqz v7, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v0, p1, :cond_7

    .line 313
    iput-object v7, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 314
    invoke-static {p1, v4, v7, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_7
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 902
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 905
    :try_start_0
    new-instance v0, Ljava/util/PriorityQueue;

    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 906
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 907
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 912
    return-void

    .line 908
    :catchall_0
    move-exception v0

    .line 909
    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 908
    throw v0
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
    .line 462
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 756
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 757
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 759
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 760
    .local v0, "array":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 761
    .local v3, "n":I
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 763
    const/4 v4, 0x0

    aput-object v4, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 767
    return-void

    .line 764
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    .line 765
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 764
    throw v4
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 701
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 702
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 704
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    .line 706
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 704
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 705
    :catchall_0
    move-exception v1

    .line 706
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    throw v1
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
    .line 721
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 5
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v3, 0x0

    .line 731
    if-nez p1, :cond_0

    .line 732
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 733
    :cond_0
    if-ne p1, p0, :cond_1

    .line 734
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 735
    :cond_1
    if-gtz p2, :cond_2

    .line 736
    return v3

    .line 737
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 738
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 740
    :try_start_0
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 741
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 742
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 745
    return v2

    .line 746
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    .line 747
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 746
    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 478
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 479
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 483
    :goto_0
    iget v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v4, "n":I
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .local v0, "array":[Ljava/lang/Object;
    array-length v1, v0

    .local v1, "cap":I
    if-lt v4, v1, :cond_1

    .line 484
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    goto :goto_0

    .line 486
    :cond_1
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 487
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_2

    .line 488
    invoke-static {v4, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    .line 491
    :goto_1
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 492
    iget-object v5, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    const/4 v5, 0x1

    return v5

    .line 490
    :cond_2
    :try_start_1
    invoke-static {v4, p1, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 493
    .end local v2    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :catchall_0
    move-exception v5

    .line 494
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    throw v5
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 571
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 573
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 575
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 573
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v1

    .line 575
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 574
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
    .line 533
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 534
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 536
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 538
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 536
    return-object v1

    .line 537
    :catchall_0
    move-exception v1

    .line 538
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
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
    .line 556
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 557
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 558
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 561
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 562
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 566
    return-object v1

    .line 563
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    .line 564
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    throw v4
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 608
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 660
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 661
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 664
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 665
    const/4 v2, 0x0

    .line 669
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    return v2

    .line 666
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    const/4 v2, 0x1

    .line 669
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 667
    return v2

    .line 668
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    .line 669
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 668
    throw v2
.end method

.method removeEQ(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 677
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 678
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 680
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 681
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 682
    aget-object v4, v0, v1

    if-ne p1, v4, :cond_1

    .line 683
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 690
    return-void

    .line 681
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v4

    .line 688
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 687
    throw v4
.end method

.method public size()I
    .locals 2

    .prologue
    .line 593
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 594
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    return v1

    .line 597
    :catchall_0
    move-exception v1

    .line 598
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 597
    throw v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 3
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
    .line 543
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 547
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 548
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    .line 550
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 549
    throw v2

    .line 550
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 783
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 784
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 786
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 788
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 786
    return-object v1

    .line 787
    :catchall_0
    move-exception v1

    .line 788
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 787
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 830
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 832
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 833
    .local v1, "n":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 835
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 841
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 835
    return-object v2

    .line 836
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 838
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    return-object p1

    .line 840
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    .line 841
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 840
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
