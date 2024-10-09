.class Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
.super Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "jdkCAConstraint"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algo"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$Constraint;)V

    .line 433
    iput-object p1, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->algorithm:Ljava/lang/String;

    .line 434
    return-void
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .locals 6
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "jdkCAConstraints.permits(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 448
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->isTrustedMatch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 451
    return-void

    .line 453
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 454
    const-string/jumbo v1, "Algorithm constraints check failed on certificate anchor limits"

    .line 456
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    .line 453
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 458
    :cond_2
    return-void
.end method
