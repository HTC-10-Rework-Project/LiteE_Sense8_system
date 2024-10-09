.class public Lsun/net/www/protocol/ftp/FtpURLConnection;
.super Lsun/net/www/URLConnection;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;,
        Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
    }
.end annotation


# static fields
.field static final ASCII:I = 0x1

.field static final BIN:I = 0x2

.field static final DIR:I = 0x3

.field static final NONE:I


# instance fields
.field private connectTimeout:I

.field filename:Ljava/lang/String;

.field ftp:Lsun/net/ftp/FtpClient;

.field fullpath:Ljava/lang/String;

.field host:Ljava/lang/String;

.field private instProxy:Ljava/net/Proxy;

.field is:Ljava/io/InputStream;

.field os:Ljava/io/OutputStream;

.field password:Ljava/lang/String;

.field pathname:Ljava/lang/String;

.field permission:Ljava/security/Permission;

.field port:I

.field private readTimeout:I

.field type:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    .line 168
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 174
    invoke-direct {p0, p1}, Lsun/net/www/URLConnection;-><init>(Ljava/net/URL;)V

    .line 90
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 91
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    .line 93
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 108
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 112
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 113
    iput v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 175
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    iput v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    .line 178
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "userInfo":Ljava/lang/String;
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v3

    invoke-virtual {v3}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    new-instance v4, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cleartext traffic not permitted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    const-string/jumbo v5, "://"

    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 183
    iget-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 184
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    if-ltz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 187
    :cond_1
    if-eqz v2, :cond_2

    .line 188
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 189
    .local v0, "delimiter":I
    if-ne v0, v5, :cond_3

    .line 190
    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 191
    iput-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    .line 197
    .end local v0    # "delimiter":I
    :cond_2
    :goto_1
    return-void

    .line 193
    .restart local v0    # "delimiter":I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "delimiter":I
    .local v1, "delimiter":I
    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    goto :goto_1
.end method

