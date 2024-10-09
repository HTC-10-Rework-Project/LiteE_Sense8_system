.class public Ljavax/crypto/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SecretKeyFactory.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljavax/crypto/SecretKeyFactorySpi;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    .line 300
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    .line 302
    const-string/jumbo v1, "SecretKeyFactory"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 305
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v1

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " SecretKeyFactory not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyFacSpi"    # Ljavax/crypto/SecretKeyFactorySpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    .line 294
    iput-object p1, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 295
    iput-object p2, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    .line 296
    iput-object p3, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljavax/crypto/SecretKeyFactory;

    invoke-direct {v0, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
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
    .line 388
    const-string/jumbo v1, "SecretKeyFactory"

    .line 389
    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    .line 388
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 390
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    .line 391
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 390
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 428
    const-string/jumbo v1, "SecretKeyFactory"

    .line 429
    const-class v2, Ljavax/crypto/SecretKeyFactorySpi;

    .line 428
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 430
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/SecretKeyFactory;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/SecretKeyFactorySpi;

    .line 431
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 430
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/SecretKeyFactory;-><init>(Ljavax/crypto/SecretKeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;
    .locals 8
    .param p1, "oldSpi"    # Ljavax/crypto/SecretKeyFactorySpi;

    .prologue
    const/4 v7, 0x0

    .line 468
    iget-object v6, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 471
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    if-eq p1, v5, :cond_0

    .line 472
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 474
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 475
    return-object v7

    .line 477
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    iget-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 479
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 484
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Ljavax/crypto/SecretKeyFactorySpi;

    if-eqz v5, :cond_1

    .line 487
    move-object v0, v2

    check-cast v0, Ljavax/crypto/SecretKeyFactorySpi;

    move-object v4, v0

    .line 488
    .local v4, "spi":Ljavax/crypto/SecretKeyFactorySpi;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;

    .line 489
    iput-object v4, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 490
    return-object v4

    .line 495
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_2
    const/4 v5, 0x0

    :try_start_4
    iput-object v5, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 496
    return-object v7

    .line 468
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 491
    .restart local v3    # "s":Ljava/security/Provider$Service;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method


# virtual methods
.method public final generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 514
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 516
    :cond_0
    const/4 v1, 0x0

    .line 517
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 520
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 523
    move-object v1, v0

    .line 525
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    .line 527
    if-nez v2, :cond_1

    .line 528
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_3

    .line 529
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    .line 531
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 532
    const-string/jumbo v4, "Could not generate secret key"

    .line 531
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/security/spec/KeySpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 558
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    return-object v3

    .line 560
    :cond_0
    const/4 v1, 0x0

    .line 561
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 564
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/SecretKeyFactorySpi;->engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 567
    move-object v1, v0

    .line 569
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    .line 571
    if-nez v2, :cond_1

    .line 572
    instance-of v3, v1, Ljava/security/spec/InvalidKeySpecException;

    if-eqz v3, :cond_3

    .line 573
    check-cast v1, Ljava/security/spec/InvalidKeySpecException;

    throw v1

    .line 575
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    .line 576
    const-string/jumbo v4, "Could not get key spec"

    .line 575
    invoke-direct {v3, v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    .prologue
    .line 440
    iget-object v1, p0, Ljavax/crypto/SecretKeyFactory;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 442
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    .line 443
    iget-object v0, p0, Ljavax/crypto/SecretKeyFactory;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final translateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 593
    iget-object v3, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 595
    :cond_0
    const/4 v1, 0x0

    .line 596
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/SecretKeyFactory;->spi:Ljavax/crypto/SecretKeyFactorySpi;

    .line 599
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/SecretKeyFactorySpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/SecretKeyFactorySpi;->engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 602
    move-object v1, v0

    .line 604
    :cond_2
    invoke-direct {p0, v2}, Ljavax/crypto/SecretKeyFactory;->nextSpi(Ljavax/crypto/SecretKeyFactorySpi;)Ljavax/crypto/SecretKeyFactorySpi;

    move-result-object v2

    .line 606
    if-nez v2, :cond_1

    .line 607
    instance-of v3, v1, Ljava/security/InvalidKeyException;

    if-eqz v3, :cond_3

    .line 608
    check-cast v1, Ljava/security/InvalidKeyException;

    throw v1

    .line 610
    :cond_3
    new-instance v3, Ljava/security/InvalidKeyException;

    .line 611
    const-string/jumbo v4, "Could not translate key"

    .line 610
    invoke-direct {v3, v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
