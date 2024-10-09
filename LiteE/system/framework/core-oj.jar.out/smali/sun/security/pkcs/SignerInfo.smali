.class public Lsun/security/pkcs/SignerInfo;
.super Ljava/lang/Object;
.source "SignerInfo.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
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

.field private static final SIG_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field certificateSerialNumber:Ljava/math/BigInteger;

.field digestAlgorithmId:Lsun/security/x509/AlgorithmId;

.field digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

.field encryptedDigest:[B

.field private hasTimestamp:Z

.field issuerName:Lsun/security/x509/X500Name;

.field timestamp:Ljava/security/Timestamp;

.field unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

.field version:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Ljava/security/CryptoPrimitive;->MESSAGE_DIGEST:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 77
    sput-object v0, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 81
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 80
    sput-object v0, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    .line 84
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    .line 85
    const-string/jumbo v1, "jdk.jar.disabledAlgorithms"

    .line 84
    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    .line 83
    sput-object v0, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 74
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 8
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v7, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 154
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 157
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 158
    .local v0, "issuerAndSerialNumber":[Lsun/security/util/DerValue;
    aget-object v3, v0, v6

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 159
    .local v1, "issuerBytes":[B
    new-instance v3, Lsun/security/x509/X500Name;

    new-instance v4, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v4, v5, v1}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 161
    aget-object v3, v0, v7

    invoke-virtual {v3}, Lsun/security/util/DerValue;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 164
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 166
    .local v2, "tmp":Lsun/security/util/DerValue;
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 169
    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 185
    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 188
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 191
    if-eqz p2, :cond_3

    .line 194
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 206
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    new-instance v3, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v4, "extra data at the end"

    invoke-direct {v3, v4}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 176
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x60

    if-ne v3, v4, :cond_0

    .line 177
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v3

    int-to-byte v3, v3

    const/16 v4, -0x5f

    if-ne v3, v4, :cond_1

    .line 201
    new-instance v3, Lsun/security/pkcs/PKCS9Attributes;

    invoke-direct {v3, p1, v7}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 200
    iput-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    goto :goto_1

    .line 209
    :cond_4
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/PKCS9Attributes;Lsun/security/x509/AlgorithmId;[BLsun/security/pkcs/PKCS9Attributes;)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "authenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;
    .param p5, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p6, "encryptedDigest"    # [B
    .param p7, "unauthenticatedAttributes"    # Lsun/security/pkcs/PKCS9Attributes;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 121
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 122
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 123
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 124
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 126
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 127
    iput-object p6, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 128
    iput-object p7, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 129
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/math/BigInteger;Lsun/security/x509/AlgorithmId;Lsun/security/x509/AlgorithmId;[B)V
    .locals 1
    .param p1, "issuerName"    # Lsun/security/x509/X500Name;
    .param p2, "serial"    # Ljava/math/BigInteger;
    .param p3, "digestAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p4, "digestEncryptionAlgorithmId"    # Lsun/security/x509/AlgorithmId;
    .param p5, "encryptedDigest"    # [B

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 106
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    .line 107
    iput-object p1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    .line 108
    iput-object p2, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    .line 109
    iput-object p3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 110
    iput-object p4, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    .line 111
    iput-object p5, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    .line 112
    return-void
.end method

.method private verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V
    .locals 5
    .param p1, "token"    # Lsun/security/timestamp/TimestampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashAlgorithm()Lsun/security/x509/AlgorithmId;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "digestAlgname":Ljava/lang/String;
    sget-object v2, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v3, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 602
    const/4 v4, 0x0

    .line 601
    invoke-virtual {v2, v3, v0, v4}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timestamp token digest check failed. Disabled algorithm used: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 610
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getHashedMessage()[B

    move-result-object v2

    .line 611
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 610
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Signature timestamp (#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 613
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    const-string/jumbo v4, ") generated on "

    .line 613
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 614
    invoke-virtual {p1}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v4

    .line 613
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 615
    const-string/jumbo v4, " is inapplicable"

    .line 613
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_1
    return-void
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x30

    .line 226
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 227
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 228
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 229
    .local v0, "issuerAndSerialNumber":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v3, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 230
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 231
    invoke-virtual {v1, v5, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 233
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 236
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x60

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 239
    :cond_0
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 241
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 244
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    const/16 v4, -0x5f

    invoke-virtual {v3, v4, v1}, Lsun/security/pkcs/PKCS9Attributes;->encode(BLjava/io/OutputStream;)V

    .line 247
    :cond_1
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 248
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v5, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 250
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 251
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lsun/security/pkcs/SignerInfo;->derEncode(Ljava/io/OutputStream;)V

    .line 214
    return-void
.end method

.method public getAuthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v0, v1}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/pkcs/PKCS7;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 271
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    iget-object v9, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {p1, v8, v9}, Lsun/security/pkcs/PKCS7;->getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 272
    .local v7, "userCert":Ljava/security/cert/X509Certificate;
    if-nez v7, :cond_0

    .line 273
    return-object v10

    .line 275
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v0, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {p1}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 279
    .local v4, "pkcsCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 280
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 279
    if-eqz v8, :cond_2

    .line 281
    :cond_1
    return-object v0

    .line 284
    :cond_2
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 285
    .local v2, "issuer":Ljava/security/Principal;
    const/4 v5, 0x0

    .line 287
    .local v5, "start":I
    :cond_3
    const/4 v3, 0x0

    .line 288
    .local v3, "match":Z
    move v1, v5

    .line 289
    .local v1, "i":I
    :goto_0
    array-length v8, v4

    if-ge v1, v8, :cond_4

    .line 290
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 292
    aget-object v8, v4, v1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    .line 296
    aget-object v9, v4, v1

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v9

    .line 295
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 297
    array-length v5, v4

    .line 305
    :goto_1
    const/4 v3, 0x1

    .line 311
    :cond_4
    if-nez v3, :cond_3

    .line 315
    return-object v0

    .line 299
    :cond_5
    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 300
    aget-object v6, v4, v5

    .line 301
    .local v6, "tmpCert":Ljava/security/cert/X509Certificate;
    aget-object v8, v4, v1

    aput-object v8, v4, v5

    .line 302
    aput-object v6, v4, v1

    .line 303
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    .end local v6    # "tmpCert":Ljava/security/cert/X509Certificate;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCertificateSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncryptedDigest()[B
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    return-object v0
.end method

.method public getIssuerName()Lsun/security/x509/X500Name;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 558
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 559
    :cond_0
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    return-object v8

    .line 561
    :cond_1
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-nez v8, :cond_2

    .line 562
    iput-boolean v11, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 563
    return-object v10

    .line 566
    :cond_2
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 567
    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 566
    invoke-virtual {v8, v9}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v4

    .line 568
    .local v4, "tsTokenAttr":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v4, :cond_3

    .line 569
    iput-boolean v11, p0, Lsun/security/pkcs/SignerInfo;->hasTimestamp:Z

    .line 570
    return-object v10

    .line 573
    :cond_3
    new-instance v3, Lsun/security/pkcs/PKCS7;

    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v3, v8}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 575
    .local v3, "tsToken":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/pkcs/ContentInfo;->getData()[B

    move-result-object v2

    .line 578
    .local v2, "encTsTokenInfo":[B
    invoke-virtual {v3, v2}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v6

    .line 580
    .local v6, "tsa":[Lsun/security/pkcs/SignerInfo;
    aget-object v8, v6, v11

    invoke-virtual {v8, v3}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v1

    .line 581
    .local v1, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 582
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 584
    .local v7, "tsaChain":Ljava/security/cert/CertPath;
    new-instance v5, Lsun/security/timestamp/TimestampToken;

    invoke-direct {v5, v2}, Lsun/security/timestamp/TimestampToken;-><init>([B)V

    .line 586
    .local v5, "tsTokenInfo":Lsun/security/timestamp/TimestampToken;
    invoke-direct {p0, v5}, Lsun/security/pkcs/SignerInfo;->verifyTimestamp(Lsun/security/timestamp/TimestampToken;)V

    .line 588
    new-instance v8, Ljava/security/Timestamp;

    invoke-virtual {v5}, Lsun/security/timestamp/TimestampToken;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/security/Timestamp;-><init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V

    iput-object v8, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    .line 589
    iget-object v8, p0, Lsun/security/pkcs/SignerInfo;->timestamp:Ljava/security/Timestamp;

    return-object v8
.end method

.method public getUnauthenticatedAttributes()Lsun/security/pkcs/PKCS9Attributes;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 631
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 633
    .local v0, "hexDump":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v1, ""

    .line 635
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Signer Info for (issuer): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->issuerName:Lsun/security/x509/X500Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tversion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tcertificateSerialNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->certificateSerialNumber:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    const-string/jumbo v3, "\n"

    .line 637
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    const-string/jumbo v3, "\n"

    .line 641
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdigestEncryptionAlgorithmId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->digestEncryptionAlgorithmId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 645
    const-string/jumbo v3, "\n"

    .line 644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tencryptedDigest: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 648
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 648
    const-string/jumbo v3, "\n"

    .line 647
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 649
    iget-object v2, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    if-eqz v2, :cond_1

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tunauthenticatedAttributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 651
    iget-object v3, p0, Lsun/security/pkcs/SignerInfo;->unauthenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 651
    const-string/jumbo v3, "\n"

    .line 650
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    :cond_1
    return-object v1
.end method

.method verify(Lsun/security/pkcs/PKCS7;)Lsun/security/pkcs/SignerInfo;
    .locals 1
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 496
    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .locals 30
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lsun/security/pkcs/PKCS7;->getContentInfo()Lsun/security/pkcs/ContentInfo;

    move-result-object v7

    .line 338
    .local v7, "content":Lsun/security/pkcs/ContentInfo;
    if-nez p2, :cond_0

    .line 339
    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lsun/security/pkcs/ContentInfo;->getContentBytes()[B

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local p2    # "inputStream":Ljava/io/InputStream;
    .local v16, "inputStream":Ljava/io/InputStream;
    move-object/from16 p2, v16

    .line 342
    .end local v16    # "inputStream":Ljava/io/InputStream;
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v11

    .line 348
    .local v11, "digestAlgname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    if-nez v27, :cond_2

    .line 349
    move-object/from16 v9, p2

    .line 403
    .local v9, "dataSigned":Ljava/io/InputStream;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/pkcs/SignerInfo;->getDigestEncryptionAlgorithmId()Lsun/security/x509/AlgorithmId;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v14

    .line 407
    .local v14, "encryptionAlgname":Ljava/lang/String;
    invoke-static {v14}, Lsun/security/x509/AlgorithmId;->getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 408
    .local v26, "tmp":Ljava/lang/String;
    if-eqz v26, :cond_1

    move-object/from16 v14, v26

    .line 409
    :cond_1
    invoke-static {v11, v14}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "algname":Ljava/lang/String;
    sget-object v27, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v28, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 414
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Signature check failed. Disabled algorithm used: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .end local v3    # "algname":Ljava/lang/String;
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v9    # "dataSigned":Ljava/io/InputStream;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v14    # "encryptionAlgname":Ljava/lang/String;
    .end local v26    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 479
    .local v12, "e":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "IO error verifying signature:\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 480
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    .line 479
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 354
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    .line 355
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 354
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v8

    .line 353
    check-cast v8, Lsun/security/util/ObjectIdentifier;

    .line 356
    .local v8, "contentType":Lsun/security/util/ObjectIdentifier;
    if-eqz v8, :cond_3

    .line 357
    iget-object v0, v7, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v27

    xor-int/lit8 v27, v27, 0x1

    .line 356
    if-eqz v27, :cond_4

    .line 358
    :cond_3
    const/16 v27, 0x0

    return-object v27

    .line 362
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    .line 363
    sget-object v28, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 362
    invoke-virtual/range {v27 .. v28}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v22

    .line 361
    check-cast v22, [B

    .line 365
    .local v22, "messageDigest":[B
    if-nez v22, :cond_5

    .line 366
    const/16 v27, 0x0

    return-object v27

    .line 369
    :cond_5
    sget-object v27, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v28, Lsun/security/pkcs/SignerInfo;->DIGEST_PRIMITIVE_SET:Ljava/util/Set;

    .line 370
    const/16 v29, 0x0

    .line 369
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v11, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 371
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Digest check failed. Disabled algorithm used: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    .end local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "digestAlgname":Ljava/lang/String;
    .end local v22    # "messageDigest":[B
    :catch_1
    move-exception v13

    .line 483
    .local v13, "e":Ljava/security/InvalidKeyException;
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "InvalidKey: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v13}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 375
    .end local v13    # "e":Ljava/security/InvalidKeyException;
    .restart local v7    # "content":Lsun/security/pkcs/ContentInfo;
    .restart local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .restart local v11    # "digestAlgname":Ljava/lang/String;
    .restart local v22    # "messageDigest":[B
    :cond_6
    :try_start_2
    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v21

    .line 377
    .local v21, "md":Ljava/security/MessageDigest;
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v4, v0, [B

    .line 378
    .local v4, "buffer":[B
    const/16 v24, 0x0

    .line 379
    .local v24, "read":I
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 380
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 382
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 384
    .local v6, "computedMessageDigest":[B
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v6

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 385
    const/16 v27, 0x0

    return-object v27

    .line 386
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_a

    .line 387
    aget-byte v27, v22, v15

    aget-byte v28, v6, v15

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 388
    const/16 v27, 0x0

    return-object v27

    .line 386
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 397
    :cond_a
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->authenticatedAttributes:Lsun/security/pkcs/PKCS9Attributes;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/pkcs/PKCS9Attributes;->getDerEncoding()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v9    # "dataSigned":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 418
    .end local v4    # "buffer":[B
    .end local v6    # "computedMessageDigest":[B
    .end local v8    # "contentType":Lsun/security/util/ObjectIdentifier;
    .end local v15    # "i":I
    .end local v21    # "md":Ljava/security/MessageDigest;
    .end local v22    # "messageDigest":[B
    .end local v24    # "read":I
    .restart local v3    # "algname":Ljava/lang/String;
    .restart local v14    # "encryptionAlgname":Ljava/lang/String;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lsun/security/pkcs/SignerInfo;->getCertificate(Lsun/security/pkcs/PKCS7;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 419
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    .line 420
    .local v18, "key":Ljava/security/PublicKey;
    if-nez v5, :cond_c

    .line 421
    const/16 v27, 0x0

    return-object v27

    .line 425
    :cond_c
    sget-object v27, Lsun/security/pkcs/SignerInfo;->JAR_DISABLED_CHECK:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v28, Lsun/security/pkcs/SignerInfo;->SIG_PRIMITIVE_SET:Ljava/util/Set;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 426
    new-instance v27, Ljava/security/SignatureException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Public key check failed. Disabled algorithm used: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 427
    invoke-interface/range {v18 .. v18}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v29

    .line 426
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 430
    :cond_d
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 431
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Certificate has unsupported critical extension(s)"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 439
    :cond_e
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 440
    .local v20, "keyUsageBits":[Z
    if-eqz v20, :cond_f

    .line 447
    :try_start_3
    new-instance v19, Lsun/security/x509/KeyUsageExtension;

    invoke-direct/range {v19 .. v20}, Lsun/security/x509/KeyUsageExtension;-><init>([Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_1

    .line 454
    .local v19, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    :try_start_4
    const-string/jumbo v27, "digital_signature"

    .line 453
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 457
    .local v10, "digSigAllowed":Z
    const-string/jumbo v27, "non_repudiation"

    .line 456
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/x509/KeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 459
    .local v23, "nonRepuAllowed":Z
    if-nez v10, :cond_f

    xor-int/lit8 v27, v23, 0x1

    if-eqz v27, :cond_f

    .line 460
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Key usage restricted: cannot be used for digital signatures"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 448
    .end local v10    # "digSigAllowed":Z
    .end local v19    # "keyUsage":Lsun/security/x509/KeyUsageExtension;
    .end local v23    # "nonRepuAllowed":Z
    :catch_2
    move-exception v17

    .line 449
    .local v17, "ioe":Ljava/io/IOException;
    new-instance v27, Ljava/security/SignatureException;

    const-string/jumbo v28, "Failed to parse keyUsage extension"

    invoke-direct/range {v27 .. v28}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 466
    .end local v17    # "ioe":Ljava/io/IOException;
    :cond_f
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v25

    .line 467
    .local v25, "sig":Ljava/security/Signature;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 469
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v4, v0, [B

    .line 470
    .restart local v4    # "buffer":[B
    const/16 v24, 0x0

    .line 471
    .restart local v24    # "read":I
    :goto_3
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v24

    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    .line 472
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Ljava/security/Signature;->update([BII)V

    goto :goto_3

    .line 474
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/SignerInfo;->encryptedDigest:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v27

    if-eqz v27, :cond_11

    .line 475
    return-object p0

    .line 486
    :cond_11
    const/16 v27, 0x0

    return-object v27
.end method

.method verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;
    .locals 2
    .param p1, "block"    # Lsun/security/pkcs/PKCS7;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v1}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method
