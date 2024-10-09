.class public Ljava/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final INHERITABLETHREADLOCALS:J

.field private static final INHERITEDACCESSCONTROLCONTEXT:J

.field private static final THREADLOCALS:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field final pool:Ljava/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    .line 194
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    .line 195
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "threadLocals"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    .line 196
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    .line 197
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "inheritableThreadLocals"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    .line 198
    sget-object v1, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    .line 199
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "inheritedAccessControlContext"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Ljava/util/concurrent/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;

    .prologue
    .line 84
    const-string/jumbo v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 86
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ForkJoinPool;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 4
    .param p1, "pool"    # Ljava/util/concurrent/ForkJoinPool;
    .param p2, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p3, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 94
    const-string/jumbo v0, "aForkJoinWorkerThread"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITEDACCESSCONTROLCONTEXT:J

    invoke-virtual {v0, p0, v2, v3, p3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->eraseThreadLocals()V

    .line 97
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 98
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ForkJoinPool;->registerWorker(Ljava/util/concurrent/ForkJoinWorkerThread;)Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 99
    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method final eraseThreadLocals()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->THREADLOCALS:J

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 178
    sget-object v0, Ljava/util/concurrent/ForkJoinWorkerThread;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinWorkerThread;->INHERITABLETHREADLOCALS:J

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public getPool()Ljava/util/concurrent/ForkJoinPool;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 153
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v3, v3, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava/util/concurrent/ForkJoinTask;

    if-nez v3, :cond_0

    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 157
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ForkJoinPool;->runWorker(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 162
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 171
    .end local v2    # "exception":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 163
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Throwable;
    move-object v2, v0

    .line 167
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 167
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 166
    throw v3

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v2, v0

    .line 162
    .local v2, "exception":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :catch_2
    move-exception v1

    .line 164
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 165
    move-object v2, v1

    .line 167
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 166
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    .line 167
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v0}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 166
    throw v3

    .line 160
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    .line 162
    :try_start_3
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 167
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 160
    .end local v2    # "exception":Ljava/lang/Throwable;
    :goto_1
    throw v3

    .line 163
    .restart local v2    # "exception":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 165
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v2, v0

    .line 167
    .local v2, "exception":Ljava/lang/Throwable;
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 166
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v2, "exception":Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    .line 167
    iget-object v4, p0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 166
    throw v3
.end method
