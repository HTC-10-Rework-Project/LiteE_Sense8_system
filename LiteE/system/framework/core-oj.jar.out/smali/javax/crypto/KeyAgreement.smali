.class public Ljavax/crypto/KeyAgreement;
.super Ljava/lang/Object;
.source "KeyAgreement.java"


# static fields
.field private static final I_NO_PARAMS:I = 0x1

.field private static final I_PARAMS:I = 0x2

.field private static warnCount:I


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/KeyAgreementSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    const/16 v0, 0xa

    sput v0, Ljavax/crypto/KeyAgreement;->warnCount:I

    .line 92
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyAgreeSpi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 122
    iput-object p2, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 123
    iput-object p3, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 12
    .param p1, "initType"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v11, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v11

    .line 354
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 355
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 356
    return-void

    .line 358
    :cond_0
    const/4 v8, 0x0

    .line 359
    .local v8, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "KeyAgreement"

    iget-object v2, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v0, v2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v8    # "lastException":Ljava/lang/Exception;
    .local v10, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 361
    .local v9, "s":Ljava/security/Provider$Service;
    invoke-virtual {v9, p2}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v9, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .local v1, "spi":Ljavax/crypto/KeyAgreementSpi;
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 369
    invoke-direct/range {v0 .. v5}, Ljavax/crypto/KeyAgreement;->implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 370
    invoke-virtual {v9}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    .line 371
    iput-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 372
    return-void

    .line 373
    .end local v1    # "spi":Ljavax/crypto/KeyAgreementSpi;
    :catch_0
    move-exception v6

    .line 377
    .local v6, "e":Ljava/lang/Exception;
    if-nez v8, :cond_1

    .line 378
    move-object v8, v6

    .local v8, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 383
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "lastException":Ljava/lang/Exception;
    .end local v9    # "s":Ljava/security/Provider$Service;
    :cond_2
    :try_start_3
    instance-of v0, v8, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_3

    .line 384
    check-cast v8, Ljava/security/InvalidKeyException;

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    .end local v10    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 386
    .restart local v10    # "s$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    instance-of v0, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_4

    .line 387
    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    throw v8

    .line 389
    :cond_4
    instance-of v0, v8, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    .line 390
    check-cast v8, Ljava/lang/RuntimeException;

    throw v8

    .line 392
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "kName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-direct {v0, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 392
    .end local v7    # "kName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "(null)"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 179
    const-string/jumbo v3, "KeyAgreement"

    invoke-static {v3, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 184
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-virtual {v0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    new-instance v3, Ljavax/crypto/KeyAgreement;

    invoke-direct {v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 189
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 190
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

    .line 189
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
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
    .line 235
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 234
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 236
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 237
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 236
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 275
    const-string/jumbo v1, "KeyAgreement"

    const-class v2, Ljavax/crypto/KeyAgreementSpi;

    .line 274
    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 276
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljavax/crypto/KeyAgreement;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/KeyAgreementSpi;

    .line 277
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 276
    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/KeyAgreement;-><init>(Ljavax/crypto/KeyAgreementSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private implInit(Ljavax/crypto/KeyAgreementSpi;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "spi"    # Ljavax/crypto/KeyAgreementSpi;
    .param p2, "type"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 343
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 344
    invoke-virtual {p1, p3, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 9

    .prologue
    .line 289
    iget-object v6, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v6, :cond_0

    .line 290
    return-void

    .line 292
    :cond_0
    iget-object v7, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 293
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    monitor-exit v7

    .line 294
    return-void

    .line 310
    :cond_1
    const/4 v2, 0x0

    .line 311
    .local v2, "lastException":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "KeyAgreement"

    iget-object v8, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    invoke-static {v6, v8}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastException":Ljava/lang/Exception;
    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 312
    .local v4, "s":Ljava/security/Provider$Service;
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 316
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Ljavax/crypto/KeyAgreementSpi;

    if-eqz v6, :cond_2

    .line 320
    check-cast v3, Ljavax/crypto/KeyAgreementSpi;

    .end local v3    # "obj":Ljava/lang/Object;
    iput-object v3, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    .line 321
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 323
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v0

    .local v2, "lastException":Ljava/lang/Exception;
    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "lastException":Ljava/lang/Exception;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/security/ProviderException;

    .line 329
    const-string/jumbo v6, "Could not construct KeyAgreementSpi instance"

    .line 328
    invoke-direct {v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "e":Ljava/security/ProviderException;
    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {v1, v2}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 333
    :cond_4
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    .end local v1    # "e":Ljava/security/ProviderException;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public final doPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 560
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret([BI)I
    .locals 1
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 611
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret([BI)I

    move-result v0

    return v0
.end method

.method public final generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 641
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final generateSecret()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 579
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Ljavax/crypto/KeyAgreement;->chooseFirstProvider()V

    .line 406
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 430
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 431
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->lock:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 456
    :cond_0
    iget-object v1, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 472
    :goto_0
    return-void

    .line 459
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1, v2, p2}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

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
    .line 500
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 501
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Ljavax/crypto/KeyAgreement;->spi:Ljavax/crypto/KeyAgreementSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/KeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 535
    :goto_0
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Ljavax/crypto/KeyAgreement;->chooseProvider(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method
