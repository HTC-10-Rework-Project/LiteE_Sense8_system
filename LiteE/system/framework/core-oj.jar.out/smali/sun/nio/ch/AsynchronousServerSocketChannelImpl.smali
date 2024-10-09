.class abstract Lsun/nio/ch/AsynchronousServerSocketChannelImpl;
.super Ljava/nio/channels/AsynchronousServerSocketChannel;
.source "AsynchronousServerSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Cancellable;
.implements Lsun/nio/ch/Groupable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/AsynchronousServerSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# instance fields
.field private volatile acceptKilled:Z

.field private closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final fd:Ljava/io/FileDescriptor;

.field private isReuseAddress:Z

.field protected volatile localAddress:Ljava/net/InetSocketAddress;

.field private volatile open:Z

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .locals 2
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousServerSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 61
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z

    .line 71
    invoke-static {v1}, Lsun/nio/ch/Net;->serverSocket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 72
    return-void
.end method


# virtual methods
.method public final accept()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, v0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final accept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/AsynchronousSocketChannel;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "attachment":Ljava/lang/Object;, "TA;"
    .local p2, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/AsynchronousSocketChannel;-TA;>;"
    if-nez p2, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 135
    return-void
.end method

.method final begin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 86
    :cond_0
    return-void
.end method

.method public final bind(Ljava/net/SocketAddress;I)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 6
    .param p1, "local"    # Ljava/net/SocketAddress;
    .param p2, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_1

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 152
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 153
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 157
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 158
    iget-object v3, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_2

    .line 160
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    .end local p2    # "backlog":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    :catchall_1
    move-exception v2

    .line 167
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 166
    throw v2

    .line 151
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    .restart local p2    # "backlog":I
    :cond_1
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 161
    .restart local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 162
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 163
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v4, 0x1

    if-ge p2, v4, :cond_3

    const/16 p2, 0x32

    .end local p2    # "backlog":I
    :cond_3
    invoke-static {v2, p2}, Lsun/nio/ch/Net;->listen(Ljava/io/FileDescriptor;I)V

    .line 164
    iget-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 167
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 169
    return-object p0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->implClose()V

    .line 112
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    throw v0
.end method

.method final end()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void
.end method

.method public final getLocalAddress()Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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
    .line 208
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
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

    .line 214
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 215
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    .line 216
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 215
    if-eqz v0, :cond_2

    .line 219
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 219
    return-object v0

    .line 221
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 221
    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 222
    throw v0
.end method

.method abstract implAccept(Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final isAcceptKilled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->acceptKilled:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->open:Z

    return v0
.end method

.method public final onCancel(Lsun/nio/ch/PendingFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/PendingFuture",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "task":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<**>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->acceptKilled:Z

    .line 144
    return-void
.end method

.method public final setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousServerSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
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

    .line 190
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->begin()V

    .line 191
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    .line 192
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 191
    if-eqz v0, :cond_2

    .line 195
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isReuseAddress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 199
    return-object p0

    .line 197
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 201
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->end()V

    .line 200
    throw v0
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousServerSocketChannel;

    move-result-object v0

    return-object v0
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
    .line 240
    sget-object v0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string/jumbo v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 251
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 252
    const-string/jumbo v1, "unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/AsynchronousServerSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
