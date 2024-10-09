.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private infAddress:Ljava/net/InetAddress;

.field private infLock:Ljava/lang/Object;

.field private interfaceSet:Z

.field private ttlLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "bindaddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 165
    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    .line 195
    iput-object v1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 170
    if-eqz p1, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 178
    :cond_0
    return-void

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 173
    :cond_1
    throw v0
.end method


# virtual methods
.method public getInterface()Ljava/net/InetAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Socket is closed"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 494
    :cond_0
    iget-object v6, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v6

    .line 496
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 502
    .local v3, "ia":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 503
    return-object v3

    .line 509
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    monitor-exit v6

    .line 510
    return-object v3

    .line 519
    :cond_2
    :try_start_2
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 520
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 521
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 522
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 523
    .local v0, "addr":Ljava/net/InetAddress;
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    iget-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 532
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    iput-object v5, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 533
    return-object v3

    .line 534
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v6

    .line 535
    return-object v3

    .line 494
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ia":Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getLoopbackMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 571
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 572
    .local v1, "niIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 573
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/net/InetAddress;

    .line 574
    .local v0, "addrs":[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v0, v4

    .line 575
    new-instance v2, Ljava/net/NetworkInterface;

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4, v0}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;I[Ljava/net/InetAddress;)V

    return-object v2

    .line 577
    .end local v0    # "addrs":[Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v2

    return-object v2
.end method

.method public getTTL()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_0
    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, p1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 305
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {v1, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 309
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 310
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v3, "Not a multicast address"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_2
    invoke-static {}, Ljava/net/NetworkInterface;->getDefault()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 319
    .local v0, "defaultInterface":Ljava/net/NetworkInterface;
    iget-boolean v2, p0, Ljava/net/MulticastSocket;->interfaceSet:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 323
    :cond_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 324
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_2
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_3

    .line 394
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_3
    move-object v1, p1

    .line 396
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "joinGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 398
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 399
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_4
    move-object v1, p1

    .line 402
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_5

    .line 403
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_5
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 407
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    const-string/jumbo v1, "leaveGroup"

    invoke-virtual {p0, p1, v1}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 350
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 354
    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 359
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "mcastaddr"    # Ljava/net/SocketAddress;
    .param p2, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 438
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported address type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_2
    iget-boolean v1, p0, Ljava/net/MulticastSocket;->oldImpl:Z

    if-eqz v1, :cond_3

    .line 441
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_3
    move-object v1, p1

    .line 443
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    const-string/jumbo v2, "leaveGroup"

    invoke-virtual {p0, v1, v2}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 445
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_4

    move-object v1, p1

    .line 446
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    :cond_4
    move-object v1, p1

    .line 449
    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_5

    .line 450
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "Not a multicast address"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_5
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 454
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 6
    .param p1, "p"    # Ljava/net/DatagramPacket;
    .param p2, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    new-instance v3, Ljava/net/SocketException;

    const-string/jumbo v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 663
    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    const-string/jumbo v4, "send"

    invoke-virtual {p0, v3, v4}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Ljava/net/MulticastSocket;->ttlLock:Ljava/lang/Object;

    monitor-enter v4

    .line 665
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 666
    :try_start_1
    iget v3, p0, Ljava/net/MulticastSocket;->connectState:I

    if-nez v3, :cond_5

    .line 670
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 671
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_1

    .line 672
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 673
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    .line 692
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTTL()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 694
    .local v0, "dttl":B
    if-eq p2, v0, :cond_2

    .line 696
    :try_start_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 699
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 702
    if-eq p2, v0, :cond_3

    .line 703
    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 708
    return-void

    .line 675
    .end local v0    # "dttl":B
    .restart local v2    # "security":Ljava/lang/SecurityManager;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v5

    .line 675
    invoke-virtual {v2, v3, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 665
    .end local v2    # "security":Ljava/lang/SecurityManager;
    :catchall_0
    move-exception v3

    :try_start_6
    monitor-exit p1

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 664
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 681
    :cond_5
    const/4 v1, 0x0

    .line 682
    .local v1, "packetAddress":Ljava/net/InetAddress;
    :try_start_7
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 683
    .local v1, "packetAddress":Ljava/net/InetAddress;
    if-nez v1, :cond_6

    .line 684
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 685
    iget v3, p0, Ljava/net/MulticastSocket;->connectedPort:I

    invoke-virtual {p1, v3}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0

    .line 686
    :cond_6
    iget-object v3, p0, Ljava/net/MulticastSocket;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 687
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    iget v5, p0, Ljava/net/MulticastSocket;->connectedPort:I

    if-eq v3, v5, :cond_1

    .line 688
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v5, "connected address and packet address differ"

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    .end local v1    # "packetAddress":Ljava/net/InetAddress;
    .restart local v0    # "dttl":B
    :catchall_2
    move-exception v3

    .line 702
    if-eq p2, v0, :cond_8

    .line 703
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 700
    :cond_8
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "inf"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    const-string/jumbo v0, "setInterface"

    invoke-virtual {p0, p1, v0}, Ljava/net/MulticastSocket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 472
    iput-object p1, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 475
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLoopbackMode(Z)V
    .locals 3
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 597
    return-void
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 3
    .param p1, "netIf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v1, p0, Ljava/net/MulticastSocket;->infLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/MulticastSocket;->infAddress:Ljava/net/InetAddress;

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/MulticastSocket;->interfaceSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 558
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTTL(B)V
    .locals 2
    .param p1, "ttl"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 218
    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .param p1, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ttl out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_2
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 246
    return-void
.end method
