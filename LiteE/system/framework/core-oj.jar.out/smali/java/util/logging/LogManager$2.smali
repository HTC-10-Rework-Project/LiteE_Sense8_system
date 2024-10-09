.class Ljava/util/logging/LogManager$2;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Ljava/util/logging/LogManager;

.field final synthetic val$owner:Ljava/util/logging/LogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/logging/LogManager$2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/logging/LogManager$2;->-assertionsDisabled:Z

    .line 329
    return-void
.end method

.method constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    iput-object p2, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 332
    sget-boolean v1, Ljava/util/logging/LogManager$2;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 333
    :cond_0
    sget-boolean v1, Ljava/util/logging/LogManager$2;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get2(Ljava/util/logging/LogManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get1(Ljava/util/logging/LogManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 336
    :cond_2
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-wrap5(Ljava/util/logging/LogManager;)V

    .line 339
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    new-instance v2, Ljava/util/logging/LogManager$RootLogger;

    iget-object v3, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/util/logging/LogManager$RootLogger;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$RootLogger;)V

    invoke-static {v1, v2}, Ljava/util/logging/LogManager;->-set2(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)Ljava/util/logging/Logger;

    .line 340
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    iget-object v2, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v2}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 341
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Logger;->isLevelInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 342
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-static {v1}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {}, Ljava/util/logging/LogManager;->-get0()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 349
    :cond_3
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 353
    .local v0, "global":Ljava/util/logging/Logger;
    iget-object v1, p0, Ljava/util/logging/LogManager$2;->val$owner:Ljava/util/logging/LogManager;

    invoke-virtual {v1, v0}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 354
    return-object v4
.end method
