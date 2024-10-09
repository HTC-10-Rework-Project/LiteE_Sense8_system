.class final Ljava/lang/Thread$1;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subcl:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    .line 1637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 1639
    iget-object v0, p0, Ljava/lang/Thread$1;->val$subcl:Ljava/lang/Class;

    .line 1640
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v3, Ljava/lang/Thread;

    .line 1639
    if-eq v0, v3, :cond_0

    .line 1644
    :try_start_0
    const-string/jumbo v3, "getContextClassLoader"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1645
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1646
    :catch_0
    move-exception v1

    .line 1649
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x1

    :try_start_1
    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1650
    .local v2, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v3, "setContextClassLoader"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1651
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1652
    .end local v2    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 1641
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1655
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1638
    invoke-virtual {p0}, Ljava/lang/Thread$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
