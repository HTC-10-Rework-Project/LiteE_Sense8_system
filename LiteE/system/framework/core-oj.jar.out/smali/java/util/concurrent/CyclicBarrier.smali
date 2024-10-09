.class public Ljava/util/concurrent/CyclicBarrier;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CyclicBarrier$Generation;
    }
.end annotation


# instance fields
.field private final barrierCommand:Ljava/lang/Runnable;

.field private count:I

.field private generation:Ljava/util/concurrent/CyclicBarrier$Generation;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final parties:I

.field private final trip:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "parties"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "parties"    # I
    .param p2, "barrierAction"    # Ljava/lang/Runnable;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 159
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    .line 165
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$Generation;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 279
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 280
    :cond_0
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    .line 281
    iput p1, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 282
    iput-object p2, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 283
    return-void
.end method

.method private breakBarrier()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    .line 192
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 193
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 194
    return-void
.end method

.method private dowait(ZJ)I
    .locals 10
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 202
    iget-object v4, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 203
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 205
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 207
    .local v1, "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_0

    .line 208
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    :catchall_0
    move-exception v6

    .line 262
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    throw v6

    .line 210
    .restart local v1    # "g":Ljava/util/concurrent/CyclicBarrier$Generation;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 211
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 212
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 215
    :cond_1
    iget v6, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    add-int/lit8 v3, v6, -0x1

    iput v3, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .local v3, "index":I
    if-nez v3, :cond_5

    .line 217
    const/4 v5, 0x0

    .line 219
    .local v5, "ranAction":Z
    :try_start_2
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->barrierCommand:Ljava/lang/Runnable;

    .line 220
    .local v0, "command":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 221
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_2
    const/4 v5, 0x1

    .line 223
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    if-nez v5, :cond_3

    .line 227
    :try_start_3
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    return v7

    .line 225
    .end local v0    # "command":Ljava/lang/Runnable;
    :catchall_1
    move-exception v6

    .line 226
    if-nez v5, :cond_4

    .line 227
    :try_start_4
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 225
    :cond_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    .end local v5    # "ranAction":Z
    :cond_5
    if-nez p1, :cond_7

    .line 235
    :try_start_5
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    :cond_6
    :goto_0
    :try_start_6
    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    if-eqz v6, :cond_9

    .line 251
    new-instance v6, Ljava/util/concurrent/BrokenBarrierException;

    invoke-direct {v6}, Ljava/util/concurrent/BrokenBarrierException;-><init>()V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    :cond_7
    cmp-long v6, p2, v8

    if-lez v6, :cond_6

    .line 237
    :try_start_7
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide p2

    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_8
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    if-ne v1, v6, :cond_8

    iget-boolean v6, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    .line 240
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 241
    throw v2

    .line 246
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 253
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v6, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eq v1, v6, :cond_a

    .line 262
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 254
    return v3

    .line 256
    :cond_a
    if-eqz p1, :cond_5

    cmp-long v6, p2, v8

    if-gtz v6, :cond_5

    .line 257
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 258
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private nextGeneration()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->trip:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 182
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iput v0, p0, Ljava/util/concurrent/CyclicBarrier;->count:I

    .line 183
    new-instance v0, Ljava/util/concurrent/CyclicBarrier$Generation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>(Ljava/util/concurrent/CyclicBarrier$Generation;)V

    iput-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    .line 184
    return-void
.end method


# virtual methods
.method public await()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "toe":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)I
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/BrokenBarrierException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Ljava/util/concurrent/CyclicBarrier;->dowait(ZJ)I

    move-result v0

    return v0
.end method

.method public getNumberWaiting()I
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 485
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    iget v2, p0, Ljava/util/concurrent/CyclicBarrier;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    return v1

    .line 488
    :catchall_0
    move-exception v1

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 488
    throw v1
.end method

.method public getParties()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Ljava/util/concurrent/CyclicBarrier;->parties:I

    return v0
.end method

.method public isBroken()Z
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/CyclicBarrier;->generation:Ljava/util/concurrent/CyclicBarrier$Generation;

    iget-boolean v1, v1, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 451
    return v1

    .line 452
    :catchall_0
    move-exception v1

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Ljava/util/concurrent/CyclicBarrier;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 468
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 470
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->breakBarrier()V

    .line 471
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier;->nextGeneration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    return-void

    .line 472
    :catchall_0
    move-exception v1

    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    throw v1
.end method
