.class public Ljava/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinPool$1;,
        Ljava/util/concurrent/ForkJoinPool$AuxState;,
        Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$EmptyTask;,
        Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final AC_MASK:J = -0x1000000000000L

.field private static final AC_SHIFT:I = 0x30

.field private static final AC_UNIT:J = 0x1000000000000L

.field private static final ADD_WORKER:J = 0x800000000000L

.field private static final ASHIFT:I

.field private static final COMMON_MAX_SPARES:I

.field static final COMMON_PARALLELISM:I

.field private static final CTL:J

.field private static final DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field static final EVENMASK:I = 0xfffe

.field static final FIFO_QUEUE:I = -0x80000000

.field private static final IDLE_TIMEOUT_MS:J = 0x7d0L

.field static final IS_OWNED:I = 0x1

.field static final LIFO_QUEUE:I = 0x0

.field static final MAX_CAP:I = 0x7fff

.field static final MODE_MASK:I = -0x10000

.field static final POLL_LIMIT:I = 0x3ff

.field private static final RUNSTATE:J

.field private static final SEED_INCREMENT:I = -0x61c88647

.field private static final SHUTDOWN:I = -0x80000000

.field static final SMASK:I = 0xffff

.field static final SPARE_WORKER:I = 0x20000

.field private static final SP_MASK:J = 0xffffffffL

.field static final SQMASK:I = 0x7e

.field static final SS_SEQ:I = 0x10000

.field private static final STARTED:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field private static final TERMINATED:I = 0x4

.field private static final TIMEOUT_SLOP_MS:J = 0x14L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UC_MASK:J = -0x100000000L

.field static final UNREGISTERED:I = 0x40000

.field static final UNSIGNALLED:I = -0x80000000

.field static final common:Ljava/util/concurrent/ForkJoinPool;

.field public static final defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I


# instance fields
.field auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

.field final config:I

.field volatile ctl:J

.field final factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile runState:I

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3460
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3468
    :try_start_0
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3469
    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    const-string/jumbo v8, "ctl"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3468
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    .line 3470
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3471
    const-class v7, Ljava/util/concurrent/ForkJoinPool;

    const-string/jumbo v8, "runState"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3470
    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    .line 3472
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v6

    sput v6, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    .line 3473
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-class v7, [Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v6, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v5

    .line 3474
    .local v5, "scale":I
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    .line 3475
    new-instance v6, Ljava/lang/Error;

    const-string/jumbo v7, "array index scale not a power of two"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3477
    :catch_0
    move-exception v1

    .line 3478
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 3476
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x1f

    sput v6, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3483
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    .line 3485
    .local v2, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x100

    .line 3488
    .local v0, "commonMaxSpares":I
    :try_start_2
    const-string/jumbo v6, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    .line 3487
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3489
    .local v4, "p":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3490
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 3492
    .end local v4    # "p":Ljava/lang/String;
    :cond_1
    :goto_0
    sput v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    .line 3495
    new-instance v6, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v6, v9}, Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;)V

    .line 3494
    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3496
    new-instance v6, Ljava/lang/RuntimePermission;

    const-string/jumbo v7, "modifyThread"

    invoke-direct {v6, v7}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3499
    new-instance v6, Ljava/util/concurrent/ForkJoinPool$1;

    invoke-direct {v6}, Ljava/util/concurrent/ForkJoinPool$1;-><init>()V

    .line 3498
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/ForkJoinPool;

    sput-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 3503
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    iget v6, v6, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v7, 0xffff

    and-int/2addr v6, v7

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    .line 166
    return-void

    .line 3491
    :catch_1
    move-exception v3

    .local v3, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2617
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2618
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2617
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2619
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "parallelism"    # I

    .prologue
    .line 2636
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2637
    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V
    .locals 8
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "mode"    # I
    .param p5, "workerNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 2693
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2698
    iput-object p5, p0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2699
    iput-object p2, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2700
    iput-object p3, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2701
    const v2, 0xffff

    and-int/2addr v2, p1

    or-int/2addr v2, p4

    iput v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    .line 2702
    neg-int v2, p1

    int-to-long v0, v2

    .line 2703
    .local v0, "np":J
    const/16 v2, 0x30

    shl-long v2, v0, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    const-wide v6, 0xffff00000000L

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2704
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 6
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .prologue
    .line 2667
    invoke-static {p1}, Ljava/util/concurrent/ForkJoinPool;->checkParallelism(I)I

    move-result v1

    .line 2668
    invoke-static {p2}, Ljava/util/concurrent/ForkJoinPool;->checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-result-object v2

    .line 2670
    if-eqz p4, :cond_0

    const/high16 v4, -0x80000000

    .line 2671
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ForkJoinPool-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-worker-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v3, p3

    .line 2667
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    .line 2672
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2673
    return-void

    .line 2670
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I
    .locals 8
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1798
    const/4 v2, 0x0

    .line 1799
    .local v2, "stat":I
    if-eqz p1, :cond_0

    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    .line 1800
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 1801
    .local v0, "c":J
    const/16 v3, 0x30

    shr-long v4, v0, v3

    long-to-int v3, v4

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v4, v5

    add-int/2addr v3, v4

    if-gtz v3, :cond_1

    .line 1802
    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I

    move-result v2

    .line 1816
    .end local v0    # "c":J
    :cond_0
    :goto_0
    return v2

    .line 1803
    .restart local v0    # "c":J
    :cond_1
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 1804
    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v2, -0x1

    goto :goto_0

    .line 1805
    :cond_2
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    .line 1806
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1807
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_3

    .line 1808
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1809
    :cond_3
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1810
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 1811
    iput v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/4 v2, -0x1

    goto :goto_0

    .line 1812
    :cond_4
    iget v3, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v3, :cond_0

    .line 1813
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0
.end method

.method private static checkFactory(Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;)Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1
    .param p0, "factory"    # Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .prologue
    .line 2683
    if-nez p0, :cond_0

    .line 2684
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2685
    :cond_0
    return-object p0
.end method

.method private static checkParallelism(I)I
    .locals 1
    .param p0, "parallelism"    # I

    .prologue
    .line 2676
    if-lez p0, :cond_0

    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    .line 2677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2678
    :cond_1
    return p0
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 688
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 689
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 690
    sget-object v1, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 691
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 2721
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2571
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    .line 2572
    .local v0, "p":Ljava/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v1

    .line 2574
    .local v1, "r":I
    if-eqz v0, :cond_0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2575
    array-length v2, v3

    .local v2, "wl":I
    if-lez v2, :cond_0

    .line 2576
    add-int/lit8 v4, v2, -0x1

    and-int/2addr v4, v1

    and-int/lit8 v4, v4, 0x7e

    aget-object v4, v3, v4

    .line 2574
    .end local v2    # "wl":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    return-object v4
.end method

.method private createWorker(Z)Z
    .locals 7
    .param p1, "isSpare"    # Z

    .prologue
    .line 1541
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 1542
    .local v1, "fac":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v0, 0x0

    .line 1543
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 1546
    .local v4, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava/util/concurrent/ForkJoinPool;)Ljava/util/concurrent/ForkJoinWorkerThread;

    move-result-object v4

    .local v4, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v4, :cond_1

    .line 1547
    if-eqz p1, :cond_0

    iget-object v2, v4, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    .line 1548
    iget v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1549
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    const/4 v5, 0x1

    return v5

    .line 1552
    .end local v4    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v3

    .line 1553
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v0, v3

    .line 1555
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v3    # "rex":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1556
    const/4 v5, 0x0

    return v5
.end method

.method private externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2556
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2557
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2558
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 2559
    check-cast v2, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v2, "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    if-ne v3, p0, :cond_1

    .line 2560
    iget-object v0, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_1

    .line 2561
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    .line 2564
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinWorkerThread;
    :goto_0
    return-object p1

    .line 2563
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_0
.end method

.method private findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2267
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v8

    .line 2268
    .local v8, "r":I
    iget-object v10, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v10, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_3

    array-length v9, v10

    .local v9, "wl":I
    if-lez v9, :cond_3

    .line 2269
    add-int/lit8 v3, v9, -0x1

    .local v3, "m":I
    and-int v6, v8, v3

    .line 2270
    .local v6, "origin":I
    move v2, v6

    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "oldSum":I
    const/4 v1, 0x0

    .line 2272
    .local v1, "checkSum":I
    :cond_0
    :goto_0
    aget-object v7, v10, v2

    .local v7, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_2

    .line 2273
    iget v0, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v11, v7, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v11, v0, v11

    if-gez v11, :cond_1

    .line 2274
    return-object v7

    .line 2275
    :cond_1
    add-int/2addr v1, v0

    .line 2277
    .end local v0    # "b":I
    :cond_2
    add-int/lit8 v11, v2, 0x1

    and-int v2, v11, v3

    if-ne v2, v6, :cond_0

    .line 2278
    move v5, v1

    .end local v4    # "oldSum":I
    .local v5, "oldSum":I
    if-ne v4, v1, :cond_4

    .line 2284
    .end local v1    # "checkSum":I
    .end local v2    # "k":I
    .end local v3    # "m":I
    .end local v5    # "oldSum":I
    .end local v6    # "origin":I
    .end local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "wl":I
    :cond_3
    return-object v12

    .line 2280
    .restart local v1    # "checkSum":I
    .restart local v2    # "k":I
    .restart local v3    # "m":I
    .restart local v5    # "oldSum":I
    .restart local v6    # "origin":I
    .restart local v7    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "wl":I
    :cond_4
    const/4 v1, 0x0

    move v4, v5

    .end local v5    # "oldSum":I
    .restart local v4    # "oldSum":I
    goto :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .prologue
    .line 2890
    sget v0, Ljava/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2386
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .local v5, "t":Ljava/lang/Thread;
    instance-of v8, v5, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v8, :cond_4

    move-object v6, v5

    .line 2387
    check-cast v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v6, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v3, "pool":Ljava/util/concurrent/ForkJoinPool;
    iget v8, v3, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v9, 0xffff

    and-int v2, v8, v9

    .line 2388
    .local v2, "p":I
    iget-object v4, v6, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iget v8, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v9, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int v1, v8, v9

    .line 2389
    .local v1, "n":I
    iget-wide v8, v3, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v10, 0x30

    shr-long/2addr v8, v10

    long-to-int v8, v8

    add-int v0, v8, v2

    .line 2390
    .local v0, "a":I
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    :goto_0
    sub-int v7, v1, v7

    return v7

    .line 2391
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 2392
    :cond_1
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_2

    const/4 v7, 0x2

    goto :goto_0

    .line 2393
    :cond_2
    ushr-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_3

    const/4 v7, 0x4

    goto :goto_0

    .line 2394
    :cond_3
    const/16 v7, 0x8

    goto :goto_0

    .line 2396
    .end local v0    # "a":I
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "pool":Ljava/util/concurrent/ForkJoinPool;
    .end local v4    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    return v7
