.class public abstract Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    }
.end annotation


# static fields
.field private static final HEAD:J

.field static final SPIN_FOR_TIMEOUT_THRESHOLD:J = 0x3e8L

.field private static final STATE:J

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x6655a843753f52e4L


# instance fields
.field private volatile transient head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private volatile state:J

.field private volatile transient tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 1822
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    .line 1829
    :try_start_0
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    .line 1830
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1829
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    .line 1831
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    .line 1832
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string/jumbo v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1831
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    .line 1833
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    .line 1834
    const-class v3, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    const-string/jumbo v4, "tail"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1833
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1841
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 61
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 1835
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1836
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    return-void
.end method

.method private addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 6
    .param p1, "mode"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 170
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 173
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 174
    .local v1, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    .line 175
    sget-object v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 176
    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 178
    return-object v0

    .line 181
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->initializeSyncQueue()V

    goto :goto_0
.end method

.method private cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 310
    if-nez p1, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    iput-object v5, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 316
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 317
    .local v1, "pred":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    iget v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v4, :cond_1

    .line 318
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 323
    :cond_1
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 328
    .local v2, "predNext":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x1

    iput v4, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 331
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne p1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 350
    :goto_1
    return-void

    .line 337
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v1, v4, :cond_5

    .line 338
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .local v3, "ws":I
    if-eq v3, v6, :cond_3

    .line 339
    if-gtz v3, :cond_5

    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v4

    .line 337
    if-eqz v4, :cond_5

    .line 340
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_5

    .line 341
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 342
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_4

    iget v4, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v4, :cond_4

    .line 343
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 348
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v3    # "ws":I
    :cond_4
    :goto_2
    iput-object p1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_1

    .line 345
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    goto :goto_2
.end method

.method private final compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 6
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1857
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private doAcquireInterruptibly(J)V
    .locals 5
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 449
    sget-object v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    .line 452
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 453
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 455
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 456
    return-void

    .line 458
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v3

    .line 458
    if-eqz v3, :cond_0

    .line 460
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 464
    throw v2
.end method

.method private doAcquireNanos(JJ)Z
    .locals 9
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 477
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_0

    .line 478
    const/4 v5, 0x0

    return v5

    .line 479
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p3

    .line 480
    .local v0, "deadline":J
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 483
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 484
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 485
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 486
    const/4 v5, 0x0

    iput-object v5, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 487
    const/4 v5, 0x1

    return v5

    .line 489
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p3, v0, v6

    .line 490
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_3

    .line 491
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 492
    const/4 v5, 0x0

    return v5

    .line 494
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    const-wide/16 v6, 0x3e8

    cmp-long v5, p3, v6

    if-lez v5, :cond_4

    .line 496
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 497
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    .line 501
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 502
    throw v4
.end method

