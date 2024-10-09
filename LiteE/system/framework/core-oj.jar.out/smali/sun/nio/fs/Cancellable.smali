.class abstract Lsun/nio/fs/Cancellable;
.super Ljava/lang/Object;
.source "Cancellable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private completed:Z

.field private exception:Ljava/lang/Throwable;

.field private final lock:Ljava/lang/Object;

.field private final pollingAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    .line 38
    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    .line 49
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    .line 50
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 51
    return-void
.end method

.method private exception()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/Cancellable;->exception:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static runInterruptibly(Lsun/nio/fs/Cancellable;)V
    .locals 5
    .param p0, "task"    # Lsun/nio/fs/Cancellable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "cancelledByInterrupt":Z
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->cancel()V

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 133
    :cond_1
    invoke-direct {p0}, Lsun/nio/fs/Cancellable;->exception()Ljava/lang/Throwable;

    move-result-object v2

    .line 134
    .local v2, "exc":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    .line 135
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method protected addressToPollForCancel()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    return-wide v0
.end method

.method final cancel()V
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/fs/Cancellable;->completed:Z

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->cancelValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 80
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected cancelValue()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7fffffff

    return v0
.end method

.method abstract implRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/fs/Cancellable;->implRun()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 101
    iget-object v2, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v1, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v1, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 106
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 98
    :try_start_3
    iput-object v0, p0, Lsun/nio/fs/Cancellable;->exception:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 101
    iget-object v2, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v1, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v1, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 101
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 97
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 100
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    .line 101
    iget-object v2, p0, Lsun/nio/fs/Cancellable;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    const/4 v3, 0x1

    :try_start_7
    iput-boolean v3, p0, Lsun/nio/fs/Cancellable;->completed:Z

    .line 103
    sget-object v3, Lsun/nio/fs/Cancellable;->unsafe:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lsun/nio/fs/Cancellable;->pollingAddress:J

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->freeMemory(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v2

    .line 100
    throw v1

    .line 101
    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1
.end method
