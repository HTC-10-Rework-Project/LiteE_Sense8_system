.class final Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
.super Ljava/lang/Object;
.source "X509CRLImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/X509CRLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509IssuerSerial"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
        ">;"
    }
.end annotation


# instance fields
.field volatile hashcode:I

.field final issuer:Ljavax/security/auth/x500/X500Principal;

.field final serial:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1296
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1297
    return-void
.end method

.method constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1288
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1289
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    .line 1290
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1356
    check-cast p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun/security/x509/X509CRLImpl$X509IssuerSerial;)I
    .locals 3
    .param p1, "another"    # Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .prologue
    .line 1358
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1359
    iget-object v2, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1358
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1360
    .local v0, "cissuer":I
    if-eqz v0, :cond_0

    return v0

    .line 1361
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    iget-object v2, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1325
    if-ne p1, p0, :cond_0

    .line 1326
    return v4

    .line 1329
    :cond_0
    instance-of v1, p1, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    if-nez v1, :cond_1

    .line 1330
    return v3

    :cond_1
    move-object v0, p1

    .line 1333
    check-cast v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1334
    .local v0, "other":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getSerial()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1334
    if-eqz v1, :cond_2

    .line 1336
    return v4

    .line 1338
    :cond_2
    return v3
.end method

.method getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getSerial()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1347
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    if-nez v1, :cond_0

    .line 1348
    const/16 v0, 0x11

    .line 1349
    .local v0, "result":I
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 1350
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->serial:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1351
    iput v0, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    .line 1353
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;->hashcode:I

    return v1
.end method
