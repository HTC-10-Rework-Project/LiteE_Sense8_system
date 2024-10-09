.class public Lsun/security/util/DisabledAlgorithmConstraints;
.super Lsun/security/util/AbstractAlgorithmConstraints;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$Constraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$Constraints;,
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
    }
.end annotation


# static fields
.field public static final PROPERTY_CERTPATH_DISABLED_ALGS:Ljava/lang/String; = "jdk.certpath.disabledAlgorithms"

.field public static final PROPERTY_JAR_DISABLED_ALGS:Ljava/lang/String; = "jdk.jar.disabledAlgorithms"

.field public static final PROPERTY_TLS_DISABLED_ALGS:Ljava/lang/String; = "jdk.tls.disabledAlgorithms"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

.field private final disabledAlgorithms:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->debug:Lsun/security/util/Debug;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lsun/security/util/AlgorithmDecomposer;

    invoke-direct {v0}, Lsun/security/util/AlgorithmDecomposer;-><init>()V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "decomposer"    # Lsun/security/util/AlgorithmDecomposer;

    .prologue
    .line 86
    invoke-direct {p0, p2}, Lsun/security/util/AbstractAlgorithmConstraints;-><init>(Lsun/security/util/AlgorithmDecomposer;)V

    .line 87
    invoke-static {p1}, Lsun/security/util/DisabledAlgorithmConstraints;->getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    .line 88
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    .line 89
    return-void
.end method

.method private checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .locals 8
    .param p2, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p2}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 195
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "algorithm":Ljava/lang/String;
    invoke-virtual {p0, p1, v6, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on disabled signature algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    .line 199
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 206
    :cond_0
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on disabled public key algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    .line 207
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 214
    :cond_1
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 216
    return-void
.end method

.method private checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 3
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    if-nez p3, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0, p1, p2, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    return v1

    .line 179
    :cond_1
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    return v1

    .line 184
    :cond_2
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->algorithmConstraints:Lsun/security/util/DisabledAlgorithmConstraints$Constraints;

    invoke-virtual {v0, p3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->permits(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public checkProperty(Ljava/lang/String;)Z
    .locals 6
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 153
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 154
    iget-object v3, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 155
    .local v0, "block":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 156
    const/4 v1, 0x1

    return v1

    .line 154
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "block":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public final permits(Ljava/util/Set;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    new-instance v0, Lsun/security/util/CertConstraintParameters;

    invoke-direct {v0, p2}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 149
    return-void
.end method

.method public final permits(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V
    .locals 0
    .param p2, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Lsun/security/util/CertConstraintParameters;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    invoke-direct {p0, p1, p2}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 140
    return-void
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string/jumbo v1, "No cryptographic primitive specified"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    iget-object v1, p0, Lsun/security/util/DisabledAlgorithmConstraints;->decomposer:Lsun/security/util/AlgorithmDecomposer;

    invoke-static {v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)Z

    move-result v0

    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method
