.class final Ljavax/crypto/JceSecurity$1;
.super Ljava/lang/Object;
.source "JceSecurity.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Ljavax/crypto/JceSecurity$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/URL;
    .locals 3

    .prologue
    .line 234
    iget-object v2, p0, Ljavax/crypto/JceSecurity$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    .line 235
    .local v1, "pd":Ljava/security/ProtectionDomain;
    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    .line 237
    .local v0, "cs":Ljava/security/CodeSource;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v2

    return-object v2

    .line 241
    .end local v0    # "cs":Ljava/security/CodeSource;
    :cond_0
    invoke-static {}, Ljavax/crypto/JceSecurity;->-get0()Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method
