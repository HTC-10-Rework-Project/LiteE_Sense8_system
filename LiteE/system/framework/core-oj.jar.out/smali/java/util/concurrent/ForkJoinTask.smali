.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1520
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1524
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1525
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1526
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 1528
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1529
    const-class v2, Ljava/util/concurrent/ForkJoinTask;

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1528
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-void

    .line 1530
    :catch_0
    move-exception v0

    .line 1531
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1455
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v1, :cond_0

    .line 510
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .prologue
    .line 520
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 521
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 522
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 525
    .local v6, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 526
    .local v2, "i":I
    aget-object v0, v6, v2

    .line 527
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 528
    :goto_0
    if-eqz v0, :cond_0

    .line 529
    iget-object v4, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 530
    .local v4, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    .line 531
    if-nez v5, :cond_1

    .line 532
    aput-object v4, v6, v2

    .line 540
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 541
    const/4 v7, 0x0

    iput v7, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    return-void

    .line 534
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 542
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    .line 543
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 542
    throw v7

    .line 537
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    .line 538
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v4

    goto :goto_0
.end method

.method private doInvoke()I
    .locals 8

    .prologue
    .line 397
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    .local v0, "s":I
    if-gez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    return v0

    .line 398
    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 399
    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 400
    iget-object v4, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v6, 0x0

    .line 399
    invoke-virtual {v3, v4, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_0

    .line 401
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 8

    .prologue
    .line 382
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v0, "s":I
    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    .line 383
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    .line 384
    check-cast v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    .line 386
    :cond_1
    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v2, p0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v4

    goto :goto_0

    .line 387
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 8

    .prologue
    .line 604
    .local v6, "x":Ljava/lang/Object;
    :cond_0
    :goto_0
    sget-object v7, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 605
    instance-of v7, v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 606
    check-cast v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    iget v1, v7, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    .line 607
    .local v1, "hashCode":I
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 608
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 609
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 610
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 611
    :goto_1
    if-eqz v0, :cond_0

    .line 612
    iget-object v3, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 613
    .local v3, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 614
    if-nez v4, :cond_1

    .line 615
    aput-object v3, v5, v2

    goto :goto_0

    .line 617
    :cond_1
    iput-object v3, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 620
    :cond_2
    move-object v4, v0

    .line 621
    .local v4, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    move-object v0, v3

    goto :goto_1

    .line 625
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "hashCode":I
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v2, 0x0

    .line 319
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_3

    .line 320
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v0, p0

    .line 321
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    .line 320
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v4

    .line 323
    .local v4, "s":I
    :goto_0
    if-ltz v4, :cond_2

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_2

    .line 324
    const/4 v7, 0x0

    .line 326
    .local v7, "interrupted":Z
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    .line 330
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    .line 339
    :cond_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v4, :cond_0

    .line 340
    if-eqz v7, :cond_2

    .line 341
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 343
    .end local v7    # "interrupted":Z
    :cond_2
    return v4

    .line 322
    .end local v4    # "s":I
    :cond_3
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    .restart local v4    # "s":I
    goto :goto_0

    .end local v4    # "s":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "s":I
    goto :goto_0

    .line 331
    .restart local v7    # "interrupted":Z
    :catch_0
    move-exception v6

    .line 332
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    goto :goto_1

    .line 336
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v1, 0x0

    .line 351
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 353
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_5

    .line 354
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_2

    .line 355
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v0, p0

    .line 356
    check-cast v0, Ljava/util/concurrent/CountedCompleter;

    .line 355
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v4

    .line 354
    :goto_0
    if-ltz v4, :cond_5

    .line 359
    :cond_1
    :goto_1
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_5

    .line 360
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_4

    .line 363
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 357
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v1

    .line 358
    goto :goto_0

    .line 365
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 370
    :cond_5
    return v4
.end method

.method public static getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 2

    .prologue
    .line 1130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1131
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1132
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 1131
    :goto_0
    return-object v1

    .line 1132
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    .prologue
    .line 1174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1175
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1178
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1177
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1178
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1195
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 15

    .prologue
    .line 562
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 564
    .local v3, "h":I
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 565
    .local v5, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 567
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 568
    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 569
    .local v8, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v10, v3

    aget-object v1, v8, v10

    .line 570
    .local v1, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v10

    if-eq v10, p0, :cond_0

    .line 571
    iget-object v1, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 576
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    .line 577
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v10, 0x0

    return-object v10

    .line 572
    .end local v1    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v8    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v10

    .line 573
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 572
    throw v10

    .line 578
    .restart local v1    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v8    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    iget-wide v10, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 580
    const/4 v6, 0x0

    .line 582
    .local v6, "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    .end local v6    # "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v0, v11, v10

    .line 583
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 584
    .local v7, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v7

    if-nez v13, :cond_4

    .line 585
    move-object v6, v0

    .line 582
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 586
    :cond_4
    array-length v13, v7

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, v7, v13

    const-class v14, Ljava/lang/Throwable;

    if-ne v13, v14, :cond_3

    .line 587
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    return-object v10

    .line 589
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    if-eqz v6, :cond_6

    .line 590
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 591
    .local v9, "wx":Ljava/lang/Throwable;
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    return-object v9

    .line 594
    .end local v9    # "wx":Ljava/lang/Throwable;
    :catch_0
    move-exception v4

    .line 597
    :cond_6
    return-object v2
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 632
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 633
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    :cond_0
    return-void

    .line 636
    :catchall_0
    move-exception v1

    .line 637
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 636
    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    .prologue
    .line 1089
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1090
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1091
    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1095
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .prologue
    .line 1144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/high16 v7, -0x10000000

    const/4 v6, 0x0

    .line 818
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 819
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v5}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 820
    return-object p0

    :cond_1
    move-object v4, p0

    .line 824
    check-cast v4, Ljava/util/List;

    .line 825
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 826
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 827
    .local v2, "last":I
    move v1, v2

    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 828
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 829
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_3

    .line 830
    if-nez v0, :cond_2

    .line 831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 827
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 833
    :cond_3
    if-eqz v1, :cond_4

    .line 834
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 835
    :cond_4
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v7, :cond_2

    if-nez v0, :cond_2

    .line 836
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 838
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_8

    .line 839
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ForkJoinTask;

    .line 840
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_6

    .line 841
    if-eqz v0, :cond_7

    .line 842
    invoke-virtual {v3, v6}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 838
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 843
    :cond_7
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v7, :cond_6

    .line 844
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    .line 847
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_8
    if-eqz v0, :cond_9

    .line 848
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 849
    :cond_9
    return-object p0
