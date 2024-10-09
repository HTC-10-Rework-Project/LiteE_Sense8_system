.class public Ljava/util/concurrent/ThreadPoolExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;,
        Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x1fffffff

.field private static final COUNT_BITS:I = 0x1d

.field private static final ONLY_ONE:Z = true

.field private static final RUNNING:I = -0x20000000

.field private static final SHUTDOWN:I = 0x0

.field private static final STOP:I = 0x20000000

.field private static final TERMINATED:I = 0x60000000

.field private static final TIDYING:I = 0x40000000

.field private static final defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final shutdownPerm:Ljava/lang/RuntimePermission;


# instance fields
.field private volatile allowCoreThreadTimeOut:Z

.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final ctl:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile handler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private volatile keepAliveTime:J

.field private largestPoolSize:I

.field private final mainLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile maximumPoolSize:I

.field private final termination:Ljava/util/concurrent/locks/Condition;

.field private volatile threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/concurrent/ThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    .line 565
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 589
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v1, "modifyThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    .line 588
    sput-object v0, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    .line 338
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 1215
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1217
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 1285
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1287
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v9, Ljava/util/concurrent/ThreadPoolExecutor;->defaultHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1250
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 1252
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v2, 0x0

    .line 1316
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 396
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, -0x20000000

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 478
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 484
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    .line 489
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    .line 1323
    if-ltz p1, :cond_0

    .line 1324
    if-gtz p2, :cond_1

    .line 1327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1325
    :cond_1
    if-lt p2, p1, :cond_0

    .line 1326
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1328
    if-eqz p6, :cond_2

    if-nez p7, :cond_3

    .line 1329
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_3
    if-eqz p8, :cond_2

    .line 1330
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1331
    iput p2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1332
    iput-object p6, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1333
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1334
    iput-object p7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1335
    iput-object p8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1336
    return-void
.end method

