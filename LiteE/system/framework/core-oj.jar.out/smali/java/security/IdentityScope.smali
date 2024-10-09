.class public abstract Ljava/security/IdentityScope;
.super Ljava/security/Identity;
.source "IdentityScope.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static scope:Ljava/security/IdentityScope; = null

.field private static final serialVersionUID:J = -0x206fec0f17658ffeL


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/IdentityScope;-><init>(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/security/IdentityScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

    .line 128
    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1
    .param p0, "directive"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 253
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static getSystemScope()Ljava/security/IdentityScope;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Ljava/security/IdentityScope;->initializeSystemScope()V

    .line 142
    :cond_0
    sget-object v0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method private static initializeSystemScope()V
    .locals 3

    .prologue
    .line 78
    new-instance v2, Ljava/security/IdentityScope$1;

    invoke-direct {v2}, Ljava/security/IdentityScope$1;-><init>()V

    .line 77
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 85
    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/IdentityScope;

    sput-object v2, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static setSystemScope(Ljava/security/IdentityScope;)V
    .locals 1
    .param p0, "scope"    # Ljava/security/IdentityScope;

    .prologue
    .line 164
    const-string/jumbo v0, "setSystemScope"

    invoke-static {v0}, Ljava/security/IdentityScope;->check(Ljava/lang/String;)V

    .line 165
    sput-object p0, Ljava/security/IdentityScope;->scope:Ljava/security/IdentityScope;

    .line 166
    return-void
.end method


# virtual methods
.method public abstract addIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract getIdentity(Ljava/lang/String;)Ljava/security/Identity;
.end method

.method public getIdentity(Ljava/security/Principal;)Ljava/security/Identity;
    .locals 1
    .param p1, "principal"    # Ljava/security/Principal;

    .prologue
    .line 197
    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/IdentityScope;->getIdentity(Ljava/lang/String;)Ljava/security/Identity;

    move-result-object v0

    return-object v0
.end method

.method public abstract getIdentity(Ljava/security/PublicKey;)Ljava/security/Identity;
.end method

.method public abstract identities()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/security/Identity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeIdentity(Ljava/security/Identity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/IdentityScope;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
