.class Ljava/security/Signer$1;
.super Ljava/lang/Object;
.source "Signer.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/Signer;->setKeyPair(Ljava/security/KeyPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/security/Signer;

.field final synthetic val$pub:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Ljava/security/Signer;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "this$0"    # Ljava/security/Signer;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    iput-object p2, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/security/Signer$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ljava/security/Signer$1;->this$0:Ljava/security/Signer;

    iget-object v1, p0, Ljava/security/Signer$1;->val$pub:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signer;->setPublicKey(Ljava/security/PublicKey;)V

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
