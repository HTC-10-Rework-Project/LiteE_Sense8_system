.class final Ljava/util/concurrent/ThreadPoolExecutor$Worker;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ThreadPoolExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Worker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x552f9a9a47f02c71L


# instance fields
.field volatile completedTasks:J

.field firstTask:Ljava/lang/Runnable;

.field final synthetic this$0:Ljava/util/concurrent/ThreadPoolExecutor;

.field final thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/concurrent/ThreadPoolExecutor;
    .param p2, "firstTask"    # Ljava/lang/Runnable;

    .prologue
    .line 624
    iput-object p1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 628
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 629
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 630
    iput-object p2, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->firstTask:Ljava/lang/Runnable;

    .line 631
    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .line 632
    return-void
.end method


# virtual methods
.method interruptIfStarted()V
    .locals 3

    .prologue
    .line 669
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->thread:Ljava/lang/Thread;

    .local v1, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 671
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 672
    .restart local v1    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method protected isHeldExclusively()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->acquire(I)V

    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->this$0:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->runWorker(Ljava/util/concurrent/ThreadPoolExecutor$Worker;)V

    .line 637
    return-void
.end method

.method protected tryAcquire(I)Z
    .locals 3
    .param p1, "unused"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 651
    return v2

    .line 653
    :cond_0
    return v1
.end method

.method public tryLock()Z
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->tryAcquire(I)Z

    move-result v0

    return v0
.end method

.method protected tryRelease(I)Z
    .locals 1
    .param p1, "unused"    # I

    .prologue
    .line 657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    .line 658
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->setState(I)V

    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor$Worker;->release(I)Z

    return-void
.end method