.end method

.method private helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V
    .locals 32
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2092
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 2093
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v21, v0

    .line 2094
    .local v21, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/16 v19, 0x0

    .line 2095
    .local v19, "oldSum":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_3

    .line 2096
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v26, v0

    .local v26, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v26, :cond_3

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "wl":I
    if-lez v25, :cond_3

    .line 2098
    add-int/lit8 v17, v25, -0x1

    .local v17, "m":I
    const/4 v11, 0x0

    .line 2099
    .local v11, "checkSum":I
    move-object/from16 v15, p1

    .line 2100
    .local v15, "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v22, p2

    .local v22, "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_1
    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 2101
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v12, v2, 0x1

    .local v12, "h":I
    const/16 v16, 0x0

    .line 2102
    .local v16, "k":I
    :cond_1
    shl-int/lit8 v2, v16, 0x1

    add-int/2addr v2, v12

    and-int v13, v2, v17

    .local v13, "i":I
    aget-object v24, v26, v13

    .local v24, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_5

    .line 2103
    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_4

    .line 2104
    iput v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 2115
    :cond_2
    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 2117
    move-object/from16 v0, v24

    iget v9, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v9, "b":I
    add-int/2addr v11, v9

    .line 2118
    move-object/from16 v0, v24

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v18, v0

    .line 2119
    .local v18, "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v6, 0x0

    .line 2120
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, v24

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v3, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    array-length v8, v3

    .local v8, "al":I
    if-lez v8, :cond_7

    .line 2121
    add-int/lit8 v2, v8, -0x1

    and-int v14, v2, v9

    .line 2122
    .local v14, "index":I
    int-to-long v0, v14

    move-wide/from16 v28, v0

    sget v2, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v28, v28, v2

    sget v2, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v0, v2

    move-wide/from16 v30, v0

    add-long v4, v28, v30

    .line 2124
    .local v4, "offset":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 2123
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    check-cast v6, Ljava/util/concurrent/ForkJoinTask;

    .line 2125
    .local v6, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_7

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "b":I
    .local v10, "b":I
    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_6

    .line 2126
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_0

    .line 2127
    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v22

    if-ne v2, v0, :cond_0

    .line 2128
    move-object/from16 v0, v22

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 2130
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2131
    move-object/from16 v0, v24

    iput v10, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2132
    move-object/from16 v0, p1

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2133
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v23, v0

    .line 2134
    .local v23, "top":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2135
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2136
    move-object/from16 v0, p2

    iget v2, v0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v2, :cond_8

    .line 2161
    .end local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v11    # "checkSum":I
    .end local v12    # "h":I
    .end local v13    # "i":I
    .end local v14    # "index":I
    .end local v15    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "k":I
    .end local v17    # "m":I
    .end local v18    # "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v19    # "oldSum":I
    .end local v21    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v22    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v23    # "top":I
    .end local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v25    # "wl":I
    .end local v26    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    :goto_3
    return-void

    .line 2107
    .restart local v11    # "checkSum":I
    .restart local v12    # "h":I
    .restart local v13    # "i":I
    .restart local v15    # "j":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v16    # "k":I
    .restart local v17    # "m":I
    .restart local v19    # "oldSum":I
    .restart local v21    # "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v22    # "subtask":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v25    # "wl":I
    .restart local v26    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    add-int/2addr v11, v2

    .line 2109
    :cond_5
    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    goto :goto_3

    .restart local v3    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    .restart local v18    # "next":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    move v9, v10

    .line 2147
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v14    # "index":I
    .restart local v9    # "b":I
    :cond_7
    :goto_4
    if-nez v6, :cond_2

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v9, v2, :cond_2

    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v9, v2

    if-ltz v2, :cond_2

    .line 2148
    move-object/from16 v22, v18

    if-nez v18, :cond_a

    .line 2149
    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_0

    .line 2150
    move/from16 v20, v11

    .end local v19    # "oldSum":I
    .local v20, "oldSum":I
    move/from16 v0, v19

    if-eq v0, v11, :cond_3

    move/from16 v19, v20

    .line 2151
    .end local v20    # "oldSum":I
    .restart local v19    # "oldSum":I
    goto/16 :goto_0

    .line 2138
    .end local v9    # "b":I
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    .restart local v23    # "top":I
    :cond_8
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_9

    move v9, v10

    .line 2139
    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_4

    .line 2140
    .end local v9    # "b":I
    .restart local v10    # "b":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2142
    move-object/from16 v0, p1

    iput-object v6, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_2

    .line 2154
    .end local v4    # "offset":J
    .end local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v8    # "al":I
    .end local v10    # "b":I
    .end local v14    # "index":I
    .end local v23    # "top":I
    .restart local v9    # "b":I
    :cond_a
    move-object/from16 v15, v24

    .line 2155
    goto/16 :goto_1

    .end local v9    # "b":I
    .restart local v4    # "offset":J
    .restart local v6    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v8    # "al":I
    .restart local v10    # "b":I
    .restart local v14    # "index":I
    :cond_b
    move v9, v10

    .end local v10    # "b":I
    .restart local v9    # "b":I
    goto :goto_4
.end method

.method private inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 11
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ss"    # I

    .prologue
    .line 1777
    const/high16 v0, 0x10000

    add-int/2addr v0, p2

    const/high16 v1, -0x80000000

    or-int v10, v0, v1

    .line 1778
    .local v10, "ns":I
    int-to-long v0, v10

    const-wide v2, 0xffffffffL

    and-long v8, v0, v2

    .line 1779
    .local v8, "lc":J
    if-eqz p1, :cond_1

    .line 1780
    iput v10, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1782
    :cond_0
    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, v4, v0

    const-wide v2, -0x100000000L

    and-long/2addr v0, v2

    or-long v6, v8, v0

    .line 1783
    .local v6, "nc":J
    long-to-int v0, v4

    iput v0, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1784
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1786
    .end local v4    # "c":J
    .end local v6    # "nc":J
    :cond_1
    return-void
.end method

.method static makeCommonPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 3511
    const/4 v2, -0x1

    .line 3512
    .local v2, "parallelism":I
    const/4 v3, 0x0

    .line 3513
    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v4, 0x0

    .line 3516
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 3515
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3518
    .local v10, "pp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    .line 3517
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3520
    .local v7, "fp":Ljava/lang/String;
    const-string/jumbo v1, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    .line 3519
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3521
    .local v8, "hp":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 3522
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3523
    :cond_0
    if-eqz v7, :cond_1

    .line 3524
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v3, v0

    .line 3526
    .end local v3    # "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :cond_1
    if-eqz v8, :cond_2

    .line 3527
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v7    # "fp":Ljava/lang/String;
    .end local v8    # "hp":Ljava/lang/String;
    .end local v10    # "pp":Ljava/lang/String;
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 3532
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-nez v1, :cond_6

    .line 3533
    sget-object v3, Ljava/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3537
    :cond_3
    :goto_1
    if-gez v2, :cond_4

    .line 3538
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-gtz v2, :cond_4

    .line 3539
    const/4 v2, 0x1

    .line 3540
    :cond_4
    const/16 v1, 0x7fff

    if-le v2, v1, :cond_5

    .line 3541
    const/16 v2, 0x7fff

    .line 3542
    :cond_5
    new-instance v1, Ljava/util/concurrent/ForkJoinPool;

    .line 3543
    const-string/jumbo v6, "ForkJoinPool.commonPool-worker-"

    .line 3542
    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ForkJoinPool;-><init>(ILjava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ILjava/lang/String;)V

    return-object v1

    .line 3535
    :cond_6
    new-instance v3, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    invoke-direct {v3, v6}, Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>(Ljava/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;)V

    .local v3, "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    goto :goto_1

    .line 3529
    .end local v3    # "factory":Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catch_0
    move-exception v9

    .local v9, "ignore":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 10
    .param p0, "blocker"    # Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x1000000000000L

    .line 3425
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 3426
    .local v6, "t":Ljava/lang/Thread;
    instance-of v0, v6, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_4

    move-object v8, v6

    .line 3427
    check-cast v8, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v8, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .local v1, "p":Ljava/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_4

    .line 3428
    iget-object v7, v8, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 3429
    .local v7, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3430
    invoke-direct {v1, v7}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3432
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3433
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3432
    if-nez v0, :cond_1

    .line 3435
    :cond_2
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 3445
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_3
    return-void

    .line 3434
    .restart local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .restart local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 3435
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 3434
    throw v9

    .line 3442
    .end local v1    # "p":Ljava/util/concurrent/ForkJoinPool;
    .end local v7    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v8    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_4
    :goto_0
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3443
    invoke-interface {p0}, Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3442
    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    .prologue
    const-class v1, Ljava/util/concurrent/ForkJoinPool;

    monitor-enter v1

    .line 1410
    :try_start_0
    sget v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ljava/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    .prologue
    .line 3318
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3319
    return-void
