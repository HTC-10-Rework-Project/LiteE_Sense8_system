.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_RANDOM:I = 0x2

.field private static final I_SIZE:I = 0x4


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

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

.field private volatile spi:Ljavax/crypto/KeyGeneratorSpi;


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

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 224
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 226
    const-string/jumbo v1, "KeyGenerator"

    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 228
    const/4 v1, 0x1

    iput v1, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 230
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v1

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " KeyGenerator not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyGenSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    .line 211
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 212
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 213
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljavax/crypto/KeyGenerator;

    invoke-direct {v0, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    .line 329
    const-string/jumbo v1, "KeyGenerator"

    .line 330
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    .line 329
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 331
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    .line 332
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 331
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 367
    const-string/jumbo v1, "KeyGenerator"

    .line 368
    const-class v2, Ljavax/crypto/KeyGeneratorSpi;

    .line 367
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 369
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyGenerator;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyGeneratorSpi;

    .line 370
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 369
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;
    .locals 10
    .param p1, "oldSpi"    # Ljavax/crypto/KeyGeneratorSpi;
    .param p2, "reinit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 393
    iget-object v6, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 396
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    if-eq p1, v5, :cond_0

    .line 397
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 399
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 400
    return-object v9

    .line 402
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 403
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 404
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 410
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljavax/crypto/KeyGeneratorSpi;

    if-eqz v5, :cond_1

    .line 413
    move-object v0, v2

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    move-object v4, v0

    .line 414
    .local v4, "spi":Ljavax/crypto/KeyGeneratorSpi;
    if-eqz p2, :cond_2

    .line 415
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    .line 416
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 426
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 427
    iput-object v4, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 428
    return-object v4

    .line 417
    :cond_3
    :try_start_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 418
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    .line 429
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 419
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_4
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_5

    .line 420
    iget-object v5, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 393
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 421
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v3    # "s":Ljava/security/Provider$Service;
    .restart local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_5
    :try_start_5
    iget v5, p0, Ljavax/crypto/KeyGenerator;->initType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    .line 422
    new-instance v5, Ljava/lang/AssertionError;

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KeyGenerator initType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljavax/crypto/KeyGenerator;->initType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 422
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 433
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    .line 434
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 439
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 441
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 442
    iput-object v1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;

    .line 443
    return-void
.end method

.method public final generateKey()Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 603
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 604
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3

    .line 606
    :cond_0
    const/4 v1, 0x0

    .line 607
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 610
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 613
    move-object v1, v0

    .line 615
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 617
    if-nez v2, :cond_1

    .line 618
    throw v1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Ljavax/crypto/KeyGenerator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->disableFailover()V

    .line 381
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final init(I)V
    .locals 1
    .param p1, "keysize"    # I

    .prologue
    .line 558
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 559
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 573
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 574
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 575
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x0

    .line 578
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 581
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 582
    const/4 v3, 0x4

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 583
    iput p1, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 584
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 585
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    return-void

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 589
    move-object v1, v0

    .line 591
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 593
    if-nez v2, :cond_1

    .line 594
    throw v1
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v4, 0x0

    .line 451
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 452
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 453
    return-void

    .line 455
    :cond_0
    const/4 v1, 0x0

    .line 456
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 459
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 460
    const/4 v3, 0x2

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 461
    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 462
    const/4 v3, 0x0

    iput-object v3, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 463
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 467
    move-object v1, v0

    .line 469
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 471
    if-nez v2, :cond_1

    .line 472
    throw v1
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 494
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 495
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 510
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 511
    iget-object v3, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 512
    return-void

    .line 514
    :cond_0
    const/4 v1, 0x0

    .line 515
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljavax/crypto/KeyGenerator;->spi:Ljavax/crypto/KeyGeneratorSpi;

    .line 518
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljavax/crypto/KeyGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 519
    const/4 v3, 0x3

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initType:I

    .line 520
    const/4 v3, 0x0

    iput v3, p0, Ljavax/crypto/KeyGenerator;->initKeySize:I

    .line 521
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 522
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 526
    move-object v1, v0

    .line 528
    :cond_2
    invoke-direct {p0, v2, v4}, Ljavax/crypto/KeyGenerator;->nextSpi(Ljavax/crypto/KeyGeneratorSpi;Z)Ljavax/crypto/KeyGeneratorSpi;

    move-result-object v2

    .line 530
    if-nez v2, :cond_1

    .line 531
    instance-of v3, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v3, :cond_3

    .line 532
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1

    .line 534
    :cond_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 535
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 537
    :cond_4
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "init() failed"

    invoke-direct {v3, v4, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
