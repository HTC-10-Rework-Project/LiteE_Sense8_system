.class public Lsun/security/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    }
.end annotation


# static fields
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z = true


# instance fields
.field private extensions:Lsun/security/x509/CRLExtensions;

.field private infoSigAlgId:Lsun/security/x509/AlgorithmId;

.field private issuer:Lsun/security/x509/X500Name;

.field private issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

.field private nextUpdate:Ljava/util/Date;

.field private readOnly:Z

.field private revokedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private revokedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/x509/X509CRLImpl$X509IssuerSerial;",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end field

.field private sigAlgId:Lsun/security/x509/AlgorithmId;

.field private signature:[B

.field private signedCRL:[B

.field private tbsCertList:[B

.field private thisUpdate:Ljava/util/Date;

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;

.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStrm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 177
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 180
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 161
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 164
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;)V
    .locals 2
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 192
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 193
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 194
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 195
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V
    .locals 8
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 207
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v7, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 211
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 212
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 213
    iput-object p3, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 214
    if-eqz p4, :cond_1

    .line 215
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 216
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v1, v2

    .line 217
    .local v1, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p4

    if-ge v3, v6, :cond_1

    .line 218
    aget-object v0, p4, v3

    check-cast v0, Lsun/security/x509/X509CRLEntryImpl;

    .line 220
    .local v0, "badCert":Lsun/security/x509/X509CRLEntryImpl;
    :try_start_0
    invoke-direct {p0, v0, v1}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 225
    new-instance v5, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 226
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    .line 225
    invoke-direct {v5, v1, v6}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 227
    .local v5, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {v0}, Lsun/security/x509/X509CRLEntryImpl;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 230
    const/4 v6, 0x1

    iput v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 217
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v5    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :catch_0
    move-exception v4

    .line 222
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CRLException;

    invoke-direct {v6, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 234
    .end local v0    # "badCert":Lsun/security/x509/X509CRLEntryImpl;
    .end local v1    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "i":I
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;Lsun/security/x509/CRLExtensions;)V
    .locals 1
    .param p1, "issuer"    # Lsun/security/x509/X500Name;
    .param p2, "thisDate"    # Ljava/util/Date;
    .param p3, "nextDate"    # Ljava/util/Date;
    .param p4, "badCerts"    # [Ljava/security/cert/X509CRLEntry;
    .param p5, "crlExts"    # Lsun/security/x509/CRLExtensions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/x509/X500Name;Ljava/util/Date;Ljava/util/Date;[Ljava/security/cert/X509CRLEntry;)V

    .line 252
    if-eqz p5, :cond_0

    .line 253
    iput-object p5, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 256
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "crlData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 95
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 96
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 97
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 98
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 103
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 104
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 105
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 106
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 107
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    .line 108
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    .line 109
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 146
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 149
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .locals 4
    .param p1, "entry"    # Lsun/security/x509/X509CRLEntryImpl;
    .param p2, "prevCertIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1255
    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;

    move-result-object v0

    .line 1256
    .local v0, "ciExt":Lsun/security/x509/CertificateIssuerExtension;
    if-eqz v0, :cond_0

    .line 1257
    const-string/jumbo v3, "issuer"

    invoke-virtual {v0, v3}, Lsun/security/x509/CertificateIssuerExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v2

    .line 1258
    .local v2, "names":Lsun/security/x509/GeneralNames;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X500Name;

    .line 1259
    .local v1, "issuerDN":Lsun/security/x509/X500Name;
    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    return-object v3

    .line 1261
    .end local v1    # "issuerDN":Lsun/security/x509/X500Name;
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :cond_0
    return-object p2
.end method

.method public static getEncodedInternal(Ljava/security/cert/X509CRL;)[B
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 1222
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p0, Lsun/security/x509/X509CRLImpl;

    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    return-object v0

    .line 1225
    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 10
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 1194
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v2

    .line 1195
    .local v2, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1196
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v5, v8, v9

    .line 1197
    .local v5, "tbsCert":Lsun/security/util/DerValue;
    iget-object v6, v5, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1201
    .local v6, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v8

    int-to-byte v3, v8

    .line 1202
    .local v3, "nextByte":B
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    .line 1203
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 1206
    :cond_0
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 1207
    .local v7, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v6}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 1208
    invoke-virtual {v7}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    .line 1209
    .local v4, "principalBytes":[B
    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 1210
    .end local v0    # "derIn":Lsun/security/util/DerInputStream;
    .end local v2    # "encoded":[B
    .end local v3    # "nextByte":B
    .end local v4    # "principalBytes":[B
    .end local v5    # "tbsCert":Lsun/security/util/DerValue;
    .end local v6    # "tbsIn":Lsun/security/util/DerInputStream;
    .end local v7    # "tmp":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Could not parse issuer"

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 14
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    iget-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-eqz v11, :cond_0

    .line 1069
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "cannot over-write existing CRL"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1071
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-byte v11, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x30

    if-eq v11, v12, :cond_2

    .line 1072
    :cond_1
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Invalid DER-encoded CRL data"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1074
    :cond_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 1075
    const/4 v11, 0x3

    new-array v8, v11, [Lsun/security/util/DerValue;

    .line 1077
    .local v8, "seq":[Lsun/security/util/DerValue;
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v8, v12

    .line 1078
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v8, v12

    .line 1079
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v8, v12

    .line 1081
    iget-object v11, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1082
    new-instance v11, Ljava/security/cert/CRLException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "signed overrun, bytes = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1083
    iget-object v13, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v13}, Lsun/security/util/DerInputStream;->available()I

    move-result v13

    .line 1082
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1085
    :cond_3
    const/4 v11, 0x0

    aget-object v11, v8, v11

    iget-byte v11, v11, Lsun/security/util/DerValue;->tag:B

    const/16 v12, 0x30

    if-eq v11, v12, :cond_4

    .line 1086
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "signed CRL fields invalid"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1088
    :cond_4
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1089
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 1091
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1092
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "AlgorithmId field overrun"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1094
    :cond_5
    const/4 v11, 0x2

    aget-object v11, v8, v11

    iget-object v11, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-eqz v11, :cond_6

    .line 1095
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Signature field overrun"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1098
    :cond_6
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 1101
    const/4 v11, 0x0

    aget-object v11, v8, v11

    iget-object v3, v11, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1106
    .local v3, "derStrm":Lsun/security/util/DerInputStream;
    const/4 v11, 0x0

    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1107
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1108
    .local v7, "nextByte":B
    const/4 v11, 0x2

    if-ne v7, v11, :cond_7

    .line 1109
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v11

    iput v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    .line 1110
    iget v11, p0, Lsun/security/x509/X509CRLImpl;->version:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 1111
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Invalid version"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1113
    :cond_7
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    .line 1116
    .local v9, "tmp":Lsun/security/util/DerValue;
    invoke-static {v9}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v10

    .line 1119
    .local v10, "tmpId":Lsun/security/x509/AlgorithmId;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v10, v11}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1120
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Signature algorithm mismatch"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1121
    :cond_8
    iput-object v10, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 1124
    new-instance v11, Lsun/security/x509/X500Name;

    invoke-direct {v11, v3}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    .line 1125
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v11}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1126
    new-instance v11, Ljava/security/cert/CRLException;

    const-string/jumbo v12, "Empty issuer DN not allowed in X509CRLs"

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1132
    :cond_9
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1133
    const/16 v11, 0x17

    if-ne v7, v11, :cond_a

    .line 1134
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    .line 1142
    :goto_0
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-nez v11, :cond_c

    .line 1143
    return-void

    .line 1135
    :cond_a
    const/16 v11, 0x18

    if-ne v7, v11, :cond_b

    .line 1136
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    goto :goto_0

    .line 1138
    :cond_b
    new-instance v11, Ljava/security/cert/CRLException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid encoding for thisUpdate (tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1139
    const-string/jumbo v13, ")"

    .line 1138
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1146
    :cond_c
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1147
    const/16 v11, 0x17

    if-ne v7, v11, :cond_e

    .line 1148
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    .line 1153
    :cond_d
    :goto_1
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-nez v11, :cond_f

    .line 1154
    return-void

    .line 1149
    :cond_e
    const/16 v11, 0x18

    if-ne v7, v11, :cond_d

    .line 1150
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    goto :goto_1

    .line 1157
    :cond_f
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v11

    int-to-byte v7, v11

    .line 1158
    const/16 v11, 0x30

    if-ne v7, v11, :cond_10

    .line 1159
    and-int/lit16 v11, v7, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_10

    .line 1160
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 1162
    .local v1, "badCerts":[Lsun/security/util/DerValue;
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 1163
    .local v2, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object v0, v2

    .line 1164
    .local v0, "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v11, v1

    if-ge v5, v11, :cond_10

    .line 1165
    new-instance v4, Lsun/security/x509/X509CRLEntryImpl;

    aget-object v11, v1, v5

    invoke-direct {v4, v11}, Lsun/security/x509/X509CRLEntryImpl;-><init>(Lsun/security/util/DerValue;)V

    .line 1166
    .local v4, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-direct {p0, v4, v0}, Lsun/security/x509/X509CRLImpl;->getCertIssuer(Lsun/security/x509/X509CRLEntryImpl;Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1167
    invoke-virtual {v4, v2, v0}, Lsun/security/x509/X509CRLEntryImpl;->setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V

    .line 1168
    new-instance v6, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 1169
    invoke-virtual {v4}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    .line 1168
    invoke-direct {v6, v0, v11}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 1170
    .local v6, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    iget-object v11, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1175
    .end local v0    # "badCertIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v1    # "badCerts":[Lsun/security/util/DerValue;
    .end local v2    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v5    # "i":I
    .end local v6    # "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    :cond_10
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v11

    if-nez v11, :cond_11

    .line 1176
    return-void

    .line 1179
    :cond_11
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v9

    .line 1180
    invoke-virtual {v9}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1181
    new-instance v11, Lsun/security/x509/CRLExtensions;

    iget-object v12, v9, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v11, v12}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v11, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 1183
    :cond_12
    const/4 v11, 0x1

    iput-boolean v11, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 1184
    return-void
.end method

.method public static toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 1236
    instance-of v0, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_0

    .line 1237
    check-cast p0, Lsun/security/x509/X509CRLImpl;

    .end local p0    # "crl":Ljava/security/cert/X509CRL;
    return-object p0

    .line 1239
    .restart local p0    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1267
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v0, :cond_0

    .line 1268
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1270
    return-void
.end method

.method public encodeInfo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const-wide v8, 0x24bd0146400L

    .line 287
    :try_start_0
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 288
    .local v5, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 289
    .local v3, "rCerts":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 291
    .local v4, "seq":Lsun/security/util/DerOutputStream;
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-eqz v6, :cond_0

    .line 292
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 293
    :cond_0
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v6, v5}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 294
    iget v6, p0, Lsun/security/x509/X509CRLImpl;->version:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v6}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 295
    new-instance v6, Ljava/security/cert/CRLException;

    const-string/jumbo v7, "Null Issuer DN not allowed in v1 CRL"

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v3    # "rCerts":Lsun/security/util/DerOutputStream;
    .end local v4    # "seq":Lsun/security/util/DerOutputStream;
    .end local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CRLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Encoding error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "rCerts":Lsun/security/util/DerOutputStream;
    .restart local v4    # "seq":Lsun/security/util/DerOutputStream;
    .restart local v5    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v6, v5}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 298
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 299
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 303
    :goto_0
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 304
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 305
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 310
    :cond_2
    :goto_1
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 311
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    .line 312
    .local v1, "entry":Ljava/security/cert/X509CRLEntry;
    check-cast v1, Lsun/security/x509/X509CRLEntryImpl;

    .end local v1    # "entry":Ljava/security/cert/X509CRLEntry;
    invoke-virtual {v1, v3}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    goto :goto_2

    .line 301
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_0

    .line 307
    :cond_4
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_1

    .line 314
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    const/16 v6, 0x30

    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 317
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v6, :cond_7

    .line 318
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 320
    :cond_7
    const/16 v6, 0x30

    invoke-virtual {v4, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 322
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    .line 323
    iget-object v6, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    return-void
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 846
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 847
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_0

    .line 849
    const-string/jumbo v2, "key_id"

    .line 848
    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/KeyIdentifier;

    .line 850
    .local v1, "keyId":Lsun/security/x509/KeyIdentifier;
    return-object v1

    .line 852
    .end local v1    # "keyId":Lsun/security/x509/KeyIdentifier;
    :cond_0
    return-object v2
.end method

.method public getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    sget-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 865
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getBaseCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 915
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;

    move-result-object v0

    .line 916
    .local v0, "dciExt":Lsun/security/x509/DeltaCRLIndicatorExtension;
    if-eqz v0, :cond_0

    .line 917
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Lsun/security/x509/DeltaCRLIndicatorExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 918
    .local v1, "num":Ljava/math/BigInteger;
    return-object v1

    .line 920
    .end local v1    # "num":Ljava/math/BigInteger;
    :cond_0
    return-object v2
.end method

.method public getCRLNumber()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 886
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;

    move-result-object v1

    .line 887
    .local v1, "numExt":Lsun/security/x509/CRLNumberExtension;
    if-eqz v1, :cond_0

    .line 888
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 889
    .local v0, "num":Ljava/math/BigInteger;
    return-object v0

    .line 891
    .end local v0    # "num":Ljava/math/BigInteger;
    :cond_0
    return-object v2
.end method

.method public getCRLNumberExtension()Lsun/security/x509/CRLNumberExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 876
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/CRLNumberExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 969
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v3, :cond_0

    .line 970
    return-object v4

    .line 972
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 973
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 974
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 975
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 978
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getDeltaCRLIndicatorExtension()Lsun/security/x509/DeltaCRLIndicatorExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    sget-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/DeltaCRLIndicatorExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/security/cert/CRLException;

    const-string/jumbo v1, "Null CRL to encode"

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v1, 0x0

    .line 1056
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 1057
    return-object v1

    .line 1060
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 11
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1014
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v9, :cond_0

    .line 1015
    return-object v10

    .line 1017
    :cond_0
    :try_start_0
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v9, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1020
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_3

    .line 1021
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    .line 1024
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1025
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    .line 1024
    if-eqz v9, :cond_2

    .line 1026
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 1027
    .local v3, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 1028
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1029
    move-object v0, v3

    .line 1035
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 1036
    return-object v10

    .line 1034
    .restart local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_3
    iget-object v9, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    .local v0, "crlExt":Lsun/security/x509/Extension;
    goto :goto_0

    .line 1037
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 1038
    .local v5, "extData":[B
    if-nez v5, :cond_5

    .line 1039
    return-object v10

    .line 1040
    :cond_5
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1041
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1042
    invoke-virtual {v8}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 1043
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/Exception;
    return-object v10
.end method

.method public getIssuerAltNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 671
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v1}, Lsun/security/x509/X509CRLImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v0

    .line 947
    .local v0, "obj":Ljava/lang/Object;
    check-cast v0, Lsun/security/x509/IssuingDistributionPointExtension;

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 692
    return-object v1

    .line 693
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 990
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v3, :cond_0

    .line 991
    return-object v4

    .line 993
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 994
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 995
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 996
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 999
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 704
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    const/4 v1, 0x0

    return-object v1

    .line 708
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    .line 709
    invoke-virtual {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 708
    invoke-direct {v0, v1, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V

    .line 710
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    return-object v1
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 717
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const/4 v1, 0x0

    return-object v1

    .line 720
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, p1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 721
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    return-object v1
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x0

    return-object v0

    .line 736
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSigAlgId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_0

    .line 786
    return-object v1

    .line 787
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 805
    return-object v2

    .line 806
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 807
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSigAlgParams()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 820
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_0

    .line 821
    return-object v2

    .line 823
    :cond_0
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 762
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-nez v1, :cond_0

    .line 763
    return-object v2

    .line 764
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 765
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 766
    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-nez v1, :cond_0

    .line 750
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 752
    .local v0, "dup":[B
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 753
    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 681
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 956
    const/4 v0, 0x0

    return v0

    .line 957
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 609
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 610
    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    move-object v1, p1

    .line 612
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 613
    .local v1, "xcert":Ljava/security/cert/X509Certificate;
    new-instance v0, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl$X509IssuerSerial;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 614
    .local v0, "issuerSerial":Lsun/security/x509/X509CRLImpl$X509IssuerSerial;
    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->revokedMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CRLImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 500
    :try_start_0
    iget-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    if-eqz v4, :cond_0

    .line 501
    new-instance v4, Ljava/security/cert/CRLException;

    const-string/jumbo v5, "cannot over-write existing CRL"

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CRLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while encoding data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 534
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    .line 503
    .local v2, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 504
    :cond_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 508
    .local v2, "sigEngine":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v2, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 511
    invoke-virtual {v2}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 512
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->infoSigAlgId:Lsun/security/x509/AlgorithmId;

    .line 514
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 515
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 518
    .local v3, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v3}, Lsun/security/x509/X509CRLImpl;->encodeInfo(Ljava/io/OutputStream;)V

    .line 521
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v4, v3}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 524
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v5, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/security/Signature;->update([BII)V

    .line 525
    invoke-virtual {v2}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    .line 526
    iget-object v4, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 529
    const/16 v4, 0x30

    invoke-virtual {v1, v4, v3}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 530
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    .line 531
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/security/x509/X509CRLImpl;->readOnly:Z

    .line 537
    return-void

    .line 506
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v3    # "tmp":Lsun/security/util/DerOutputStream;
    .local v2, "sigEngine":Ljava/security/Signature;
    :cond_2
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .local v2, "sigEngine":Ljava/security/Signature;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 545
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 546
    .local v12, "sb":Ljava/lang/StringBuffer;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "X.509 CRL v"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lsun/security/x509/X509CRLImpl;->version:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    if-eqz v13, :cond_0

    .line 548
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Signature Algorithm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v14}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 549
    const-string/jumbo v14, ", OID="

    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 549
    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v14}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v14

    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 549
    const-string/jumbo v14, "\n"

    .line 548
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_0
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    if-eqz v13, :cond_1

    .line 551
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Issuer: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->issuer:Lsun/security/x509/X500Name;

    invoke-virtual {v14}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    :cond_1
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    if-eqz v13, :cond_2

    .line 553
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\nThis Update: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :cond_2
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    if-eqz v13, :cond_3

    .line 555
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Next Update: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v14}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_3
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 557
    const-string/jumbo v13, "\nNO certificates have been revoked\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    :cond_4
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v13, :cond_8

    .line 566
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v13}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 567
    .local v0, "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v10

    .line 568
    .local v10, "objs":[Ljava/lang/Object;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\nCRL Extensions: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v13, v10

    if-ge v8, v13, :cond_8

    .line 570
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\n["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    aget-object v6, v10, v8

    check-cast v6, Lsun/security/x509/Extension;

    .line 573
    .local v6, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v13

    invoke-static {v13}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v13

    if-nez v13, :cond_7

    .line 574
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-virtual {v6}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v7

    .line 576
    .local v7, "extValue":[B
    if-eqz v7, :cond_5

    .line 577
    new-instance v11, Lsun/security/util/DerOutputStream;

    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 578
    .local v11, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v11, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 579
    invoke-virtual {v11}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v7

    .line 580
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 581
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 583
    invoke-virtual {v2, v7}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v14

    .line 581
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 583
    const-string/jumbo v14, "\n"

    .line 581
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v7    # "extValue":[B
    .end local v11    # "out":Lsun/security/util/DerOutputStream;
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 559
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v6    # "ext":Lsun/security/x509/Extension;
    .end local v8    # "i":I
    .end local v10    # "objs":[Ljava/lang/Object;
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\nRevoked Certificates: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const/4 v8, 0x1

    .line 561
    .restart local v8    # "i":I
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->revokedList:Ljava/util/List;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRLEntry;

    .line 562
    .local v4, "entry":Ljava/security/cert/X509CRLEntry;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\n["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_2

    .line 586
    .end local v4    # "entry":Ljava/security/cert/X509CRLEntry;
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .restart local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .restart local v6    # "ext":Lsun/security/x509/Extension;
    .restart local v10    # "objs":[Ljava/lang/Object;
    :cond_7
    :try_start_1
    invoke-virtual {v6}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v13, ", Error parsing this extension"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 592
    .end local v0    # "allExts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "ext":Lsun/security/x509/Extension;
    .end local v8    # "i":I
    .end local v10    # "objs":[Ljava/lang/Object;
    :cond_8
    iget-object v13, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    if-eqz v13, :cond_9

    .line 593
    new-instance v3, Lsun/misc/HexDumpEncoder;

    invoke-direct {v3}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 594
    .local v3, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\nSignature:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v3, v14}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 595
    const-string/jumbo v14, "\n"

    .line 594
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    .end local v3    # "encoder":Lsun/misc/HexDumpEncoder;
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 597
    :cond_9
    const-string/jumbo v13, "NOT signed yet\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 345
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 368
    if-nez p2, :cond_0

    .line 369
    :try_start_0
    const-string/jumbo p2, ""

    .line 371
    :cond_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 375
    return-void

    .line 378
    :cond_1
    :try_start_1
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v1, :cond_2

    .line 379
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 381
    :cond_2
    const/4 v0, 0x0

    .line 382
    .local v0, "sigVerf":Ljava/security/Signature;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 383
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 387
    .local v0, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 389
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-nez v1, :cond_4

    .line 390
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    .local v0, "sigVerf":Ljava/security/Signature;
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    .line 393
    :cond_4
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 395
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_5

    .line 396
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "Signature does not match."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :cond_5
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 399
    iput-object p2, p0, Lsun/security/x509/X509CRLImpl;->verifiedProvider:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 400
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signedCRL:[B

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 426
    .local v0, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_1

    .line 427
    :try_start_1
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 431
    .local v0, "sigVerf":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 433
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    if-nez v1, :cond_2

    .line 434
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Uninitialized CRL"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    .local v0, "sigVerf":Ljava/security/Signature;
    :cond_1
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sigVerf":Ljava/security/Signature;
    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    iget-object v2, p0, Lsun/security/x509/X509CRLImpl;->tbsCertList:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 439
    iget-object v1, p0, Lsun/security/x509/X509CRLImpl;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 440
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "Signature does not match."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_3
    iput-object p1, p0, Lsun/security/x509/X509CRLImpl;->verifiedPublicKey:Ljava/security/PublicKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 443
    return-void
.end method
