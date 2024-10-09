.class abstract Lsun/nio/ch/Port;
.super Lsun/nio/ch/AsynchronousChannelGroupImpl;
.source "Port.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Port$PollableChannel;
    }
.end annotation


# instance fields
.field protected final fdToChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lsun/nio/ch/Port$PollableChannel;",
            ">;"
        }
    .end annotation
.end field

.field protected final fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V
    .locals 1
    .param p1, "provider"    # Ljava/nio/channels/spi/AsynchronousChannelProvider;
    .param p2, "pool"    # Lsun/nio/ch/ThreadPool;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lsun/nio/ch/AsynchronousChannelGroupImpl;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;Lsun/nio/ch/ThreadPool;)V

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method final attachForeignChannel(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/Channel;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 128
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 129
    .local v0, "fdVal":I
    new-instance v1, Lsun/nio/ch/Port$1;

    invoke-direct {v1, p0, p1}, Lsun/nio/ch/Port$1;-><init>(Lsun/nio/ch/Port;Ljava/nio/channels/Channel;)V

    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method final closeAllChannels()V
    .locals 10

    .prologue
    const/16 v9, 0x80

    .line 149
    const/16 v0, 0x80

    .line 150
    .local v0, "MAX_BATCH_SIZE":I
    new-array v1, v9, [Lsun/nio/ch/Port$PollableChannel;

    .line 154
    .local v1, "channels":[Lsun/nio/ch/Port$PollableChannel;
    :cond_0
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "count":I
    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "fd$iterator":Ljava/util/Iterator;
    move v3, v2

    .end local v2    # "count":I
    .local v3, "count":I
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .local v4, "fd":Ljava/lang/Integer;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "count":I
    .restart local v2    # "count":I
    :try_start_2
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/nio/ch/Port$PollableChannel;

    aput-object v8, v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    if-lt v2, v9, :cond_1

    .line 163
    .end local v4    # "fd":Ljava/lang/Integer;
    :goto_1
    iget-object v8, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 167
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_2

    .line 169
    :try_start_3
    aget-object v8, v1, v6

    invoke-interface {v8}, Lsun/nio/ch/Port$PollableChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 167
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6    # "i":I
    .restart local v4    # "fd":Ljava/lang/Integer;
    :cond_1
    move v3, v2

    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    .line 162
    .end local v3    # "count":I
    .end local v4    # "fd":Ljava/lang/Integer;
    .end local v5    # "fd$iterator":Ljava/util/Iterator;
    .restart local v2    # "count":I
    :catchall_0
    move-exception v8

    .line 163
    :goto_4
    iget-object v9, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 162
    throw v8

    .line 172
    .restart local v5    # "fd$iterator":Ljava/util/Iterator;
    .restart local v6    # "i":I
    :cond_2
    if-gtz v2, :cond_0

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v7

    .local v7, "ignore":Ljava/io/IOException;
    goto :goto_3

    .line 162
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "ignore":Ljava/io/IOException;
    .restart local v3    # "count":I
    :catchall_1
    move-exception v8

    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_4

    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    move v2, v3

    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1
.end method

.method final detachForeignChannel(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 140
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/ch/Port;->unregister(I)V

    .line 141
    return-void
.end method

.method final isEmpty()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 122
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    return v0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    throw v0
.end method

.method protected preUnregister(I)V
    .locals 0
    .param p1, "fd"    # I

    .prologue
    .line 81
    return-void
.end method

.method final register(ILsun/nio/ch/Port$PollableChannel;)V
    .locals 2
    .param p1, "fd"    # I
    .param p2, "ch"    # Lsun/nio/ch/Port$PollableChannel;

    .prologue
    .line 65
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/nio/channels/ShutdownChannelGroupException;

    invoke-direct {v0}, Ljava/nio/channels/ShutdownChannelGroupException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    throw v0

    .line 69
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iget-object v0, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    return-void
.end method

.method abstract startPoll(II)V
.end method

.method final unregister(I)V
    .locals 4
    .param p1, "fd"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "checkForShutdown":Z
    invoke-virtual {p0, p1}, Lsun/nio/ch/Port;->preUnregister(I)V

    .line 91
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannel:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 100
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 104
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/Port;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/Port;->shutdownNow()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 99
    :catchall_0
    move-exception v2

    .line 100
    iget-object v3, p0, Lsun/nio/ch/Port;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 99
    throw v2

    .line 107
    :catch_0
    move-exception v1

    .local v1, "ignore":Ljava/io/IOException;
    goto :goto_0
.end method
