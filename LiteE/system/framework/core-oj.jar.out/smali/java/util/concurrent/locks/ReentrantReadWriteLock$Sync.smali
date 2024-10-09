.class abstract Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;,
        Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;
    }
.end annotation


# static fields
.field static final EXCLUSIVE_MASK:I = 0xffff

.field static final MAX_COUNT:I = 0xffff

.field static final SHARED_SHIFT:I = 0x10

.field static final SHARED_UNIT:I = 0x10000

.field private static final serialVersionUID:J = 0x57ace0c53f412bb9L


# instance fields
.field private transient cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

.field private transient firstReader:Ljava/lang/Thread;

.field private transient firstReaderHoldCount:I

.field private transient readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 340
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 341
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 342
    return-void
.end method

.method static exclusiveCount(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 272
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 661
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 663
    return-void
.end method

.method static sharedCount(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 270
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;
    .locals 2

    .prologue
    .line 446
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    .line 447
    const-string/jumbo v1, "attempt to unlock read lock, not locked by current thread"

    .line 446
    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final fullTryAcquireShared(Ljava/lang/Thread;)I
    .locals 8
    .param p1, "current"    # Ljava/lang/Thread;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 504
    const/4 v1, 0x0

    .line 506
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 507
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 509
    return v6

    .line 512
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v2, p1, :cond_3

    .line 529
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_6

    .line 530
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Maximum lock count exceeded"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    :cond_3
    if-nez v1, :cond_5

    .line 518
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 519
    .local v1, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v1, :cond_4

    iget-wide v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 520
    :cond_4
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 521
    .restart local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_5

    .line 522
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 525
    .end local v1    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_5
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_2

    .line 526
    return v6

    .line 531
    :cond_6
    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    if-nez v2, :cond_7

    .line 533
    iput-object p1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 534
    iput v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    .line 547
    :goto_0
    return v7

    .line 535
    :cond_7
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v2, p1, :cond_8

    .line 536
    iget v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 538
    :cond_8
    if-nez v1, :cond_9

    .line 539
    iget-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 540
    :cond_9
    if-eqz v1, :cond_a

    iget-wide v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 541
    :cond_a
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 544
    :cond_b
    :goto_1
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 545
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    goto :goto_0

    .line 542
    :cond_c
    iget v2, v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v2, :cond_b

    .line 543
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method final getCount()I
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    return v0
.end method

.method final getOwner()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 621
    :goto_0
    return-object v0

    .line 623
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method final getReadHoldCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 639
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getReadLockCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 640
    return v4

    .line 642
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 643
    .local v1, "current":Ljava/lang/Thread;
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v3, v1, :cond_1

    .line 644
    iget v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    return v3

    .line 646
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 647
    .local v2, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v2, :cond_2

    iget-wide v4, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 648
    iget v3, v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    return v3

    .line 650
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    iget v0, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 651
    .local v0, "count":I
    if-nez v0, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 652
    :cond_3
    return v0
.end method

.method final getReadLockCount()I
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v0

    return v0
.end method

.method final getWriteHoldCount()I
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isHeldExclusively()Z
    .locals 2

    .prologue
    .line 610
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isWriteLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
    .locals 1

    .prologue
    .line 616
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-direct {v0, p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V

    return-object v0
.end method

.method abstract readerShouldBlock()Z
.end method

.method protected final tryAcquire(I)Z
    .locals 6
    .param p1, "acquires"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 395
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 396
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 397
    .local v2, "w":I
    if-eqz v0, :cond_3

    .line 399
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 400
    :cond_0
    return v4

    .line 401
    :cond_1
    invoke-static {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v3

    add-int/2addr v3, v2

    const v4, 0xffff

    if-le v3, v4, :cond_2

    .line 402
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_2
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 405
    return v5

    .line 407
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->writerShouldBlock()Z

    move-result v3

    if-nez v3, :cond_4

    .line 408
    add-int v3, v0, p1

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 407
    if-eqz v3, :cond_5

    .line 409
    :cond_4
    return v4

    .line 410
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 411
    return v5
.end method

.method protected final tryAcquireShared(I)I
    .locals 9
    .param p1, "unused"    # I

    .prologue
    const/4 v8, 0x1

    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 467
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 468
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 470
    const/4 v4, -0x1

    return v4

    .line 471
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 472
    .local v2, "r":I
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readerShouldBlock()Z

    move-result v4

    if-nez v4, :cond_6

    .line 473
    const v4, 0xffff

    if-ge v2, v4, :cond_6

    .line 474
    const/high16 v4, 0x10000

    add-int/2addr v4, v0

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v4

    .line 472
    if-eqz v4, :cond_6

    .line 475
    if-nez v2, :cond_1

    .line 476
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 477
    iput v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    .line 488
    :goto_0
    return v8

    .line 478
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v4, v1, :cond_2

    .line 479
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 481
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 482
    .local v3, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_3

    iget-wide v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 483
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .restart local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 486
    :cond_4
    :goto_1
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 484
    :cond_5
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v4, :cond_4

    .line 485
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 490
    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_6
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->fullTryAcquireShared(Ljava/lang/Thread;)I

    move-result v4

    return v4
.end method

.method final tryReadLock()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 579
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 581
    .local v1, "current":Ljava/lang/Thread;
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 582
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 584
    return v5

    .line 585
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->sharedCount(I)I

    move-result v2

    .line 586
    .local v2, "r":I
    const v4, 0xffff

    if-ne v2, v4, :cond_2

    .line 587
    new-instance v4, Ljava/lang/Error;

    const-string/jumbo v5, "Maximum lock count exceeded"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 588
    :cond_2
    const/high16 v4, 0x10000

    add-int/2addr v4, v0

    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    if-nez v2, :cond_3

    .line 590
    iput-object v1, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 591
    iput v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    .line 602
    :goto_0
    return v8

    .line 592
    :cond_3
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v4, v1, :cond_4

    .line 593
    iget v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 595
    :cond_4
    iget-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 596
    .local v3, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v3, :cond_5

    iget-wide v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    .line 597
    :cond_5
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .restart local v3    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    iput-object v3, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 600
    :cond_6
    :goto_1
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .line 598
    :cond_7
    iget v4, v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    if-nez v4, :cond_6

    .line 599
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final tryRelease(I)Z
    .locals 3
    .param p1, "releases"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 374
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v2

    sub-int v1, v2, p1

    .line 375
    .local v1, "nextc":I
    invoke-static {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 376
    .local v0, "free":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 377
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 378
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setState(I)V

    .line 379
    return v0

    .line 375
    .end local v0    # "free":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "free":Z
    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 12
    .param p1, "unused"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 415
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 416
    .local v2, "current":Ljava/lang/Thread;
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    if-ne v7, v2, :cond_2

    .line 418
    iget v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    if-ne v7, v5, :cond_1

    .line 419
    iput-object v8, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReader:Ljava/lang/Thread;

    .line 435
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 436
    .local v0, "c":I
    const/high16 v7, 0x10000

    sub-int v3, v0, v7

    .line 437
    .local v3, "nextc":I
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 441
    if-nez v3, :cond_6

    :goto_1
    return v5

    .line 421
    .end local v0    # "c":I
    .end local v3    # "nextc":I
    :cond_1
    iget v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->firstReaderHoldCount:I

    goto :goto_0

    .line 423
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->cachedHoldCounter:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 424
    .local v4, "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    if-eqz v4, :cond_3

    iget-wide v8, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->tid:J

    invoke-static {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getThreadId(Ljava/lang/Thread;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 425
    :cond_3
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    check-cast v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    .line 426
    .restart local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    :cond_4
    iget v1, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    .line 427
    .local v1, "count":I
    if-gt v1, v5, :cond_5

    .line 428
    iget-object v7, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->readHolds:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->remove()V

    .line 429
    if-gtz v1, :cond_5

    .line 430
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->unmatchedUnlockException()Ljava/lang/IllegalMonitorStateException;

    move-result-object v5

    throw v5

    .line 432
    :cond_5
    iget v7, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;->count:I

    goto :goto_0

    .end local v1    # "count":I
    .end local v4    # "rh":Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    .restart local v0    # "c":I
    .restart local v3    # "nextc":I
    :cond_6
    move v5, v6

    .line 441
    goto :goto_1
.end method

.method final tryWriteLock()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 559
    .local v1, "current":Ljava/lang/Thread;
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getState()I

    move-result v0

    .line 560
    .local v0, "c":I
    if-eqz v0, :cond_2

    .line 561
    invoke-static {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->exclusiveCount(I)I

    move-result v2

    .line 562
    .local v2, "w":I
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 563
    :cond_0
    return v4

    .line 564
    :cond_1
    const v3, 0xffff

    if-ne v2, v3, :cond_2

    .line 565
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "Maximum lock count exceeded"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 567
    .end local v2    # "w":I
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 568
    return v4

    .line 569
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 570
    const/4 v3, 0x1

    return v3
.end method

.method abstract writerShouldBlock()Z
.end method
