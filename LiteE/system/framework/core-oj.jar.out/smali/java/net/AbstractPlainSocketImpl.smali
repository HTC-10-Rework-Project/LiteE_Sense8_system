.class abstract Ljava/net/AbstractPlainSocketImpl;
.super Ljava/net/SocketImpl;
.source "AbstractPlainSocketImpl.java"


# static fields
.field public static final SHUT_RD:I = 0x0

.field public static final SHUT_WR:I = 0x1


# instance fields
.field private CONNECTION_NOT_RESET:I

.field private CONNECTION_RESET:I

.field private CONNECTION_RESET_PENDING:I

.field protected closePending:Z

.field protected final fdLock:Ljava/lang/Object;

.field protected fdUseCount:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private final resetLock:Ljava/lang/Object;

.field private resetState:I

.field private shut_rd:Z

.field private shut_wr:Z

.field private socketInputStream:Ljava/net/SocketInputStream;

.field private socketOutputStream:Ljava/net/SocketOutputStream;

.field protected stream:Z

.field timeout:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 55
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    .line 56
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    .line 58
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    .line 59
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;

    .line 62
    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    .line 68
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    .line 71
    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    .line 81
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 48
    return-void
.end method

.method private connectToAddress(Ljava/net/InetAddress;II)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->doConnect(Ljava/net/InetAddress;II)V

    goto :goto_0
.end method