.end method

.method private scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I
    .locals 28
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "bound"    # I
    .param p3, "step"    # I
    .param p4, "r"    # I

    .prologue
    .line 1962
    const/16 v20, 0x0

    .line 1963
    .local v20, "stat":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    .local v21, "wl":I
    if-lez v21, :cond_1

    .line 1964
    add-int/lit8 v15, v21, -0x1

    .line 1965
    .local v15, "m":I
    and-int v17, v15, p4

    .local v17, "origin":I
    move/from16 v13, v17

    .line 1966
    .local v13, "idx":I
    const/16 v16, 0x0

    .line 1967
    .local v16, "npolls":I
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move/from16 v19, v0

    .line 1969
    .local v19, "ss":I
    :cond_0
    :goto_0
    aget-object v18, v22, v13

    .local v18, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v11, "b":I
    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v4, v11, v4

    if-gez v4, :cond_5

    .line 1970
    move-object/from16 v0, v18

    iget-object v5, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    .local v5, "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_5

    array-length v10, v5

    .local v10, "al":I
    if-lez v10, :cond_5

    .line 1971
    add-int/lit8 v4, v10, -0x1

    and-int v14, v4, v11

    .line 1972
    .local v14, "index":I
    int-to-long v0, v14

    move-wide/from16 v24, v0

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v24, v24, v4

    sget v4, Ljava/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v0, v4

    move-wide/from16 v26, v0

    add-long v6, v24, v26

    .line 1974
    .local v6, "offset":J
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1973
    check-cast v8, Ljava/util/concurrent/ForkJoinTask;

    .line 1975
    .local v8, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v8, :cond_2

    .line 2011
    .end local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "al":I
    .end local v11    # "b":I
    .end local v13    # "idx":I
    .end local v14    # "index":I
    .end local v15    # "m":I
    .end local v16    # "npolls":I
    .end local v17    # "origin":I
    .end local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "ss":I
    .end local v21    # "wl":I
    :cond_1
    :goto_1
    return v20

    .line 1977
    .restart local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v6    # "offset":J
    .restart local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .restart local v10    # "al":I
    .restart local v11    # "b":I
    .restart local v13    # "idx":I
    .restart local v14    # "index":I
    .restart local v15    # "m":I
    .restart local v16    # "npolls":I
    .restart local v17    # "origin":I
    .restart local v18    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "ss":I
    .restart local v21    # "wl":I
    :cond_2
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "b":I
    .local v12, "b":I
    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v11, v4, :cond_1

    .line 1979
    if-gez v19, :cond_3

    .line 1980
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    goto :goto_1

    .line 1983
    :cond_3
    sget-object v4, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1986
    move-object/from16 v0, v18

    iput v12, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1987
    move-object/from16 v0, p1

    iput-object v8, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1988
    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v12, v4, :cond_4

    .line 1989
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1990
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->runTask(Ljava/util/concurrent/ForkJoinTask;)V

    .line 1991
    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 1995
    .end local v5    # "a":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "offset":J
    .end local v8    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .end local v10    # "al":I
    .end local v12    # "b":I
    .end local v14    # "index":I
    :cond_5
    if-nez v16, :cond_1

    .line 1997
    add-int v4, v13, p3

    and-int v13, v4, v15

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 1998
    if-gez v19, :cond_6

    .line 1999
    move/from16 v20, v19

    .line 2000
    goto :goto_1

    .line 2002
    :cond_6
    if-ltz p4, :cond_7

    .line 2003
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;->inactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V

    goto :goto_1

    .line 2007
    :cond_7
    shl-int/lit8 p4, p4, 0x1

    goto/16 :goto_0
.end method

.method private timedAwaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;J)I
    .locals 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "c"    # J

    .prologue
    .line 1830
    const/16 v17, 0x0

    .line 1831
    .local v17, "stat":I
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    rsub-int/lit8 v15, v2, 0x1

    .line 1832
    .local v15, "scale":I
    if-gtz v15, :cond_0

    const/4 v15, 0x1

    .end local v15    # "scale":I
    :cond_0
    int-to-long v2, v15

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    .line 1833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1832
    add-long v12, v2, v4

    .line 1834
    .local v12, "deadline":J
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v17

    if-lez v17, :cond_3

    .line 1835
    :cond_1
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_3

    .line 1837
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1838
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_2

    .line 1839
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1840
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 1841
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 1842
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    const/16 v17, -0x1

    .line 1865
    :cond_3
    :goto_0
    return v17

    .line 1843
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    move/from16 v16, v0

    .local v16, "ss":I
    if-gez v16, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1844
    move-wide/from16 v0, p2

    long-to-int v2, v0

    move/from16 v0, v16

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .local v10, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_3

    .line 1845
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 1846
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1849
    :try_start_0
    move-object/from16 v0, p1

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .local v11, "cfg":I
    const v2, 0xffff

    and-int v14, v11, v2

    .line 1850
    .local v14, "idx":I
    const-wide v2, 0x100000000L

    sub-long v2, p2, v2

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    .line 1851
    move-object/from16 v0, p1

    iget v4, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 1850
    or-long v8, v2, v4

    .line 1852
    .local v8, "nc":J
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_5

    .line 1854
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v14, v2, :cond_5

    if-ltz v14, :cond_5

    aget-object v2, v18, v14

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_5

    .line 1855
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    .line 1852
    if-eqz v2, :cond_5

    .line 1856
    const/4 v2, 0x0

    aput-object v2, v18, v14

    .line 1857
    const/high16 v2, 0x40000

    or-int/2addr v2, v11

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1858
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v17, -0x1

    .line 1861
    .end local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    goto/16 :goto_0

    .line 1860
    .end local v8    # "nc":J
    .end local v11    # "cfg":I
    .end local v14    # "idx":I
    :catchall_0
    move-exception v2

    .line 1861
    invoke-virtual {v10}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1860
    throw v2
.end method

.method private tryAddWorker(J)V
    .locals 9
    .param p1, "c"    # J

    .prologue
    const/4 v8, 0x0

    .line 1569
    :goto_0
    const-wide/high16 v0, 0x1000000000000L

    add-long/2addr v0, p1

    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v0, v2

    .line 1570
    const-wide v2, 0x100000000L

    add-long/2addr v2, p1

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    .line 1569
    or-long v6, v0, v2

    .line 1571
    .local v6, "nc":J
    iget-wide v0, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1572
    invoke-direct {p0, v8}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    .line 1576
    :cond_0
    return-void

    .line 1575
    :cond_1
    iget-wide p1, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const-wide v0, 0x800000000000L

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    long-to-int v0, p1

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 27
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 2173
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2174
    .local v3, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v26, v0

    .line 2175
    .local v26, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int v21, v2, v5

    .line 2176
    .local v21, "pc":I
    const/16 v2, 0x30

    shr-long v6, v3, v2

    long-to-int v2, v6

    add-int v14, v21, v2

    .line 2177
    .local v14, "ac":I
    const/16 v2, 0x20

    shr-long v6, v3, v2

    long-to-int v2, v6

    int-to-short v2, v2

    add-int v23, v21, v2

    .line 2178
    .local v23, "tc":I
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v2, :cond_1

    .line 2180
    :cond_0
    const/16 v16, 0x0

    .line 2212
    :goto_0
    return v16

    .line 2178
    :cond_1
    if-eqz v21, :cond_0

    .line 2179
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "wl":I
    if-lez v25, :cond_0

    .line 2182
    add-int/lit8 v20, v25, -0x1

    .line 2183
    .local v20, "m":I
    const/4 v15, 0x1

    .line 2184
    .local v15, "busy":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 2186
    shl-int/lit8 v2, v17, 0x1

    or-int/lit8 v19, v2, 0x1

    .local v19, "k":I
    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    if-ltz v19, :cond_4

    aget-object v24, v26, v19

    .local v24, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v24, :cond_4

    .line 2187
    move-object/from16 v0, v24

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v2, :cond_4

    move-object/from16 v0, v24

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_4

    .line 2188
    const/4 v15, 0x0

    .line 2192
    .end local v19    # "k":I
    .end local v24    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_5

    .line 2193
    :cond_3
    const/16 v16, 0x0

    .local v16, "canBlock":Z
    goto :goto_0

    .line 2184
    .end local v16    # "canBlock":Z
    .restart local v19    # "k":I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2194
    .end local v19    # "k":I
    :cond_5
    long-to-int v0, v3

    move/from16 v22, v0

    .local v22, "sp":I
    if-eqz v22, :cond_6

    .line 2195
    and-int v2, v20, v22

    aget-object v5, v26, v2

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v16

    .local v16, "canBlock":Z
    goto :goto_0

    .line 2196
    .end local v16    # "canBlock":Z
    :cond_6
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    const/4 v2, 0x1

    if-le v14, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2197
    const-wide/high16 v6, 0x1000000000000L

    sub-long v6, v3, v6

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v6, v8

    .line 2198
    const-wide v8, 0xffffffffffffL

    and-long/2addr v8, v3

    .line 2197
    or-long v12, v6, v8

    .line 2199
    .local v12, "nc":J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v7, p0

    move-wide v10, v3

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v16

    .restart local v16    # "canBlock":Z
    goto :goto_0

    .line 2201
    .end local v12    # "nc":J
    .end local v16    # "canBlock":Z
    :cond_7
    const/16 v2, 0x7fff

    move/from16 v0, v23

    if-ge v0, v2, :cond_8

    .line 2202
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_9

    sget v2, Ljava/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    add-int v2, v2, v21

    move/from16 v0, v23

    if-lt v0, v2, :cond_9

    .line 2203
    :cond_8
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    .line 2204
    const-string/jumbo v5, "Thread limit exceeded replacing blocked worker"

    .line 2203
    invoke-direct {v2, v5}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2206
    :cond_9
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    const/16 v18, 0x1

    .line 2207
    .local v18, "isSpare":Z
    :goto_2
    const-wide/high16 v6, -0x1000000000000L

    and-long/2addr v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v8, v3

    const-wide v10, 0xffff00000000L

    and-long/2addr v8, v10

    or-long v12, v6, v8

    .line 2208
    .restart local v12    # "nc":J
    sget-object v6, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v7, p0

    move-wide v10, v3

    invoke-virtual/range {v6 .. v13}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2209
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->createWorker(Z)Z

    move-result v16

    .restart local v16    # "canBlock":Z
    goto/16 :goto_0

    .line 2206
    .end local v12    # "nc":J
    .end local v16    # "canBlock":Z
    .end local v18    # "isSpare":Z
    :cond_a
    const/16 v18, 0x0

    .restart local v18    # "isSpare":Z
    goto :goto_2

    .line 2208
    .restart local v12    # "nc":J
    :cond_b
    const/16 v16, 0x0

    .local v16, "canBlock":Z
    goto/16 :goto_0