.end method

.method public static invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v3, -0x10000000

    .line 750
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 751
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v2

    and-int v0, v2, v3

    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    .line 752
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 753
    :cond_0
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v2

    and-int v1, v2, v3

    .local v1, "s2":I
    if-eq v1, v3, :cond_1

    .line 754
    invoke-direct {p1, v1}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 755
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/high16 v6, -0x10000000

    const/4 v5, 0x0

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 775
    .local v2, "last":I
    move v1, v2

    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 776
    aget-object v3, p0, v1

    .line 777
    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    .line 778
    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 775
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 781
    :cond_1
    if-eqz v1, :cond_2

    .line 782
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_1

    .line 783
    :cond_2
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v6, :cond_0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 786
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    .line 787
    aget-object v3, p0, v1

    .line 788
    .restart local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    .line 789
    if-eqz v0, :cond_5

    .line 790
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    .line 786
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 791
    :cond_5
    invoke-direct {v3}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v6, :cond_4

    .line 792
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_3

    .line 795
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 796
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 797
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_0

    .line 1251
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1254
    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-object v2

    .line 1253
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1254
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    goto :goto_1
.end method

.method protected static pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1269
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .line 1268
    :goto_0
    return-object v1

    .line 1270
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1308
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1309
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .line 1308
    :goto_0
    return-object v1

    .line 1309
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollTask()Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1289
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .line 1288
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    .line 1290
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
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
    .line 1513
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1515
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1516
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1517
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 666
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-ne p1, v0, :cond_0

    .line 667
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 668
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 669
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 670
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 646
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 647
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    .prologue
    .line 264
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 265
    return v4

    .line 266
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 269
    :cond_2
    return p1

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 489
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 490
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 491
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 492
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 656
    if-eqz p0, :cond_0

    .line 657
    throw p0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "Unknown Exception"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1500
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1501
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1502
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000    # -2.0f

    .line 880
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6
    .param p1, "expect"    # S
    .param p2, "update"    # S

    .prologue
    .line 1355
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    .line 1356
    const/4 v0, 0x0

    return v0

    .line 1357
    :cond_1
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    .line 1358
    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    .line 1357
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    const/4 v0, 0x1

    return v0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    const/high16 v1, -0x10000000

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 966
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 963
    return-void
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 940
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 941
    instance-of v0, p1, Ljava/lang/Error;

    .line 940
    if-eqz v0, :cond_1

    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 943
    return-void

    .line 942
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    .prologue
    .line 283
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v2, "s":I
    if-ltz v2, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 289
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 290
    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v2

    .line 292
    .end local v0    # "completed":Z
    :cond_0
    return v2

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    return v3
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    .line 695
    :goto_0
    return-object p0

    .line 694
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 992
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    instance-of v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 993
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    .line 994
    .local v0, "s":I
    :goto_0
    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    .line 995
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 993
    .end local v0    # "s":I
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    .restart local v0    # "s":I
    goto :goto_0

    .line 996
    :cond_1
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    .line 997
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 998
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v16

    .line 1019
    .local v16, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1020
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1021
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v8, "s":I
    if-ltz v8, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_1

    .line 1022
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v10, v4, v16

    .line 1023
    .local v10, "d":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-nez v4, :cond_3

    const-wide/16 v12, 0x1

    .line 1024
    .local v12, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    .line 1025
    .local v20, "t":Ljava/lang/Thread;
    move-object/from16 v0, v20

    instance-of v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v4, :cond_4

    move-object/from16 v21, v20

    .line 1026
    check-cast v21, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1027
    .local v21, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v21

    iget-object v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, v21

    iget-object v5, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0, v12, v13}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v8

    .line 1049
    .end local v10    # "d":J
    .end local v12    # "deadline":J
    .end local v20    # "t":Ljava/lang/Thread;
    .end local v21    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1
    if-ltz v8, :cond_2

    .line 1050
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1051
    :cond_2
    const/high16 v4, -0x10000000

    and-int/2addr v8, v4

    const/high16 v4, -0x10000000

    if-eq v8, v4, :cond_b

    .line 1052
    const/high16 v4, -0x40000000    # -2.0f

    if-ne v8, v4, :cond_9

    .line 1053
    new-instance v4, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v4

    .line 1023
    .restart local v10    # "d":J
    :cond_3
    move-wide v12, v10

    .restart local v12    # "deadline":J
    goto :goto_0

    .line 1029
    .restart local v20    # "t":Ljava/lang/Thread;
    :cond_4
    move-object/from16 v0, p0

    instance-of v4, v0, Ljava/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_6

    .line 1030
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v4, p0

    .line 1031
    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    const/4 v6, 0x0

    .line 1030
    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v8

    .line 1029
    :goto_1
    if-ltz v8, :cond_1

    .line 1035
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v8, :cond_1

    .line 1036
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v18, v12, v4

    .local v18, "ns":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_1

    .line 1037
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .local v14, "ms":J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    .line 1038
    sget-object v4, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v5, 0x10000

    or-int v9, v8, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    .line 1037
    if-eqz v4, :cond_5

    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v4, :cond_8

    .line 1041
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    goto :goto_2

    .line 1032
    .end local v14    # "ms":J
    .end local v18    # "ns":J
    :cond_6
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1033
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v8

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 1043
    .restart local v14    # "ms":J
    .restart local v18    # "ns":J
    :cond_8
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1039
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1054
    .end local v10    # "d":J
    .end local v12    # "deadline":J
    .end local v14    # "ms":J
    .end local v18    # "ns":J
    .end local v20    # "t":Ljava/lang/Thread;
    :cond_9
    const/high16 v4, -0x80000000

    if-eq v8, v4, :cond_a

    .line 1055
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 1056
    :cond_a
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1058
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 919
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int v0, v1, v2

    .line 920
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 921
    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    .line 922
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .prologue
    .line 1321
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 499
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method final internalWait(J)V
    .locals 7
    .param p1, "timeout"    # J

    .prologue
    .line 303
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_0

    .line 304
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    .line 303
    if-eqz v0, :cond_0

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    .line 307
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinTask;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 312
    :cond_0
    return-void

    .line 307
    :catch_0
    move-exception v6

    .local v6, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 309
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 726
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 727
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 728
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 888
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .prologue
    .line 897
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v1, -0x10000000

    .line 908
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/4 v0, 0x0

    .line 884
    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 711
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 712
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 713
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    .prologue
    .line 977
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 978
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .prologue
    .line 1077
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 1078
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 1068
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    .line 1069
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 458
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    .line 459
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 460
    .local v1, "h":I
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 461
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 464
    sget-object v5, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 465
    .local v5, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 466
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 467
    .local v0, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    .line 468
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    .line 469
    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 468
    invoke-direct {v6, p0, p1, v7, v8}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 478
    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v4

    .line 480
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    .line 472
    .restart local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 466
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    .end local v0    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    .line 476
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    throw v6
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 1114
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1115
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    .line 1118
    :goto_0
    return-void

    .line 1117
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "newValue"    # S

    .prologue
    .line 1333
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1334
    .local v4, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    .line 1333
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    int-to-short v0, v4

    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public tryUnfork()Z
    .locals 2

    .prologue
    .line 1159
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 1160
    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    .line 1159
    :goto_0
    return v1

    .line 1161
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v1

    goto :goto_0
.end method
