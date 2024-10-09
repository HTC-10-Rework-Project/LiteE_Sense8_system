.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private connected:Z

.field private created:Z

.field impl:Ljava/net/SocketImpl;

.field private oldImpl:Z

.field private shutIn:Z

.field private shutOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1687
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 86
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 289
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, p2, v0, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 378
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 330
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 7
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v6, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v6, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v6, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v6, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v6, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v6, p0, Ljava/net/Socket;->oldImpl:Z

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid Proxy"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 122
    :cond_0
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v5, :cond_4

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 124
    .local v2, "p":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    .line 127
    .local v4, "type":Ljava/net/Proxy$Type;
    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_6

    .line 128
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 129
    .local v3, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 130
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    const-string/jumbo v6, "Socket"

    invoke-direct {p0, v5, v6}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 133
    :cond_1
    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v1, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 136
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 145
    :cond_3
    :goto_1
    new-instance v5, Ljava/net/SocksSocketImpl;

    invoke-direct {v5, v2}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 146
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 157
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :goto_2
    return-void

    .line 123
    .end local v2    # "p":Ljava/net/Proxy;
    .end local v4    # "type":Ljava/net/Proxy$Type;
    :cond_4
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v2

    .restart local v2    # "p":Ljava/net/Proxy;
    goto :goto_0

    .line 139
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v3    # "security":Ljava/lang/SecurityManager;
    .restart local v4    # "type":Ljava/net/Proxy$Type;
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    .line 139
    invoke-virtual {v3, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    .line 148
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_6
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v2, v5, :cond_8

    .line 149
    sget-object v5, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v5, :cond_7

    .line 150
    new-instance v5, Ljava/net/PlainSocketImpl;

    invoke-direct {v5}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 151
    iget-object v5, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v5, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    goto :goto_2

    .line 155
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Invalid Proxy"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 171
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 174
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 176
    :cond_0
    return-void
.end method

.method private constructor <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .locals 7
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 64
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 65
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    .line 76
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    .line 433
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 434
    :cond_0
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Impossible: empty address list"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 437
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 438
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 440
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    aget-object v4, p1, v3

    invoke-direct {v0, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 441
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    .line 442
    if-eqz p3, :cond_2

    .line 443
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 445
    :cond_2
    invoke-virtual {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_3
    return-void

    .line 447
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 453
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->closed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    .line 460
    throw v2

    .line 454
    :catch_1
    move-exception v1

    .line 455
    .local v1, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 465
    .end local v1    # "ce":Ljava/io/IOException;
    :cond_4
    iput-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 466
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 467
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 468
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 677
    return-void

    .line 679
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_0
    if-nez v0, :cond_2

    .line 680
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    :cond_2
    return-void
.end method

.method private checkOldImpl()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_0

    .line 493
    return-void

    .line 498
    :cond_0
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 497
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 517
    return-void
.end method

.method private static nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 423
    if-nez p0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/Socket;

    monitor-enter v2

    .line 1716
    :try_start_0
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_0

    .line 1717
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1719
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1720
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1721
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1723
    :cond_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1724
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 6
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_0
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 654
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Already bound"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_1
    if-eqz p1, :cond_2

    instance-of v4, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 657
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v1, p1

    .line 658
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 659
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 660
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Unresolved address"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 661
    :cond_3
    if-nez v1, :cond_4

    .line 662
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 664
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 665
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 666
    .local v2, "port":I
    const-string/jumbo v4, "bind"

    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 668
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5

    .line 669
    invoke-virtual {v3, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 671
    :cond_5
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 672
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->bound:Z

    .line 673
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1530
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1531
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1532
    return-void

    .line 1533
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 1535
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1537
    return-void

    .line 1530
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 566
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 7
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 586
    if-nez p1, :cond_0

    .line 587
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "connect: The address can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 589
    :cond_0
    if-gez p2, :cond_1

    .line 590
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "connect: timeout can\'t be negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 592
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :cond_2
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 596
    new-instance v4, Ljava/net/SocketException;

    const-string/jumbo v5, "already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_3
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_4

    .line 599
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v1, p1

    .line 601
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 602
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 603
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 604
    .local v2, "port":I
    const-string/jumbo v4, "connect"

    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 607
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5

    .line 608
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 609
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 613
    :cond_5
    :goto_0
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    if-nez v4, :cond_6

    .line 614
    invoke-virtual {p0, v6}, Ljava/net/Socket;->createImpl(Z)V

    .line 615
    :cond_6
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_8

    .line 616
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 624
    :goto_1
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    .line 629
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    .line 630
    return-void

    .line 611
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 617
    :cond_8
    if-nez p2, :cond_a

    .line 618
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 619
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_1

    .line 621
    :cond_9
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    goto :goto_1

    .line 623
    :cond_a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method createImpl(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 484
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 485
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 546
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_0

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 548
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 716
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 717
    return-object v2

    .line 719
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 932
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 933
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 934
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket input is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 935
    :cond_2
    move-object v2, p0

    .line 936
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 939
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$2;

    invoke-direct {v3, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    .line 938
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 944
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1358
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1360
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    .line 742
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-nez v5, :cond_0

    .line 743
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    return-object v5

    .line 744
    :cond_0
    const/4 v3, 0x0

    .line 746
    .local v3, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 747
    .local v3, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 748
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    .line 749
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 750
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 751
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 758
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    :goto_0
    return-object v3

    .line 755
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0

    .line 753
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 793
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    return v2

    .line 796
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 797
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 857
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x0

    return-object v0

    .line 859
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 970
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 971
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 972
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 973
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 974
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket output is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    :cond_2
    move-object v2, p0

    .line 976
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 979
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$3;

    invoke-direct {v3, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    .line 978
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    .line 984
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 772
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    const/4 v1, 0x0

    return v1

    .line 775
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 776
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/net/SocketException;
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1322
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1324
    :cond_0
    const/4 v1, 0x0

    .line 1325
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1326
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1327
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1329
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 821
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    return-object v0

    .line 823
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1503
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1248
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1249
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1250
    :cond_0
    const/4 v1, 0x0

    .line 1251
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1252
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1253
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1255
    return v1
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1072
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1073
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1074
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1076
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1190
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1192
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1194
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1195
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1197
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1657
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1657
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1629
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 1681
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final postAccept()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 689
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 690
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 691
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1099
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1102
    return-void
.end method

.method setBound()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 699
    return-void
.end method

.method setConnected()V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 703
    return-void
.end method

.method setCreated()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 695
    return-void
.end method

.method setImpl()V
    .locals 1

    .prologue
    .line 524
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_1

    .line 525
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 526
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 532
    :goto_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 534
    :cond_0
    return-void

    .line 530
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1342
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1344
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1345
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1130
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1133
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 1769
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1300
    if-gtz p1, :cond_0

    .line 1301
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1303
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1306
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1486
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1489
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1226
    if-gtz p1, :cond_0

    .line 1227
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1229
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1231
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1232
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 1042
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_0
    if-nez p1, :cond_1

    .line 1045
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1054
    :goto_0
    return-void

    .line 1047
    :cond_1
    if-gez p2, :cond_2

    .line 1048
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_2
    const v0, 0xffff

    if-le p2, v0, :cond_3

    .line 1051
    const p2, 0xffff

    .line 1052
    :cond_3
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1170
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1172
    :cond_0
    if-gez p1, :cond_1

    .line 1173
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1176
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1005
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1008
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 4
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1410
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 1411
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "tc is not in range 0 -- 255"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1413
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :cond_3
    return-void

    .line 1417
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "se":Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1421
    throw v0
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1562
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1564
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1567
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1591
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1592
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1594
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1595
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1597
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1607
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Socket[address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1609
    const-string/jumbo v2, ",port="

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1609
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getPort()I

    move-result v2

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1610
    const-string/jumbo v2, ",localPort="

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1610
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1610
    const-string/jumbo v2, "]"

    .line 1608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1611
    :catch_0
    move-exception v0

    .line 1613
    :cond_0
    const-string/jumbo v1, "Socket[unconnected]"

    return-object v1
.end method
