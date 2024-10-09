.class public abstract Ljava/net/DatagramSocketImpl;
.super Ljava/lang/Object;
.source "DatagramSocketImpl.java"

# interfaces
.implements Ljava/net/SocketOptions;


# instance fields
.field protected fd:Ljava/io/FileDescriptor;

.field protected localPort:I

.field socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bind(ILjava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method protected abstract close()V
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method protected abstract create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation
.end method

.method dataAvailable()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected disconnect()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method protected getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    return v0
.end method

.method getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
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
    .line 283
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_0

    .line 284
    const/16 v1, 0x1001

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 285
    :cond_0
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_1

    .line 286
    const/16 v1, 0x1002

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 287
    :cond_1
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_2

    .line 288
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 289
    :cond_2
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_3

    .line 290
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 291
    :cond_3
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_4

    .line 292
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    .line 291
    if-eqz v1, :cond_4

    .line 293
    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 294
    :cond_4
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_5

    .line 295
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    .line 294
    if-eqz v1, :cond_5

    .line 296
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    .local v0, "ttl":Ljava/lang/Integer;
    return-object v0

    .line 298
    .end local v0    # "ttl":Ljava/lang/Integer;
    :cond_5
    sget-object v1, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v1, :cond_6

    .line 299
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    instance-of v1, v1, Ljava/net/MulticastSocket;

    .line 298
    if-eqz v1, :cond_6

    .line 300
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 302
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "unsupported option"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract getTTL()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract getTimeToLive()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract join(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leave(Ljava/net/InetAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peek(Ljava/net/InetAddress;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekData(Ljava/net/DatagramPacket;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract receive(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract send(Ljava/net/DatagramPacket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/DatagramSocket;

    .prologue
    .line 63
    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->socket:Ljava/net/DatagramSocket;

    .line 64
    return-void
.end method

.method setOption(Ljava/net/SocketOption;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_0

    .line 258
    const/16 v0, 0x1001

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 280
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 259
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_1

    .line 260
    const/16 v0, 0x1002

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_1
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_2

    .line 262
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    .line 263
    :cond_2
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_3

    .line 264
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_3
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4

    .line 266
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    .line 265
    if-eqz v0, :cond_4

    .line 267
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    .line 268
    :cond_4
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_6

    .line 269
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    .line 268
    if-eqz v0, :cond_6

    .line 270
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not an integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_5
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    goto :goto_0

    .line 274
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    sget-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_7

    .line 275
    invoke-virtual {p0}, Ljava/net/DatagramSocketImpl;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    instance-of v0, v0, Ljava/net/MulticastSocket;

    .line 274
    if-eqz v0, :cond_7

    .line 276
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "unsupported option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract setTTL(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract setTimeToLive(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
