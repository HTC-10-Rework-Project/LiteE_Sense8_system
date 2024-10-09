.class Lsun/nio/ch/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/SelChImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ST_INUSE:I = 0x0

.field private static final ST_KILLED:I = 0x1

.field private static final ST_UNINITIALIZED:I = -0x1

.field private static nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private fdVal:I

.field private isReuseAddress:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private final lock:Ljava/lang/Object;

.field socket:Ljava/net/ServerSocket;

.field private state:I

.field private final stateLock:Ljava/lang/Object;

.field private volatile thread:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/ServerSocketChannelImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    .line 440
    invoke-static {}, Lsun/nio/ch/ServerSocketChannelImpl;->initIDs()V

    .line 441
    new-instance v0, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v0}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 89
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "bound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 99
    iput-object p2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 100
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    .line 102
    if-eqz p3, :cond_0

    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 104
    :cond_0
    return-void
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
    .line 423
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/ServerSocketChannelImpl;->accept0(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

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

.method private static native initIDs()V
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 234
    iget-object v10, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 236
    new-instance v7, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v7}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    .line 237
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v7

    if-nez v7, :cond_1

    .line 238
    new-instance v7, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v7}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v7

    .line 239
    :cond_1
    const/4 v4, 0x0

    .line 241
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x0

    .line 242
    .local v2, "n":I
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 243
    .local v3, "newfd":Ljava/io/FileDescriptor;
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .local v1, "isaa":[Ljava/net/InetSocketAddress;
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    .line 247
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_3

    .line 257
    const-wide/16 v8, 0x0

    :try_start_3
    iput-wide v8, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 258
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 259
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v10

    .line 248
    return-object v11

    .line 249
    :cond_3
    :try_start_4
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v12

    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 251
    :cond_4
    iget-object v7, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v7, v3, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->accept(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/net/InetSocketAddress;)I

    move-result v2

    .line 252
    const/4 v7, -0x3

    if-ne v2, v7, :cond_5

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    .line 257
    :cond_5
    const-wide/16 v12, 0x0

    :try_start_5
    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 258
    if-lez v2, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p0, v9}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 259
    sget-boolean v7, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_9

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 256
    :catchall_1
    move-exception v7

    .line 257
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 258
    if-lez v2, :cond_7

    :goto_0
    invoke-virtual {p0, v8}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 259
    sget-boolean v8, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v8, :cond_8

    invoke-static {v2}, Lsun/nio/ch/IOStatus;->check(I)Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_7
    move v8, v9

    .line 258
    goto :goto_0

    .line 256
    :cond_8
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    :cond_9
    if-ge v2, v8, :cond_a

    monitor-exit v10

    .line 263
    return-object v11

    .line 265
    :cond_a
    const/4 v7, 0x1

    :try_start_6
    invoke-static {v3, v7}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 266
    const/4 v7, 0x0

    aget-object v0, v1, v7

    .line 267
    .local v0, "isa":Ljava/net/InetSocketAddress;
    new-instance v4, Lsun/nio/ch/SocketChannelImpl;

    .end local v4    # "sc":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v7

    invoke-direct {v4, v7, v3, v0}, Lsun/nio/ch/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .line 268
    .local v4, "sc":Ljava/nio/channels/SocketChannel;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    .line 269
    .local v5, "sm":Ljava/lang/SecurityManager;
    if-eqz v5, :cond_b

    .line 271
    :try_start_7
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 271
    invoke-virtual {v5, v7, v8}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    monitor-exit v10

    .line 278
    return-object v4

    .line 273
    :catch_0
    move-exception v6

    .line 274
    .local v6, "x":Ljava/lang/SecurityException;
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->close()V

    .line 275
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/ServerSocketChannel;
    .locals 6
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local p2    # "backlog":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 216
    .restart local p2    # "backlog":I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2

    .line 218
    :cond_1
    if-nez p1, :cond_4

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 220
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 221
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 223
    :cond_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 224
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 225
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v4, 0x1

    if-ge p2, v4, :cond_3

    const/16 p2, 0x32

    .end local p2    # "backlog":I
    :cond_3
    invoke-static {v2, p2}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    .line 226
    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 230
    return-object p0

    .line 219
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p2    # "backlog":I
    :cond_4
    :try_start_4
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 226
    .end local p2    # "backlog":I
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFDVal()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fdVal:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    .line 122
    :cond_1
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->asInetSocketAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 171
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    .line 172
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 171
    if-eqz v0, :cond_3

    .line 175
    iget-boolean v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 178
    :cond_3
    :try_start_2
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v2, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v2, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method protected implCloseSelectableChannel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    iget v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 290
    sget-object v2, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v4}, Lsun/nio/ch/NativeDispatcher;->preClose(Ljava/io/FileDescriptor;)V

    .line 291
    :cond_0
    iget-wide v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 292
    .local v0, "th":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 293
    invoke-static {v0, v1}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 294
    :cond_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 297
    return-void

    .line 288
    .end local v0    # "th":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 285
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public kill()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 300
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    monitor-exit v1

    .line 302
    return-void

    .line 303
    :cond_0
    :try_start_1
    iget v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 305
    return-void

    .line 307
    :cond_1
    :try_start_2
    sget-boolean v0, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 308
    :cond_3
    :try_start_3
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 309
    const/4 v0, 0x1

    iput v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 311
    return-void
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method poll(IJ)I
    .locals 6
    .param p1, "events"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 353
    sget-boolean v2, Lsun/nio/ch/ServerSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 355
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "n":I
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->begin()V

    .line 359
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 360
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 366
    const-wide/16 v4, 0x0

    :try_start_3
    iput-wide v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 367
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v2

    .line 361
    return v1

    .line 362
    :cond_2
    :try_start_4
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v3

    .line 364
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3, p1, p2, p3}, Lsun/nio/ch/Net;->poll(Ljava/io/FileDescriptor;IJ)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    .line 366
    const-wide/16 v4, 0x0

    :try_start_6
    iput-wide v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 367
    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p0, v1}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v2

    .line 369
    return v0

    .line 359
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v3

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 365
    :catchall_1
    move-exception v1

    .line 366
    const-wide/16 v4, 0x0

    :try_start_8
    iput-wide v4, p0, Lsun/nio/ch/ServerSocketChannelImpl;->thread:J

    .line 367
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lsun/nio/ch/ServerSocketChannelImpl;->end(Z)V

    .line 365
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 355
    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/ServerSocketChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/ServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_4

    .line 139
    invoke-static {}, Lsun/nio/ch/Net;->isIPv6Available()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    .line 141
    .local v0, "family":Ljava/net/ProtocolFamily;
    :goto_0
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, v0, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 142
    return-object p0

    .line 140
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_3
    :try_start_2
    sget-object v0, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    .restart local v0    # "family":Ljava/net/ProtocolFamily;
    goto :goto_0

    .line 145
    .end local v0    # "family":Ljava/net/ProtocolFamily;
    :cond_4
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5

    .line 146
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v1

    .line 145
    if-eqz v1, :cond_5

    .line 149
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->isReuseAddress:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v2

    .line 154
    return-object p0

    .line 152
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    :try_start_3
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v1, v3, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    if-nez v0, :cond_0

    .line 110
    invoke-static {p0}, Lsun/nio/ch/ServerSocketAdaptor;->create(Lsun/nio/ch/ServerSocketChannelImpl;)Ljava/net/ServerSocket;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    .line 111
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 196
    sget-object v0, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    const-string/jumbo v2, "closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 401
    :cond_0
    iget-object v3, p0, Lsun/nio/ch/ServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/ServerSocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 403
    .local v0, "addr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_1

    .line 404
    const-string/jumbo v2, "unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 406
    :cond_1
    :try_start_1
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 401
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V
    .locals 2
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 380
    .local v0, "newOps":I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 381
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    .line 383
    :cond_0
    iget-object v1, p2, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    invoke-virtual {v1, p2, v0}, Lsun/nio/ch/SelectorImpl;->putEventOps(Lsun/nio/ch/SelectionKeyImpl;I)V

    .line 384
    return-void
