.class final Ljavax/crypto/extObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "SealedObject.java"


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    sput-object v0, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 455
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 462
    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "v"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 475
    :catch_0
    move-exception v0

    .line 479
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 480
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_1

    .line 481
    sget-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_0

    .line 482
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sput-object v2, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 484
    :cond_0
    sget-object v1, Ljavax/crypto/extObjectInputStream;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 485
    if-nez v1, :cond_1

    .line 486
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 490
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method