.end method

.method private tryCreateExternalQueue(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2490
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 2491
    new-instance v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v2, p0, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    .line 2492
    .local v2, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    iput p1, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2493
    const v4, 0x7fffffff

    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 2494
    const/4 v4, 0x1

    iput v4, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2495
    const/4 v1, 0x0

    .line 2496
    .local v1, "installed":Z
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 2499
    :try_start_0
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge p1, v4, :cond_0

    .line 2500
    aget-object v4, v3, p1

    if-nez v4, :cond_0

    .line 2501
    aput-object v2, v3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2502
    const/4 v1, 0x1

    .line 2505
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 2507
    if-eqz v1, :cond_1

    .line 2509
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2511
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2515
    .end local v1    # "installed":Z
    .end local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-void

    .line 2504
    .restart local v1    # "installed":Z
    .restart local v2    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    .line 2505
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 2504
    throw v4

    .line 2510
    .restart local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_1
    move-exception v4

    .line 2511
    iput v5, v2, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2510
    throw v4
.end method

.method private tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z
    .locals 20
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1877
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1879
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const/16 v2, 0x20

    shr-long v2, v6, v2

    long-to-int v2, v2

    int-to-short v2, v2

    if-lez v2, :cond_9

    .line 1880
    long-to-int v14, v6

    .local v14, "sp":I
    if-nez v14, :cond_1

    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    if-lez v2, :cond_9

    .line 1881
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "wl":I
    if-lez v16, :cond_9

    .line 1883
    if-nez v14, :cond_3

    .line 1884
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    .line 1885
    const-wide v4, 0x100000000L

    sub-long v4, v6, v4

    const-wide v18, 0xffff00000000L

    and-long v4, v4, v18

    .line 1884
    or-long/2addr v2, v4

    .line 1885
    const-wide v4, 0xffffffffL

    and-long/2addr v4, v6

    .line 1884
    or-long v8, v2, v4

    .line 1886
    .local v8, "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v12

    .line 1911
    .end local v8    # "nc":J
    :goto_0
    if-eqz v12, :cond_0

    .line 1912
    move-object/from16 v0, p1

    iget v11, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .local v11, "cfg":I
    const v2, 0xffff

    and-int v13, v11, v2

    .line 1913
    .local v13, "idx":I
    if-ltz v13, :cond_2

    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v13, v2, :cond_2

    aget-object v2, v17, v13

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 1914
    const/4 v2, 0x0

    aput-object v2, v17, v13

    .line 1915
    :cond_2
    const/high16 v2, 0x40000

    or-int/2addr v2, v11

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1916
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1917
    const/4 v2, 0x1

    return v2

    .line 1889
    .end local v11    # "cfg":I
    .end local v13    # "idx":I
    :cond_3
    add-int/lit8 v2, v16, -0x1

    and-int/2addr v2, v14

    aget-object v15, v17, v2

    .local v15, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_4

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-eq v2, v14, :cond_5

    .line 1890
    :cond_4
    const/4 v12, 0x0

    .local v12, "dropped":Z
    goto :goto_0

    .line 1892
    .end local v12    # "dropped":Z
    :cond_5
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v8, v2, v4

    .line 1893
    .restart local v8    # "nc":J
    move-object/from16 v0, p1

    if-eq v0, v15, :cond_6

    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ltz v2, :cond_7

    .line 1894
    :cond_6
    const/4 v10, 0x1

    .line 1895
    .local v10, "canDrop":Z
    const-wide/high16 v2, -0x1000000000000L

    and-long/2addr v2, v6

    .line 1896
    const-wide v4, 0x100000000L

    sub-long v4, v6, v4

    const-wide v18, 0xffff00000000L

    and-long v4, v4, v18

    .line 1895
    or-long/2addr v2, v4

    or-long/2addr v8, v2

    .line 1903
    :goto_1
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1904
    const v2, 0x7fffffff

    and-int/2addr v2, v14

    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1905
    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1906
    move v12, v10

    .local v12, "dropped":Z
    goto :goto_0

    .line 1899
    .end local v10    # "canDrop":Z
    .end local v12    # "dropped":Z
    :cond_7
    const/4 v10, 0x0

    .line 1900
    .restart local v10    # "canDrop":Z
    const-wide/high16 v2, 0x1000000000000L

    add-long/2addr v2, v6

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    .line 1901
    const-wide v4, 0xffff00000000L

    and-long/2addr v4, v6

    .line 1900
    or-long/2addr v2, v4

    or-long/2addr v8, v2

    goto :goto_1

    .line 1909
    :cond_8
    const/4 v12, 0x0

    .local v12, "dropped":Z
    goto/16 :goto_0

    .line 1921
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "canDrop":Z
    .end local v12    # "dropped":Z
    .end local v14    # "sp":I
    .end local v15    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "wl":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    const/4 v2, 0x0

    return v2
.end method

.method private tryInitialize(Z)V
    .locals 8
    .param p1, "checkTermination"    # Z

    .prologue
    const v7, 0xffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1505
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v4, :cond_1

    .line 1506
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    and-int v2, v4, v7

    .line 1507
    .local v2, "p":I
    if-le v2, v5, :cond_2

    add-int/lit8 v1, v2, -0x1

    .line 1508
    .local v1, "n":I
    :goto_0
    ushr-int/lit8 v4, v1, 0x1

    or-int/2addr v1, v4

    .line 1509
    ushr-int/lit8 v4, v1, 0x2

    or-int/2addr v1, v4

    .line 1510
    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v1, v4

    .line 1511
    ushr-int/lit8 v4, v1, 0x8

    or-int/2addr v1, v4

    .line 1512
    ushr-int/lit8 v4, v1, 0x10

    or-int/2addr v1, v4

    .line 1513
    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    and-int v1, v4, v7

    .line 1514
    new-instance v0, Ljava/util/concurrent/ForkJoinPool$AuxState;

    invoke-direct {v0}, Ljava/util/concurrent/ForkJoinPool$AuxState;-><init>()V

    .line 1515
    .local v0, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    new-array v3, v1, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1516
    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    sget-object v5, Ljava/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    monitor-enter v5

    .line 1517
    :try_start_0
    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-nez v4, :cond_0

    .line 1518
    iput-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1519
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .line 1520
    const/4 v4, 0x1

    iput v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    .line 1524
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    if-eqz p1, :cond_3

    iget v4, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    if-gez v4, :cond_3

    .line 1525
    invoke-direct {p0, v6, v6}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 1526
    new-instance v4, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v4}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v4

    .line 1507
    .restart local v2    # "p":I
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "n":I
    goto :goto_0

    .line 1516
    .restart local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1528
    .end local v0    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v1    # "n":I
    .end local v2    # "p":I
    .end local v3    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    return-void
.end method

