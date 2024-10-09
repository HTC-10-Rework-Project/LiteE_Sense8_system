.class Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;
.super Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
.source "UnixAsynchronousServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# static fields
.field private static final nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private acceptAcc:Ljava/security/AccessControlContext;

.field private acceptAttachment:Ljava/lang/Object;

.field private acceptFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private acceptHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private acceptPending:Z

.field private final accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private final port:Lsun/nio/ch/Port;

.field private final updateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 385
    invoke-static {}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->initIDs()V

    .line 49
    return-void
.end method

.method constructor <init>(Lsun/nio/ch/Port;)V
    .locals 3
    .param p1, "port"    # Lsun/nio/ch/Port;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 87
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 93
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    .line 96
    iget v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v1, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 98
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 99
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "x":Ljava/io/IOException;
    sget-object v1, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 90
    throw v0
.end method

.method private accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .locals 1
    .param p1, "ssfd"    # Ljava/io/FileDescriptor;
    .param p2, "newfd"    # Ljava/io/FileDescriptor;
    .param p3, "isaa"    # [Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v0

    return v0
.end method

.method private native accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private enableAccept()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    return-void
.end method

.method private finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;
    .locals 7
    .param p1, "newfd"    # Ljava/io/FileDescriptor;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 235
    .local v0, "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    :try_start_0
    new-instance v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .end local v0    # "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-direct {v0, v5, p1, p2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/Port;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v0, "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    if-eqz p3, :cond_1

    .line 244
    :try_start_1
    new-instance v5, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;

    invoke-direct {v5, p0, p2}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;Ljava/net/InetSocketAddress;)V

    invoke-static {v5, p3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 236
    .end local v0    # "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "x":Ljava/io/IOException;
    sget-object v5, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-virtual {v5, p1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 238
    throw v3

    .line 255
    .end local v3    # "x":Ljava/io/IOException;
    .restart local v0    # "ch":Ljava/nio/channels/AsynchronousSocketChannel;
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 256
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 257
    invoke-virtual {v1, v5, v6}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 261
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :catch_1
    move-exception v4

    .line 263
    .local v4, "x":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 267
    :goto_1
    throw v4

    .line 264
    :catch_2
    move-exception v2

    .line 265
    .local v2, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v4, v2}, Ljava/lang/SecurityException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static native initIDs()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-super {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->finalize()V

    .line 145
    return-void

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    invoke-super {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->finalize()V

    .line 142
    throw v0
.end method

.method public group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    return-object v0
.end method

.method implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 13
    .param p1, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 277
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_1

    .line 278
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 279
    .local v1, "e":Ljava/lang/Throwable;
    if-nez p2, :cond_0

    .line 280
    invoke-static {v1}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    .line 282
    :cond_0
    invoke-static {p0, p2, p1, v10, v1}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 283
    return-object v10

    .line 286
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v9, :cond_2

    .line 287
    new-instance v9, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v9}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v9

    .line 291
    :cond_2
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->isAcceptKilled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 292
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Accept not allowed due cancellation"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 295
    :cond_3
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accepting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-nez v9, :cond_4

    .line 296
    new-instance v9, Ljava/nio/channels/AcceptPendingException;

    invoke-direct {v9}, Ljava/nio/channels/AcceptPendingException;-><init>()V

    throw v9

    .line 299
    :cond_4
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V

    .line 300
    .local v5, "newfd":Ljava/io/FileDescriptor;
    new-array v3, v11, [Ljava/net/InetSocketAddress;

    .line 301
    .local v3, "isaa":[Ljava/net/InetSocketAddress;
    const/4 v2, 0x0

    .line 303
    .local v2, "exc":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->begin()V

    .line 305
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v9, v5, v3}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v4

    .line 306
    .local v4, "n":I
    const/4 v9, -0x2

    if-ne v4, v9, :cond_9

    .line 311
    const/4 v6, 0x0

    .line 312
    .local v6, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    if-nez p2, :cond_5

    .line 314
    const/4 v9, 0x0

    :try_start_1
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 315
    new-instance v7, Lsun/nio/ch/PendingFuture;

    invoke-direct {v7, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v6    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .local v7, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :try_start_2
    iput-object v7, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v7

    .line 321
    .end local v7    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    if-nez v9, :cond_8

    move-object v9, v10

    :goto_1
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAcc:Ljava/security/AccessControlContext;

    .line 323
    const/4 v9, 0x1

    iput-boolean v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v11

    .line 327
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    sget-short v12, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v9, v11, v12}, Lsun/nio/ch/Port;->startPoll(II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 336
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 328
    return-object v6

    .line 318
    .restart local v6    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :cond_5
    :try_start_5
    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 319
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 312
    .end local v6    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v9

    :goto_2
    :try_start_6
    monitor-exit v11

    throw v9
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 330
    .end local v4    # "n":I
    :catch_0
    move-exception v8

    .line 332
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_7
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_6

    .line 333
    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    .end local v8    # "x":Ljava/lang/Throwable;
    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 334
    .restart local v8    # "x":Ljava/lang/Throwable;
    :cond_6
    move-object v2, v8

    .line 336
    .local v2, "exc":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 339
    .end local v2    # "exc":Ljava/lang/Throwable;
    .end local v8    # "x":Ljava/lang/Throwable;
    :goto_3
    const/4 v0, 0x0

    .line 340
    .local v0, "child":Ljava/nio/channels/AsynchronousSocketChannel;
    if-nez v2, :cond_7

    .line 343
    const/4 v9, 0x0

    :try_start_8
    aget-object v9, v3, v9

    const/4 v11, 0x0

    invoke-direct {p0, v5, v9, v11}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v0

    .line 350
    .end local v0    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    :cond_7
    :goto_4
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->enableAccept()V

    .line 352
    if-nez p2, :cond_a

    .line 353
    invoke-static {v0, v2}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    .line 322
    .local v2, "exc":Ljava/lang/Throwable;
    .restart local v4    # "n":I
    :cond_8
    :try_start_9
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 336
    :cond_9
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    goto :goto_3

    .line 335
    .end local v4    # "n":I
    :catchall_1
    move-exception v9

    .line 336
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 335
    throw v9

    .line 344
    .end local v2    # "exc":Ljava/lang/Throwable;
    .restart local v0    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    :catch_1
    move-exception v8

    .line 345
    .restart local v8    # "x":Ljava/lang/Throwable;
    move-object v2, v8

    .local v2, "exc":Ljava/lang/Throwable;
    goto :goto_4

    .line 355
    .end local v0    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v2    # "exc":Ljava/lang/Throwable;
    .end local v8    # "x":Ljava/lang/Throwable;
    :cond_a
    invoke-static {p0, p2, p1, v0, v2}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 356
    return-object v10

    .line 312
    .local v2, "exc":Ljava/lang/Throwable;
    .restart local v4    # "n":I
    .restart local v7    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .local v6, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    goto :goto_2
.end method

.method implClose()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 104
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v4}, Ldalvik/system/CloseGuard;->close()V

    .line 106
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    invoke-virtual {v4, v5}, Lsun/nio/ch/Port;->unregister(I)V

    .line 109
    sget-object v4, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 115
    iget-object v5, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 116
    :try_start_0
    iget-boolean v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit v5

    .line 117
    return-void

    .line 118
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z

    .line 119
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 120
    .local v2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;

    .line 121
    .local v0, "att":Ljava/lang/Object;
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    monitor-exit v5

    .line 126
    new-instance v3, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v3}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    .line 127
    .local v3, "x":Ljava/nio/channels/AsynchronousCloseException;
    new-array v4, v6, [Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v4}, Ljava/nio/channels/AsynchronousCloseException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 128
    if-nez v2, :cond_1

    .line 129
    invoke-virtual {v1, v3}, Lsun/nio/ch/PendingFuture;->setFailure(Ljava/lang/Throwable;)V

    .line 134
    :goto_0
    return-void

    .line 115
    .end local v0    # "att":Ljava/lang/Object;
    .end local v1    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .end local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .end local v3    # "x":Ljava/nio/channels/AsynchronousCloseException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 132
    .restart local v0    # "att":Ljava/lang/Object;
    .restart local v1    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .restart local v2    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .restart local v3    # "x":Ljava/nio/channels/AsynchronousCloseException;
    :cond_1
    invoke-static {p0, v2, v0, v7, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(IZ)V
    .locals 14
    .param p1, "events"    # I
    .param p2, "mayInvokeDirect"    # Z

    .prologue
    .line 157
    iget-object v12, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 158
    :try_start_0
    iget-boolean v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_0

    monitor-exit v12

    .line 159
    return-void

    .line 160
    :cond_0
    const/4 v11, 0x0

    :try_start_1
    iput-boolean v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v12

    .line 164
    new-instance v8, Ljava/io/FileDescriptor;

    invoke-direct {v8}, Ljava/io/FileDescriptor;-><init>()V

    .line 165
    .local v8, "newfd":Ljava/io/FileDescriptor;
    const/4 v11, 0x1

    new-array v6, v11, [Ljava/net/InetSocketAddress;

    .line 166
    .local v6, "isaa":[Ljava/net/InetSocketAddress;
    const/4 v2, 0x0

    .line 168
    .local v2, "exc":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->begin()V

    .line 169
    iget-object v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v11, v8, v6}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v7

    .line 172
    .local v7, "n":I
    const/4 v11, -0x2

    if-ne v7, v11, :cond_4

    .line 173
    iget-object v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    const/4 v12, 0x1

    :try_start_3
    iput-boolean v12, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptPending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v11

    .line 176
    iget-object v11, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v12, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->fdVal:I

    sget-short v13, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v11, v12, v13}, Lsun/nio/ch/Port;->startPoll(II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 177
    return-void

    .line 157
    .end local v2    # "exc":Ljava/lang/Throwable;
    .end local v6    # "isaa":[Ljava/net/InetSocketAddress;
    .end local v7    # "n":I
    .end local v8    # "newfd":Ljava/io/FileDescriptor;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 173
    .restart local v2    # "exc":Ljava/lang/Throwable;
    .restart local v6    # "isaa":[Ljava/net/InetSocketAddress;
    .restart local v7    # "n":I
    .restart local v8    # "newfd":Ljava/io/FileDescriptor;
    :catchall_1
    move-exception v12

    :try_start_5
    monitor-exit v11

    throw v12
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    .end local v7    # "n":I
    :catch_0
    move-exception v9

    .line 181
    .local v9, "x":Ljava/lang/Throwable;
    :try_start_6
    instance-of v11, v9, Ljava/nio/channels/ClosedChannelException;

    if-eqz v11, :cond_1

    .line 182
    new-instance v9, Ljava/nio/channels/AsynchronousCloseException;

    .end local v9    # "x":Ljava/lang/Throwable;
    invoke-direct {v9}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 183
    .restart local v9    # "x":Ljava/lang/Throwable;
    :cond_1
    move-object v2, v9

    .line 185
    .local v2, "exc":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 189
    .end local v2    # "exc":Ljava/lang/Throwable;
    .end local v9    # "x":Ljava/lang/Throwable;
    :goto_0
    const/4 v1, 0x0

    .line 190
    .local v1, "child":Ljava/nio/channels/AsynchronousSocketChannel;
    if-nez v2, :cond_2

    .line 192
    const/4 v11, 0x0

    :try_start_7
    aget-object v11, v6, v11

    iget-object v12, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAcc:Ljava/security/AccessControlContext;

    invoke-direct {p0, v8, v11, v12}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->finishAccept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;Ljava/security/AccessControlContext;)Ljava/nio/channels/AsynchronousSocketChannel;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v1

    .line 201
    .end local v1    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    :cond_2
    :goto_1
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptHandler:Ljava/nio/channels/CompletionHandler;

    .line 202
    .local v4, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptAttachment:Ljava/lang/Object;

    .line 203
    .local v0, "att":Ljava/lang/Object;
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->acceptFuture:Lsun/nio/ch/PendingFuture;

    .line 206
    .local v3, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->enableAccept()V

    .line 208
    if-nez v4, :cond_6

    .line 209
    invoke-virtual {v3, v1, v2}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 212
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lsun/nio/ch/PendingFuture;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 214
    :try_start_8
    invoke-virtual {v1}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 220
    :cond_3
    :goto_2
    return-void

    .line 185
    .end local v0    # "att":Ljava/lang/Object;
    .end local v3    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .end local v4    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .local v2, "exc":Ljava/lang/Throwable;
    .restart local v7    # "n":I
    :cond_4
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    goto :goto_0

    .line 184
    .end local v7    # "n":I
    :catchall_2
    move-exception v11

    .line 185
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousServerSocketChannelImpl;->end()V

    .line 184
    throw v11

    .line 193
    .end local v2    # "exc":Ljava/lang/Throwable;
    .restart local v1    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    :catch_1
    move-exception v9

    .line 194
    .restart local v9    # "x":Ljava/lang/Throwable;
    instance-of v11, v9, Ljava/io/IOException;

    if-nez v11, :cond_5

    instance-of v11, v9, Ljava/lang/SecurityException;

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    .line 195
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v9    # "x":Ljava/lang/Throwable;
    .local v10, "x":Ljava/lang/Throwable;
    move-object v9, v10

    .line 196
    .end local v10    # "x":Ljava/lang/Throwable;
    .restart local v9    # "x":Ljava/lang/Throwable;
    :cond_5
    move-object v2, v9

    .local v2, "exc":Ljava/lang/Throwable;
    goto :goto_1

    .line 215
    .end local v1    # "child":Ljava/nio/channels/AsynchronousSocketChannel;
    .end local v2    # "exc":Ljava/lang/Throwable;
    .end local v9    # "x":Ljava/lang/Throwable;
    .restart local v0    # "att":Ljava/lang/Object;
    .restart local v3    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    .restart local v4    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;Ljava/lang/Object;>;"
    :catch_2
    move-exception v5

    .local v5, "ignore":Ljava/io/IOException;
    goto :goto_2

    .line 218
    .end local v5    # "ignore":Ljava/io/IOException;
    :cond_6
    invoke-static {p0, v4, v0, v1, v2}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