.method private doAcquireShared(J)V
    .locals 9
    .param p1, "arg"    # J

    .prologue
    .line 511
    sget-object v6, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 513
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v0, 0x0

    .line 515
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 516
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v2, v6, :cond_2

    .line 517
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v4

    .line 518
    .local v4, "r":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 519
    invoke-direct {p0, v1, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    .line 520
    const/4 v6, 0x0

    iput-object v6, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 521
    if-eqz v0, :cond_1

    .line 522
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 523
    :cond_1
    return-void

    .line 526
    .end local v4    # "r":J
    :cond_2
    invoke-static {v2, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 527
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 526
    if-eqz v6, :cond_0

    .line 528
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v3

    .line 531
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 532
    throw v3
.end method

.method private doAcquireSharedInterruptibly(J)V
    .locals 9
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 542
    sget-object v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    .line 545
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 546
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v1, v5, :cond_1

    .line 547
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v2

    .line 548
    .local v2, "r":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    .line 549
    invoke-direct {p0, v0, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    .line 550
    const/4 v5, 0x0

    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 551
    return-void

    .line 554
    .end local v2    # "r":J
    :cond_1
    invoke-static {v1, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z

    move-result v5

    .line 554
    if-eqz v5, :cond_0

    .line 556
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v4

    .line 559
    .local v4, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 560
    throw v4
.end method

.method private doAcquireSharedNanos(JJ)Z
    .locals 11
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 573
    const-wide/16 v8, 0x0

    cmp-long v7, p3, v8

    if-gtz v7, :cond_0

    .line 574
    const/4 v7, 0x0

    return v7

    .line 575
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, p3

    .line 576
    .local v0, "deadline":J
    sget-object v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v2

    .line 579
    .local v2, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 580
    .local v3, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v3, v7, :cond_2

    .line 581
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v4

    .line 582
    .local v4, "r":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_2

    .line 583
    invoke-direct {p0, v2, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V

    .line 584
    const/4 v7, 0x0

    iput-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 585
    const/4 v7, 0x1

    return v7

    .line 588
    .end local v4    # "r":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p3, v0, v8

    .line 589
    const-wide/16 v8, 0x0

    cmp-long v7, p3, v8

    if-gtz v7, :cond_3

    .line 590
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 591
    const/4 v7, 0x0

    return v7

    .line 593
    :cond_3
    invoke-static {v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 594
    const-wide/16 v8, 0x3e8

    cmp-long v7, p3, v8

    if-lez v7, :cond_4

    .line 595
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 596
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 597
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v3    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v6

    .line 600
    .local v6, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 601
    throw v6
.end method

.method private doReleaseShared()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 249
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 250
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v2, :cond_1

    .line 251
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 252
    .local v1, "ws":I
    if-ne v1, v4, :cond_2

    .line 253
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 261
    .end local v1    # "ws":I
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v2, :cond_0

    .line 264
    return-void

    .line 257
    .restart local v1    # "ws":I
    :cond_2
    if-nez v1, :cond_1

    .line 258
    const/4 v2, -0x3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 257
    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 150
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 151
    .local v0, "oldTail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 152
    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 153
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->compareAndSetTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iput-object p1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 155
    return-object v0

    .line 158
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->initializeSyncQueue()V

    goto :goto_0
.end method

.method private findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1210
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1211
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-ne v0, p1, :cond_0

    .line 1212
    const/4 v1, 0x1

    return v1

    .line 1213
    :cond_0
    if-nez v0, :cond_1

    .line 1214
    const/4 v1, 0x0

    return v1

    .line 1215
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private fullGetFirstQueuedThread()Ljava/lang/Thread;
    .locals 8

    .prologue
    .line 966
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v3, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_1

    .line 967
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_1

    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .local v4, "st":Ljava/lang/Thread;
    if-eqz v4, :cond_1

    .line 970
    :cond_0
    return-object v4

    .line 968
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v1, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .restart local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v3, :cond_2

    .line 969
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v6, v7, :cond_2

    iget-object v4, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .restart local v4    # "st":Ljava/lang/Thread;
    if-nez v4, :cond_0

    .line 980
    .end local v3    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v4    # "st":Ljava/lang/Thread;
    :cond_2
    const/4 v0, 0x0

    .line 981
    .local v0, "firstThread":Ljava/lang/Thread;
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .end local v0    # "firstThread":Ljava/lang/Thread;
    .local v2, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_4

    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v2, v6, :cond_4

    .line 982
    iget-object v5, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 983
    .local v5, "t":Ljava/lang/Thread;
    if-eqz v5, :cond_3

    .line 984
    move-object v0, v5

    .line 981
    :cond_3
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 986
    .end local v5    # "t":Ljava/lang/Thread;
    :cond_4
    return-object v0
.end method

.method private final initializeSyncQueue()V
    .locals 6

    .prologue
    .line 1849
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->HEAD:J

    new-instance v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    .local v5, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    iput-object v5, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1851
    :cond_0
    return-void
.end method

.method private final parkAndCheckInterrupt()Z
    .locals 1

    .prologue
    .line 402
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 403
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    return v0
.end method

.method static selfInterrupt()V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 394
    return-void
.end method

.method private setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 195
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 196
    iput-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 197
    return-void
.end method

.method private setHeadAndPropagate(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "propagate"    # J

    .prologue
    .line 275
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 276
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 293
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    if-nez v0, :cond_3

    .line 295
    :cond_0
    :goto_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 296
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 299
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    return-void

    .line 293
    :cond_3
    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-ltz v2, :cond_0

    .line 294
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_0

    iget v2, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gez v2, :cond_2

    goto :goto_0
.end method

.method private static shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 3
    .param p0, "pred"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 362
    iget v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 363
    .local v0, "ws":I
    if-ne v0, v1, :cond_0

    .line 368
    const/4 v1, 0x1

    return v1

    .line 369
    :cond_0
    if-lez v0, :cond_2

    .line 375
    :cond_1
    iget-object p0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object p0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 376
    iget v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v1, :cond_1

    .line 377
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 386
    :goto_0
    return v2

    .line 384
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    goto :goto_0
.end method

.method private unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v3, 0x0

    .line 210
    iget v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 211
    .local v2, "ws":I
    if-gez v2, :cond_0

    .line 212
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    .line 220
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 221
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_1

    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-lez v3, :cond_3

    .line 222
    :cond_1
    const/4 v1, 0x0

    .line 223
    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_3

    .line 224
    iget v3, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-gtz v3, :cond_2

    .line 225
    move-object v1, v0

    .line 223
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 227
    .end local v0    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    if-eqz v1, :cond_4

    .line 228
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 229
    :cond_4
    return-void
.end method


# virtual methods
.method public final acquire(J)V
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 756
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->addWaiter(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v0

    .line 756
    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 759
    :cond_0
    return-void
.end method

.method public final acquireInterruptibly(J)V
    .locals 1
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 779
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireInterruptibly(J)V

    .line 781
    :cond_1
    return-void
.end method

.method final acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "arg"    # J

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 428
    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setHead(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 430
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 431
    return v0

    .line 433
    :cond_1
    invoke-static {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->shouldParkAfterFailedAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->parkAndCheckInterrupt()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 433
    if-eqz v3, :cond_0

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "t":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->cancelAcquire(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 439
    throw v2
.end method

.method public final acquireShared(J)V
    .locals 5
    .param p1, "arg"    # J

    .prologue
    .line 840
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 841
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireShared(J)V

    .line 842
    :cond_0
    return-void
.end method

.method public final acquireSharedInterruptibly(J)V
    .locals 5
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 861
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 862
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedInterruptibly(J)V

    .line 863
    :cond_1
    return-void
.end method

.method final apparentlyFirstQueuedIsExclusive()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1019
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    .line 1020
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    .line 1021
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1019
    if-eqz v3, :cond_0

    .line 1022
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1019
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    return v2
.end method

.method protected final compareAndSetState(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 131
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1277
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v0

    .line 1278
    .local v0, "savedState":J
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->release(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1279
    return-wide v0

    .line 1280
    :cond_0
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v0    # "savedState":J
    :catch_0
    move-exception v2

    .line 1282
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x1

    iput v3, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 1283
    throw v2
.end method

.method public final getExclusiveQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1132
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1133
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1134
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1138
    :cond_1
    return-object v0
.end method

.method public final getFirstQueuedThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullGetFirstQueuedThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0
.end method

.method public final getQueueLength()I
    .locals 3

    .prologue
    .line 1092
    const/4 v0, 0x0

    .line 1093
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1094
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1095
    add-int/lit8 v0, v0, 0x1

    .line 1093
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1097
    :cond_1
    return v0
.end method

.method public final getQueuedThreads()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1114
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1115
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1118
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1
    return-object v0
.end method

.method public final getSharedQueuedThreads()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1152
    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->isShared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    iget-object v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1154
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_0

    .line 1155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1158
    :cond_1
    return-object v0
.end method

.method protected final getState()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->state:J

    return-wide v0
.end method

.method public final getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)I
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1340
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitQueueLength()I

    move-result v0

    return v0
.end method

.method public final getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Ljava/util/Collection;
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1362
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->getWaitingThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final hasContended()Z
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasQueuedPredecessors()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1072
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1073
    .local v2, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1075
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eq v0, v2, :cond_2

    .line 1076
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 1075
    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_0
    :goto_0
    return v3

    .restart local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    move v3, v4

    .line 1076
    goto :goto_0

    .end local v1    # "s":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_2
    move v3, v4

    .line 1075
    goto :goto_0
.end method

.method public final hasQueuedThreads()Z
    .locals 2

    .prologue
    .line 920
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1318
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->hasWaiters()Z

    move-result v0

    return v0
.end method

.method protected isHeldExclusively()Z
    .locals 1

    .prologue
    .line 740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1186
    iget v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1187
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1188
    :cond_1
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v0, :cond_2

    .line 1189
    const/4 v0, 0x1

    return v0

    .line 1198
    :cond_2
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->findNodeFromTail(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    return v0
.end method

.method public final isQueued(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1000
    if-nez p1, :cond_0

    .line 1001
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1002
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tail:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1003
    iget-object v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    if-ne v1, p1, :cond_1

    .line 1004
    const/4 v1, 0x1

    return v1

    .line 1002
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1005
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public final owns(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;)Z
    .locals 1
    .param p1, "condition"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;

    .prologue
    .line 1298
    invoke-virtual {p1, p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z

    move-result v0

    return v0
.end method

.method public final release(J)Z
    .locals 3
    .param p1, "arg"    # J

    .prologue
    const/4 v2, 0x0

    .line 819
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryRelease(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->head:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 821
    .local v0, "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_0

    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eqz v1, :cond_0

    .line 822
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->unparkSuccessor(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 823
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 825
    .end local v0    # "h":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_1
    return v2
.end method

.method public final releaseShared(J)Z
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 899
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryReleaseShared(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doReleaseShared()V

    .line 901
    const/4 v0, 0x1

    return v0

    .line 903
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final setState(J)V
    .locals 7
    .param p1, "newState"    # J

    .prologue
    .line 116
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->STATE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1172
    const-string/jumbo v1, "[State = "

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1172
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v2

    .line 1171
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1172
    const-string/jumbo v1, ", "

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1173
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "non"

    .line 1171
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1173
    const-string/jumbo v1, "empty queue]"

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1173
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method final transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 2
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v1, 0x0

    .line 1254
    const/4 v0, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1256
    const/4 v0, 0x1

    return v0

    .line 1264
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1265
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 1266
    :cond_1
    return v1
.end method

.method final transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .locals 4
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v3, 0x0

    .line 1230
    const/4 v2, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1231
    return v3

    .line 1239
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->enq(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v0

    .line 1240
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    .line 1241
    .local v1, "ws":I
    if-gtz v1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->compareAndSetWaitStatus(II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1242
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1243
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method protected tryAcquire(J)Z
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireNanos(JJ)Z
    .locals 1
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 804
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquire(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireNanos(JJ)Z

    move-result v0

    .line 804
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tryAcquireShared(J)J
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 696
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final tryAcquireSharedNanos(JJ)Z
    .locals 5
    .param p1, "arg"    # J
    .param p3, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 885
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireShared(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 886
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->doAcquireSharedNanos(JJ)Z

    move-result v0

    .line 885
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected tryRelease(J)Z
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected tryReleaseShared(J)Z
    .locals 1
    .param p1, "arg"    # J

    .prologue
    .line 721
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
