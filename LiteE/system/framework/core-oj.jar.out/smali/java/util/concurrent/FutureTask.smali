.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLED:I = 0x4

.field private static final COMPLETING:I = 0x1

.field private static final EXCEPTIONAL:I = 0x3

.field private static final INTERRUPTED:I = 0x6

.field private static final INTERRUPTING:I = 0x5

.field private static final NEW:I = 0x0

.field private static final NORMAL:I = 0x2

.field private static final RUNNER:J

.field private static final STATE:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITERS:J


# instance fields
.field private callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TV;>;"
        }
    .end annotation
.end field

.field private outcome:Ljava/lang/Object;

.field private volatile runner:Ljava/lang/Thread;

.field private volatile state:I

.field private volatile waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 487
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    .line 493
    :try_start_0
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    .line 494
    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 493
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    .line 495
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    .line 496
    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "runner"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    .line 497
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    .line 498
    const-class v3, Ljava/util/concurrent/FutureTask;

    const-string/jumbo v4, "waiters"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 497
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 64
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 499
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 138
    return-void
.end method

.method private awaitDone(ZJ)I
    .locals 14
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const-wide/16 v12, 0x0

    .line 405
    .local v12, "startTime":J
    const/4 v5, 0x0

    .line 406
    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v10, 0x0

    .line 408
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 409
    .local v11, "s":I
    const/4 v0, 0x1

    if-le v11, v0, :cond_2

    .line 410
    if-eqz v5, :cond_1

    .line 411
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 412
    :cond_1
    return v11

    .line 414
    :cond_2
    const/4 v0, 0x1

    if-ne v11, v0, :cond_3

    .line 417
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 418
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 419
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 420
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 422
    :cond_4
    if-nez v5, :cond_6

    .line 423
    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_5

    .line 424
    return v11

    .line 425
    :cond_5
    new-instance v5, Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-direct {v5}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    .local v5, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_0

    .line 427
    .end local v5    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_6
    if-nez v10, :cond_7

    .line 428
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    .line 429
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v4, v5, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v1, p0

    .line 428
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .local v10, "queued":Z
    goto :goto_0

    .line 430
    .end local v10    # "queued":Z
    :cond_7
    if-eqz p1, :cond_b

    .line 432
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_9

    .line 433
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 434
    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-nez v0, :cond_8

    .line 435
    const-wide/16 v12, 0x1

    .line 436
    :cond_8
    move-wide/from16 v8, p2

    .line 446
    .local v8, "parkNanos":J
    :goto_1
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 447
    invoke-static {p0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 438
    .end local v8    # "parkNanos":J
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v6, v0, v12

    .line 439
    .local v6, "elapsed":J
    cmp-long v0, v6, p2

    if-ltz v0, :cond_a

    .line 440
    invoke-direct {p0, v5}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 441
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    return v0

    .line 443
    :cond_a
    sub-long v8, p2, v6

    .restart local v8    # "parkNanos":J
    goto :goto_1

    .line 450
    .end local v6    # "elapsed":J
    .end local v8    # "parkNanos":J
    :cond_b
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private finishCompletion()V
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v5, 0x0

    .line 365
    :cond_0
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    if-eqz v4, :cond_2

    .line 366
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    iget-object v7, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 369
    .local v7, "t":Ljava/lang/Thread;
    if-eqz v7, :cond_1

    .line 370
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 371
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 373
    :cond_1
    iget-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 374
    .local v6, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v6, :cond_3

    .line 383
    .end local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7    # "t":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 385
    iput-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 386
    return-void

    .line 376
    .restart local v6    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v7    # "t":Ljava/lang/Thread;
    :cond_3
    iput-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 377
    move-object v4, v6

    goto :goto_0
.end method

.method private handlePossibleCancellationInterrupt(I)V
    .locals 2
    .param p1, "s"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x5

    .line 333
    if-ne p1, v1, :cond_0

    .line 334
    :goto_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v0, v1, :cond_0

    .line 335
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method private removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .locals 7
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x0

    .line 465
    if-eqz p1, :cond_3

    .line 466
    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 469
    :goto_0
    const/4 v6, 0x0

    .local v6, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v4, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    .end local v6    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_1
    if-eqz v4, :cond_3

    .line 470
    iget-object v5, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 471
    .local v5, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 472
    move-object v6, v4

    .line 469
    :cond_0
    move-object v4, v5

    goto :goto_1

    .line 473
    :cond_1
    if-eqz v6, :cond_2

    .line 474
    iput-object v5, v6, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 475
    iget-object v0, v6, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 478
    :cond_2
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    .end local v4    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v5    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_3
    return-void
.end method

.method private report(I)Ljava/lang/Object;
    .locals 2
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 119
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 120
    return-object v0

    .line 121
    :cond_0
    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    .line 122
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 123
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "x":Ljava/lang/Object;
    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 7
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v4, 0x0

    .line 166
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    .line 168
    if-eqz p1, :cond_0

    const/4 v5, 0x5

    :goto_0
    move-object v1, p0

    .line 167
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    .line 166
    :goto_1
    if-nez v0, :cond_2

    .line 169
    return v4

    .line 168
    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v0, v4

    .line 166
    goto :goto_1

    .line 171
    :cond_2
    if-eqz p1, :cond_4

    .line 173
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 174
    .local v6, "t":Ljava/lang/Thread;
    if-eqz v6, :cond_3

    .line 175
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    .end local v6    # "t":Ljava/lang/Thread;
    :cond_4
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 183
    const/4 v0, 0x1

    return v0

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    :try_start_2
    sget-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x6

    invoke-virtual {v1, p0, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 176
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :catchall_1
    move-exception v0

    .line 181
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 180
    throw v0
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 219
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4
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
    .line 190
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 191
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 192
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 193
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
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
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v1, 0x1

    .line 201
    if-nez p3, :cond_0

    .line 202
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 203
    :cond_0
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 204
    .local v0, "s":I
    if-gt v0, v1, :cond_1

    .line 205
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 206
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 207
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x0

    .line 162
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v4, 0x0

    .line 257
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 257
    if-eqz v0, :cond_1

    .line 259
    :cond_0
    return-void

    .line 261
    :cond_1
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 262
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 266
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 267
    .local v9, "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x1

    .line 273
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    .local v8, "ran":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 274
    :try_start_2
    invoke-virtual {p0, v9}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    .end local v8    # "ran":Z
    :cond_2
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 282
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 283
    .local v10, "s":I
    if-lt v10, v11, :cond_3

    .line 284
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 286
    :cond_3
    return-void

    .line 268
    .end local v10    # "s":I
    :catch_0
    move-exception v7

    .line 269
    .local v7, "ex":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 270
    .restart local v9    # "result":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 271
    .restart local v8    # "ran":Z
    :try_start_3
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 276
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v8    # "ran":Z
    .end local v9    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    .line 279
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 282
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 283
    .restart local v10    # "s":I
    if-lt v10, v11, :cond_4

    .line 284
    invoke-direct {p0, v10}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 276
    :cond_4
    throw v0
.end method

.method protected runAndReset()Z
    .locals 12

    .prologue
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v11, 0x5

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 298
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 298
    if-eqz v0, :cond_1

    .line 300
    :cond_0
    return v10

    .line 301
    :cond_1
    const/4 v8, 0x0

    .line 302
    .local v8, "ran":Z
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 304
    .local v9, "s":I
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .local v6, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v6, :cond_2

    if-nez v9, :cond_2

    .line 307
    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    const/4 v8, 0x1

    .line 316
    :cond_2
    :goto_0
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 319
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 320
    if-lt v9, v11, :cond_3

    .line 321
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 323
    :cond_3
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 309
    :catch_0
    move-exception v7

    .line 310
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v7}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 313
    .end local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v7    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 316
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 319
    iget v9, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 320
    if-lt v9, v11, :cond_4

    .line 321
    invoke-direct {p0, v9}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 313
    :cond_4
    throw v0

    .restart local v6    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    :cond_5
    move v0, v10

    .line 323
    goto :goto_1
.end method

.method protected set(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 233
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 234
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 236
    :cond_0
    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 249
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 251
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 252
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 254
    :cond_0
    return-void
.end method
