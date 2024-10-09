.class Lsun/nio/fs/UnixFileSystem$FileStoreIterator;
.super Ljava/lang/Object;
.source "UnixFileSystem.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileStoreIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/FileStore;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private final entries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation
.end field

.field private next:Ljava/nio/file/FileStore;

.field final synthetic this$0:Lsun/nio/fs/UnixFileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->-assertionsDisabled:Z

    .line 184
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;)V
    .locals 1
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystem;

    .prologue
    .line 188
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileSystem;->getMountEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    .line 190
    return-void
.end method

.method private readNext()Ljava/nio/file/FileStore;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    sget-boolean v4, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 197
    :cond_0
    iget-object v4, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/UnixMountEntry;

    .line 200
    .local v0, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->isIgnored()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 195
    .end local v0    # "entry":Lsun/nio/fs/UnixMountEntry;
    :cond_1
    :goto_0
    iget-object v4, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->entries:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    return-object v5

    .line 204
    .restart local v0    # "entry":Lsun/nio/fs/UnixMountEntry;
    :cond_2
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 205
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_3

    .line 207
    :try_start_0
    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v4

    invoke-static {v4}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :cond_3
    :try_start_1
    iget-object v4, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->this$0:Lsun/nio/fs/UnixFileSystem;

    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixFileSystem;->getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4

    .line 214
    :catch_0
    move-exception v1

    .local v1, "ignore":Ljava/io/IOException;
    goto :goto_0

    .line 208
    .end local v1    # "ignore":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "x":Ljava/lang/SecurityException;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 223
    return v0

    .line 224
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->readNext()Ljava/nio/file/FileStore;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 225
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next()Ljava/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized next()Ljava/nio/file/FileStore;
    .locals 2

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    if-nez v1, :cond_0

    .line 231
    invoke-direct {p0}, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->readNext()Ljava/nio/file/FileStore;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 232
    :cond_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    if-nez v1, :cond_1

    .line 233
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 235
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;

    .line 236
    .local v0, "result":Ljava/nio/file/FileStore;
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/fs/UnixFileSystem$FileStoreIterator;->next:Ljava/nio/file/FileStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 237
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
