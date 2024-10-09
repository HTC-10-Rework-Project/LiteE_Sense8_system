.class public final Lsun/security/util/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getKeySize(Ljava/security/Key;)I
    .locals 13
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 52
    const/4 v9, -0x1

    .line 54
    .local v9, "size":I
    instance-of v12, p0, Lsun/security/util/Length;

    if-eqz v12, :cond_0

    .line 56
    :try_start_0
    move-object v0, p0

    check-cast v0, Lsun/security/util/Length;

    move-object v8, v0

    .line 57
    .local v8, "ruler":Lsun/security/util/Length;
    invoke-interface {v8}, Lsun/security/util/Length;->length()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 62
    .end local v8    # "ruler":Lsun/security/util/Length;
    :goto_0
    if-ltz v9, :cond_0

    .line 63
    return v9

    .line 68
    :cond_0
    instance-of v12, p0, Ljavax/crypto/SecretKey;

    if-eqz v12, :cond_2

    move-object v10, p0

    .line 69
    check-cast v10, Ljavax/crypto/SecretKey;

    .line 70
    .local v10, "sk":Ljavax/crypto/SecretKey;
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "format":Ljava/lang/String;
    const-string/jumbo v12, "RAW"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    if-eqz v12, :cond_1

    .line 72
    invoke-interface {v10}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    array-length v12, v12

    mul-int/lit8 v9, v12, 0x8

    .line 112
    .end local v1    # "format":Ljava/lang/String;
    .end local v10    # "sk":Ljavax/crypto/SecretKey;
    :cond_1
    :goto_1
    return v9

    .line 75
    :cond_2
    instance-of v12, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v12, :cond_3

    move-object v6, p0

    .line 76
    check-cast v6, Ljava/security/interfaces/RSAKey;

    .line 77
    .local v6, "pubk":Ljava/security/interfaces/RSAKey;
    invoke-interface {v6}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 78
    .end local v6    # "pubk":Ljava/security/interfaces/RSAKey;
    :cond_3
    instance-of v12, p0, Ljava/security/interfaces/ECKey;

    if-eqz v12, :cond_4

    move-object v5, p0

    .line 79
    check-cast v5, Ljava/security/interfaces/ECKey;

    .line 82
    .local v5, "pubk":Ljava/security/interfaces/ECKey;
    invoke-interface {v5}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 88
    .local v3, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 92
    .end local v3    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "pubk":Ljava/security/interfaces/ECKey;
    :cond_4
    instance-of v12, p0, Ljava/security/interfaces/DSAKey;

    if-eqz v12, :cond_5

    move-object v4, p0

    .line 93
    check-cast v4, Ljava/security/interfaces/DSAKey;

    .line 96
    .local v4, "pubk":Ljava/security/interfaces/DSAKey;
    invoke-interface {v4}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 102
    .local v2, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v2, :cond_1

    .line 103
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 106
    .end local v2    # "params":Ljava/security/interfaces/DSAParams;
    .end local v4    # "pubk":Ljava/security/interfaces/DSAKey;
    :cond_5
    instance-of v12, p0, Ljavax/crypto/interfaces/DHKey;

    if-eqz v12, :cond_1

    move-object v7, p0

    .line 107
    check-cast v7, Ljavax/crypto/interfaces/DHKey;

    .line 108
    .local v7, "pubk":Ljavax/crypto/interfaces/DHKey;
    invoke-interface {v7}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    goto :goto_1

    .line 58
    .end local v7    # "pubk":Ljavax/crypto/interfaces/DHKey;
    :catch_0
    move-exception v11

    .local v11, "usoe":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method