.end method

.method public translateAndSetReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateAndUpdateReadyOps(ILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 1
    .param p1, "ops"    # I
    .param p2, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    .line 344
    invoke-virtual {p2}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lsun/nio/ch/ServerSocketChannelImpl;->translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z

    move-result v0

    return v0
.end method

.method public translateReadyOps(IILsun/nio/ch/SelectionKeyImpl;)Z
    .locals 7
    .param p1, "ops"    # I
    .param p2, "initialOps"    # I
    .param p3, "sk"    # Lsun/nio/ch/SelectionKeyImpl;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 318
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps()I

    move-result v0

    .line 319
    .local v0, "intOps":I
    invoke-virtual {p3}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps()I

    move-result v2

    .line 320
    .local v2, "oldOps":I
    move v1, p2

    .line 322
    .local v1, "newOps":I
    sget-short v5, Lsun/nio/ch/Net;->POLLNVAL:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 326
    return v4

    .line 329
    :cond_0
    sget-short v5, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v6, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v5, v6

    and-int/2addr v5, p1

    if-eqz v5, :cond_2

    .line 330
    move v1, v0

    .line 331
    invoke-virtual {p3, v0}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 332
    not-int v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    .line 335
    :cond_2
    sget-short v5, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    .line 336
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 337
    or-int/lit8 v1, p2, 0x10

    .line 339
    :cond_3
    invoke-virtual {p3, v1}, Lsun/nio/ch/SelectionKeyImpl;->nioReadyOps(I)V

    .line 340
    not-int v5, v2

    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    :goto_1
    return v3

    :cond_4
    move v3, v4

    goto :goto_1
.end method
