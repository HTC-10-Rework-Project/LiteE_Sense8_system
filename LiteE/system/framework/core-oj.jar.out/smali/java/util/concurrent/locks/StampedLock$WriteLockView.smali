.class final Ljava/util/concurrent/locks/StampedLock$WriteLockView;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteLockView"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;

    .prologue
    .line 895
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLock()J

    return-void
.end method

.method public lockInterruptibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 898
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->writeLockInterruptibly()J

    .line 899
    return-void
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .prologue
    .line 907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public tryLock()Z
    .locals 4

    .prologue
    .line 900
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/StampedLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$WriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->unstampedUnlockWrite()V

    return-void
.end method