.method private cd(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :cond_0
    return-void

    .line 388
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 389
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    .line 390
    return-void

    .line 393
    :cond_2
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "token":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/net/ftp/FtpClient;->changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;

    goto :goto_0

    .line 397
    :cond_3
    return-void
.end method

.method private decodePath(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 336
    const-string/jumbo v2, ";type="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "i":I
    if-ltz v0, :cond_3

    .line 338
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "s1":Ljava/lang/String;
    const-string/jumbo v2, "i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const/4 v2, 0x2

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 342
    :cond_0
    const-string/jumbo v2, "a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    iput v6, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 345
    :cond_1
    const-string/jumbo v2, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    const/4 v2, 0x3

    iput v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 348
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 350
    .end local v1    # "s1":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_4

    .line 351
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_4

    .line 352
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 354
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 355
    :cond_5
    const-string/jumbo p1, "./"

    .line 357
    :cond_6
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 358
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 359
    if-lez v0, :cond_7

    .line 360
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-static {v2}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 362
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 371
    :goto_0
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    .line 376
    :goto_2
    return-void

    .line 364
    :cond_7
    invoke-static {p1}, Lsun/net/www/ParseUtil;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    .line 365
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    .line 369
    iput-object v5, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_9
    const-string/jumbo v2, ""

    goto :goto_1

    .line 374
    :cond_a
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    goto :goto_2
.end method

.method private setTimeouts()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-ltz v0, :cond_0

    .line 202
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setConnectTimeout(I)Lsun/net/ftp/FtpClient;

    .line 204
    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-ltz v0, :cond_1

    .line 205
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/ftp/FtpClient;->setReadTimeout(I)Lsun/net/ftp/FtpClient;

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    monitor-exit p0

    .line 220
    return-void

    .line 223
    :cond_0
    const/4 v4, 0x0

    .line 224
    .local v4, "p":Ljava/net/Proxy;
    :try_start_1
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v8, :cond_7

    .line 229
    new-instance v8, Lsun/net/www/protocol/ftp/FtpURLConnection$1;

    invoke-direct {v8, p0}, Lsun/net/www/protocol/ftp/FtpURLConnection$1;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;)V

    .line 228
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/ProxySelector;

    .line 234
    .local v5, "sel":Ljava/net/ProxySelector;
    if-eqz v5, :cond_1

    .line 235
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-static {v8}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v6

    .line 236
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v5, v6}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 237
    .end local v4    # "p":Ljava/net/Proxy;
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    .line 239
    .local v4, "p":Ljava/net/Proxy;
    if-eqz v4, :cond_1

    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v4, v8, :cond_4

    .line 295
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    :cond_1
    :goto_1
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 296
    const-string/jumbo v8, "anonymous"

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    .line 298
    new-instance v8, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v9, "java.version"

    invoke-direct {v8, v9}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 300
    .local v7, "vers":Ljava/lang/String;
    new-instance v8, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v9, "ftp.protocol.user"

    .line 301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Java"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 300
    invoke-direct {v8, v9, v10}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v7    # "vers":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lsun/net/ftp/FtpClient;->create()Lsun/net/ftp/FtpClient;

    move-result-object v8

    iput-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    .line 305
    if-eqz v4, :cond_3

    .line 306
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8, v4}, Lsun/net/ftp/FtpClient;->setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;

    .line 308
    :cond_3
    invoke-direct {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setTimeouts()V

    .line 309
    iget v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    .line 310
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    iget v11, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->port:I

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :goto_2
    :try_start_3
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v9, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->user:Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->password:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lsun/net/ftp/FtpClient;->login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    :try_end_3
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    const/4 v8, 0x1

    :try_start_4
    iput-boolean v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 329
    return-void

    .line 240
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v4    # "p":Ljava/net/Proxy;
    .restart local v5    # "sel":Ljava/net/ProxySelector;
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_1

    .line 243
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_5

    .line 244
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/InetSocketAddress;

    xor-int/lit8 v8, v8, 0x1

    .line 243
    if-eqz v8, :cond_6

    .line 245
    :cond_5
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Wrong proxy type"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v9}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v4    # "p":Ljava/net/Proxy;
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 251
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v4    # "p":Ljava/net/Proxy;
    .restart local v5    # "sel":Ljava/net/ProxySelector;
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_6
    :try_start_6
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v8

    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "FTP connections over HTTP proxy not supported"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v9}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto/16 :goto_0

    .line 274
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v5    # "sel":Ljava/net/ProxySelector;
    .end local v6    # "uri":Ljava/net/URI;
    .local v4, "p":Ljava/net/Proxy;
    :cond_7
    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->instProxy:Ljava/net/Proxy;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v4, "p":Ljava/net/Proxy;
    goto/16 :goto_1

    .line 312
    .end local v4    # "p":Ljava/net/Proxy;
    :cond_8
    :try_start_7
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    new-instance v9, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v11

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Lsun/net/ftp/FtpClient;->connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 314
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/net/UnknownHostException;
    :try_start_8
    throw v0

    .line 318
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 319
    .local v2, "fe":Lsun/net/ftp/FtpProtocolException;
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 323
    .end local v2    # "fe":Lsun/net/ftp/FtpProtocolException;
    :catch_2
    move-exception v1

    .line 324
    .local v1, "e":Lsun/net/ftp/FtpProtocolException;
    iget-object v8, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v8}, Lsun/net/ftp/FtpClient;->close()V

    .line 326
    new-instance v8, Lsun/net/ftp/FtpLoginException;

    const-string/jumbo v9, "Invalid username/password"

    invoke-direct {v8, v9}, Lsun/net/ftp/FtpLoginException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getConnectTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 648
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v14, :cond_0

    .line 411
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 419
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v14, :cond_1

    .line 420
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v15, "Already opened for output"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v14, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 427
    :cond_2
    new-instance v12, Lsun/net/www/MessageHeader;

    invoke-direct {v12}, Lsun/net/www/MessageHeader;-><init>()V

    .line 429
    .local v12, "msgh":Lsun/net/www/MessageHeader;
    const/4 v8, 0x0

    .line 431
    .local v8, "isAdir":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v14}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 433
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 434
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-nez v14, :cond_7

    .line 436
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_2

    .line 453
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->getLastTransferSize()J

    move-result-wide v10

    .line 454
    .local v10, "l":J
    const-string/jumbo v14, "content-length"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_5

    .line 461
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    const-string/jumbo v16, "GET"

    invoke-virtual/range {v14 .. v16}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v9

    .line 462
    .local v9, "meteredInput":Z
    const/4 v13, 0x0

    .line 464
    .local v13, "pi":Lsun/net/ProgressSource;
    if-eqz v9, :cond_4

    .line 465
    new-instance v13, Lsun/net/ProgressSource;

    .end local v13    # "pi":Lsun/net/ProgressSource;
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    const-string/jumbo v15, "GET"

    invoke-direct {v13, v14, v15, v10, v11}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;J)V

    .line 466
    .local v13, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v13}, Lsun/net/ProgressSource;->beginTracking()V

    .line 469
    .end local v13    # "pi":Lsun/net/ProgressSource;
    :cond_4
    new-instance v14, Lsun/net/www/MeteredStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-direct {v14, v15, v13, v10, v11}, Lsun/net/www/MeteredStream;-><init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    .line 477
    .end local v9    # "meteredInput":Z
    .end local v10    # "l":J
    :cond_5
    :goto_1
    if-eqz v8, :cond_a

    .line 478
    :try_start_2
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/net/www/protocol/ftp/FtpURLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    return-object v14

    .line 438
    :cond_7
    :try_start_3
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->nameList(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 490
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 498
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    .line 499
    const-string/jumbo v14, "content-type"

    const-string/jumbo v15, "text/plain"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "directory"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 501
    :catch_1
    move-exception v4

    .line 502
    .local v4, "ex":Ljava/io/IOException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 441
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 446
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 447
    new-instance v14, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lsun/net/ftp/FtpClient;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpInputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 506
    :catch_2
    move-exception v6

    .line 507
    .local v6, "ftpe":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 444
    .end local v6    # "ftpe":Lsun/net/ftp/FtpProtocolException;
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v14}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;

    goto :goto_3

    .line 471
    :catch_3
    move-exception v3

    .line 472
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 481
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    const-string/jumbo v14, "access-type"

    const-string/jumbo v15, "file"

    invoke-virtual {v12, v14, v15}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "ftype":Ljava/lang/String;
    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->markSupported()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    invoke-static {v14}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 486
    :cond_b
    if-eqz v7, :cond_6

    .line 487
    const-string/jumbo v14, "content-type"

    invoke-virtual {v12, v14, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 503
    .end local v7    # "ftype":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 504
    .local v5, "ex2":Lsun/net/ftp/FtpProtocolException;
    new-instance v14, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/ftp/FtpURLConnection;->fullpath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget-boolean v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connected:Z

    if-nez v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lsun/net/www/protocol/ftp/FtpURLConnection;->connect()V

    .line 538
    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 539
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Already opened for input"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v1

    .line 546
    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->decodePath(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 548
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "illegal filename for a PUT"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_4
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 552
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->pathname:Ljava/lang/String;

    invoke-direct {p0, v1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->cd(Ljava/lang/String;)V

    .line 554
    :cond_5
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 555
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v1}, Lsun/net/ftp/FtpClient;->setAsciiType()Lsun/net/ftp/FtpClient;

    .line 559
    :goto_0
    new-instance v1, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;

    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    iget-object v4, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->filename:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lsun/net/ftp/FtpClient;->putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;-><init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->os:Ljava/io/OutputStream;

    return-object v1

    .line 557
    :cond_6
    :try_start_1
    iget-object v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v1}, Lsun/net/ftp/FtpClient;->setBinaryType()Lsun/net/ftp/FtpClient;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 4

    .prologue
    .line 577
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    if-nez v2, :cond_1

    .line 578
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 579
    .local v1, "urlport":I
    if-gez v1, :cond_0

    invoke-static {}, Lsun/net/ftp/FtpClient;->defaultPort()I

    move-result v1

    .line 580
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "urlhost":Ljava/lang/String;
    new-instance v2, Ljava/net/SocketPermission;

    const-string/jumbo v3, "connect"

    invoke-direct {v2, v0, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    .line 583
    .end local v0    # "urlhost":Ljava/lang/String;
    .end local v1    # "urlport":I
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->permission:Ljava/security/Permission;

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 661
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    goto :goto_0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-super {p0, p1}, Lsun/net/www/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 630
    const-string/jumbo v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "a"

    .line 635
    :cond_0
    :goto_0
    return-object v0

    .line 631
    :cond_1
    iget v1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "d"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "i"

    goto :goto_0
.end method

.method guessContentTypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 567
    invoke-static {p1}, Lsun/net/www/protocol/ftp/FtpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 640
    if-gez p1, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->connectTimeout:I

    .line 644
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 653
    if-gez p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->readTimeout:I

    .line 657
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-super {p0, p1, p2}, Lsun/net/www/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string/jumbo v0, "type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const-string/jumbo v0, "i"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    const/4 v0, 0x2

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const-string/jumbo v0, "a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_0

    .line 604
    :cond_2
    const-string/jumbo v0, "d"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    const/4 v0, 0x3

    iput v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection;->type:I

    goto :goto_0

    .line 607
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 609
    const-string/jumbo v2, "\' request property was \'"

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    const-string/jumbo v2, "\' when it must be either \'i\', \'a\' or \'d\'"

    .line 608
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