.method private tryReactivate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;[Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)V
    .locals 16
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p2, "ws"    # [Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "r"    # I

    .prologue
    .line 1755
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    long-to-int v11, v6

    .local v11, "sp":I
    if-eqz v11, :cond_0

    if-eqz p1, :cond_0

    .line 1756
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v13, v0

    .local v13, "wl":I
    if-lez v13, :cond_0

    .line 1757
    xor-int v2, v11, p3

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 1758
    add-int/lit8 v2, v13, -0x1

    and-int/2addr v2, v11

    aget-object v12, p2, v2

    .local v12, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_0

    .line 1759
    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v6

    const-wide v14, -0x100000000L

    and-long/2addr v4, v14

    or-long v8, v2, v4

    .line 1760
    .local v8, "nc":J
    const v2, 0x7fffffff

    and-int v10, v11, v2

    .line 1761
    .local v10, "ns":I
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-gez v2, :cond_0

    .line 1762
    iget v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    if-ne v2, v11, :cond_0

    .line 1763
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    .line 1761
    if-eqz v2, :cond_0

    .line 1764
    iput v10, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1765
    iget-object v2, v12, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1768
    .end local v8    # "nc":J
    .end local v10    # "ns":I
    .end local v12    # "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "wl":I
    :cond_0
    return-void
.end method

