.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/SecureRandom$StrongPatternHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SDK_TARGET_FOR_CRYPTO_PROVIDER_WORKAROUND:I = 0x17

.field private static sdkTargetForCryptoProviderWorkaround:I = 0x0

.field private static volatile seedGenerator:Ljava/security/SecureRandom; = null

.field static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private counter:J

.field private digest:Ljava/security/MessageDigest;

.field private provider:Ljava/security/Provider;

.field private randomBytes:[B

.field private randomBytesUsed:I

.field private secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    .line 316
    const/16 v0, 0x17

    .line 315
    sput v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 751
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 173
    return-void
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .locals 1
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 3
    .param p1, "secureRandomSpi"    # Ljava/security/SecureRandomSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 244
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 751
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 245
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 246
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 247
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "seed"    # [B

    .prologue
    const/4 v2, 0x0

    .line 199
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 117
    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 125
    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 751
    iput-object v2, p0, Ljava/security/SecureRandom;->digest:Ljava/security/MessageDigest;

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljava/security/SecureRandom;->getDefaultPRNG(Z[B)V

    .line 201
    return-void
.end method

.method private getDefaultPRNG(Z[B)V
    .locals 5
    .param p1, "setSeed"    # Z
    .param p2, "seed"    # [B

    .prologue
    .line 204
    invoke-static {}, Ljava/security/SecureRandom;->getPrngAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "prng":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 207
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "No SecureRandom implementation!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 211
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2}, Ljava/security/SecureRandom;->getSecureRandomSpi()Ljava/security/SecureRandomSpi;

    move-result-object v3

    iput-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 212
    invoke-virtual {v2}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v3

    iput-object v3, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 213
    if-eqz p1, :cond_1

    .line 214
    iget-object v3, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v3, p2}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    invoke-virtual {p0}, Ljava/security/SecureRandom;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/security/SecureRandom;

    if-ne v3, v4, :cond_2

    .line 227
    iput-object v1, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 229
    :cond_2
    return-void

    .line 216
    .end local v2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 297
    const-string/jumbo v1, "SecureRandom"

    .line 298
    const-class v2, Ljava/security/SecureRandomSpi;

    .line 297
    invoke-static {v1, v2, p0}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 299
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    .line 300
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 299
    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
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
    .line 382
    :try_start_0
    const-string/jumbo v2, "SecureRandom"

    .line 383
    const-class v3, Ljava/security/SecureRandomSpi;

    .line 382
    invoke-static {v2, v3, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 384
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v3, Ljava/security/SecureRandom;

    iget-object v2, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandomSpi;

    .line 385
    iget-object v4, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 384
    invoke-direct {v3, v2, v4, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 386
    .end local v0    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    const-string/jumbo v2, "Crypto"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const-string/jumbo v2, " ********** PLEASE READ ************ "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 389
    const-string/jumbo v2, " * "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v2, " * New versions of the Android SDK no longer support the Crypto provider."

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 391
    const-string/jumbo v2, " * If your app was relying on setSeed() to derive keys from strings, you"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v2, " * should switch to using SecretKeySpec to load raw key bytes directly OR"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, " * use a real key derivation function (KDF). See advice here : "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v2, " * http://android-developers.blogspot.com/2016/06/security-crypto-provider-deprecated-in.html "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v2, " *********************************** "

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v2

    .line 397
    sget v3, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    .line 396
    if-gt v2, v3, :cond_0

    .line 398
    const-string/jumbo v2, " Returning an instance of SecureRandom from the Crypto provider"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v2, " as a temporary measure so that the apps targeting earlier SDKs"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 400
    const-string/jumbo v2, " keep working. Please do not rely on the presence of the Crypto"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v2, " provider in the codebase, as our plan is to delete it"

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 402
    const-string/jumbo v2, " completely in the future."

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 403
    invoke-static {p0}, Ljava/security/SecureRandom;->getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    return-object v2

    .line 407
    :cond_0
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 466
    const-string/jumbo v1, "SecureRandom"

    .line 467
    const-class v2, Ljava/security/SecureRandomSpi;

    .line 466
    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    .line 468
    .local v0, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v2, Ljava/security/SecureRandom;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandomSpi;

    .line 469
    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 468
    invoke-direct {v2, v1, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getInstanceFromCryptoProvider(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 415
    :try_start_0
    const-class v4, Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 417
    const-string/jumbo v5, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    .line 415
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .local v0, "cryptoProvider":Ljava/security/Provider;
    const-string/jumbo v4, "SecureRandom"

    invoke-virtual {v0, v4, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v3

    .line 423
    .local v3, "service":Ljava/security/Provider$Service;
    const-class v4, Ljava/security/SecureRandomSpi;

    invoke-static {v3, v4}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    .line 424
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    new-instance v5, Ljava/security/SecureRandom;

    .line 425
    iget-object v4, v2, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v4, Ljava/security/SecureRandomSpi;

    iget-object v6, v2, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    .line 424
    invoke-direct {v5, v4, v6, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v5

    .line 419
    .end local v0    # "cryptoProvider":Ljava/security/Provider;
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    .end local v3    # "service":Ljava/security/Provider$Service;
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getInstanceStrong()Ljava/security/SecureRandom;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 699
    new-instance v6, Ljava/security/SecureRandom$1;

    invoke-direct {v6}, Ljava/security/SecureRandom$1;-><init>()V

    .line 698
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 707
    .local v3, "property":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 708
    :cond_0
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 709
    const-string/jumbo v7, "Null/empty securerandom.strongAlgorithms Security Property"

    .line 708
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 712
    :cond_1
    move-object v5, v3

    .line 713
    :goto_0
    if-eqz v5, :cond_4

    .line 715
    invoke-static {}, Ljava/security/SecureRandom$StrongPatternHolder;->-get0()Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 718
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "alg":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 722
    .local v4, "prov":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 723
    :try_start_0
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v6

    return-object v6

    .line 725
    :cond_2
    invoke-static {v0, v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 728
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "remainder":Ljava/lang/String;
    goto :goto_0

    .line 732
    .end local v0    # "alg":Ljava/lang/String;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .end local v4    # "prov":Ljava/lang/String;
    .end local v5    # "remainder":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .local v5, "remainder":Ljava/lang/String;
    goto :goto_0

    .line 736
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "remainder":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No strong SecureRandom impls available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 736
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static getPrngAlgorithm()Ljava/lang/String;
    .locals 6

    .prologue
    .line 641
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    .line 642
    .local v0, "p":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 643
    .local v2, "s":Ljava/security/Provider$Service;
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SecureRandom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    invoke-virtual {v2}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 648
    .end local v0    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getSdkTargetForCryptoProviderWorkaround()I
    .locals 1

    .prologue
    .line 333
    sget v0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    return v0
.end method

.method public static getSeed(I)[B
    .locals 1
    .param p0, "numBytes"    # I

    .prologue
    .line 600
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    .line 603
    :cond_0
    sget-object v0, Ljava/security/SecureRandom;->seedGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static longToByteArray(J)[B
    .locals 4
    .param p0, "l"    # J

    .prologue
    const/16 v3, 0x8

    .line 624
    new-array v1, v3, [B

    .line 626
    .local v1, "retVal":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 627
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 628
    shr-long/2addr p0, v3

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    :cond_0
    return-object v1
.end method

.method public static setSdkTargetForCryptoProviderWorkaround(I)V
    .locals 0
    .param p0, "sdkTargetVersion"    # I

    .prologue
    .line 324
    sput p0, Ljava/security/SecureRandom;->sdkTargetForCryptoProviderWorkaround:I

    .line 325
    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 616
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method getSecureRandomSpi()Ljava/security/SecureRandomSpi;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    return-object v0
.end method

.method protected final next(I)I
    .locals 6
    .param p1, "numBits"    # I

    .prologue
    .line 570
    add-int/lit8 v4, p1, 0x7

    div-int/lit8 v3, v4, 0x8

    .line 571
    .local v3, "numBytes":I
    new-array v0, v3, [B

    .line 572
    .local v0, "b":[B
    const/4 v2, 0x0

    .line 574
    .local v2, "next":I
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 576
    shl-int/lit8 v4, v2, 0x8

    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    add-int v2, v4, v5

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    :cond_0
    mul-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, p1

    ushr-int v4, v2, v4

    return v4
.end method

.method public declared-synchronized nextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 552
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeed(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    .line 534
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-static {p1, p2}, Ljava/security/SecureRandom;->longToByteArray(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V

    .line 537
    :cond_0
    return-void
.end method

.method public declared-synchronized setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    monitor-enter p0

    .line 510
    :try_start_0
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 511
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
