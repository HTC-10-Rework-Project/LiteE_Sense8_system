.class public Lsun/nio/ch/SocketAdaptor;
.super Ljava/net/Socket;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketAdaptor$SocketInputStream;
    }
.end annotation


# instance fields
.field private final sc:Lsun/nio/ch/SocketChannelImpl;

.field private socketInputStream:Ljava/io/InputStream;

.field private volatile timeout:I


# direct methods
.method static synthetic -get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/SocketAdaptor;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/SocketAdaptor;)I
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/SocketAdaptor;

    .prologue
    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return v0
.end method

.method private constructor <init>(Lsun/nio/ch/SocketChannelImpl;)V
    .locals 2
    .param p1, "sc"    # Lsun/nio/ch/SocketChannelImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lsun/nio/ch/FileDescriptorHolderSocketImpl;

    invoke-virtual {p1}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/nio/ch/FileDescriptorHolderSocketImpl;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    .line 61
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    .line 62
    return-void
.end method

.method public static create(Lsun/nio/ch/SocketChannelImpl;)Ljava/net/Socket;
    .locals 3
    .param p0, "sc"    # Lsun/nio/ch/SocketChannelImpl;

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor;

    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor;-><init>(Lsun/nio/ch/SocketChannelImpl;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/InternalError;

    const-string/jumbo v2, "Should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getBooleanOption(Ljava/net/SocketOption;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 307
    const/4 v1, 0x0

    return v1
.end method

.method private getIntOption(Ljava/net/SocketOption;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    .line 316
    const/4 v1, -0x1

    return v1
.end method

.method private setBooleanOption(Ljava/net/SocketOption;Z)V
    .locals 3
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setIntOption(Ljava/net/SocketOption;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lsun/nio/ch/SocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "x":Ljava/io/IOException;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateToSocketException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1, p1}, Lsun/nio/ch/SocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->close()V

    .line 410
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/SocketAdaptor;->connect(Ljava/net/SocketAddress;I)V

    .line 80
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 12
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "connect: The address can\'t be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 85
    :cond_0
    if-gez p2, :cond_1

    .line 86
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "connect: timeout can\'t be negative"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 88
    :cond_1
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 89
    :try_start_0
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-nez v8, :cond_2

    .line 90
    new-instance v8, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v8}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 94
    :cond_2
    if-nez p2, :cond_4

    .line 97
    :try_start_1
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v9

    .line 102
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 132
    .local v7, "x":Ljava/lang/Exception;
    const/4 v8, 0x1

    :try_start_3
    invoke-static {v7, v8}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v7    # "x":Ljava/lang/Exception;
    :cond_3
    :goto_1
    monitor-exit v9

    .line 136
    return-void

    .line 105
    :cond_4
    :try_start_4
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :try_start_5
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8, p1}, Lsun/nio/ch/SocketChannelImpl;->connect(Ljava/net/SocketAddress;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    :try_start_6
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 128
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    monitor-exit v9

    .line 108
    return-void

    .line 109
    :cond_6
    int-to-long v4, p2

    .line 111
    .local v4, "to":J
    :cond_7
    :try_start_7
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-nez v8, :cond_9

    .line 112
    new-instance v8, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v8}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 126
    .end local v4    # "to":J
    :catchall_1
    move-exception v8

    .line 127
    :try_start_8
    iget-object v10, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v10}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 128
    iget-object v10, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 126
    :cond_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    .restart local v4    # "to":J
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 115
    .local v2, "st":J
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    sget-short v10, Lsun/nio/ch/Net;->POLLCONN:S

    invoke-virtual {v8, v10, v4, v5}, Lsun/nio/ch/SocketChannelImpl;->poll(IJ)I

    move-result v1

    .line 116
    .local v1, "result":I
    if-lez v1, :cond_a

    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->finishConnect()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v8

    if-eqz v8, :cond_a

    .line 127
    :try_start_a
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 128
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 118
    :cond_a
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v10

    sub-long/2addr v10, v2

    sub-long/2addr v4, v10

    .line 119
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gtz v8, :cond_7

    .line 121
    :try_start_c
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 123
    :goto_2
    :try_start_d
    new-instance v8, Ljava/net/SocketTimeoutException;

    invoke-direct {v8}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 122
    :catch_2
    move-exception v6

    .local v6, "x":Ljava/io/IOException;
    goto :goto_2
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    return-object v2

    .line 152
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 153
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    .line 154
    return-object v2

    .line 156
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "remote":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket input is shutdown"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_3

    .line 249
    :try_start_0
    new-instance v1, Lsun/nio/ch/SocketAdaptor$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/SocketAdaptor$1;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    .line 248
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_3
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->socketInputStream:Ljava/io/InputStream;

    return-object v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 163
    .local v0, "local":Ljava/net/InetSocketAddress;
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 167
    .end local v0    # "local":Ljava/net/InetSocketAddress;
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPort()I
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 186
    .local v0, "local":Ljava/net/SocketAddress;
    if-nez v0, :cond_0

    .line 187
    const/4 v1, -0x1

    return v1

    .line 189
    :cond_0
    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "local":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 349
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is not connected"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_1
    iget-object v2, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v2}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket output is shutdown"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 268
    :cond_2
    const/4 v1, 0x0

    .line 271
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Lsun/nio/ch/SocketAdaptor$2;

    invoke-direct {v2, p0}, Lsun/nio/ch/SocketAdaptor$2;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    .line 270
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    .line 276
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public getPort()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    return v2

    .line 176
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 177
    .local v0, "remote":Ljava/net/SocketAddress;
    if-nez v0, :cond_1

    .line 178
    return v2

    .line 180
    :cond_1
    check-cast v0, Ljava/net/InetSocketAddress;

    .end local v0    # "remote":Ljava/net/SocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    return v1
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 359
    iget v0, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 325
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getBooleanOption(Ljava/net/SocketOption;)Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0}, Lsun/nio/ch/SocketAdaptor;->getIntOption(Ljava/net/SocketOption;)I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isInputOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isOutputOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 3
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Lsun/nio/ch/SocketChannelImpl;->sendOutOfBandData(B)I

    move-result v0

    .line 340
    .local v0, "n":I
    if-nez v0, :cond_0

    .line 341
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Socket buffer full"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 385
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 386
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 345
    sget-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 346
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 375
    if-gtz p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 378
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 401
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 402
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 364
    if-gtz p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 367
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    const/4 p2, -0x1

    .line 331
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p2}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 332
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 353
    if-gez p1, :cond_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    iput p1, p0, Lsun/nio/ch/SocketAdaptor;->timeout:I

    .line 356
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setBooleanOption(Ljava/net/SocketOption;Z)V

    .line 322
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 393
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    invoke-direct {p0, v0, p1}, Lsun/nio/ch/SocketAdaptor;->setIntOption(Ljava/net/SocketOption;I)V

    .line 394
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownInput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v1}, Lsun/nio/ch/SocketChannelImpl;->shutdownOutput()Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lsun/nio/ch/Net;->translateException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lsun/nio/ch/SocketAdaptor;->sc:Lsun/nio/ch/SocketChannelImpl;

    invoke-virtual {v0}, Lsun/nio/ch/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Socket[addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    const-string/jumbo v1, ",port="

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string/jumbo v1, ",localport="

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lsun/nio/ch/SocketAdaptor;->getLocalPort()I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "]"

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    const-string/jumbo v0, "Socket[unconnected]"

    return-object v0
.end method
