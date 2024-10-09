.class public Ljava/util/concurrent/DelayQueue;
.super Ljava/util/AbstractQueue;
.source "DelayQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/DelayQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/util/concurrent/Delayed;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final available:Ljava/util/concurrent/locks/Condition;

.field private leader:Ljava/lang/Thread;

.field private final transient lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 105
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    .line 105
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method private peekExpired()Ljava/util/concurrent/Delayed;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 331
    .local v0, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move-object v0, v1

    .end local v0    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/concurrent/Delayed;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 396
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 397
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 399
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 403
    return-void

    .line 400
    :catchall_0
    move-exception v1

    .line 401
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 400
    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 343
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 344
    :cond_0
    if-ne p1, p0, :cond_1

    .line 345
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 346
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 347
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "n":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/DelayQueue;->peekExpired()Ljava/util/concurrent/Delayed;

    move-result-object v0

    .local v0, "e":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_2

    .line 351
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 355
    return v2

    .line 356
    .end local v0    # "e":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v3

    .line 357
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    throw v3
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v3, 0x0

    .line 368
    if-nez p1, :cond_0

    .line 369
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 370
    :cond_0
    if-ne p1, p0, :cond_1

    .line 371
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 372
    :cond_1
    if-gtz p2, :cond_2

    .line 373
    return v3

    .line 374
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 375
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, "n":I
    :goto_0
    if-ge v2, p2, :cond_3

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/DelayQueue;->peekExpired()Ljava/util/concurrent/Delayed;

    move-result-object v0

    .local v0, "e":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_3

    .line 379
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v0    # "e":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    return v2

    .line 384
    :catchall_0
    move-exception v3

    .line 385
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 384
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
    .line 526
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/DelayQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/DelayQueue$Itr;-><init>(Ljava/util/concurrent/DelayQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/util/concurrent/Delayed;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 144
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 146
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 149
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v1

    .line 152
    :catchall_0
    move-exception v1

    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    throw v1
.end method

.method public offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z
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
    .line 179
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/util/concurrent/Delayed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 306
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Delayed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    return-object v1

    .line 309
    :catchall_0
    move-exception v1

    .line 310
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 309
    throw v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/util/concurrent/Delayed;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 191
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 193
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Delayed;

    .line 194
    .local v0, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 194
    return-object v2

    .line 196
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v2

    .line 198
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 197
    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;
    .locals 17
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
    .line 254
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 255
    .local v8, "nanos":J
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 256
    .local v7, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 259
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v11}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Delayed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v6, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-nez v6, :cond_3

    .line 261
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_2

    .line 262
    const/4 v11, 0x0

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 290
    :cond_1
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 262
    return-object v11

    .line 264
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    goto :goto_0

    .line 266
    :cond_3
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v11}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 267
    .local v4, "delay":J
    const-wide/16 v14, 0x0

    cmp-long v11, v4, v14

    if-gtz v11, :cond_5

    .line 268
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v11}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 290
    :cond_4
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    return-object v11

    .line 269
    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_7

    .line 270
    const/4 v11, 0x0

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 290
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 270
    return-object v11

    .line 271
    :cond_7
    const/4 v6, 0x0

    .line 272
    .local v6, "first":Ljava/util/concurrent/Delayed;, "TE;"
    cmp-long v11, v8, v4

    if-ltz v11, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v11, :cond_9

    .line 273
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v8, v9}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v8

    goto/16 :goto_0

    .line 275
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    .line 276
    .local v10, "thisThread":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iput-object v10, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v11, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v12

    .line 279
    .local v12, "timeLeft":J
    sub-long v14, v4, v12

    sub-long/2addr v8, v14

    .line 281
    :try_start_4
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v11, v10, :cond_0

    .line 282
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 287
    .end local v4    # "delay":J
    .end local v6    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .end local v10    # "thisThread":Ljava/lang/Thread;
    .end local v12    # "timeLeft":J
    :catchall_0
    move-exception v11

    .line 288
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v14}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v14}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 290
    :cond_a
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 287
    throw v11

    .line 280
    .restart local v4    # "delay":J
    .restart local v6    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    .restart local v10    # "thisThread":Ljava/lang/Thread;
    :catchall_1
    move-exception v11

    .line 281
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v14, v10, :cond_b

    .line 282
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 280
    :cond_b
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    return-void
.end method

.method public put(Ljava/util/concurrent/Delayed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "e":Ljava/util/concurrent/Delayed;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    .line 166
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 412
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 488
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 489
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 491
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 493
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 491
    return v1

    .line 492
    :catchall_0
    move-exception v1

    .line 493
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    throw v1
.end method

.method removeEQ(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 501
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 502
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 504
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 513
    return-void

    .line 510
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :catchall_0
    move-exception v2

    .line 511
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 510
    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 315
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 316
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 318
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 318
    return v1

    .line 319
    :catchall_0
    move-exception v1

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v1
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/util/concurrent/Delayed;
    .locals 8
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
    .line 210
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 211
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 214
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Delayed;

    .line 215
    .local v2, "first":Ljava/util/concurrent/Delayed;, "TE;"
    if-nez v2, :cond_2

    .line 216
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    .end local v2    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :catchall_0
    move-exception v5

    .line 237
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 238
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 239
    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    throw v5

    .line 218
    .restart local v2    # "first":Ljava/util/concurrent/Delayed;, "TE;"
    :cond_2
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 219
    .local v0, "delay":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gtz v5, :cond_4

    .line 220
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Delayed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-nez v6, :cond_3

    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 238
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 239
    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 220
    return-object v5

    .line 221
    :cond_4
    const/4 v2, 0x0

    .line 222
    .local v2, "first":Ljava/util/concurrent/Delayed;, "TE;"
    :try_start_2
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-eqz v5, :cond_5

    .line 223
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 225
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 226
    .local v4, "thisThread":Ljava/lang/Thread;
    iput-object v4, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->available:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    :try_start_4
    iget-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v5, v4, :cond_0

    .line 231
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    goto :goto_0

    .line 229
    :catchall_1
    move-exception v5

    .line 230
    iget-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    if-ne v6, v4, :cond_6

    .line 231
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/DelayQueue;->leader:Ljava/lang/Thread;

    .line 229
    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 429
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 432
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 434
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    return-object v1

    .line 433
    :catchall_0
    move-exception v1

    .line 434
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 433
    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "this":Ljava/util/concurrent/DelayQueue;, "Ljava/util/concurrent/DelayQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/DelayQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 475
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 477
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/DelayQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 479
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    return-object v1

    .line 478
    :catchall_0
    move-exception v1

    .line 479
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 478
    throw v1
.end method
