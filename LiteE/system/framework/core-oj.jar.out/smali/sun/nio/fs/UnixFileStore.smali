.class abstract Lsun/nio/fs/UnixFileStore;
.super Ljava/nio/file/FileStore;
.source "UnixFileStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileStore$FeatureStatus;
    }
.end annotation


# static fields
.field private static final loadLock:Ljava/lang/Object;

.field private static volatile props:Ljava/util/Properties;


# instance fields
.field private final dev:J

.field private final entry:Lsun/nio/fs/UnixMountEntry;

.field private final file:Lsun/nio/fs/UnixPath;


# direct methods
.method static synthetic -wrap0()Ljava/util/Properties;
    .locals 1

    invoke-static {}, Lsun/nio/fs/UnixFileStore;->loadProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/nio/fs/UnixFileStore;->loadLock:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V
    .locals 4
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 69
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 70
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v0}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 71
    iput-object p2, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 72
    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Lsun/nio/fs/UnixMountEntry;->dev()J

    move-result-wide v0

    goto :goto_0
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;)V
    .locals 2
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/nio/file/FileStore;-><init>()V

    .line 63
    iput-object p1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    .line 64
    invoke-static {p1}, Lsun/nio/fs/UnixFileStore;->devFor(Lsun/nio/fs/UnixPath;)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    .line 65
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->findMountEntry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    .line 66
    return-void
.end method

.method private static devFor(Lsun/nio/fs/UnixPath;)J
    .locals 4
    .param p0, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->dev()J
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 58
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private static loadProperties()Ljava/util/Properties;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 254
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 255
    .local v3, "result":Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "java.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "/lib/fstypes.properties"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "fstypes":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 258
    .local v0, "file":Ljava/nio/file/Path;
    const/4 v2, 0x0

    .local v2, "rbc":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v5}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    .line 259
    .local v2, "rbc":Ljava/nio/channels/ReadableByteChannel;
    const-string/jumbo v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :catch_0
    move-exception v4

    .line 263
    :cond_1
    return-object v3

    .line 260
    .restart local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :catch_1
    move-exception v6

    goto :goto_0

    .end local v2    # "rbc":Ljava/nio/channels/ReadableByteChannel;
    :catch_2
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    if-eqz v6, :cond_4

    :try_start_5
    throw v6

    :catch_3
    move-exception v7

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_2

    :cond_3
    if-eq v6, v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method private readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v1}, Lsun/nio/fs/UnixFileStoreAttributes;->get(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/UnixFileStoreAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "x":Lsun/nio/fs/UnixException;
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v0, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 112
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v3, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    if-nez v3, :cond_1

    .line 222
    sget-object v4, Lsun/nio/fs/UnixFileStore;->loadLock:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :try_start_0
    sget-object v3, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    if-nez v3, :cond_0

    .line 225
    new-instance v3, Lsun/nio/fs/UnixFileStore$1;

    invoke-direct {v3, p0}, Lsun/nio/fs/UnixFileStore$1;-><init>(Lsun/nio/fs/UnixFileStore;)V

    .line 224
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Properties;

    sput-object v3, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 234
    :cond_1
    sget-object v3, Lsun/nio/fs/UnixFileStore;->props:Ljava/util/Properties;

    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 236
    const-string/jumbo v3, "\\s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v2, v3

    .line 238
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 240
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v3

    .line 222
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 242
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "no"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v3

    .line 237
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_4
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->UNKNOWN:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    return-object v3
.end method

.method dev()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    return-wide v0
.end method

.method entry()Lsun/nio/fs/UnixMountEntry;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 183
    if-ne p1, p0, :cond_0

    .line 184
    const/4 v1, 0x1

    return v1

    .line 185
    :cond_0
    instance-of v2, p1, Lsun/nio/fs/UnixFileStore;

    if-nez v2, :cond_1

    .line 186
    return v1

    :cond_1
    move-object v0, p1

    .line 187
    check-cast v0, Lsun/nio/fs/UnixFileStore;

    .line 188
    .local v0, "other":Lsun/nio/fs/UnixFileStore;
    iget-wide v2, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    iget-wide v4, v0, Lsun/nio/fs/UnixFileStore;->dev:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 189
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    iget-object v2, v0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v2}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 188
    :cond_2
    return v1
.end method

.method file()Lsun/nio/fs/UnixPath;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->file:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method abstract findMountEntry()Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v0, "totalSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v0, "usableSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUsableSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 148
    :cond_1
    const-string/jumbo v0, "unallocatedSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileStore;->getUnallocatedSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileStoreAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileStoreAttributeView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileStoreAttributeView;",
            ">(",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 139
    :cond_0
    check-cast v0, Ljava/nio/file/attribute/FileStoreAttributeView;

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 119
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->totalBlocks()J

    move-result-wide v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public getUnallocatedSpace()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 131
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->freeBlocks()J

    move-result-wide v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public getUsableSpace()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lsun/nio/fs/UnixFileStore;->readAttributes()Lsun/nio/fs/UnixFileStoreAttributes;

    move-result-object v0

    .line 125
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->blockSize()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileStoreAttributes;->availableBlocks()J

    move-result-wide v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 194
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileStore;->dev:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsFileAttributeView(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/nio/file/attribute/FileAttributeView;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 157
    :cond_0
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p1, v3, :cond_1

    .line 158
    return v1

    .line 159
    :cond_1
    const-class v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eq p1, v3, :cond_2

    .line 160
    const-class v3, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p1, v3, :cond_4

    .line 163
    :cond_2
    const-string/jumbo v3, "posix"

    invoke-virtual {p0, v3}, Lsun/nio/fs/UnixFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v0

    .line 165
    .local v0, "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    sget-object v3, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-eq v0, v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    .line 167
    .end local v0    # "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    :cond_4
    return v2
.end method

.method public supportsFileAttributeView(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string/jumbo v0, "basic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_1
    const-string/jumbo v0, "posix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 176
    :cond_2
    const-string/jumbo v0, "owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 178
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v1}, Lsun/nio/fs/UnixMountEntry;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsun/nio/fs/UnixFileStore;->entry:Lsun/nio/fs/UnixMountEntry;

    invoke-virtual {v0}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
