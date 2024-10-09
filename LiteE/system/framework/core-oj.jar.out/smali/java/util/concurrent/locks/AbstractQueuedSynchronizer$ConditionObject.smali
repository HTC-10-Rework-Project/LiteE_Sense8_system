.class public Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
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

.field final synthetic this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    .prologue
    .line 1855
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1867
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1869
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v1, :cond_0

    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    if-eq v2, v3, :cond_0

    .line 1870
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 1871
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1874
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>(I)V

    .line 1876
    .local v0, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-nez v1, :cond_1

    .line 1877
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1880
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1881
    return-object v0

    .line 1879
    :cond_1
    iput-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0
.end method

.method private checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I
    .locals 1
    .param p1, "node"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    .line 2022
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2023
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2022
    :goto_0
    return v0

    .line 2023
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2024
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 2
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v1, 0x0

    .line 1892
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez v0, :cond_1

    .line 1893
    iput-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1894
    :cond_1
    iput-object v1, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1895
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1896
    iget-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-nez p1, :cond_0

    .line 1897
    :cond_2
    return-void
.end method

.method private doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .locals 3
    .param p1, "first"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .prologue
    const/4 v2, 0x0

    .line 1904
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1906
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1907
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iput-object v2, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1908
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferForSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 1909
    move-object p1, v0

    .line 1910
    if-nez v0, :cond_0

    .line 1911
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
    .line 2033
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2034
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 2035
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2036
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    .line 2037
    :cond_1
    return-void
.end method

.method private unlinkCancelledWaiters()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1928
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1929
    .local v1, "t":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    const/4 v2, 0x0

    .line 1930
    :goto_0
    if-eqz v1, :cond_3

    .line 1931
    iget-object v0, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1932
    .local v0, "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 1933
    iput-object v5, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1934
    if-nez v2, :cond_1

    .line 1935
    iput-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1938
    :goto_1
    if-nez v0, :cond_0

    .line 1939
    iput-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->lastWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1943
    :cond_0
    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 1937
    :cond_1
    iput-object v0, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_1

    .line 1942
    :cond_2
    move-object v2, v1

    .local v2, "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    goto :goto_2

    .line 1945
    .end local v0    # "next":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .end local v2    # "trail":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :cond_3
    return-void
.end method


