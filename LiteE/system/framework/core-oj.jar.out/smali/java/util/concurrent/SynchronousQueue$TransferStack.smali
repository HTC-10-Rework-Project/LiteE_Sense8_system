.class final Ljava/util/concurrent/SynchronousQueue$TransferStack;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/SynchronousQueue$Transferer",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final DATA:I = 0x1

.field static final FULFILLING:I = 0x2

.field private static final HEAD:J

.field static final REQUEST:I

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 512
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    .line 516
    :try_start_0
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    .line 517
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    const-string/jumbo v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 516
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    return-void
.end method

.method static isFulfilling(I)Z
    .locals 2
    .param p0, "m"    # I

    .prologue
    const/4 v0, 0x0

    .line 231
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 0
    .param p0, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "next"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p3, "mode"    # I

    .prologue
    .line 318
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .end local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-direct {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;-><init>(Ljava/lang/Object;)V

    .line 319
    .restart local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_0
    iput p3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    .line 320
    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 321
    return-object p0
.end method


# virtual methods
.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 9
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J

    .prologue
    .line 436
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p3

    .line 437
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 438
    .local v4, "w":Ljava/lang/Thread;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 439
    if-eqz p2, :cond_3

    sget v3, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    .line 442
    .local v3, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 443
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    .line 444
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 445
    .local v2, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_5

    .line 446
    return-object v2

    .line 436
    .end local v0    # "deadline":J
    .end local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "spins":I
    .end local v4    # "w":Ljava/lang/Thread;
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "deadline":J
    goto :goto_0

    .line 439
    .restart local v4    # "w":Ljava/lang/Thread;
    :cond_3
    sget v3, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    .restart local v3    # "spins":I
    goto :goto_1

    .line 440
    .end local v3    # "spins":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "spins":I
    goto :goto_1

    .line 447
    .restart local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_5
    if-eqz p2, :cond_6

    .line 448
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p3, v0, v6

    .line 449
    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_6

    .line 450
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    goto :goto_1

    .line 454
    :cond_6
    if-lez v3, :cond_8

    .line 455
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    .line 456
    :cond_8
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-nez v5, :cond_9

    .line 457
    iput-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 458
    :cond_9
    if-nez p2, :cond_a

    .line 459
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 460
    :cond_a
    const-wide/16 v6, 0x3e8

    cmp-long v5, p3, v6

    if-lez v5, :cond_0

    .line 461
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1
.end method

.method casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .line 306
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_0

    .line 307
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V
    .locals 4
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    const/4 v3, 0x0

    .line 478
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    .line 479
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    .line 492
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 493
    .local v2, "past":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    iget-object v2, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 498
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .local v1, "p":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    iget-object v3, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 502
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 503
    iget-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 504
    .local v0, "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_1

    .line 507
    :cond_2
    move-object v1, v0

    goto :goto_1

    .line 509
    .end local v0    # "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_3
    return-void
.end method

.method shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .prologue
    .line 470
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 471
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eq v0, p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    iget v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v1

    goto :goto_0
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 350
    const/4 v4, 0x0

    .line 351
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez p1, :cond_2

    const/4 v3, 0x0

    .line 354
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .local v3, "mode":I
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 355
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_1

    iget v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    if-ne v5, v3, :cond_8

    .line 356
    :cond_1
    if-eqz p2, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v5, p3, v6

    if-gtz v5, :cond_4

    .line 357
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 351
    .end local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "mode":I
    .restart local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "mode":I
    goto :goto_0

    .line 360
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .restart local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_3
    return-object v8

    .line 361
    :cond_4
    invoke-static {v4, p1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-virtual {p0, v4, p2, p3, p4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v1

    .line 363
    .local v1, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-ne v1, v4, :cond_5

    .line 364
    invoke-virtual {p0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V

    .line 365
    return-object v8

    .line 367
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-eqz v0, :cond_6

    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v5, v4, :cond_6

    .line 368
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 369
    :cond_6
    if-nez v3, :cond_7

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    :goto_1
    return-object v5

    :cond_7
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_1

    .line 371
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_8
    iget v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 372
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 373
    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_0

    .line 374
    :cond_9
    or-int/lit8 v5, v3, 0x2

    invoke-static {v4, p1, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    .restart local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 376
    :goto_2
    iget-object v1, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 377
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_a

    .line 378
    invoke-virtual {p0, v4, v8}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 379
    const/4 v4, 0x0

    .line 380
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    goto :goto_0

    .line 382
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_a
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 383
    .local v2, "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 384
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 385
    if-nez v3, :cond_b

    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    :goto_3
    return-object v5

    :cond_b
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_3

    .line 387
    :cond_c
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_2

    .line 391
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_d
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 392
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_e

    .line 393
    invoke-virtual {p0, v0, v8}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    .line 395
    :cond_e
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 396
    .restart local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 397
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0

    .line 399
    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_0
.end method
