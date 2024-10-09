.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$CipherAdapter;,
        Ljava/security/Signature$Delegate;
    }
.end annotation


# static fields
.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final RSA_SIGNATURE:Ljava/lang/String; = "NONEwithRSA"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3

.field private static final rsaIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private static final signatureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static synthetic -get0(Ljava/security/Signature;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Ljava/security/Signature;

    .prologue
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    invoke-static {p0}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 317
    const/4 v1, 0x5

    new-array v1, v1, [Lsun/security/jca/ServiceId;

    .line 318
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Signature"

    const-string/jumbo v4, "NONEwithRSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 319
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 320
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA/ECB"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 321
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA//PKCS1Padding"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 322
    new-instance v2, Lsun/security/jca/ServiceId;

    const-string/jumbo v3, "Cipher"

    const-string/jumbo v4, "RSA"

    invoke-direct {v2, v3, v4}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 316
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    .line 402
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    .line 403
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 405
    .local v0, "TRUE":Ljava/lang/Boolean;
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$RawDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.provider.DSA$SHA1withDSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD2withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$MD5withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA1withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA256withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA384withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.rsa.RSASignature$SHA512withRSA"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "com.sun.net.ssl.internal.ssl.RSASignature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v1, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    const-string/jumbo v2, "sun.security.pkcs11.P11Signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 306
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .locals 9
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 356
    const-string/jumbo v6, "NONEwithRSA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    sget-object v6, Ljava/security/Signature;->rsaIds:Ljava/util/List;

    invoke-static {v6}, Lsun/security/jca/GetInstance;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 361
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 362
    .local v5, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Signature not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 359
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    .end local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :cond_0
    const-string/jumbo v6, "Signature"

    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    goto :goto_0

    .line 378
    .local v4, "s":Ljava/security/Provider$Service;
    .restart local v5    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .line 382
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 369
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 370
    .restart local v4    # "s":Ljava/security/Provider$Service;
    invoke-static {v4}, Ljava/security/Signature;->isSpi(Ljava/security/Provider$Service;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    new-instance v6, Ljava/security/Signature$Delegate;

    invoke-direct {v6, p0}, Ljava/security/Signature$Delegate;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 376
    :cond_2
    :try_start_0
    const-class v6, Ljava/security/SignatureSpi;

    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 377
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v2, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 383
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    :cond_3
    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 487
    const-string/jumbo v2, "NONEwithRSA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 490
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 493
    .local v1, "p":Ljava/security/Provider;
    if-nez v1, :cond_2

    .line 494
    new-instance v2, Ljava/security/NoSuchProviderException;

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_2
    invoke-static {v1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v2

    return-object v2

    .line 500
    .end local v1    # "p":Ljava/security/Provider;
    :cond_3
    const-string/jumbo v2, "Signature"

    const-class v3, Ljava/security/SignatureSpi;

    .line 499
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 501
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 535
    const-string/jumbo v1, "NONEwithRSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_0
    invoke-static {p1}, Ljava/security/Signature;->getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1

    .line 543
    :cond_1
    const-string/jumbo v1, "Signature"

    const-class v2, Ljava/security/SignatureSpi;

    .line 542
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 544
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    invoke-static {v0, p0}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;
    .locals 3
    .param p0, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/Signature;

    if-eqz v2, :cond_0

    .line 389
    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 390
    .local v0, "sig":Ljava/security/Signature;
    iput-object p1, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 395
    :goto_0
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 396
    return-object v0

    .line 392
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    .line 393
    .local v1, "spi":Ljava/security/SignatureSpi;
    new-instance v0, Ljava/security/Signature$Delegate;

    invoke-direct {v0, v1, p1}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method private static getInstanceRSA(Ljava/security/Provider;)Ljava/security/Signature;
    .locals 7
    .param p0, "p"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 552
    const-string/jumbo v4, "Signature"

    const-string/jumbo v5, "NONEwithRSA"

    invoke-virtual {p0, v4, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 553
    .local v3, "s":Ljava/security/Provider$Service;
    if-eqz v3, :cond_0

    .line 554
    const-class v4, Ljava/security/SignatureSpi;

    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 555
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    const-string/jumbo v4, "NONEwithRSA"

    invoke-static {v2, v4}, Ljava/security/Signature;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    return-object v4

    .line 559
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 560
    .local v0, "c":Ljavax/crypto/Cipher;
    new-instance v4, Ljava/security/Signature$Delegate;

    new-instance v5, Ljava/security/Signature$CipherAdapter;

    invoke-direct {v5, v0}, Ljava/security/Signature$CipherAdapter;-><init>(Ljavax/crypto/Cipher;)V

    const-string/jumbo v6, "NONEwithRSA"

    invoke-direct {v4, v5, v6}, Ljava/security/Signature$Delegate;-><init>(Ljava/security/SignatureSpi;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 561
    .end local v0    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no such algorithm: NONEwithRSA for provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 565
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 564
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static isSpi(Ljava/security/Provider$Service;)Z
    .locals 7
    .param p0, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 418
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Cipher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 420
    const/4 v5, 0x1

    return v5

    .line 422
    :cond_0
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "className":Ljava/lang/String;
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 424
    .local v4, "result":Ljava/lang/Boolean;
    if-nez v4, :cond_1

    .line 426
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "instance":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/SignatureSpi;

    if-eqz v5, :cond_3

    .line 431
    instance-of v5, v2, Ljava/security/Signature;

    if-nez v5, :cond_2

    const/4 v3, 0x1

    .line 441
    .local v3, "r":Z
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 442
    sget-object v5, Ljava/security/Signature;->signatureInfo:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 431
    .restart local v2    # "instance":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_0

    .line 430
    .end local v3    # "r":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "r":Z
    goto :goto_0

    .line 443
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v3    # "r":Z
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method chooseFirstProvider()V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1082
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 1083
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1085
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSpi()Ljava/security/SignatureSpi;
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 1040
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Ljava/security/Signature;->chooseFirstProvider()V

    .line 576
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 673
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 674
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 684
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 701
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 711
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 596
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 606
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 631
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 635
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 636
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 638
    .local v1, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 639
    const-string/jumbo v4, "2.5.29.15"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 638
    if-eqz v4, :cond_0

    .line 640
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 642
    .local v2, "keyUsageInfo":[Z
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_0

    .line 643
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Wrong key usage"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 647
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "keyUsageInfo":[Z
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 648
    .local v3, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0, v3}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 649
    const/4 v4, 0x3

    iput v4, p0, Ljava/security/Signature;->state:I

    .line 659
    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1007
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1022
    return-void
.end method

.method public final sign([BII)I
    .locals 2
    .param p1, "outbuf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 770
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No output buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 773
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 775
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_3

    .line 776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 777
    const-string/jumbo v1, "Output buffer too small for specified offset and length"

    .line 776
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_3
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 780
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method public final sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 732
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 733
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0

    .line 735
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signing"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 963
    const-string/jumbo v0, ""

    .line 964
    .local v0, "initState":Ljava/lang/String;
    iget v1, p0, Ljava/security/Signature;->state:I

    packed-switch v1, :pswitch_data_0

    .line 975
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 966
    :pswitch_1
    const-string/jumbo v0, "<not initialized>"

    goto :goto_0

    .line 969
    :pswitch_2
    const-string/jumbo v0, "<initialized for verifying>"

    goto :goto_0

    .line 972
    :pswitch_3
    const-string/jumbo v0, "<initialized for signing>"

    goto :goto_0

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final update(B)V
    .locals 2
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 870
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 871
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 876
    return-void

    .line 873
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 936
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 937
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    if-nez p1, :cond_1

    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 943
    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 944
    return-void
.end method

.method public final update([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 888
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/Signature;->update([BII)V

    .line 889
    return-void
.end method

.method public final update([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 904
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 905
    :cond_0
    if-nez p1, :cond_1

    .line 906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_3

    .line 909
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "off or len is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_3
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_4

    .line 912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 913
    const-string/jumbo v1, "data too small for specified offset and length"

    .line 912
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 920
    return-void

    .line 917
    :cond_5
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "object not initialized for signature or verification"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final verify([BII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        } 
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