.method private tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z
    .locals 11
    .param p1, "c"    # J
    .param p3, "v"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p4, "inc"    # J

    .prologue
    .line 1731
    long-to-int v9, p1

    .local v9, "sp":I
    const v0, 0x7fffffff

    and-int v8, v9, v0

    .line 1732
    .local v8, "ns":I
    if-eqz p3, :cond_0

    .line 1733
    iget v10, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1734
    .local v10, "vs":I
    iget v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long v2, p1, p4

    const-wide v4, -0x100000000L

    and-long/2addr v2, v4

    or-long v6, v0, v2

    .line 1735
    .local v6, "nc":J
    if-ne v9, v10, :cond_0

    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    iput v8, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1737
    iget-object v0, p3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1738
    const/4 v0, 0x1

    return v0

    .line 1741
    .end local v6    # "nc":J
    .end local v10    # "vs":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryTerminate(ZZ)I
    .locals 20
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2412
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .local v6, "rs":I
    if-ltz v6, :cond_3

    .line 2413
    if-eqz p2, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_1

    .line 2414
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 2415
    :cond_1
    if-nez v6, :cond_2

    .line 2416
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    goto :goto_0

    .line 2418
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    const/high16 v3, -0x80000000

    or-int v7, v6, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    .line 2421
    :cond_3
    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_9

    .line 2422
    if-nez p1, :cond_8

    .line 2423
    const-wide/16 v14, 0x0

    .line 2425
    .local v14, "oldSum":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2426
    .local v10, "checkSum":J
    const/16 v2, 0x30

    shr-long v2, v10, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 2427
    const/4 v2, 0x0

    return v2

    .line 2428
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_7

    .line 2429
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v9, v2, :cond_7

    .line 2430
    aget-object v13, v18, v9

    .local v13, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_6

    .line 2431
    iget v8, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v8, "b":I
    int-to-long v2, v8

    add-long/2addr v10, v2

    .line 2432
    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_5

    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-eq v8, v2, :cond_6

    .line 2433
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 2429
    .end local v8    # "b":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2437
    .end local v9    # "i":I
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move-wide/from16 v16, v10

    .end local v14    # "oldSum":J
    .local v16, "oldSum":J
    cmp-long v2, v14, v10

    if-nez v2, :cond_b

    .line 2441
    .end local v10    # "checkSum":J
    .end local v16    # "oldSum":J
    .end local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->RUNSTATE:J

    .line 2442
    move-object/from16 v0, p0

    iget v6, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    or-int/lit8 v7, v6, 0x2

    move-object/from16 v3, p0

    .line 2441
    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2445
    :cond_9
    const-wide/16 v14, 0x0

    .line 2447
    .restart local v14    # "oldSum":J
    :goto_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 2448
    .restart local v10    # "checkSum":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .restart local v18    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_c

    .line 2449
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    move-object/from16 v0, v18

    array-length v2, v0

    if-ge v9, v2, :cond_c

    .line 2450
    aget-object v13, v18, v9

    .restart local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_a

    .line 2451
    invoke-virtual {v13}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2452
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v2, v2

    add-long/2addr v10, v2

    .line 2453
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    if-ltz v2, :cond_a

    .line 2454
    const/4 v2, -0x1

    iput v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 2455
    iget-object v0, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object/from16 v19, v0

    .local v19, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    if-eqz v19, :cond_a

    .line 2457
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    .end local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v9    # "i":I
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    :cond_b
    move-wide/from16 v14, v16

    .end local v16    # "oldSum":J
    .restart local v14    # "oldSum":J
    goto/16 :goto_1

    .line 2458
    .restart local v9    # "i":I
    .restart local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :catch_0
    move-exception v12

    .local v12, "ignore":Ljava/lang/Throwable;
    goto :goto_5

    .line 2465
    .end local v9    # "i":I
    .end local v12    # "ignore":Ljava/lang/Throwable;
    .end local v13    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_c
    move-wide/from16 v16, v10

    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    cmp-long v2, v14, v10

    if-nez v2, :cond_e

    .line 2469
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-gtz v2, :cond_d

    .line 2470
    const v2, -0x7ffffff9

    move-object/from16 v0, p0

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 2471
    monitor-enter p0

    .line 2472
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2476
    :cond_d
    const/4 v2, -0x1

    return v2

    :cond_e
    move-wide/from16 v14, v16

    .end local v16    # "oldSum":J
    .restart local v14    # "oldSum":J
    goto :goto_3

    .line 2471
    .end local v14    # "oldSum":J
    .restart local v16    # "oldSum":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method final awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I
    .locals 13
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;J)I"
        }
    .end annotation

    .prologue
    .line 2224
    .local p2, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v12, 0x0

    .line 2225
    .local v12, "s":I
    if-eqz p1, :cond_2

    .line 2226
    iget-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2227
    .local v7, "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p2, :cond_2

    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v12, :cond_2

    .line 2228
    iput-object p2, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2229
    instance-of v0, p2, Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_3

    move-object v6, p2

    .line 2230
    check-cast v6, Ljava/util/concurrent/CountedCompleter;

    .line 2232
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 2233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    .line 2236
    :goto_1
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v12, :cond_5

    .line 2252
    :cond_1
    :goto_2
    iput-object v7, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentJoin:Ljava/util/concurrent/ForkJoinTask;

    .line 2255
    .end local v7    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    return v12

    .line 2230
    .restart local v7    # "prevJoin":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    const/4 v6, 0x0

    .local v6, "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    goto :goto_0

    .line 2235
    .end local v6    # "cc":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpStealer(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_1

    .line 2239
    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_8

    .line 2240
    const-wide/16 v8, 0x0

    .line 2245
    .local v8, "ms":J
    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryCompensate(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2246
    invoke-virtual {p2, v8, v9}, Ljava/util/concurrent/ForkJoinTask;->internalWait(J)V

    .line 2247
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v4, 0x1000000000000L

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 2249
    :cond_7
    iget v12, p2, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v12, :cond_0

    goto :goto_2

    .line 2241
    .end local v8    # "ms":J
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v10, p3, v0

    .local v10, "ns":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 2243
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .restart local v8    # "ms":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_6

    .line 2244
    const-wide/16 v8, 0x1

    goto :goto_3
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 3279
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 3281
    .local v10, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    .line 3282
    .local v17, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v20, v17

    .line 3283
    check-cast v20, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v20, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 3284
    move-object/from16 v0, v20

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 3285
    const/16 v21, 0x1

    return v21

    .line 3287
    .end local v20    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 3289
    .local v14, "startTime":J
    const/4 v12, 0x0

    .line 3290
    .local v12, "r":I
    const/4 v5, 0x1

    .line 3291
    .local v5, "found":Z
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    .local v19, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_5

    .line 3292
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .local v18, "wl":I
    if-lez v18, :cond_5

    .line 3293
    if-nez v5, :cond_3

    .line 3294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    sub-long v22, v22, v14

    cmp-long v21, v22, v10

    if-lez v21, :cond_2

    .line 3295
    const/16 v21, 0x0

    return v21

    .line 3296
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3298
    :cond_3
    const/4 v5, 0x0

    .line 3299
    add-int/lit8 v8, v18, -0x1

    .local v8, "m":I
    add-int/lit8 v21, v8, 0x1

    shl-int/lit8 v6, v21, 0x2

    .local v6, "j":I
    move v13, v12

    .end local v12    # "r":I
    .local v13, "r":I
    :goto_1
    if-ltz v6, :cond_6

    .line 3301
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "r":I
    .restart local v12    # "r":I
    and-int v7, v13, v8

    .local v7, "k":I
    if-gt v7, v8, :cond_4

    if-ltz v7, :cond_4

    aget-object v9, v19, v7

    .local v9, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v9, :cond_4

    .line 3302
    iget v4, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v4, "b":I
    iget v0, v9, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    if-gez v21, :cond_4

    .line 3303
    const/4 v5, 0x1

    .line 3304
    invoke-virtual {v9, v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v16

    .local v16, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v16, :cond_1

    .line 3305
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 3299
    .end local v4    # "b":I
    .end local v9    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_4
    add-int/lit8 v6, v6, -0x1

    move v13, v12

    .end local v12    # "r":I
    .restart local v13    # "r":I
    goto :goto_1

    .line 3310
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "m":I
    .end local v13    # "r":I
    .end local v18    # "wl":I
    .end local v19    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v12    # "r":I
    :cond_5
    const/16 v21, 0x1

    return v21

    .end local v12    # "r":I
    .restart local v6    # "j":I
    .restart local v8    # "m":I
    .restart local v13    # "r":I
    .restart local v18    # "wl":I
    .restart local v19    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move v12, v13

    .end local v13    # "r":I
    .restart local v12    # "r":I
    goto :goto_0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const/4 v12, 0x0

    .line 3242
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3243
    new-instance v10, Ljava/lang/InterruptedException;

    invoke-direct {v10}, Ljava/lang/InterruptedException;-><init>()V

    throw v10

    .line 3244
    :cond_0
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v10, :cond_1

    .line 3245
    invoke-virtual/range {p0 .. p3}, Ljava/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3246
    return v12

    .line 3248
    :cond_1
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 3249
    .local v8, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3250
    return v13

    .line 3251
    :cond_2
    cmp-long v10, v8, v14

    if-gtz v10, :cond_3

    .line 3252
    return v12

    .line 3253
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v4, v10, v8

    .line 3254
    .local v4, "deadline":J
    monitor-enter p0

    .line 3256
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->isTerminated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    monitor-exit p0

    .line 3257
    return v13

    .line 3258
    :cond_4
    cmp-long v10, v8, v14

    if-gtz v10, :cond_5

    monitor-exit p0

    .line 3259
    return v12

    .line 3260
    :cond_5
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 3261
    .local v6, "millis":J
    cmp-long v10, v6, v14

    if-lez v10, :cond_6

    .end local v6    # "millis":J
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->wait(J)V

    .line 3262
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-long v8, v4, v10

    goto :goto_0

    .line 3261
    .restart local v6    # "millis":J
    :cond_6
    const-wide/16 v6, 0x1

    goto :goto_1

    .line 3254
    .end local v6    # "millis":J
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method final deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 22
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1635
    const/4 v15, 0x0

    .line 1636
    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v15, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    .line 1638
    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const v3, 0xffff

    and-int v12, v2, v3

    .line 1639
    .local v12, "idx":I
    iget v13, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1640
    .local v13, "ns":I
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .local v11, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v11, :cond_1

    .line 1641
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1643
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v2, v0

    if-le v2, v12, :cond_0

    .line 1644
    aget-object v2, v17, v12

    if-ne v2, v15, :cond_0

    .line 1645
    const/4 v2, 0x0

    aput-object v2, v17, v12

    .line 1646
    :cond_0
    iget-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    iput-wide v2, v11, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1652
    .end local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v12    # "idx":I
    .end local v13    # "ns":I
    .end local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    if-eqz v15, :cond_2

    iget v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 1654
    :cond_2
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1655
    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide/high16 v8, 0x1000000000000L

    sub-long v8, v6, v8

    const-wide/high16 v18, -0x1000000000000L

    and-long v8, v8, v18

    .line 1656
    const-wide v18, 0x100000000L

    sub-long v18, v6, v18

    const-wide v20, 0xffff00000000L

    and-long v18, v18, v20

    .line 1655
    or-long v8, v8, v18

    .line 1657
    const-wide v18, 0xffffffffL

    and-long v18, v18, v6

    .line 1655
    or-long v8, v8, v18

    move-object/from16 v3, p0

    .line 1654
    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1659
    .end local v6    # "c":J
    :cond_3
    if-eqz v15, :cond_4

    .line 1660
    const/4 v2, 0x0

    iput-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 1661
    const/4 v2, -0x1

    iput v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->qlock:I

    .line 1662
    invoke-virtual {v15}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1664
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    move-result v2

    if-ltz v2, :cond_5

    .line 1666
    if-eqz v15, :cond_5

    iget-object v2, v15, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-nez v2, :cond_6

    .line 1680
    :cond_5
    :goto_0
    if-nez p2, :cond_8

    .line 1681
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 1684
    :goto_1
    return-void

    .line 1647
    .restart local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .restart local v12    # "idx":I
    .restart local v13    # "ns":I
    .restart local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v2

    .line 1648
    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1647
    throw v2

    .line 1667
    .end local v11    # "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    .end local v12    # "idx":I
    .end local v13    # "ns":I
    .end local v15    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .restart local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "wl":I
    if-lez v16, :cond_5

    .line 1669
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    long-to-int v14, v6

    .local v14, "sp":I
    if-eqz v14, :cond_7

    .line 1670
    add-int/lit8 v2, v16, -0x1

    and-int/2addr v2, v14

    aget-object v8, v17, v2

    const-wide/high16 v9, 0x1000000000000L

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Ljava/util/concurrent/ForkJoinPool;->tryRelease(JLjava/util/concurrent/ForkJoinPool$WorkQueue;J)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 1673
    :cond_7
    if-eqz p2, :cond_5

    const-wide v2, 0x800000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 1674
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_0

    .line 1683
    .end local v6    # "c":J
    .end local v14    # "sp":I
    .end local v16    # "wl":I
    .end local v17    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 3081
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 3083
    .local v0, "count":I
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 3084
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 3085
    aget-object v3, v4, v1

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 3086
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    .local v2, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_0

    .line 3087
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3088
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3084
    .end local v2    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3093
    .end local v1    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2770
    if-nez p1, :cond_0

    .line 2771
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2773
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2774
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2777
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2778
    return-void

    .line 2776
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2759
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2760
    return-void
.end method

.method final externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I
    .locals 4
    .param p2, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v3, 0x0

    .line 2596
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 2597
    .local v0, "r":I
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    array-length v1, v2

    .local v1, "wl":I
    if-lez v1, :cond_0

    .line 2598
    add-int/lit8 v3, v1, -0x1

    and-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x7e

    aget-object v3, v2, v3

    invoke-virtual {p0, v3, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    move-result v3

    .line 2597
    .end local v1    # "wl":I
    :cond_0
    return v3
.end method

.method final externalPush(Ljava/util/concurrent/ForkJoinTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2528
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    .local v2, "r":I
    if-nez v2, :cond_0

    .line 2529
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 2530
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v2

    .line 2534
    :cond_0
    :goto_0
    iget v3, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 2535
    .local v3, "rs":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2536
    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-lez v3, :cond_1

    if-nez v6, :cond_2

    .line 2537
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Ljava/util/concurrent/ForkJoinPool;->tryInitialize(Z)V

    goto :goto_0

    .line 2536
    :cond_2
    array-length v5, v6

    .local v5, "wl":I
    if-lez v5, :cond_1

    .line 2538
    add-int/lit8 v7, v5, -0x1

    and-int/2addr v7, v2

    and-int/lit8 v0, v7, 0x7e

    .local v0, "k":I
    aget-object v1, v6, v0

    .local v1, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v1, :cond_3

    .line 2539
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryCreateExternalQueue(I)V

    goto :goto_0

    .line 2540
    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->sharedPush(Ljava/util/concurrent/ForkJoinTask;)I

    move-result v4

    .local v4, "stat":I
    if-gez v4, :cond_4

    .line 2549
    :goto_1
    return-void

    .line 2542
    :cond_4
    if-nez v4, :cond_5

    .line 2543
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_1

    .line 2547
    :cond_5
    invoke-static {v2}, Ljava/util/concurrent/ThreadLocalRandom;->advanceProbe(I)I

    move-result v2

    goto :goto_0
.end method

.method public getActiveThreadCount()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2943
    iget v2, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int/2addr v2, v3

    iget-wide v4, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v4, v3

    long-to-int v3, v4

    add-int v0, v2, v3

    .line 2944
    .local v0, "r":I
    if-gtz v0, :cond_0

    move v0, v1

    .end local v0    # "r":I
    :cond_0
    return v0
.end method

.method public getAsyncMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2912
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getFactory()Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->factory:Ljava/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 3

    .prologue
    .line 2880
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int v0, v1, v2

    .local v0, "par":I
    if-lez v0, :cond_0

    .end local v0    # "par":I
    :goto_0
    return v0

    .restart local v0    # "par":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPoolSize()I
    .locals 4

    .prologue
    .line 2902
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    .prologue
    .line 3016
    const/4 v0, 0x0

    .line 3018
    .local v0, "count":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 3019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 3020
    aget-object v2, v3, v1

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    .line 3021
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 3019
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 3024
    .end local v1    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    .prologue
    .line 2997
    const-wide/16 v0, 0x0

    .line 2999
    .local v0, "count":J
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_1

    .line 3000
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 3001
    aget-object v3, v4, v2

    .local v3, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 3002
    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    .line 3000
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3005
    .end local v2    # "i":I
    .end local v3    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    .prologue
    .line 2924
    const/4 v1, 0x0

    .line 2926
    .local v1, "rc":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    .line 2927
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2928
    aget-object v2, v3, v0

    .local v2, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2929
    add-int/lit8 v1, v1, 0x1

    .line 2927
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2932
    .end local v0    # "i":I
    .end local v2    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    return v1
.end method

.method public getStealCount()J
    .locals 8

    .prologue
    .line 2974
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .line 2975
    .local v3, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    .line 2977
    .local v0, "count":J
    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v5, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v5, :cond_2

    .line 2978
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 2979
    aget-object v4, v5, v2

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    .line 2980
    iget v6, v4, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 2978
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 2975
    .end local v0    # "count":J
    .end local v2    # "i":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    iget-wide v0, v3, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    .restart local v0    # "count":J
    goto :goto_0

    .line 2983
    .restart local v5    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 2870
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .prologue
    .line 3035
    iget-object v2, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v2, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 3036
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 3037
    aget-object v1, v2, v0

    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3038
    const/4 v3, 0x1

    return v3

    .line 3036
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3041
    .end local v0    # "i":I
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method final helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I
    .locals 19
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 2034
    .local p2, "task":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v14, 0x0

    .line 2035
    .local v14, "s":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .local v16, "wl":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 2036
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 2037
    add-int/lit8 v6, v16, -0x1

    .line 2038
    .local v6, "m":I
    move-object/from16 v0, p1

    iget v7, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 2039
    .local v7, "mode":I
    not-int v13, v7

    .line 2040
    .local v13, "r":I
    and-int v10, v13, v6

    .local v10, "origin":I
    move v5, v10

    .line 2041
    .local v5, "k":I
    const/4 v15, 0x3

    .line 2042
    .local v15, "step":I
    const/4 v3, 0x1

    .line 2043
    .local v3, "h":I
    const/4 v8, 0x0

    .local v8, "oldSum":I
    const/4 v2, 0x0

    .line 2045
    .local v2, "checkSum":I
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    iget v14, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-gez v14, :cond_2

    .line 2075
    .end local v2    # "checkSum":I
    .end local v3    # "h":I
    .end local v5    # "k":I
    .end local v6    # "m":I
    .end local v7    # "mode":I
    .end local v8    # "oldSum":I
    .end local v10    # "origin":I
    .end local v13    # "r":I
    .end local v15    # "step":I
    .end local v16    # "wl":I
    :cond_1
    return v14

    .line 2047
    .restart local v2    # "checkSum":I
    .restart local v3    # "h":I
    .restart local v5    # "k":I
    .restart local v6    # "m":I
    .restart local v7    # "mode":I
    .restart local v8    # "oldSum":I
    .restart local v10    # "origin":I
    .restart local v13    # "r":I
    .restart local v15    # "step":I
    .restart local v16    # "wl":I
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->popCC(Ljava/util/concurrent/CountedCompleter;I)Ljava/util/concurrent/CountedCompleter;

    move-result-object v11

    .local v11, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v11, :cond_4

    .line 2048
    invoke-virtual {v11}, Ljava/util/concurrent/CountedCompleter;->doExec()I

    .line 2049
    if-eqz p3, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    .line 2051
    :cond_3
    move v10, v5

    .line 2052
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2047
    goto :goto_0

    .line 2055
    .end local v11    # "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_4
    or-int/lit8 v4, v5, 0x1

    .local v4, "i":I
    if-ltz v4, :cond_5

    if-le v4, v6, :cond_8

    .line 2056
    :cond_5
    const/4 v3, 0x0

    .line 2059
    :cond_6
    :goto_1
    if-lez v3, :cond_9

    .line 2060
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_7

    if-eqz p3, :cond_7

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    .line 2062
    :cond_7
    ushr-int/lit8 v18, v13, 0x10

    or-int/lit8 v15, v18, 0x3

    .line 2063
    shl-int/lit8 v18, v13, 0xd

    xor-int v13, v13, v18

    ushr-int/lit8 v18, v13, 0x11

    xor-int v13, v13, v18

    shl-int/lit8 v18, v13, 0x5

    xor-int v13, v13, v18

    .line 2064
    and-int v10, v13, v6

    move v5, v10

    .line 2065
    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_0

    .line 2055
    :cond_8
    aget-object v12, v17, v4

    .local v12, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_5

    .line 2057
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAndExecCC(Ljava/util/concurrent/CountedCompleter;)I

    move-result v3

    if-gez v3, :cond_6

    .line 2058
    add-int/2addr v2, v3

    goto :goto_1

    .line 2067
    .end local v12    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    add-int v18, v5, v15

    and-int v5, v18, v6

    if-ne v5, v10, :cond_0

    .line 2068
    move v9, v2

    .end local v8    # "oldSum":I
    .local v9, "oldSum":I
    if-eq v8, v2, :cond_1

    .line 2070
    const/4 v2, 0x0

    move v8, v9

    .end local v9    # "oldSum":I
    .restart local v8    # "oldSum":I
    goto :goto_0
.end method

.method final helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 23
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 2294
    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    move-object/from16 v19, v0

    .line 2295
    .local v19, "ps":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    move/from16 v22, v0

    .line 2296
    .local v22, "wc":I
    const/16 v18, 0x1

    .line 2298
    .local v18, "active":Z
    :cond_0
    :goto_0
    if-ltz v22, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v21

    .local v21, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v21, :cond_1

    .line 2299
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2300
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 2302
    .end local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v20

    .local v20, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_3

    .line 2303
    if-nez v18, :cond_2

    .line 2304
    const/16 v18, 0x1

    .line 2305
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v6, 0x1000000000000L

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 2307
    :cond_2
    move-object/from16 v0, v20

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v21

    .restart local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v21, :cond_0

    .line 2308
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    .line 2309
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->currentSteal:Ljava/util/concurrent/ForkJoinTask;

    .line 2310
    move-object/from16 v0, p1

    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    if-gez v2, :cond_0

    .line 2311
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->transferStealCount(Ljava/util/concurrent/ForkJoinPool;)V

    goto :goto_0

    .line 2314
    .end local v21    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3
    if-eqz v18, :cond_4

    .line 2315
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 2316
    .local v8, "nc":J
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2317
    const/16 v18, 0x0

    goto :goto_0

    .line 2319
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-gtz v2, :cond_0

    .line 2320
    sget-object v10, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v2, 0x1000000000000L

    add-long v16, v6, v2

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    .line 2319
    if-eqz v2, :cond_0

    .line 2323
    return-void
.end method

.method public invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2744
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    if-nez p1, :cond_0

    .line 2745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2746
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    .line 2747
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2836
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2839
    .local v1, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Callable;

    .line 2840
    .local v5, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, v5}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2841
    .local v0, "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2842
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2847
    .end local v0    # "f":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    .end local v5    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 2848
    .local v4, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2849
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2848
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2844
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v6    # "t$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "size":I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 2845
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ForkJoinTask;

    invoke-virtual {v7}, Ljava/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2844
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2846
    :cond_1
    return-object v1

    .line 2850
    .end local v6    # "t$iterator":Ljava/util/Iterator;
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    throw v4
.end method

.method public isQuiescent()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2959
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-wide v2, p0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShutdown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3223
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3196
    iget v1, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTerminating()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3213
    iget v0, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 3214
    .local v0, "rs":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3452
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3456
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;
    .locals 4
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2333
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    .local v1, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    .line 2334
    return-object v1

    .line 2335
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinPool;->findNonEmptyStealQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_2

    .line 2336
    return-object v3

    .line 2337
    :cond_2
    iget v2, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->pollAt(I)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2338
    return-object v1
.end method

.method protected pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3053
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->nextSecondarySeed()I

    move-result v2

    .line 3054
    .local v2, "r":I
    iget-object v6, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v6, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v6, :cond_1

    array-length v5, v6

    .local v5, "wl":I
    if-lez v5, :cond_1

    .line 3055
    add-int/lit8 v1, v5, -0x1

    .local v1, "m":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 3056
    shl-int/lit8 v7, v0, 0x1

    and-int/2addr v7, v1

    aget-object v4, v6, v7

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v3

    .local v3, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_0

    .line 3057
    return-object v3

    .line 3055
    .end local v3    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3060
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "wl":I
    :cond_1
    return-object v8
.end method

.method final registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 18
    .param p1, "wt"    # Ljava/util/concurrent/ForkJoinWorkerThread;

    .prologue
    .line 1588
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .local v3, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v3, :cond_0

    .line 1590
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1591
    :cond_0
    new-instance v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava/util/concurrent/ForkJoinPool;Ljava/util/concurrent/ForkJoinWorkerThread;)V

    .line 1592
    .local v11, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v4, 0x0

    .line 1593
    .local v4, "i":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    const/high16 v14, -0x10000

    and-int v6, v13, v14

    .line 1594
    .local v6, "mode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    .local v2, "aux":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-eqz v2, :cond_5

    .line 1595
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->lock()V

    .line 1597
    :try_start_0
    iget-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    const-wide/32 v16, -0x61c88647

    add-long v14, v14, v16

    iput-wide v14, v2, Ljava/util/concurrent/ForkJoinPool$AuxState;->indexSeed:J

    long-to-int v9, v14

    .line 1598
    .local v9, "s":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1599
    .local v12, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_4

    array-length v7, v12

    .local v7, "n":I
    if-lez v7, :cond_4

    .line 1600
    add-int/lit8 v5, v7, -0x1

    .local v5, "m":I
    shl-int/lit8 v13, v9, 0x1

    or-int/lit8 v13, v13, 0x1

    and-int v4, v5, v13

    .line 1601
    aget-object v13, v12, v4

    if-eqz v13, :cond_3

    .line 1602
    const/4 v8, 0x0

    .line 1603
    .local v8, "probes":I
    const/4 v13, 0x4

    if-gt v7, v13, :cond_2

    const/4 v10, 0x2

    .line 1604
    .local v10, "step":I
    :cond_1
    :goto_0
    add-int v13, v4, v10

    and-int v4, v13, v5

    aget-object v13, v12, v4

    if-eqz v13, :cond_3

    .line 1605
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v7, :cond_1

    .line 1606
    shl-int/lit8 v7, v7, 0x1

    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    check-cast v12, [Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .restart local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iput-object v12, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1607
    add-int/lit8 v5, v7, -0x1

    .line 1608
    const/4 v8, 0x0

    goto :goto_0

    .line 1603
    .end local v10    # "step":I
    :cond_2
    ushr-int/lit8 v13, v7, 0x1

    const v14, 0xfffe

    and-int/2addr v13, v14

    add-int/lit8 v10, v13, 0x2

    .restart local v10    # "step":I
    goto :goto_0

    .line 1612
    .end local v8    # "probes":I
    .end local v10    # "step":I
    :cond_3
    iput v9, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    .line 1613
    or-int v13, v4, v6

    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    .line 1614
    const/high16 v13, 0x7fff0000

    and-int/2addr v13, v9

    or-int/2addr v13, v4

    iput v13, v11, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1615
    aput-object v11, v12, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    .end local v5    # "m":I
    .end local v7    # "n":I
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1621
    .end local v9    # "s":I
    .end local v12    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    ushr-int/lit8 v14, v4, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    .line 1622
    return-object v11

    .line 1617
    :catchall_0
    move-exception v13

    .line 1618
    invoke-virtual {v2}, Ljava/util/concurrent/ForkJoinPool$AuxState;->unlock()V

    .line 1617
    throw v13
.end method

.method final runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 10
    .param p1, "w"    # Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .prologue
    .line 1928
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava/util/concurrent/ForkJoinTask;

    .line 1929
    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->config:I

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    .line 1930
    .local v0, "bound":I
    :goto_0
    iget v6, p1, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->hint:I

    int-to-long v6, v6

    const-wide v8, -0x2545f4914f6cdd1dL    # -1.1283317689613908E129

    mul-long v4, v6, v8

    .line 1931
    .local v4, "seed":J
    iget v6, p0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 1932
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    const-wide/16 v2, 0x1

    .line 1933
    .local v2, "r":J
    :cond_0
    :goto_1
    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->tryDropSpare(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1942
    .end local v2    # "r":J
    :cond_1
    :goto_2
    return-void

    .line 1929
    .end local v0    # "bound":I
    .end local v4    # "seed":J
    :cond_2
    const/16 v0, 0x3ff

    .restart local v0    # "bound":I
    goto :goto_0

    .line 1932
    .restart local v4    # "seed":J
    :cond_3
    move-wide v2, v4

    .restart local v2    # "r":J
    goto :goto_1

    .line 1936
    :cond_4
    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    or-int/lit8 v1, v6, 0x1

    .line 1937
    .local v1, "step":I
    const/16 v6, 0xc

    ushr-long v6, v2, v6

    xor-long/2addr v2, v6

    const/16 v6, 0x19

    shl-long v6, v2, v6

    xor-long/2addr v2, v6

    const/16 v6, 0x1b

    ushr-long v6, v2, v6

    xor-long/2addr v2, v6

    .line 1938
    long-to-int v6, v2

    invoke-direct {p0, p1, v0, v1, v6}, Ljava/util/concurrent/ForkJoinPool;->scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;III)I

    move-result v6

    if-gez v6, :cond_0

    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->awaitWork(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_2
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 3162
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3163
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 3164
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
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
    const/4 v0, 0x1

    .line 3185
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 3186
    invoke-direct {p0, v0, v0}, Ljava/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)I

    .line 3187
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork()V
    .locals 18

    .prologue
    .line 1694
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_2

    .line 1718
    :cond_1
    :goto_0
    return-void

    .line 1696
    :cond_2
    long-to-int v12, v6

    .local v12, "sp":I
    if-nez v12, :cond_3

    .line 1697
    const-wide v2, 0x800000000000L

    and-long/2addr v2, v6

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1698
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_0

    .line 1701
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v15, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    .line 1703
    array-length v2, v15

    const v3, 0xffff

    and-int v10, v12, v3

    .local v10, "i":I
    if-le v2, v10, :cond_1

    .line 1705
    aget-object v13, v15, v10

    .local v13, "v":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_1

    .line 1708
    const v2, 0x7fffffff

    and-int v11, v12, v2

    .line 1709
    .local v11, "ns":I
    iget v14, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1710
    .local v14, "vs":I
    iget v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v6

    const-wide v16, -0x100000000L

    and-long v4, v4, v16

    or-long v8, v2, v4

    .line 1711
    .local v8, "nc":J
    if-ne v12, v14, :cond_0

    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1712
    iput v11, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->scanState:I

    .line 1713
    iget-object v2, v13, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
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
    .line 2818
    if-nez p1, :cond_0

    .line 2819
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2821
    :cond_0
    instance-of v1, p1, Ljava/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2822
    check-cast v0, Ljava/util/concurrent/ForkJoinTask;

    .line 2825
    .local v0, "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v1

    return-object v1

    .line 2824
    .end local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
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
    .line 2809
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2800
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2791
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalSubmit(Ljava/util/concurrent/ForkJoinTask;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 2812
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 2803
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 2794
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 26

    .prologue
    .line 3105
    const-wide/16 v12, 0x0

    .local v12, "qt":J
    const-wide/16 v10, 0x0

    .local v10, "qs":J
    const/4 v14, 0x0

    .line 3106
    .local v14, "rc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->auxState:Ljava/util/concurrent/ForkJoinPool$AuxState;

    move-object/from16 v16, v0

    .line 3107
    .local v16, "sc":Ljava/util/concurrent/ForkJoinPool$AuxState;
    if-nez v16, :cond_1

    const-wide/16 v18, 0x0

    .line 3108
    .local v18, "st":J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/concurrent/ForkJoinPool;->ctl:J

    .line 3110
    .local v6, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .local v22, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_3

    .line 3111
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_3

    .line 3112
    aget-object v21, v22, v5

    .local v21, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_0

    .line 3113
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v17

    .line 3114
    .local v17, "size":I
    and-int/lit8 v23, v5, 0x1

    if-nez v23, :cond_2

    .line 3115
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v10, v10, v24

    .line 3111
    .end local v17    # "size":I
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3107
    .end local v5    # "i":I
    .end local v6    # "c":J
    .end local v18    # "st":J
    .end local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/util/concurrent/ForkJoinPool$AuxState;->stealCount:J

    move-wide/from16 v18, v0

    .restart local v18    # "st":J
    goto :goto_0

    .line 3117
    .restart local v5    # "i":I
    .restart local v6    # "c":J
    .restart local v17    # "size":I
    .restart local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v12, v12, v24

    .line 3118
    move-object/from16 v0, v21

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    .line 3119
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 3120
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 3125
    .end local v5    # "i":I
    .end local v17    # "size":I
    .end local v21    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ForkJoinPool;->config:I

    move/from16 v23, v0

    const v24, 0xffff

    and-int v9, v23, v24

    .line 3126
    .local v9, "pc":I
    const/16 v23, 0x20

    ushr-long v24, v6, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    add-int v20, v9, v23

    .line 3127
    .local v20, "tc":I
    const/16 v23, 0x30

    shr-long v24, v6, v23

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v4, v9, v23

    .line 3128
    .local v4, "ac":I
    if-gez v4, :cond_4

    .line 3129
    const/4 v4, 0x0

    .line 3130
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/concurrent/ForkJoinPool;->runState:I

    .line 3131
    .local v15, "rs":I
    and-int/lit8 v23, v15, 0x4

    if-eqz v23, :cond_5

    const-string/jumbo v8, "Terminated"

    .line 3135
    .local v8, "level":Ljava/lang/String;
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/util/concurrent/AbstractExecutorService;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3136
    const-string/jumbo v24, "["

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3137
    const-string/jumbo v24, ", parallelism = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3138
    const-string/jumbo v24, ", size = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3139
    const-string/jumbo v24, ", active = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3140
    const-string/jumbo v24, ", running = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3141
    const-string/jumbo v24, ", steals = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3142
    const-string/jumbo v24, ", tasks = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3143
    const-string/jumbo v24, ", submissions = "

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 3144
    const-string/jumbo v24, "]"

    .line 3135
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    return-object v23

    .line 3132
    .end local v8    # "level":Ljava/lang/String;
    :cond_5
    and-int/lit8 v23, v15, 0x2

    if-eqz v23, :cond_6

    const-string/jumbo v8, "Terminating"

    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3

    .line 3133
    .end local v8    # "level":Ljava/lang/String;
    :cond_6
    const/high16 v23, -0x80000000

    and-int v23, v23, v15

    if-eqz v23, :cond_7

    const-string/jumbo v8, "Shutting down"

    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3

    .line 3134
    .end local v8    # "level":Ljava/lang/String;
    :cond_7
    const-string/jumbo v8, "Running"

    .restart local v8    # "level":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method final tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v4, 0x0

    .line 2583
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->getProbe()I

    move-result v0

    .line 2585
    .local v0, "r":I
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinPool;->workQueues:[Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "ws":[Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2586
    array-length v2, v3

    .local v2, "wl":I
    if-lez v2, :cond_0

    .line 2587
    add-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v0

    and-int/lit8 v5, v5, 0x7e

    aget-object v1, v3, v5

    .local v1, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    .line 2588
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v4

    .line 2585
    .end local v1    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v2    # "wl":I
    :cond_0
    return v4
.end method
