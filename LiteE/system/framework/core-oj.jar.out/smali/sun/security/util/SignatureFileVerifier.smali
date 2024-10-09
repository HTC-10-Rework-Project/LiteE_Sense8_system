.class public Lsun/security/util/SignatureFileVerifier;
.super Ljava/lang/Object;
.source "SignatureFileVerifier.java"


# static fields
.field private static final ATTR_DIGEST:Ljava/lang/String;

.field private static final DIGEST_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexc:[C


# instance fields
.field private block:Lsun/security/pkcs/PKCS7;

.field private certificateFactory:Ljava/security/cert/CertificateFactory;

.field private createdDigests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private md:Lsun/security/util/ManifestDigester;

.field private name:Ljava/lang/String;

.field private sfBytes:[B

.field private signerCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;"
        }
    .end annotation
.end field

.field private workaround:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    .line 65
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 64
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 68
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    .line 69
    const-string/jumbo v1, "jdk.jar.disabledAlgorithms"

    .line 68
    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    .line 67
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 74
    const-string/jumbo v0, "-DIGEST-Manifest-Main-Attributes"

    .line 75
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    .line 576
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 575
    sput-object v0, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    .line 59
    return-void

    .line 576
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V
    .locals 3
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Lsun/security/util/ManifestDigester;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .local p1, "signerCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v2, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v0

    .line 118
    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-direct {v1, p4}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    .line 119
    iget-object v1, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 120
    const-string/jumbo v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 124
    const-string/jumbo v1, "."

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 125
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    .line 127
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    .line 128
    return-void

    .line 121
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 122
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 121
    throw v1
.end method

.method static contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z
    .locals 2
    .param p0, "set"    # [Ljava/security/CodeSigner;
    .param p1, "signer"    # Ljava/security/CodeSigner;

    .prologue
    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 598
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/security/CodeSigner;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 228
    sget-object v3, Lsun/security/util/SignatureFileVerifier;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v4, Lsun/security/util/SignatureFileVerifier;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v3, v4, p1, v5}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    new-instance v1, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SignatureFile check failed. Disabled algorithm used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "e":Ljava/security/SignatureException;
    throw v1

    .line 235
    .end local v1    # "e":Ljava/security/SignatureException;
    :cond_0
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 236
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    .line 238
    :cond_1
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 240
    .local v0, "digest":Ljava/security/MessageDigest;
    if-nez v0, :cond_2

    .line 242
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 243
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->createdDigests:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_2
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v2

    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0
.end method

.method private getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;
    .locals 9
    .param p1, "infos"    # [Lsun/security/pkcs/SignerInfo;
    .param p2, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 548
    const/4 v4, 0x0

    .line 550
    .local v4, "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    const/4 v2, 0x0

    .end local v4    # "signers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/CodeSigner;>;"
    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 552
    aget-object v3, p1, v2

    .line 553
    .local v3, "info":Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v3, p2}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v1

    .line 554
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    iget-object v5, p0, Lsun/security/util/SignatureFileVerifier;->certificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v5, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 555
    .local v0, "certChain":Ljava/security/cert/CertPath;
    if-nez v4, :cond_0

    .line 556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 559
    :cond_0
    new-instance v5, Ljava/security/CodeSigner;

    invoke-virtual {v3}, Lsun/security/pkcs/SignerInfo;->getTimestamp()Ljava/security/Timestamp;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/security/CodeSigner;-><init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    .line 562
    sget-object v5, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Signature Block Certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 563
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 562
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 550
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "certChain":Ljava/security/cert/CertPath;
    .end local v1    # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "info":Lsun/security/pkcs/SignerInfo;
    :cond_2
    if-eqz v4, :cond_3

    .line 568
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/CodeSigner;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/CodeSigner;

    return-object v5

    .line 570
    :cond_3
    return-object v8
.end method

