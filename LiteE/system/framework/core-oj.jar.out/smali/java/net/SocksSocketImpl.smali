.class Ljava/net/SocksSocketImpl;
.super Ljava/net/PlainSocketImpl;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/net/SocksConsts;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private applicationSetProxy:Z

.field private cmdIn:Ljava/io/InputStream;

.field private cmdOut:Ljava/io/OutputStream;

.field private cmdsock:Ljava/net/Socket;

.field private external_address:Ljava/net/InetSocketAddress;

.field private server:Ljava/lang/String;

.field private serverPort:I

.field private useV4:Z


# direct methods
.method static synthetic -get0(Ljava/net/SocksSocketImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;

    .prologue
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/SocksSocketImpl;)I
    .locals 1
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;

    .prologue
    iget v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    return v0
.end method

.method static synthetic -set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "-value"    # Ljava/io/InputStream;

    .prologue
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "-value"    # Ljava/io/OutputStream;

    .prologue
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0
    .param p0, "-this"    # Ljava/net/SocksSocketImpl;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/SocksSocketImpl;->superConnectServer(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/net/SocksSocketImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v0, 0x438

    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/16 v0, 0x438

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    iput v0, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v2, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 60
    iput-object p1, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 61
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    move p2, v0

    .end local p2    # "port":I
    :cond_0
    iput p2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/net/Proxy;)V
    .locals 4
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/net/PlainSocketImpl;-><init>()V

    .line 44
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 45
    const/16 v2, 0x438

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 47
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 48
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 49
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 50
    iput-object v3, p0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    .line 65
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 66
    .local v0, "a":Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 67
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 69
    .local v1, "ad":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    .line 70
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/SocksSocketImpl;->serverPort:I

    .line 72
    .end local v1    # "ad":Ljava/net/InetSocketAddress;
    :cond_0
    return-void
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;)Z
    .locals 6
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v0

    return v0
.end method

