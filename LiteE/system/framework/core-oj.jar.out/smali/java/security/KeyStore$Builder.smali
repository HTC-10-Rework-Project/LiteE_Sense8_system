.class public abstract Ljava/security/KeyStore$Builder;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$FileBuilder;
    }
.end annotation


# static fields
.field static final MAX_CALLBACK_TRIES:I = 0x3


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    .line 1783
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1784
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1783
    :cond_1
    if-eqz p3, :cond_0

    .line 1786
    instance-of v0, p3, Ljava/security/KeyStore$PasswordProtection;

    if-nez v0, :cond_2

    .line 1787
    instance-of v0, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v0, :cond_2

    .line 1788
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1789
    const-string/jumbo v1, "Protection must be PasswordProtection or CallbackHandlerProtection"

    .line 1788
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1792
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File does not exist or it does not refer to a normal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1793
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1797
    :cond_3
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder;

    .line 1798
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1797
    invoke-direct/range {v0 .. v5}, Ljava/security/KeyStore$Builder$FileBuilder;-><init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "protection"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    .line 1948
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1949
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1951
    :cond_1
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 1952
    .local v0, "context":Ljava/security/AccessControlContext;
    new-instance v1, Ljava/security/KeyStore$Builder$2;

    invoke-direct {v1, v0, p2, p1, p0}, Ljava/security/KeyStore$Builder$2;-><init>(Ljava/security/AccessControlContext;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static newInstance(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
    .locals 2
    .param p0, "keyStore"    # Ljava/security/KeyStore;
    .param p1, "protectionParameter"    # Ljava/security/KeyStore$ProtectionParameter;

    .prologue
    .line 1710
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1711
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1713
    :cond_1
    invoke-static {p0}, Ljava/security/KeyStore;->-get0(Ljava/security/KeyStore;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1714
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "KeyStore not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_2
    new-instance v0, Ljava/security/KeyStore$Builder$1;

    invoke-direct {v0, p0, p1}, Ljava/security/KeyStore$Builder$1;-><init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
