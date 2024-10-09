.class public Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionObject"
.end annotation


# static fields
.field private static final REINTERRUPT:I = 0x1

.field private static final THROW_IE:I = -0x1

.field private static final serialVersionUID:J = 0x104ad505855c6aebL


# instance fields
.field private transient firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private transient lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .prologue
    .line 1391
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1403
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1405
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_0

    .line 1406
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1407
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1410
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(I)V

    .line 1412
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_1

    .line 1413
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1416
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1417
    return-object v0

    .line 1415
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 1558
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1559
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 1558
    :goto_0
    return v0

    .line 1559
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1560
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 2
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v1, 0x0

    .line 1428
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1429
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1430
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1431
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1432
    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez p1, :cond_0

    .line 1433
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 3
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1440
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1442
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1443
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1444
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1445
    move-object p1, v0

    .line 1446
    if-nez v0, :cond_0

    .line 1447
    return-void
.end method

.method private reportInterruptAfterWait(I)V
    .locals 1
    .param p1, "interruptMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1569
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1570
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1571
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1572
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1573
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1464
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1465
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x0

    .line 1466
    :goto_0
    if-eqz v1, :cond_3

    .line 1467
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1468
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 1469
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1470
    if-nez v2, :cond_1

    .line 1471
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1474
    :goto_1
    if-nez v0, :cond_0

    .line 1475
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1479
    :cond_0
    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 1473
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_1

    .line 1478
    :cond_2
    move-object v2, v1

    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    goto :goto_2

    .line 1481
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v2    # "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1590
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1591
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1592
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    move-result-wide v2

    .line 1593
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1594
    .local v0, "interruptMode":I
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1595
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1596
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 1600
    const/4 v0, 0x1

    .line 1601
    :cond_3
    iget-object v4, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v4, :cond_4

    .line 1602
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1603
    :cond_4
    if-eqz v0, :cond_5

    .line 1604
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1605
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1709
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 1710
    .local v8, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1711
    new-instance v13, Ljava/lang/InterruptedException;

    invoke-direct {v13}, Ljava/lang/InterruptedException;-><init>()V

    throw v13

    .line 1714
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long v4, v14, v8

    .line 1715
    .local v4, "deadline":J
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v7

    .line 1716
    .local v7, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    move-result-wide v10

    .line 1717
    .local v10, "savedState":J
    const/4 v12, 0x0

    .line 1718
    .local v12, "timedout":Z
    const/4 v6, 0x0

    .line 1719
    .local v6, "interruptMode":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1720
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gtz v13, :cond_5

    .line 1721
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v12

    .line 1730
    .end local v12    # "timedout":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v13, v7, v10, v11}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    .line 1731
    const/4 v6, 0x1

    .line 1732
    :cond_2
    iget-object v13, v7, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v13, :cond_3

    .line 1733
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1734
    :cond_3
    if-eqz v6, :cond_4

    .line 1735
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1736
    :cond_4
    xor-int/lit8 v13, v12, 0x1

    return v13

    .line 1724
    .restart local v12    # "timedout":Z
    :cond_5
    const-wide/16 v14, 0x3e8

    cmp-long v13, v8, v14

    if-lez v13, :cond_6

    .line 1725
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1726
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v6

    if-nez v6, :cond_1

    .line 1728
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v8, v4, v14

    goto :goto_0
.end method

.method public final awaitNanos(J)J
    .locals 13
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1623
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 1626
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v0, v10, p1

    .line 1627
    .local v0, "deadline":J
    move-wide v2, p1

    .line 1628
    .local v2, "initialNanos":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v5

    .line 1629
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    move-result-wide v8

    .line 1630
    .local v8, "savedState":J
    const/4 v4, 0x0

    .line 1631
    .local v4, "interruptMode":I
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1632
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gtz v10, :cond_5

    .line 1633
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v10, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1642
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v10, v5, v8, v9}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, -0x1

    if-eq v4, v10, :cond_2

    .line 1643
    const/4 v4, 0x1

    .line 1644
    :cond_2
    iget-object v10, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v10, :cond_3

    .line 1645
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1646
    :cond_3
    if-eqz v4, :cond_4

    .line 1647
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1648
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v6, v0, v10

    .line 1649
    .local v6, "remaining":J
    cmp-long v10, v6, v2

    if-gtz v10, :cond_7

    .end local v6    # "remaining":J
    :goto_1
    return-wide v6

    .line 1636
    :cond_5
    const-wide/16 v10, 0x3e8

    cmp-long v10, p1, v10

    if-lez v10, :cond_6

    .line 1637
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 1638
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1640
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long p1, v0, v10

    goto :goto_0

    .line 1649
    .restart local v6    # "remaining":J
    :cond_7
    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_1
.end method

.method public final awaitUninterruptibly()V
    .locals 5

    .prologue
    .line 1528
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1529
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    move-result-wide v2

    .line 1530
    .local v2, "savedState":J
    const/4 v0, 0x0

    .line 1531
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1532
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1533
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1534
    const/4 v0, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    iget-object v4, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v4, v1, v2, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 1537
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->selfInterrupt()V

    .line 1538
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 10
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1668
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1669
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1670
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 1671
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 1672
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)J

    move-result-wide v4

    .line 1673
    .local v4, "savedState":J
    const/4 v6, 0x0

    .line 1674
    .local v6, "timedout":Z
    const/4 v2, 0x0

    .line 1675
    .local v2, "interruptMode":I
    :cond_1
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v7, v8, v0

    if-ltz v7, :cond_6

    .line 1677
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    .line 1684
    .end local v6    # "timedout":Z
    :cond_2
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v7, v3, v4, v5}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;J)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 1685
    const/4 v2, 0x1

    .line 1686
    :cond_3
    iget-object v7, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v7, :cond_4

    .line 1687
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1688
    :cond_4
    if-eqz v2, :cond_5

    .line 1689
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 1690
    :cond_5
    xor-int/lit8 v7, v6, 0x1

    return v7

    .line 1680
    .restart local v6    # "timedout":Z
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1681
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    .prologue
    .line 1779
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1780
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 1781
    :cond_0
    const/4 v0, 0x0

    .line 1782
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 1783
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 1784
    add-int/lit8 v0, v0, 0x1

    .line 1782
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1786
    :cond_2
    return v0
.end method

.method protected final getWaitingThreads()Ljava/util/Collection;
    .locals 5
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
    .line 1799
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1800
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 1801
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 1803
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 1804
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 1805
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 1806
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1809
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    .prologue
    .line 1760
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1761
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1762
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 1763
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 1764
    const/4 v1, 0x1

    return v1

    .line 1762
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 1766
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;)Z
    .locals 1
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    .prologue
    .line 1748
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final signal()V
    .locals 2

    .prologue
    .line 1494
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1495
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1496
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1497
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1498
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1499
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    .prologue
    .line 1509
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1510
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1511
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1512
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1513
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1514
    :cond_1
    return-void
.end method