# virtual methods
.method public final await()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2053
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2054
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 2055
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 2056
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 2057
    .local v2, "savedState":I
    const/4 v0, 0x0

    .line 2058
    .local v0, "interruptMode":I
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2059
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 2060
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    :cond_2
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 2064
    const/4 v0, 0x1

    .line 2065
    :cond_3
    iget-object v3, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v3, :cond_4

    .line 2066
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2067
    :cond_4
    if-eqz v0, :cond_5

    .line 2068
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2069
    :cond_5
    return-void
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2173
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2174
    .local v4, "nanosTimeout":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2175
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 2178
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v4

    .line 2179
    .local v0, "deadline":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 2180
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v6

    .line 2181
    .local v6, "savedState":I
    const/4 v7, 0x0

    .line 2182
    .local v7, "timedout":Z
    const/4 v2, 0x0

    .line 2183
    .local v2, "interruptMode":I
    :goto_0
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2184
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_5

    .line 2185
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v7

    .line 2194
    .end local v7    # "timedout":Z
    :cond_1
    iget-object v8, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v8, v3, v6}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 2195
    const/4 v2, 0x1

    .line 2196
    :cond_2
    iget-object v8, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v8, :cond_3

    .line 2197
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2198
    :cond_3
    if-eqz v2, :cond_4

    .line 2199
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2200
    :cond_4
    xor-int/lit8 v8, v7, 0x1

    return v8

    .line 2188
    .restart local v7    # "timedout":Z
    :cond_5
    const-wide/16 v8, 0x3e8

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    .line 2189
    invoke-static {p0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2190
    :cond_6
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2192
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v4, v0, v8

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
    .line 2086
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2087
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 2090
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v0, v10, p1

    .line 2091
    .local v0, "deadline":J
    move-wide v2, p1

    .line 2092
    .local v2, "initialNanos":J
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v5

    .line 2093
    .local v5, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v8

    .line 2094
    .local v8, "savedState":I
    const/4 v4, 0x0

    .line 2095
    .local v4, "interruptMode":I
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2096
    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-gtz v9, :cond_5

    .line 2097
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    .line 2106
    :cond_1
    iget-object v9, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v9, v5, v8}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    .line 2107
    const/4 v4, 0x1

    .line 2108
    :cond_2
    iget-object v9, v5, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v9, :cond_3

    .line 2109
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2110
    :cond_3
    if-eqz v4, :cond_4

    .line 2111
    invoke-direct {p0, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2112
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v6, v0, v10

    .line 2113
    .local v6, "remaining":J
    cmp-long v9, v6, v2

    if-gtz v9, :cond_7

    .end local v6    # "remaining":J
    :goto_1
    return-wide v6

    .line 2100
    :cond_5
    const-wide/16 v10, 0x3e8

    cmp-long v9, p1, v10

    if-lez v9, :cond_6

    .line 2101
    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 2102
    :cond_6
    invoke-direct {p0, v5}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v4

    if-nez v4, :cond_1

    .line 2104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long p1, v0, v10

    goto :goto_0

    .line 2113
    .restart local v6    # "remaining":J
    :cond_7
    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_1
.end method

.method public final awaitUninterruptibly()V
    .locals 4

    .prologue
    .line 1992
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v1

    .line 1993
    .local v1, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    .line 1994
    .local v2, "savedState":I
    const/4 v0, 0x0

    .line 1995
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1996
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1997
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1998
    const/4 v0, 0x1

    goto :goto_0

    .line 2000
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 2001
    :cond_2
    invoke-static {}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->selfInterrupt()V

    .line 2002
    :cond_3
    return-void
.end method

.method public final awaitUntil(Ljava/util/Date;)Z
    .locals 8
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2132
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2133
    .local v0, "abstime":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2134
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-direct {v6}, Ljava/lang/InterruptedException;-><init>()V

    throw v6

    .line 2135
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->addConditionWaiter()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    move-result-object v3

    .line 2136
    .local v3, "node":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->fullyRelease(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v4

    .line 2137
    .local v4, "savedState":I
    const/4 v5, 0x0

    .line 2138
    .local v5, "timedout":Z
    const/4 v2, 0x0

    .line 2139
    .local v2, "interruptMode":I
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isOnSyncQueue(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-ltz v6, :cond_6

    .line 2141
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->transferAfterCancelledWait(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z

    move-result v5

    .line 2148
    .end local v5    # "timedout":Z
    :cond_2
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->acquireQueued(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 2149
    const/4 v2, 0x1

    .line 2150
    :cond_3
    iget-object v6, v3, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-eqz v6, :cond_4

    .line 2151
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->unlinkCancelledWaiters()V

    .line 2152
    :cond_4
    if-eqz v2, :cond_5

    .line 2153
    invoke-direct {p0, v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->reportInterruptAfterWait(I)V

    .line 2154
    :cond_5
    xor-int/lit8 v6, v5, 0x1

    return v6

    .line 2144
    .restart local v5    # "timedout":Z
    :cond_6
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 2145
    invoke-direct {p0, v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->checkInterruptWhileWaiting(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method protected final getWaitQueueLength()I
    .locals 4

    .prologue
    .line 2243
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2244
    new-instance v2, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v2}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v2

    .line 2245
    :cond_0
    const/4 v0, 0x0

    .line 2246
    .local v0, "n":I
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v1, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v1, :cond_2

    .line 2247
    iget v2, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 2248
    add-int/lit8 v0, v0, 0x1

    .line 2246
    :cond_1
    iget-object v1, v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2250
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
    .line 2263
    iget-object v3, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2264
    new-instance v3, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v3}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v3

    .line 2265
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2266
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    iget-object v2, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v2, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 2267
    iget v3, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 2268
    iget-object v1, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->thread:Ljava/lang/Thread;

    .line 2269
    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 2270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2266
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2273
    :cond_2
    return-object v0
.end method

.method protected final hasWaiters()Z
    .locals 3

    .prologue
    .line 2224
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 2226
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .local v0, "w":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 2227
    iget v1, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->waitStatus:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 2228
    const/4 v1, 0x1

    return v1

    .line 2226
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    goto :goto_0

    .line 2230
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method final isOwnedBy(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;)Z
    .locals 1
    .param p1, "sync"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    .prologue
    .line 2212
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

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
    .line 1958
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1959
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1960
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1961
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1962
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignal(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1963
    :cond_1
    return-void
.end method

.method public final signalAll()V
    .locals 2

    .prologue
    .line 1973
    iget-object v1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->this$0:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->isHeldExclusively()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    new-instance v1, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v1}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v1

    .line 1975
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->firstWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 1976
    .local v0, "first":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_1

    .line 1977
    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;->doSignalAll(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V

    .line 1978
    :cond_1
    return-void
.end method
