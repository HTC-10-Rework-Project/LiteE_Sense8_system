.class Ljava/util/jar/JarVerifier$VerifierCodeSource;
.super Ljava/security/CodeSource;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerifierCodeSource"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d8eb393234dc4f9L


# instance fields
.field csdomain:Ljava/lang/Object;

.field vcerts:[Ljava/security/cert/Certificate;

.field vlocation:Ljava/net/URL;

.field vsigners:[Ljava/security/CodeSigner;


# direct methods
.method static synthetic -wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;
    .locals 1
    .param p0, "-this"    # Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .prologue
    invoke-direct {p0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->getPrivateSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .locals 0
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "signers"    # [Ljava/security/CodeSigner;

    .prologue
    .line 617
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 618
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    .line 619
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    .line 620
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    .line 621
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;

    .prologue
    .line 624
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 625
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    .line 626
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    .line 627
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    .line 628
    return-void
.end method

.method private getPrivateCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private getPrivateSigners()[Ljava/security/CodeSigner;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 637
    if-ne p1, p0, :cond_0

    .line 638
    return v3

    .line 640
    :cond_0
    instance-of v1, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 641
    check-cast v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 648
    .local v0, "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 649
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    if-ne v1, v2, :cond_1

    .line 650
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    if-eq v1, v2, :cond_2

    .line 651
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 653
    :cond_2
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    if-eqz v1, :cond_3

    .line 654
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 655
    :cond_3
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    if-eqz v1, :cond_4

    .line 656
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    iget-object v2, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 658
    :cond_4
    return v3

    .line 662
    .end local v0    # "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    :cond_5
    invoke-super {p0, p1}, Ljava/security/CodeSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isSameDomain(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "csdomain"    # Ljava/lang/Object;

    .prologue
    .line 666
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
