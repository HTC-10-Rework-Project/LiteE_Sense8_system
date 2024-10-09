.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initialized:Z

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/Mac;->warnCount:I

    .line 157
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 195
    iput-object p1, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 197
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "macSpi"    # Ljavax/crypto/MacSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 188
    iput-object p1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 189
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 190
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    .line 192
    return-void
.end method

.method private chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 10
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 390
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 391
    :cond_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v6, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 392
    return-void

    .line 394
    :cond_1
    const/4 v2, 0x0

    .line 395
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "Mac"

    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 397
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3, p1}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 400
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 404
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/MacSpi;

    .line 405
    .local v5, "spi":Ljavax/crypto/MacSpi;
    invoke-virtual {v5, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 406
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 407
    iput-object v5, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 408
    return-void

    .line 409
    .end local v5    # "spi":Ljavax/crypto/MacSpi;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    if-nez v2, :cond_2

    .line 414
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_3
    :try_start_3
    instance-of v6, v2, Ljava/security/InvalidKeyException;

    if-eqz v6, :cond_4

    .line 420
    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    .end local v4    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 422
    .restart local v4    # "s$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_4
    instance-of v6, v2, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v6, :cond_5

    .line 423
    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    .line 425
    :cond_5
    instance-of v6, v2, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_6

    .line 426
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 428
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "kName":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/security/InvalidKeyException;

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No installed provider supports this key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 429
    invoke-direct {v6, v8, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 428
    .end local v1    # "kName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v1, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "kName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 241
    const-string/jumbo v3, "Mac"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 243
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 244
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 246
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    new-instance v3, Ljavax/crypto/Mac;

    invoke-direct {v3, p0}, Ljavax/crypto/Mac;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 251
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 292
    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    .line 291
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 293
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 327
    const-string/jumbo v1, "Mac"

    const-class v2, Ljavax/crypto/MacSpi;

    .line 326
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 328
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/Mac;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/MacSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 9

    .prologue
    .line 340
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-nez v6, :cond_0

    iget-object v6, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v6, :cond_1

    .line 341
    :cond_0
    return-void

    .line 343
    :cond_1
    iget-object v7, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 344
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    monitor-exit v7

    .line 345
    return-void

    .line 361
    :cond_2
    const/4 v2, 0x0

    .line 362
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "Mac"

    iget-object v8, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 363
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 367
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 368
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Ljavax/crypto/MacSpi;

    if-eqz v6, :cond_3

    .line 371
    check-cast v3, Ljavax/crypto/MacSpi;

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 372
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 373
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_4
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    .line 379
    const-string/jumbo v6, "Could not construct MacSpi instance"

    .line 378
    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 380
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_5

    .line 381
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 383
    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 725
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 726
    .local v0, "that":Ljavax/crypto/Mac;
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    iput-object v1, v0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    .line 727
    return-object v0
.end method

.method public final doFinal([BI)V
    .locals 4
    .param p1, "output"    # [B
    .param p2, "outOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 653
    iget-boolean v2, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v2, :cond_0

    .line 654
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "MAC not initialized"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 656
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    .line 657
    .local v1, "macLen":I
    if-eqz p1, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-ge v2, v1, :cond_2

    .line 658
    :cond_1
    new-instance v2, Ljavax/crypto/ShortBufferException;

    .line 659
    const-string/jumbo v3, "Cannot store MAC in output buffer"

    .line 658
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_2
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 662
    .local v0, "mac":[B
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 663
    return-void
.end method

.method public final doFinal()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 615
    iget-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v1, :cond_0

    .line 616
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "MAC not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 619
    .local v0, "mac":[B
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v1}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 620
    return-object v0
.end method

.method public final doFinal([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 688
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 689
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 693
    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljavax/crypto/MacSpi;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    return-object v0
.end method

.method public final getMacLength()I
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 452
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 442
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 466
    :cond_0
    iget-object v1, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 481
    return-void

    .line 468
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v1}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "init() failed"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljavax/crypto/Mac;->lock:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 498
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 502
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    .line 510
    return-void

    .line 500
    :cond_1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/Mac;->chooseProvider(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 712
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 713
    return-void
.end method

.method public final update(B)V
    .locals 2
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 522
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 526
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 584
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 585
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    if-nez p1, :cond_1

    .line 589
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_1
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 592
    return-void
.end method

.method public final update([B)V
    .locals 3
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 538
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_0
    if-eqz p1, :cond_1

    .line 542
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 544
    :cond_1
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Ljavax/crypto/Mac;->chooseFirstProvider()V

    .line 560
    iget-boolean v0, p0, Ljavax/crypto/Mac;->initialized:Z

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    if-eqz p1, :cond_3

    .line 565
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_2

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_2
    if-ltz p3, :cond_1

    .line 567
    iget-object v0, p0, Ljavax/crypto/Mac;->spi:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 569
    :cond_3
    return-void
.end method