.method private addWorker(Ljava/lang/Runnable;Z)Z
    .locals 12
    .param p1, "firstTask"    # Ljava/lang/Runnable;
    .param p2, "core"    # Z

    .prologue
    const/4 v11, 0x0

    .line 917
    :goto_0
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 918
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 921
    .local v2, "rs":I
    if-ltz v2, :cond_2

    .line 922
    if-nez v2, :cond_0

    .line 923
    if-eqz p1, :cond_1

    .line 925
    :cond_0
    return v11

    .line 924
    :cond_1
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v10

    .line 921
    if-nez v10, :cond_0

    .line 928
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v7

    .line 929
    .local v7, "wc":I
    const v10, 0x1fffffff

    if-ge v7, v10, :cond_3

    .line 930
    if-eqz p2, :cond_4

    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    :goto_1
    if-lt v7, v10, :cond_5

    .line 931
    :cond_3
    return v11

    .line 930
    :cond_4
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    goto :goto_1

    .line 932
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndIncrementWorkerCount(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 941
    const/4 v9, 0x0

    .line 942
    .local v9, "workerStarted":Z
    const/4 v8, 0x0

    .line 943
    .local v8, "workerAdded":Z
    const/4 v5, 0x0

    .line 945
    .local v5, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_0
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    invoke-direct {v6, p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 946
    .local v6, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :try_start_1
    iget-object v4, v6, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 947
    .end local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .local v4, "t":Ljava/lang/Thread;
    if-eqz v4, :cond_c

    .line 948
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 949
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 954
    :try_start_2
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-static {v10}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    .line 956
    if-ltz v2, :cond_6

    .line 957
    if-nez v2, :cond_b

    if-nez p1, :cond_b

    .line 958
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 959
    new-instance v10, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v10}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 966
    :catchall_0
    move-exception v10

    .line 967
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 966
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 974
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .line 975
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :goto_2
    if-nez v9, :cond_7

    .line 976
    invoke-direct {p0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 974
    :cond_7
    throw v10

    .line 934
    .end local v8    # "workerAdded":Z
    .end local v9    # "workerStarted":Z
    :cond_8
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 935
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v10

    if-eq v10, v2, :cond_2

    goto :goto_0

    .line 960
    .restart local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v8    # "workerAdded":Z
    .restart local v9    # "workerStarted":Z
    :cond_9
    :try_start_4
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 962
    .local v3, "s":I
    iget v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I

    if-le v3, v10, :cond_a

    .line 963
    iput v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 964
    :cond_a
    const/4 v8, 0x1

    .line 967
    .end local v3    # "s":I
    :cond_b
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 969
    if-eqz v8, :cond_c

    .line 970
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 971
    const/4 v9, 0x1

    .line 975
    .end local v1    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_c
    if-nez v9, :cond_d

    .line 976
    invoke-direct {p0, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 978
    :cond_d
    return v9

    .line 974
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v6    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v5    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catchall_2
    move-exception v10

    goto :goto_2
.end method

.method private addWorkerFailed(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 2
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .prologue
    .line 989
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 990
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 992
    if-eqz p1, :cond_0

    .line 993
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 994
    :cond_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 995
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 999
    return-void

    .line 996
    :catchall_0
    move-exception v1

    .line 997
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 996
    throw v1
.end method

.method private advanceRunState(I)V
    .locals 3
    .param p1, "targetState"    # I

    .prologue
    .line 692
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 693
    .local v0, "c":I
    invoke-static {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    .line 693
    if-eqz v1, :cond_0

    .line 697
    :cond_1
    return-void
.end method

.method private checkShutdownAccess()V
    .locals 5

    .prologue
    .line 753
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 754
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 755
    sget-object v4, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownPerm:Ljava/lang/RuntimePermission;

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 756
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 757
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 759
    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 760
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v4, v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    invoke-virtual {v1, v4}, Ljava/lang/SecurityManager;->checkAccess(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 761
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    .line 762
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 761
    throw v4

    .line 762
    .restart local v3    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 765
    .end local v0    # "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private compareAndDecrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    .prologue
    .line 440
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private compareAndIncrementWorkerCount(I)Z
    .locals 2
    .param p1, "expect"    # I

    .prologue
    .line 433
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private static ctlOf(II)I
    .locals 1
    .param p0, "rs"    # I
    .param p1, "wc"    # I

    .prologue
    .line 410
    or-int v0, p0, p1

    return v0
.end method

.method private decrementWorkerCount()V
    .locals 1

    .prologue
    .line 449
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    return-void
.end method

.method private drainQueue()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 872
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 873
    .local v0, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v2, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 875
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 876
    new-array v3, v4, [Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Runnable;

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v3, v4

    .line 877
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 878
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    return-object v2
.end method

.method private getTask()Ljava/lang/Runnable;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1060
    const/4 v5, 0x0

    .line 1063
    .local v5, "timedOut":Z
    :cond_0
    :goto_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1064
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v3

    .line 1067
    .local v3, "rs":I
    if-ltz v3, :cond_2

    const/high16 v7, 0x20000000

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1068
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1069
    return-object v11

    .line 1072
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v6

    .line 1075
    .local v6, "wc":I
    iget-boolean v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-nez v7, :cond_3

    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-le v6, v7, :cond_6

    :cond_3
    const/4 v4, 0x1

    .line 1077
    .local v4, "timed":Z
    :goto_1
    iget v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    if-gt v6, v7, :cond_4

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 1078
    :cond_4
    const/4 v7, 0x1

    if-gt v6, v7, :cond_5

    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v7

    .line 1077
    if-eqz v7, :cond_7

    .line 1079
    :cond_5
    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->compareAndDecrementWorkerCount(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1080
    return-object v11

    .line 1075
    .end local v4    # "timed":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "timed":Z
    goto :goto_1

    .line 1085
    :cond_7
    if-eqz v4, :cond_8

    .line 1086
    :try_start_0
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v8, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1088
    .local v1, "r":Ljava/lang/Runnable;
    :goto_2
    if-eqz v1, :cond_9

    .line 1089
    return-object v1

    .line 1087
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_8
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "r":Ljava/lang/Runnable;
    goto :goto_2

    .line 1090
    :cond_9
    const/4 v5, 0x1

    goto :goto_0

    .line 1091
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v2

    .line 1092
    .local v2, "retry":Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private interruptIdleWorkers()V
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 829
    return-void
.end method

.method private interruptIdleWorkers(Z)V
    .locals 6
    .param p1, "onlyOne"    # Z

    .prologue
    .line 802
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 803
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 805
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 806
    .local v3, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-object v2, v3, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 807
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 809
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 812
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 815
    :cond_1
    :goto_0
    if-eqz p1, :cond_0

    .line 819
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 821
    return-void

    .line 810
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :catch_0
    move-exception v0

    .line 812
    .local v0, "ignore":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 818
    .end local v0    # "ignore":Ljava/lang/SecurityException;
    .end local v2    # "t":Ljava/lang/Thread;
    .end local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    .line 819
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 818
    throw v5

    .line 811
    .restart local v2    # "t":Ljava/lang/Thread;
    .restart local v3    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .restart local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v5

    .line 812
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 811
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private interruptWorkers()V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 773
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 775
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 776
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->interruptIfStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 777
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .end local v2    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    .line 778
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 777
    throw v3

    .line 778
    .restart local v2    # "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    return-void
.end method

.method private static isRunning(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    const/4 v0, 0x0

    .line 426
    if-gez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V
    .locals 9
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    .param p2, "completedAbruptly"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1015
    if-eqz p2, :cond_0

    .line 1016
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->decrementWorkerCount()V

    .line 1018
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1019
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1021
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    iget-wide v6, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1022
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1027
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1029
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1030
    .local v0, "c":I
    const/high16 v3, 0x20000000

    invoke-static {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1031
    if-nez p2, :cond_3

    .line 1032
    iget-boolean v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 1033
    .local v2, "min":I
    :goto_0
    if-nez v2, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1034
    const/4 v2, 0x1

    .line 1035
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-lt v3, v2, :cond_3

    .line 1036
    return-void

    .line 1023
    .end local v0    # "c":I
    .end local v2    # "min":I
    :catchall_0
    move-exception v3

    .line 1024
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1023
    throw v3

    .line 1032
    .restart local v0    # "c":I
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .restart local v2    # "min":I
    goto :goto_0

    .line 1038
    .end local v2    # "min":I
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1040
    :cond_4
    return-void
.end method

.method private static runStateAtLeast(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 422
    if-lt p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateLessThan(II)Z
    .locals 1
    .param p0, "c"    # I
    .param p1, "s"    # I

    .prologue
    .line 418
    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static runStateOf(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 408
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    return v0
.end method

.method private static workerCountOf(I)I
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 409
    const v0, 0x1fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2022
    return-void
.end method

.method public allowCoreThreadTimeOut(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1665
    if-eqz p1, :cond_0

    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Core threads must have nonzero keep alive times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_0
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    if-eq p1, v0, :cond_1

    .line 1668
    iput-boolean p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    .line 1669
    if-eqz p1, :cond_1

    .line 1670
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1672
    :cond_1
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    .prologue
    .line 1644
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut:Z

    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1474
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1475
    .local v2, "nanos":J
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1476
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1478
    :goto_0
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v4, 0x60000000

    invoke-static {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1479
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 1480
    const/4 v1, 0x0

    .line 1485
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1480
    return v1

    .line 1481
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 1483
    :cond_1
    const/4 v1, 0x1

    .line 1485
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1483
    return v1

    .line 1484
    :catchall_0
    move-exception v1

    .line 1485
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1484
    throw v1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1971
    return-void
.end method

.method ensurePrestart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1609
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    .line 1610
    .local v0, "wc":I
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v0, v1, :cond_1

    .line 1611
    const/4 v1, 0x1

    invoke-direct {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    .line 1614
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    if-nez v0, :cond_0

    .line 1613
    invoke-direct {p0, v3, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1353
    if-nez p1, :cond_0

    .line 1354
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1375
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1376
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v2, v3, :cond_2

    .line 1377
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    return-void

    .line 1379
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1381
    :cond_2
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1382
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1383
    .local v1, "recheck":I
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1384
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    .line 1390
    .end local v1    # "recheck":I
    :cond_3
    :goto_0
    return-void

    .line 1385
    .restart local v1    # "recheck":I
    :cond_4
    invoke-static {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 1386
    invoke-direct {p0, v5, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    .line 1388
    .end local v1    # "recheck":I
    :cond_5
    invoke-direct {p0, p1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1389
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->reject(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1494
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1495
    return-void
.end method

.method public getActiveCount()I
    .locals 5

    .prologue
    .line 1842
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1843
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1845
    const/4 v1, 0x0

    .line 1846
    .local v1, "n":I
    :try_start_0
    iget-object v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1847
    .local v2, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 1848
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1851
    .end local v2    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1849
    return v1

    .line 1850
    .end local v3    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    .line 1851
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1850
    throw v4
.end method

.method public getCompletedTaskCount()J
    .locals 8

    .prologue
    .line 1905
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1906
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1908
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1909
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "w$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1910
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v6

    goto :goto_0

    .line 1913
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1911
    return-wide v2

    .line 1912
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    .line 1913
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1912
    throw v5
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 1588
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1745
    iget-wide v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 2

    .prologue
    .line 1862
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1863
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1865
    :try_start_0
    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->largestPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1865
    return v1

    .line 1866
    :catchall_0
    move-exception v1

    .line 1867
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1866
    throw v1
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 1701
    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 3

    .prologue
    .line 1823
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1824
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1828
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1831
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1828
    return v1

    .line 1829
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1830
    :catchall_0
    move-exception v1

    .line 1831
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1830
    throw v1
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1759
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 8

    .prologue
    .line 1880
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1881
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1883
    :try_start_0
    iget-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1884
    .local v2, "n":J
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1885
    .local v1, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v6, v1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v2, v6

    .line 1886
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1887
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 1889
    .end local v1    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    iget-object v5, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v2

    .line 1891
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1889
    return-wide v6

    .line 1890
    .end local v2    # "n":J
    .end local v4    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    .line 1891
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1890
    throw v5
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method final isRunningOrShutdown(Z)Z
    .locals 3
    .param p1, "shutdownOK"    # Z

    .prologue
    const/4 v1, 0x0

    .line 861
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v0

    .line 862
    .local v0, "rs":I
    const/high16 v2, -0x20000000

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    .end local p1    # "shutdownOK":Z
    :goto_0
    return p1

    .restart local p1    # "shutdownOK":Z
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v0

    return v0
.end method

.method public isTerminating()Z
    .locals 2

    .prologue
    .line 1464
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1465
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x60000000

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onShutdown()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    .prologue
    .line 1624
    const/4 v0, 0x0

    .line 1625
    .local v0, "n":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    :cond_0
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge v0, v1, :cond_0

    .line 1601
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v0

    .line 1600
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purge()V
    .locals 9

    .prologue
    .line 1795
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 1797
    .local v2, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1798
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1799
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 1800
    .local v4, "r":Ljava/lang/Runnable;
    instance-of v5, v4, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/util/concurrent/Future;

    .end local v4    # "r":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1801
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1803
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "fallThrough":Ljava/util/ConcurrentModificationException;
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x0

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v3, v7, v6

    .line 1808
    .local v3, "r":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1809
    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 1807
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1

    .line 1812
    .end local v0    # "fallThrough":Ljava/util/ConcurrentModificationException;
    .end local v3    # "r":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1813
    return-void
.end method

.method final reject(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 843
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 844
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1779
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1780
    .local v0, "removed":Z
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1781
    return v0
.end method

.method final runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V
    .locals 12
    .param p1, "w"    # Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v7, 0x0

    .line 1141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 1142
    .local v3, "wt":Ljava/lang/Thread;
    iget-object v1, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1143
    .local v1, "task":Ljava/lang/Runnable;
    iput-object v7, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 1144
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1145
    const/4 v0, 0x1

    .line 1147
    .end local v1    # "task":Ljava/lang/Runnable;
    .local v0, "completedAbruptly":Z
    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTask()Ljava/lang/Runnable;

    move-result-object v1

    .restart local v1    # "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_3

    .line 1148
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->lock()V

    .line 1153
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/high16 v8, 0x20000000

    invoke-static {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1154
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1155
    iget-object v7, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/high16 v8, 0x20000000

    invoke-static {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v7

    .line 1153
    if-eqz v7, :cond_2

    .line 1156
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1153
    if-eqz v7, :cond_2

    .line 1157
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    :cond_2
    :try_start_1
    invoke-virtual {p0, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1160
    const/4 v2, 0x0

    .line 1162
    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1170
    :try_start_3
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1173
    const/4 v1, 0x0

    .line 1174
    .local v1, "task":Ljava/lang/Runnable;
    :try_start_4
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v8, v10

    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1175
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1179
    .end local v1    # "task":Ljava/lang/Runnable;
    .end local v2    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 1180
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1179
    throw v7

    .line 1167
    .restart local v2    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v6

    .line 1168
    .local v6, "x":Ljava/lang/Throwable;
    move-object v2, v6

    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_5
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1169
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v6    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    .line 1170
    :try_start_6
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 1169
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1172
    :catchall_2
    move-exception v7

    .line 1173
    const/4 v1, 0x0

    .line 1174
    .restart local v1    # "task":Ljava/lang/Runnable;
    :try_start_7
    iget-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v8, v10

    iput-wide v8, p1, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    .line 1175
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->unlock()V

    .line 1172
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1165
    .end local v1    # "task":Ljava/lang/Runnable;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 1166
    .local v4, "x":Ljava/lang/Error;
    move-object v2, v4

    .local v2, "thrown":Ljava/lang/Throwable;
    :try_start_8
    throw v4

    .line 1163
    .end local v4    # "x":Ljava/lang/Error;
    .local v2, "thrown":Ljava/lang/Throwable;
    :catch_2
    move-exception v5

    .line 1164
    .local v5, "x":Ljava/lang/RuntimeException;
    move-object v2, v5

    .local v2, "thrown":Ljava/lang/Throwable;
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1178
    .end local v2    # "thrown":Ljava/lang/Throwable;
    .end local v5    # "x":Ljava/lang/RuntimeException;
    .local v1, "task":Ljava/lang/Runnable;
    :cond_3
    const/4 v0, 0x0

    .line 1180
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->processWorkerExit(Ljava/util/concurrent/ThreadPoolExecutor$Worker;Z)V

    .line 1182
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 5
    .param p1, "corePoolSize"    # I

    .prologue
    .line 1562
    if-gez p1, :cond_0

    .line 1563
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1564
    :cond_0
    iget v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    sub-int v0, p1, v3

    .line 1565
    .local v0, "delta":I
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    .line 1566
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v3

    if-le v3, p1, :cond_2

    .line 1567
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1579
    :cond_1
    return-void

    .line 1568
    :cond_2
    if-lez v0, :cond_1

    .line 1573
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "k":I
    move v2, v1

    .line 1574
    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    if-lez v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->addWorker(Ljava/lang/Runnable;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1575
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v6, 0x0

    .line 1721
    cmp-long v4, p1, v6

    if-gez v4, :cond_0

    .line 1722
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1723
    :cond_0
    cmp-long v4, p1, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1724
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Core threads must have nonzero keep alive times"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1725
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 1726
    .local v2, "keepAliveTime":J
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    sub-long v0, v2, v4

    .line 1727
    .local v0, "delta":J
    iput-wide v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->keepAliveTime:J

    .line 1728
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    .line 1729
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1730
    :cond_2
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 1687
    if-lez p1, :cond_0

    iget v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v0, :cond_1

    .line 1688
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1689
    :cond_1
    iput p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->maximumPoolSize:I

    .line 1690
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v0

    if-le v0, p1, :cond_2

    .line 1691
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1692
    :cond_2
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 1528
    if-nez p1, :cond_0

    .line 1529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1530
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->handler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 1531
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 1505
    if-nez p1, :cond_0

    .line 1506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1507
    :cond_0
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 1508
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1404
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1406
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1407
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1408
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers()V

    .line 1409
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1413
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1414
    return-void

    .line 1410
    :catchall_0
    move-exception v1

    .line 1411
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1410
    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1435
    .local v0, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1437
    :try_start_0
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->checkShutdownAccess()V

    .line 1438
    const/high16 v2, 0x20000000

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->advanceRunState(I)V

    .line 1439
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptWorkers()V

    .line 1440
    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->drainQueue()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1442
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1444
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->tryTerminate()V

    .line 1445
    return-object v1

    .line 1441
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v2

    .line 1442
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1441
    throw v2
.end method

.method protected terminated()V
    .locals 0

    .prologue
    .line 2030
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1927
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1928
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1930
    :try_start_0
    iget-wide v4, p0, Ljava/util/concurrent/ThreadPoolExecutor;->completedTaskCount:J

    .line 1931
    .local v4, "ncompleted":J
    const/4 v2, 0x0

    .line 1932
    .local v2, "nactive":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 1933
    .local v3, "nworkers":I
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workers:Ljava/util/HashSet;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ThreadPoolExecutor$Worker;

    .line 1934
    .local v7, "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    iget-wide v10, v7, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->completedTasks:J

    add-long/2addr v4, v10

    .line 1935
    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 1936
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1939
    .end local v7    # "w":Ljava/util/concurrent/ThreadPoolExecutor$Worker;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1941
    iget-object v9, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1943
    .local v0, "c":I
    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateLessThan(II)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v6, "Running"

    .line 1946
    .local v6, "runState":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1947
    const-string/jumbo v10, "["

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1948
    const-string/jumbo v10, ", pool size = "

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1949
    const-string/jumbo v10, ", active threads = "

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1950
    const-string/jumbo v10, ", queued tasks = "

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1950
    iget-object v10, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v10

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1951
    const-string/jumbo v10, ", completed tasks = "

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1952
    const-string/jumbo v10, "]"

    .line 1946
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1938
    .end local v0    # "c":I
    .end local v2    # "nactive":I
    .end local v3    # "nworkers":I
    .end local v4    # "ncompleted":J
    .end local v6    # "runState":Ljava/lang/String;
    .end local v8    # "w$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    .line 1939
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1938
    throw v9

    .line 1944
    .restart local v0    # "c":I
    .restart local v2    # "nactive":I
    .restart local v3    # "nworkers":I
    .restart local v4    # "ncompleted":J
    .restart local v8    # "w$iterator":Ljava/util/Iterator;
    :cond_2
    const/high16 v9, 0x60000000

    invoke-static {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v6, "Terminated"

    .restart local v6    # "runState":Ljava/lang/String;
    goto :goto_1

    .line 1945
    .end local v6    # "runState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "Shutting down"

    .restart local v6    # "runState":Ljava/lang/String;
    goto :goto_1
.end method

.method final tryTerminate()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 711
    :goto_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 712
    .local v0, "c":I
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 713
    invoke-static {v0, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateAtLeast(II)Z

    move-result v2

    .line 712
    if-nez v2, :cond_0

    .line 714
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->runStateOf(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->workQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 712
    if-eqz v2, :cond_1

    .line 715
    :cond_0
    return-void

    .line 716
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->workerCountOf(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 717
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->interruptIdleWorkers(Z)V

    .line 718
    return-void

    .line 721
    :cond_2
    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor;->mainLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 722
    .local v1, "mainLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 724
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    .line 726
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    :try_start_2
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v3, 0x60000000

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 729
    iget-object v2, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 734
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 731
    return-void

    .line 727
    :catchall_0
    move-exception v2

    .line 728
    :try_start_3
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->ctl:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v4, 0x60000000

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->ctlOf(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 729
    iget-object v3, p0, Ljava/util/concurrent/ThreadPoolExecutor;->termination:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 727
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 733
    :catchall_1
    move-exception v2

    .line 734
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 733
    throw v2

    .line 734
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