.method public static isBlockOrSF(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-nez v0, :cond_0

    .line 172
    const-string/jumbo v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 171
    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSigningRelated(Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 189
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 190
    const-string/jumbo v4, "META-INF/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    return v6

    .line 193
    :cond_0
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 194
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 195
    return v6

    .line 197
    :cond_1
    invoke-static {p0}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "MANIFEST.MF"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    :cond_2
    return v7

    .line 199
    :cond_3
    const-string/jumbo v4, "SIG-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 203
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 204
    .local v2, "extIndex":I
    if-eq v2, v5, :cond_9

    .line 205
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "ext":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_5

    .line 208
    :cond_4
    return v6

    .line 211
    :cond_5
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 212
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    .local v0, "cc":C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_6

    const/16 v4, 0x5a

    if-le v0, v4, :cond_8

    :cond_6
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x39

    if-le v0, v4, :cond_8

    .line 215
    :cond_7
    return v6

    .line 211
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "cc":C
    .end local v1    # "ext":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_9
    return v7

    .line 221
    .end local v2    # "extIndex":I
    :cond_a
    return v6
.end method

.method static isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 3
    .param p0, "subset"    # [Ljava/security/CodeSigner;
    .param p1, "set"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v2, 0x1

    .line 608
    if-ne p1, p0, :cond_0

    .line 609
    return v2

    .line 612
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 613
    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const/4 v1, 0x0

    return v1

    .line 612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    return v2
.end method

.method static matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z
    .locals 5
    .param p0, "signers"    # [Ljava/security/CodeSigner;
    .param p1, "oldSigners"    # [Ljava/security/CodeSigner;
    .param p2, "newSigners"    # [Ljava/security/CodeSigner;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 628
    if-nez p1, :cond_0

    if-ne p0, p2, :cond_0

    .line 629
    return v4

    .line 634
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 635
    return v3

    .line 638
    :cond_1
    invoke-static {p2, p0}, Lsun/security/util/SignatureFileVerifier;->isSubSet([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 639
    return v3

    .line 645
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 647
    if-eqz p1, :cond_3

    aget-object v2, p0, v1

    invoke-static {p1, v2}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 648
    :cond_3
    aget-object v2, p0, v1

    invoke-static {p2, v2}, Lsun/security/util/SignatureFileVerifier;->contains([Ljava/security/CodeSigner;Ljava/security/CodeSigner;)Z

    move-result v0

    .line 649
    :goto_1
    if-nez v0, :cond_5

    .line 650
    return v3

    .line 647
    :cond_4
    const/4 v0, 0x1

    .local v0, "found":Z
    goto :goto_1

    .line 645
    .end local v0    # "found":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_6
    return v4
.end method

.method private processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "manifestDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/jar/Manifest;

    invoke-direct {v6}, Ljava/util/jar/Manifest;-><init>()V

    .line 281
    .local v6, "sf":Ljava/util/jar/Manifest;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {v6}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v8

    sget-object v9, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v8, v9}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "version":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string/jumbo v8, "1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 289
    :cond_0
    return-void

    .line 292
    :cond_1
    iget-object v8, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    invoke-virtual {v8, v9}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 294
    .local v2, "infos":[Lsun/security/pkcs/SignerInfo;
    if-nez v2, :cond_2

    .line 295
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cannot verify signature block file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 296
    iget-object v10, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    .line 295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    :cond_2
    iget-object v8, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-direct {p0, v2, v8}, Lsun/security/util/SignatureFileVerifier;->getSigners([Lsun/security/pkcs/SignerInfo;Lsun/security/pkcs/PKCS7;)[Ljava/security/CodeSigner;

    move-result-object v5

    .line 303
    .local v5, "newSigners":[Ljava/security/CodeSigner;
    if-nez v5, :cond_3

    .line 304
    return-void

    .line 307
    :cond_3
    invoke-virtual {v6}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    iget-object v8, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v6, v8, p2}, Lsun/security/util/SignatureFileVerifier;->verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Ljava/util/List;)Z

    move-result v3

    .line 313
    .local v3, "manifestSigned":Z
    if-nez v3, :cond_4

    iget-object v8, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v6, v8}, Lsun/security/util/SignatureFileVerifier;->verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    .line 314
    new-instance v8, Ljava/lang/SecurityException;

    .line 315
    const-string/jumbo v9, "Invalid signature file digest for Manifest main attributes"

    .line 314
    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 319
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 322
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 324
    .local v4, "name":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/Attributes;

    iget-object v9, p0, Lsun/security/util/SignatureFileVerifier;->md:Lsun/security/util/ManifestDigester;

    invoke-direct {p0, v8, v4, v9}, Lsun/security/util/SignatureFileVerifier;->verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;)Z

    move-result v8

    .line 324
    if-eqz v8, :cond_8

    .line 327
    :cond_5
    const-string/jumbo v8, "./"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 328
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    :cond_6
    const-string/jumbo v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 331
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    :cond_7
    invoke-virtual {p0, v5, p1, v4}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 335
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_4

    .line 336
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSignature signed name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_8
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_4

    .line 340
    sget-object v8, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSignature unsigned name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v4    # "name":Ljava/lang/String;
    :cond_9
    const-string/jumbo v8, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v5, p1, v8}, Lsun/security/util/SignatureFileVerifier;->updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 585
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 587
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 588
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    sget-object v2, Lsun/security/util/SignatureFileVerifier;->hexc:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private verifyManifestHash(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Lsun/security/util/ManifestDigester;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private verifyManifestMainAttrs(Ljava/util/jar/Manifest;Lsun/security/util/ManifestDigester;)Z
    .locals 13
    .param p1, "sf"    # Ljava/util/jar/Manifest;
    .param p2, "md"    # Lsun/security/util/ManifestDigester;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v6

    .line 401
    .local v6, "mattr":Ljava/util/jar/Attributes;
    const/4 v1, 0x1

    .line 405
    .local v1, "attrsVerified":Z
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "se$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 406
    .local v8, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "key":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 410
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sget-object v11, Lsun/security/util/SignatureFileVerifier;->ATTR_DIGEST:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v0}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 413
    .local v3, "digest":Ljava/security/MessageDigest;
    if-eqz v3, :cond_0

    .line 415
    const-string/jumbo v10, "Manifest-Main-Attributes"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v7

    .line 416
    .local v7, "mde":Lsun/security/util/ManifestDigester$Entry;
    invoke-virtual {v7, v3}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v2

    .line 418
    .local v2, "computedHash":[B
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 420
    .local v4, "expectedHash":[B
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_1

    .line 421
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Signature File: Manifest Main Attributes digest "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 423
    invoke-virtual {v3}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 421
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 424
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  sigfile  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  computed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 426
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v10}, Lsun/security/util/Debug;->println()V

    .line 429
    :cond_1
    invoke-static {v2, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v10

    if-nez v10, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 435
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_2

    .line 436
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "Verification of Manifest main attributes failed"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 438
    sget-object v10, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v10}, Lsun/security/util/Debug;->println()V

    .line 449
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "computedHash":[B
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "expectedHash":[B
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "mde":Lsun/security/util/ManifestDigester$Entry;
    .end local v8    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    return v1
.end method

.method private verifySection(Ljava/util/jar/Attributes;Ljava/lang/String;Lsun/security/util/ManifestDigester;)Z
    .locals 15
    .param p1, "sfAttr"    # Ljava/util/jar/Attributes;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "md"    # Lsun/security/util/ManifestDigester;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v9, 0x0

    .line 467
    .local v9, "oneDigestVerified":Z
    iget-object v12, p0, Lsun/security/util/SignatureFileVerifier;->block:Lsun/security/pkcs/PKCS7;

    invoke-virtual {v12}, Lsun/security/pkcs/PKCS7;->isOldStyle()Z

    move-result v12

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lsun/security/util/ManifestDigester;->get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;

    move-result-object v7

    .line 469
    .local v7, "mde":Lsun/security/util/ManifestDigester$Entry;
    if-nez v7, :cond_0

    .line 470
    new-instance v12, Ljava/lang/SecurityException;

    .line 471
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no manifest section for signature file entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 470
    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 474
    :cond_0
    if-eqz p1, :cond_7

    .line 480
    invoke-virtual/range {p1 .. p1}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "se$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 481
    .local v10, "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "key":Ljava/lang/String;
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "-DIGEST"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 485
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v2}, Lsun/security/util/SignatureFileVerifier;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 489
    .local v4, "digest":Ljava/security/MessageDigest;
    if-eqz v4, :cond_1

    .line 490
    const/4 v8, 0x0

    .line 493
    .local v8, "ok":Z
    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 495
    .local v5, "expected":[B
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-eqz v12, :cond_4

    .line 496
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 501
    .local v3, "computed":[B
    :goto_0
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_2

    .line 502
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Signature Block File: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 503
    const-string/jumbo v14, " digest="

    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 503
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    .line 502
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 504
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  expected "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 505
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  computed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 506
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    .line 509
    :cond_2
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 510
    const/4 v9, 0x1

    .line 511
    const/4 v8, 0x1

    .line 527
    :cond_3
    :goto_1
    if-nez v8, :cond_1

    .line 528
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "invalid "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 529
    invoke-virtual {v4}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v14

    .line 528
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 530
    const-string/jumbo v14, " signature file digest for "

    .line 528
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 498
    .end local v3    # "computed":[B
    :cond_4
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digest(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .restart local v3    # "computed":[B
    goto/16 :goto_0

    .line 514
    :cond_5
    iget-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    if-nez v12, :cond_3

    .line 515
    invoke-virtual {v7, v4}, Lsun/security/util/ManifestDigester$Entry;->digestWorkaround(Ljava/security/MessageDigest;)[B

    move-result-object v3

    .line 516
    invoke-static {v3, v5}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 517
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_6

    .line 518
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "  re-computed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lsun/security/util/SignatureFileVerifier;->toHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 519
    sget-object v12, Lsun/security/util/SignatureFileVerifier;->debug:Lsun/security/util/Debug;

    invoke-virtual {v12}, Lsun/security/util/Debug;->println()V

    .line 521
    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lsun/security/util/SignatureFileVerifier;->workaround:Z

    .line 522
    const/4 v9, 0x1

    .line 523
    const/4 v8, 0x1

    goto :goto_1

    .line 536
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "computed":[B
    .end local v4    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "expected":[B
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "ok":Z
    .end local v10    # "se":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v11    # "se$iterator":Ljava/util/Iterator;
    :cond_7
    return v9
.end method


# virtual methods
.method public needSignatureFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needSignatureFileBytes()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process(Ljava/util/Hashtable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/util/jar/JarException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    .local p2, "manifestDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 267
    .local v0, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v0

    .line 268
    invoke-direct {p0, p1, p2}, Lsun/security/util/SignatureFileVerifier;->processImpl(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 273
    return-void

    .line 269
    .end local v0    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 270
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    .line 269
    throw v1
.end method

.method public setSignatureFile([B)V
    .locals 0
    .param p1, "sfBytes"    # [B

    .prologue
    .line 157
    iput-object p1, p0, Lsun/security/util/SignatureFileVerifier;->sfBytes:[B

    .line 158
    return-void
.end method

.method updateSigners([Ljava/security/CodeSigner;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 6
    .param p1, "newSigners"    # [Ljava/security/CodeSigner;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/CodeSigner;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/CodeSigner;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "signers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    const/4 v5, 0x0

    .line 658
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    .line 665
    .local v2, "oldSigners":[Ljava/security/CodeSigner;
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 666
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    .line 667
    .local v0, "cachedSigners":[Ljava/security/CodeSigner;
    invoke-static {v0, v2, p1}, Lsun/security/util/SignatureFileVerifier;->matches([Ljava/security/CodeSigner;[Ljava/security/CodeSigner;[Ljava/security/CodeSigner;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void

    .line 665
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 673
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_1
    if-nez v2, :cond_2

    .line 674
    move-object v0, p1

    .line 683
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :goto_1
    iget-object v3, p0, Lsun/security/util/SignatureFileVerifier;->signerCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    return-void

    .line 677
    .end local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    :cond_2
    array-length v3, v2

    array-length v4, p1

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/security/CodeSigner;

    .line 679
    .restart local v0    # "cachedSigners":[Ljava/security/CodeSigner;
    array-length v3, v2

    .line 678
    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    array-length v3, v2

    .line 681
    array-length v4, p1

    .line 680
    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