.method private socketPreClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0(Z)V

    .line 715
    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "s"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;

    .line 415
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 416
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketAccept(Ljava/net/SocketImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 420
    return-void

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 417
    throw v0
.end method

.method acquireFD()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 629
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 631
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 476
    :try_start_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 477
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Stream closed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionReset()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 485
    return v4

    .line 495
    :cond_1
    const/4 v2, 0x0

    .line 497
    .local v2, "n":I
    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v2

    .line 498
    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isConnectionResetPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_2
    .catch Lsun/net/ConnectionResetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 511
    return v2

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "exc1":Lsun/net/ConnectionResetException;
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionResetPending()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    :try_start_4
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketAvailable()I

    move-result v2

    .line 505
    if-nez v2, :cond_2

    .line 506
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->setConnectionReset()V
    :try_end_4
    .catch Lsun/net/ConnectionResetException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 508
    :catch_1
    move-exception v1

    .local v1, "exc2":Lsun/net/ConnectionResetException;
    goto :goto_0
.end method

.method protected declared-synchronized bind(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "lport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1

    .line 393
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketBind(Ljava/net/InetAddress;I)V

    .line 394
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->setBound()V

    .line 396
    :cond_2
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->setBound()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit p0

    .line 398
    return-void

    .line 388
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    if-nez v0, :cond_0

    .line 521
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 529
    :cond_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v0, :cond_2

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    .line 531
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    .line 532
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 534
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 544
    :try_start_1
    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;->socketPreClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 551
    return-void

    .line 545
    :catchall_0
    move-exception v0

    .line 546
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    .line 545
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 518
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 559
    :cond_1
    :try_start_4
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 560
    invoke-direct {p0}, Ljava/net/AbstractPlainSocketImpl;->socketPreClose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit v1

    .line 565
    return-void
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "connected":Z
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 123
    .local v0, "address":Ljava/net/InetAddress;
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 124
    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 126
    iget v3, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, v0, p2, v3}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const/4 v1, 0x1

    .line 129
    if-nez v1, :cond_0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 128
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 129
    if-nez v1, :cond_1

    .line 131
    :try_start_2
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    :cond_1
    :goto_1
    throw v3

    .line 132
    :catch_1
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_1
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iput p2, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 148
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 151
    :try_start_0
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {p0, p1, p2, v1}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 156
    throw v0
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 6
    .param p1, "address"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 174
    .local v2, "connected":Z
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 175
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :catchall_0
    move-exception v4

    .line 185
    if-nez v2, :cond_1

    .line 187
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :cond_1
    :goto_0
    throw v4

    .line 176
    :cond_2
    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 177
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    new-instance v4, Ljava/net/UnknownHostException;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_3
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iput v4, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 180
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 182
    iget-object v4, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    iget v5, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    invoke-direct {p0, v4, v5, p2}, Ljava/net/AbstractPlainSocketImpl;->connectToAddress(Ljava/net/InetAddress;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    const/4 v2, 0x1

    .line 185
    if-nez v2, :cond_4

    .line 187
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 194
    :cond_4
    :goto_1
    return-void

    .line 188
    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .restart local v3    # "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method protected declared-synchronized create(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 88
    :try_start_0
    iput-boolean p1, p0, Ljava/net/AbstractPlainSocketImpl;->stream:Z

    .line 89
    if-nez p1, :cond_3

    .line 90
    invoke-static {}, Lsun/net/ResourceManager;->beforeUdpCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setCreated()V

    .line 102
    :cond_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->setCreated()V

    .line 106
    :cond_1
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    .line 109
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lsun/net/ResourceManager;->afterUdpClose()V

    .line 95
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_3
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketCreate(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized doConnect(Ljava/net/InetAddress;II)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 348
    :try_start_1
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 353
    :try_start_3
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->acquireFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 355
    :try_start_4
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 356
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/AbstractPlainSocketImpl;->socketConnect(Ljava/net/InetAddress;II)V

    .line 358
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 359
    :try_start_5
    iget-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-eqz v1, :cond_2

    .line 360
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket closed"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    :catchall_1
    move-exception v1

    .line 372
    :try_start_7
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V

    .line 371
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 376
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    monitor-exit p0

    throw v1

    .line 347
    :catchall_3
    move-exception v1

    :try_start_9
    monitor-exit v2

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_2
    :try_start_a
    monitor-exit v2

    .line 367
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setBound()V

    .line 369
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->setConnected()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 372
    :cond_3
    :try_start_b
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->releaseFD()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    monitor-exit p0

    .line 378
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 619
    :cond_0
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->close()V

    .line 620
    return-void
.end method

.method protected declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 427
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Socket Closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    if-eqz v0, :cond_1

    .line 430
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Socket input is shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Ljava/net/SocketInputStream;

    invoke-direct {v0, p0}, Ljava/net/SocketInputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v1

    .line 434
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 2
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_1

    .line 283
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 337
    :cond_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketGetOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Socket Closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 448
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Socket output is shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;

    if-nez v0, :cond_2

    .line 451
    new-instance v0, Ljava/net/SocketOutputStream;

    invoke-direct {v0, p0}, Ljava/net/SocketOutputStream;-><init>(Ljava/net/AbstractPlainSocketImpl;)V

    iput-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    monitor-exit v1

    .line 453
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketOutputStream:Ljava/net/SocketOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    return v0
.end method

.method public isClosedOrPending()Z
    .locals 2

    .prologue
    .line 693
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    iget-boolean v0, p0, Ljava/net/AbstractPlainSocketImpl;->closePending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 694
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionReset()Z
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isConnectionResetPending()Z
    .locals 3

    .prologue
    .line 665
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected declared-synchronized listen(I)V
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 405
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketListen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 406
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseFD()V
    .locals 4

    .prologue
    .line 641
    iget-object v2, p0, Ljava/net/AbstractPlainSocketImpl;->fdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 642
    :try_start_0
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    .line 643
    iget v1, p0, Ljava/net/AbstractPlainSocketImpl;->fdUseCount:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 644
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 646
    :try_start_1
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 656
    return-void

    .line 647
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->socketClose()V

    .line 571
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 573
    :cond_0
    invoke-super {p0}, Ljava/net/SocketImpl;->reset()V

    .line 574
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 606
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    invoke-virtual {p0, p1}, Ljava/net/AbstractPlainSocketImpl;->socketSendUrgentData(I)V

    .line 609
    return-void
.end method

.method setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 461
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->address:Ljava/net/InetAddress;

    .line 462
    return-void
.end method

.method public setConnectionReset()V
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET:I

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 674
    return-void

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setConnectionResetPending()V
    .locals 3

    .prologue
    .line 677
    iget-object v1, p0, Ljava/net/AbstractPlainSocketImpl;->resetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I

    iget v2, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_NOT_RESET:I

    if-ne v0, v2, :cond_0

    .line 679
    iget v0, p0, Ljava/net/AbstractPlainSocketImpl;->CONNECTION_RESET_PENDING:I

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->resetState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 683
    return-void

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 457
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    .line 458
    return-void
.end method

.method setInputStream(Ljava/net/SocketInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/net/SocketInputStream;

    .prologue
    .line 438
    iput-object p1, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    .line 439
    return-void
.end method

.method setLocalPort(I)V
    .locals 0
    .param p1, "localport"    # I

    .prologue
    .line 469
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->localport:I

    .line 470
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 2
    .param p1, "opt"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/net/AbstractPlainSocketImpl;->isClosedOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket Closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    const/16 v0, 0x1006

    if-ne p1, v0, :cond_1

    move-object v0, p2

    .line 274
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Ljava/net/AbstractPlainSocketImpl;->timeout:I

    .line 276
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/net/AbstractPlainSocketImpl;->socketSetOption(ILjava/lang/Object;)V

    .line 277
    return-void
.end method

.method setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 465
    iput p1, p0, Ljava/net/AbstractPlainSocketImpl;->port:I

    .line 466
    return-void
.end method

.method protected shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 581
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    .line 583
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->socketInputStream:Ljava/net/SocketInputStream;

    invoke-virtual {v0, v1}, Ljava/net/SocketInputStream;->setEOF(Z)V

    .line 586
    :cond_0
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_rd:Z

    .line 588
    :cond_1
    return-void
.end method

.method protected shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 594
    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/AbstractPlainSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0, v1}, Ljava/net/AbstractPlainSocketImpl;->socketShutdown(I)V

    .line 596
    iput-boolean v1, p0, Ljava/net/AbstractPlainSocketImpl;->shut_wr:Z

    .line 598
    :cond_0
    return-void
.end method

.method abstract socketAccept(Ljava/net/SocketImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketAvailable()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketBind(Ljava/net/InetAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected socketClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/AbstractPlainSocketImpl;->socketClose0(Z)V

    .line 722
    return-void
.end method

.method abstract socketClose0(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketConnect(Ljava/net/InetAddress;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketCreate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketGetOption(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketListen(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSendUrgentData(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract socketSetOption(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method abstract socketShutdown(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected supportsUrgentData()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method
