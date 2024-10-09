.class public Ljava/security/KeyStore$PasswordProtection;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordProtection"
.end annotation


# instance fields
.field private volatile destroyed:Z

.field private final password:[C

.field private final protectionAlgorithm:Ljava/lang/String;

.field private final protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>([C)V
    .locals 2
    .param p1, "password"    # [C

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 298
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 299
    iput-object v1, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    .line 300
    iput-object v1, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    .line 301
    return-void

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method

.method public constructor <init>([CLjava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "password"    # [C
    .param p2, "protectionAlgorithm"    # Ljava/lang/String;
    .param p3, "protectionParameters"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 327
    if-nez p2, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    if-nez p1, :cond_1

    :goto_0
    iput-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    .line 331
    iput-object p2, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    .line 332
    iput-object p3, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    .line 333
    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 394
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    .line 395
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 398
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()[C
    .locals 2

    .prologue
    monitor-enter p0

    .line 381
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "password has been cleared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 384
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->password:[C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getProtectionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionParameters()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ljava/security/KeyStore$PasswordProtection;->protectionParameters:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public declared-synchronized isDestroyed()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 406
    :try_start_0
    iget-boolean v0, p0, Ljava/security/KeyStore$PasswordProtection;->destroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