.method private authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z
    .locals 10
    .param p1, "method"    # B
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/BufferedOutputStream;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v7, 0x1

    return v7

    .line 154
    :cond_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_8

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, "password":Ljava/lang/String;
    iget-object v7, p0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 160
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/net/SocksSocketImpl$2;

    invoke-direct {v7, p0, v0}, Ljava/net/SocksSocketImpl$2;-><init>(Ljava/net/SocksSocketImpl;Ljava/net/InetAddress;)V

    .line 159
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/PasswordAuthentication;

    .line 166
    .local v4, "pw":Ljava/net/PasswordAuthentication;
    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "userName":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    .end local v3    # "password":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([C)V

    .line 173
    :goto_0
    if-nez v6, :cond_2

    .line 174
    const/4 v7, 0x0

    return v7

    .line 171
    .end local v6    # "userName":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    :cond_1
    new-instance v7, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, "user.name"

    invoke-direct {v7, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .restart local v6    # "userName":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v3    # "password":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 176
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 178
    :try_start_0
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_3
    if-eqz v3, :cond_6

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 185
    :try_start_1
    const-string/jumbo v7, "ISO-8859-1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :cond_4
    :goto_1
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 192
    const/4 v7, 0x2

    new-array v1, v7, [B

    .line 193
    .local v1, "data":[B
    invoke-direct {p0, p2, v1, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 194
    .local v2, "i":I
    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    if-eqz v7, :cond_7

    .line 197
    :cond_5
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    .line 198
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 199
    const/4 v7, 0x0

    return v7

    .line 179
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    .line 180
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 186
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 187
    .restart local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v7, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 190
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_1

    .line 202
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_7
    const/4 v7, 0x1

    return v7

    .line 258
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "data":[B
    .end local v2    # "i":I
    .end local v4    # "pw":Ljava/net/PasswordAuthentication;
    .end local v6    # "userName":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    return v7
.end method

.method private connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "endpoint"    # Ljava/net/InetSocketAddress;
    .param p4, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 264
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-nez v5, :cond_0

    .line 265
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "SOCKS V4 requires IPv4 only addresses"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 267
    :cond_0
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 268
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 269
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 270
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    shr-int/lit8 v5, v5, 0x0

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V

    .line 271
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 272
    invoke-direct {p0}, Ljava/net/SocksSocketImpl;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "userName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write(I)V

    .line 279
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 280
    new-array v0, v9, [B

    .line 281
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p4, p5}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v2

    .line 282
    .local v2, "n":I
    if-eq v2, v9, :cond_2

    .line 283
    new-instance v5, Ljava/net/SocketException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reply from SOCKS server has bad length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    .end local v0    # "data":[B
    .end local v2    # "n":I
    :catch_0
    move-exception v3

    .line 276
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 284
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "data":[B
    .restart local v2    # "n":I
    :cond_2
    aget-byte v5, v0, v6

    if-eqz v5, :cond_3

    aget-byte v5, v0, v6

    if-eq v5, v8, :cond_3

    .line 285
    new-instance v5, Ljava/net/SocketException;

    const-string/jumbo v6, "Reply from SOCKS server has bad version"

    invoke-direct {v5, v6}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 286
    :cond_3
    const/4 v1, 0x0

    .line 287
    .local v1, "ex":Ljava/net/SocketException;
    aget-byte v5, v0, v7

    packed-switch v5, :pswitch_data_0

    .line 302
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "Reply from SOCKS server contains bad status"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 305
    :goto_0
    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 307
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 308
    throw v1

    .line 290
    .restart local v1    # "ex":Ljava/net/SocketException;
    :pswitch_0
    iput-object p3, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    goto :goto_0

    .line 293
    :pswitch_1
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS request rejected"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 296
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_2
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS server couldn\'t reach destination"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 299
    .local v1, "ex":Ljava/net/SocketException;
    :pswitch_3
    new-instance v1, Ljava/net/SocketException;

    .end local v1    # "ex":Ljava/net/SocketException;
    const-string/jumbo v5, "SOCKS authentication failed"

    invoke-direct {v1, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, "ex":Ljava/net/SocketException;
    goto :goto_0

    .line 310
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_4
    return-void

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 557
    const-string/jumbo v1, ""

    .line 558
    .local v1, "userName":Ljava/lang/String;
    iget-boolean v2, p0, Ljava/net/SocksSocketImpl;->applicationSetProxy:Z

    if-eqz v2, :cond_0

    .line 560
    :try_start_0
    const-string/jumbo v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 566
    :goto_0
    return-object v1

    .line 564
    :cond_0
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "user.name"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "userName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "userName":Ljava/lang/String;
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private declared-synchronized privilegedConnect(Ljava/lang/String;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    new-instance v1, Ljava/net/SocksSocketImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/net/SocksSocketImpl$1;-><init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    .line 84
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 96
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "pae":Ljava/security/PrivilegedActionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private readSocksReply(Ljava/io/InputStream;[B)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v0

    return v0
.end method

.method private readSocksReply(Ljava/io/InputStream;[BJ)I
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "data"    # [B
    .param p3, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    array-length v4, p2

    .line 120
    .local v4, "len":I
    const/4 v5, 0x0

    .line 121
    .local v5, "received":I
    const/4 v1, 0x0

    .local v1, "attempts":I
    :goto_0
    if-ge v5, v4, :cond_1

    const/4 v6, 0x3

    if-ge v1, v6, :cond_1

    .line 124
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/net/SocketInputStream;

    move-object v6, v0

    sub-int v7, v4, v5

    invoke-static {p3, p4}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v8

    invoke-virtual {v6, p2, v5, v7, v8}, Ljava/net/SocketInputStream;->read([BIII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    .local v2, "count":I
    if-gez v2, :cond_0

    .line 129
    new-instance v6, Ljava/net/SocketException;

    const-string/jumbo v7, "Malformed reply from SOCKS server"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/net/SocketTimeoutException;
    new-instance v6, Ljava/net/SocketTimeoutException;

    const-string/jumbo v7, "Connect timed out"

    invoke-direct {v6, v7}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .restart local v2    # "count":I
    :cond_0
    add-int/2addr v5, v2

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "count":I
    :cond_1
    return v5
.end method

.method private static remainingMillis(J)I
    .locals 6
    .param p0, "deadlineMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 104
    cmp-long v2, p0, v4

    if-nez v2, :cond_0

    .line 105
    const/4 v2, 0x0

    return v2

    .line 107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 108
    .local v0, "remaining":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 109
    long-to-int v2, v0

    return v2

    .line 111
    :cond_1
    new-instance v2, Ljava/net/SocketTimeoutException;

    invoke-direct {v2}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v2
.end method

.method private superConnectServer(Ljava/lang/String;II)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v0, p3}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 101
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 552
    :cond_0
    iput-object v1, p0, Ljava/net/SocksSocketImpl;->cmdsock:Ljava/net/Socket;

    .line 553
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->close()V

    .line 554
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 25
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    if-nez p2, :cond_1

    .line 331
    const-wide/16 v6, 0x0

    .line 337
    .local v6, "deadlineMillis":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v23

    .line 338
    .local v23, "security":Ljava/lang/SecurityManager;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/net/InetSocketAddress;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 339
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Unsupported address type"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    .end local v6    # "deadlineMillis":J
    .end local v23    # "security":Ljava/lang/SecurityManager;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, p2

    int-to-long v10, v0

    add-long v18, v8, v10

    .line 334
    .local v18, "finish":J
    const-wide/16 v8, 0x0

    cmp-long v2, v18, v8

    if-gez v2, :cond_2

    const-wide v6, 0x7fffffffffffffffL

    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    .end local v6    # "deadlineMillis":J
    :cond_2
    move-wide/from16 v6, v18

    .restart local v6    # "deadlineMillis":J
    goto :goto_0

    .end local v18    # "finish":J
    .restart local v23    # "security":Ljava/lang/SecurityManager;
    :cond_3
    move-object/from16 v5, p1

    .line 340
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 341
    .local v5, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v23, :cond_4

    .line 342
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 343
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 343
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 349
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 356
    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v2

    move-object/from16 v0, p0

    invoke-super {v0, v5, v2}, Ljava/net/PlainSocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 357
    return-void

    .line 346
    :cond_5
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    .line 346
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v8}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    .line 361
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Ljava/net/SocksSocketImpl;->serverPort:I

    invoke-static {v6, v7}, Ljava/net/SocksSocketImpl;->remainingMillis(J)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v9}, Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    new-instance v4, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/SocksSocketImpl;->cmdOut:Ljava/io/OutputStream;

    const/16 v8, 0x200

    invoke-direct {v4, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 369
    .local v4, "out":Ljava/io/BufferedOutputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/SocksSocketImpl;->cmdIn:Ljava/io/InputStream;

    .line 371
    .local v3, "in":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/net/SocksSocketImpl;->useV4:Z

    if-eqz v2, :cond_8

    .line 374
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 375
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v16

    .line 363
    .local v16, "e":Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v16    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_7
    move-object/from16 v2, p0

    .line 376
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 377
    return-void

    .line 381
    :cond_8
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 382
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 383
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 384
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 385
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 386
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 387
    .local v15, "data":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 388
    .local v21, "i":I
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/4 v8, 0x5

    if-eq v2, v8, :cond_b

    .line 393
    :cond_9
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 394
    new-instance v2, Ljava/net/UnknownHostException;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    move-object/from16 v2, p0

    .line 395
    invoke-direct/range {v2 .. v7}, Ljava/net/SocksSocketImpl;->connectV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetSocketAddress;J)V

    .line 396
    return-void

    .line 398
    :cond_b
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_c

    .line 399
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : No acceptable methods"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    :cond_c
    const/4 v2, 0x1

    aget-byte v9, v15, v2

    move-object/from16 v8, p0

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Ljava/net/SocksSocketImpl;->authenticate(BLjava/io/InputStream;Ljava/io/BufferedOutputStream;J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 401
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "SOCKS : authentication failed"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_d
    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 404
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 407
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 408
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 409
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 411
    :try_start_1
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "ISO-8859-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    :cond_e
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 416
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 428
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 429
    const/4 v2, 0x4

    new-array v15, v2, [B

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 431
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_11

    .line 432
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server has bad length"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :catch_1
    move-exception v24

    .line 413
    .local v24, "uee":Ljava/io/UnsupportedEncodingException;
    sget-boolean v2, Ljava/net/SocksSocketImpl;->-assertionsDisabled:Z

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 417
    .end local v24    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_f
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_10

    .line 418
    const/4 v2, 0x4

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 419
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 420
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 421
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    .line 423
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 424
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 425
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 426
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    shr-int/lit8 v2, v2, 0x0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v4, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    .line 433
    :cond_11
    const/16 v17, 0x0

    .line 436
    .local v17, "ex":Ljava/net/SocketException;
    const/4 v2, 0x1

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_0

    .line 502
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_12
    :goto_3
    if-eqz v17, :cond_16

    .line 503
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 504
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 505
    throw v17

    .line 439
    .restart local v17    # "ex":Ljava/net/SocketException;
    :pswitch_0
    const/4 v2, 0x3

    aget-byte v2, v15, v2

    packed-switch v2, :pswitch_data_1

    .line 473
    :pswitch_1
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "Reply from SOCKS server contains wrong code"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 474
    .local v17, "ex":Ljava/net/SocketException;
    goto :goto_3

    .line 441
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_2
    const/4 v2, 0x4

    new-array v14, v2, [B

    .line 442
    .local v14, "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 443
    const/4 v2, 0x4

    move/from16 v0, v21

    if-eq v0, v2, :cond_13

    .line 444
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_13
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 446
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 447
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    .line 448
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    .end local v14    # "addr":[B
    :pswitch_3
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 452
    .local v22, "len":I
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 453
    .local v20, "host":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 454
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 455
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_14
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 457
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 458
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    .line 459
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    .end local v20    # "host":[B
    .end local v22    # "len":I
    :pswitch_4
    const/4 v2, 0x1

    aget-byte v22, v15, v2

    .line 463
    .restart local v22    # "len":I
    move/from16 v0, v22

    new-array v14, v0, [B

    .line 464
    .restart local v14    # "addr":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 465
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    .line 466
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    :cond_15
    const/4 v2, 0x2

    new-array v15, v2, [B

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Ljava/net/SocksSocketImpl;->readSocksReply(Ljava/io/InputStream;[BJ)I

    move-result v21

    .line 469
    const/4 v2, 0x2

    move/from16 v0, v21

    if-eq v0, v2, :cond_12

    .line 470
    new-instance v2, Ljava/net/SocketException;

    const-string/jumbo v8, "Reply from SOCKS server badly formatted"

    invoke-direct {v2, v8}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    .end local v14    # "addr":[B
    .end local v22    # "len":I
    :pswitch_5
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS server general failure"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 479
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 481
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_6
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection not allowed by ruleset"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 482
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 484
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_7
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Network unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 485
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 487
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_8
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Host unreachable"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 488
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 490
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_9
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Connection refused"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 491
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 493
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_a
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: TTL expired"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 494
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 496
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_b
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: Command not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 497
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 499
    .local v17, "ex":Ljava/net/SocketException;
    :pswitch_c
    new-instance v17, Ljava/net/SocketException;

    .end local v17    # "ex":Ljava/net/SocketException;
    const-string/jumbo v2, "SOCKS: address type not supported"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .line 500
    .local v17, "ex":Ljava/net/SocketException;
    goto/16 :goto_3

    .line 507
    .end local v17    # "ex":Ljava/net/SocketException;
    :cond_16
    move-object/from16 v0, p0

    iput-object v5, v0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    .line 508
    return-void

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 439
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 521
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalPort()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 541
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0

    .line 542
    :cond_0
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 545
    :cond_1
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getPort()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Ljava/net/SocksSocketImpl;->external_address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0

    .line 535
    :cond_0
    invoke-super {p0}, Ljava/net/PlainSocketImpl;->getPort()I

    move-result v0

    return v0
.end method

.method setV4()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/SocksSocketImpl;->useV4:Z

    .line 76
    return-void
.end method
