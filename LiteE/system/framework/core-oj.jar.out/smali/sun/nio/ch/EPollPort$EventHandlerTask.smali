.class Lsun/nio/ch/EPollPort$EventHandlerTask;
.super Ljava/lang/Object;
.source "EPollPort.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/EPollPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandlerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/EPollPort;


# direct methods
.method private constructor <init>(Lsun/nio/ch/EPollPort;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/EPollPort;

    .prologue
    .line 190
    iput-object p1, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/nio/ch/EPollPort;Lsun/nio/ch/EPollPort$EventHandlerTask;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/EPollPort;
    .param p2, "-this1"    # Lsun/nio/ch/EPollPort$EventHandlerTask;

    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/EPollPort$EventHandlerTask;-><init>(Lsun/nio/ch/EPollPort;)V

    return-void
.end method

.method private poll()Lsun/nio/ch/EPollPort$Event;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :goto_0
    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get3(Lsun/nio/ch/EPollPort;)I

    move-result v8

    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v9}, Lsun/nio/ch/EPollPort;->-get2(Lsun/nio/ch/EPollPort;)J

    move-result-wide v10

    const/16 v9, 0x200

    invoke-static {v8, v10, v11, v9}, Lsun/nio/ch/EPoll;->epollWait(IJI)I

    move-result v6

    .line 201
    .local v6, "n":I
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v8, v8, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_1
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "n":I
    .local v7, "n":I
    if-lez v6, :cond_5

    .line 204
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get2(Lsun/nio/ch/EPollPort;)J

    move-result-wide v8

    invoke-static {v8, v9, v7}, Lsun/nio/ch/EPoll;->getEvent(JI)J

    move-result-wide v2

    .line 205
    .local v2, "eventAddress":J
    invoke-static {v2, v3}, Lsun/nio/ch/EPoll;->getDescriptor(J)I

    move-result v5

    .line 208
    .local v5, "fd":I
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get5(Lsun/nio/ch/EPollPort;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    if-ne v5, v8, :cond_2

    .line 209
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get6(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v8

    if-nez v8, :cond_0

    .line 211
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get5(Lsun/nio/ch/EPollPort;)[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-wrap0(I)V

    .line 216
    :cond_0
    if-lez v7, :cond_1

    .line 217
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v8

    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v9}, Lsun/nio/ch/EPollPort;->-get0(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move v6, v7

    .line 218
    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto :goto_1

    .line 220
    .end local v6    # "n":I
    .restart local v7    # "n":I
    :cond_1
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get0(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 238
    :try_start_2
    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v9, v9, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v9}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v9

    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 220
    return-object v8

    .line 223
    :cond_2
    :try_start_3
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v8, v8, Lsun/nio/ch/EPollPort;->fdToChannel:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Port$PollableChannel;

    .line 224
    .local v0, "channel":Lsun/nio/ch/Port$PollableChannel;
    if-eqz v0, :cond_3

    .line 225
    invoke-static {v2, v3}, Lsun/nio/ch/EPoll;->getEvents(J)I

    move-result v4

    .line 226
    .local v4, "events":I
    new-instance v1, Lsun/nio/ch/EPollPort$Event;

    invoke-direct {v1, v0, v4}, Lsun/nio/ch/EPollPort$Event;-><init>(Lsun/nio/ch/Port$PollableChannel;I)V

    .line 230
    .local v1, "ev":Lsun/nio/ch/EPollPort$Event;
    if-lez v7, :cond_4

    .line 231
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v1    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v4    # "events":I
    :cond_3
    move v6, v7

    .end local v7    # "n":I
    .restart local v6    # "n":I
    goto/16 :goto_1

    .line 238
    .end local v6    # "n":I
    .restart local v1    # "ev":Lsun/nio/ch/EPollPort$Event;
    .restart local v4    # "events":I
    .restart local v7    # "n":I
    :cond_4
    :try_start_4
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v8, v8, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v8}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v8

    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v9}, Lsun/nio/ch/EPollPort;->-get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 233
    return-object v1

    .line 238
    .end local v0    # "channel":Lsun/nio/ch/Port$PollableChannel;
    .end local v1    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v2    # "eventAddress":J
    .end local v4    # "events":I
    .end local v5    # "fd":I
    :cond_5
    :try_start_5
    iget-object v8, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v8, v8, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 241
    .end local v7    # "n":I
    :catchall_0
    move-exception v8

    .line 244
    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v9}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v9

    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 241
    throw v8

    .line 237
    .restart local v7    # "n":I
    :catchall_1
    move-exception v8

    .line 238
    :try_start_6
    iget-object v9, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    iget-object v9, v9, Lsun/nio/ch/EPollPort;->fdToChannelLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 237
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 250
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v2

    .line 251
    .local v2, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 252
    .local v1, "isPooledThread":Z
    :goto_0
    const/4 v4, 0x0

    .line 257
    .local v4, "replaceMe":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {v2}, Lsun/nio/ch/Invoker$GroupAndInvokeCount;->resetInvokeCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    const/4 v4, 0x0

    .line 262
    :try_start_1
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-get4(Lsun/nio/ch/EPollPort;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/EPollPort$Event;

    .line 266
    .local v0, "ev":Lsun/nio/ch/EPollPort$Event;
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-get1(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-ne v0, v10, :cond_1

    .line 268
    :try_start_2
    invoke-direct {p0}, Lsun/nio/ch/EPollPort$EventHandlerTask;->poll()Lsun/nio/ch/EPollPort$Event;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 279
    :cond_1
    :try_start_3
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-get0(Lsun/nio/ch/EPollPort;)Lsun/nio/ch/EPollPort$Event;

    move-result-object v10

    if-ne v0, v10, :cond_7

    .line 280
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v10}, Lsun/nio/ch/EPollPort;->pollTask()Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 281
    .local v5, "task":Ljava/lang/Runnable;
    if-nez v5, :cond_5

    .line 302
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v10, p0, v4}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v3

    .line 303
    .local v3, "remaining":I
    if-nez v3, :cond_2

    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v10}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 304
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-wrap1(Lsun/nio/ch/EPollPort;)V

    .line 283
    :cond_2
    return-void

    .line 251
    .end local v0    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v1    # "isPooledThread":Z
    .end local v3    # "remaining":I
    .end local v4    # "replaceMe":Z
    .end local v5    # "task":Ljava/lang/Runnable;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isPooledThread":Z
    goto :goto_0

    .line 269
    .restart local v0    # "ev":Lsun/nio/ch/EPollPort$Event;
    .restart local v4    # "replaceMe":Z
    :catch_0
    move-exception v6

    .line 270
    .local v6, "x":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v10, p0, v4}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v3

    .line 303
    .restart local v3    # "remaining":I
    if-nez v3, :cond_4

    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v10}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 304
    iget-object v10, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v10}, Lsun/nio/ch/EPollPort;->-wrap1(Lsun/nio/ch/EPollPort;)V

    .line 271
    :cond_4
    return-void

    .line 286
    .end local v3    # "remaining":I
    .end local v6    # "x":Ljava/io/IOException;
    .restart local v5    # "task":Ljava/lang/Runnable;
    :cond_5
    const/4 v4, 0x1

    .line 287
    :try_start_5
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 300
    .end local v0    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v5    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v10

    .line 302
    iget-object v11, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v11, p0, v4}, Lsun/nio/ch/EPollPort;->threadExit(Ljava/lang/Runnable;Z)I

    move-result v3

    .line 303
    .restart local v3    # "remaining":I
    if-nez v3, :cond_6

    iget-object v11, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-virtual {v11}, Lsun/nio/ch/EPollPort;->isShutdown()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 304
    iget-object v11, p0, Lsun/nio/ch/EPollPort$EventHandlerTask;->this$0:Lsun/nio/ch/EPollPort;

    invoke-static {v11}, Lsun/nio/ch/EPollPort;->-wrap1(Lsun/nio/ch/EPollPort;)V

    .line 300
    :cond_6
    throw v10

    .line 293
    .end local v3    # "remaining":I
    .restart local v0    # "ev":Lsun/nio/ch/EPollPort$Event;
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Lsun/nio/ch/EPollPort$Event;->channel()Lsun/nio/ch/Port$PollableChannel;

    move-result-object v10

    invoke-virtual {v0}, Lsun/nio/ch/EPollPort$Event;->events()I

    move-result v11

    invoke-interface {v10, v11, v1}, Lsun/nio/ch/Port$PollableChannel;->onEvent(IZ)V
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 294
    :catch_1
    move-exception v7

    .line 295
    .local v7, "x":Ljava/lang/Error;
    const/4 v4, 0x1

    :try_start_7
    throw v7

    .line 296
    .end local v7    # "x":Ljava/lang/Error;
    :catch_2
    move-exception v9

    .line 297
    .local v9, "x":Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 274
    .end local v0    # "ev":Lsun/nio/ch/EPollPort$Event;
    .end local v9    # "x":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v8

    .local v8, "x":Ljava/lang/InterruptedException;
    goto/16 :goto_1
.end method
