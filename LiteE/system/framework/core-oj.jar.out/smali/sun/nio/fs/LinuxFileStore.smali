.class Lsun/nio/fs/LinuxFileStore;
.super Lsun/nio/fs/UnixFileStore;
.source "LinuxFileStore.java"


# instance fields
.field private volatile xattrChecked:Z

.field private volatile xattrEnabled:Z


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V
    .locals 0
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .param p2, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileStore;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;)V
    .locals 0
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixFileStore;-><init>(Lsun/nio/fs/UnixPath;)V

    .line 45
    return-void
.end method

.method private isExtendedAttributesEnabled(Lsun/nio/fs/UnixPath;)Z
    .locals 9
    .param p1, "path"    # Lsun/nio/fs/UnixPath;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 101
    .local v1, "fd":I
    :try_start_1
    const-string/jumbo v4, "user.java"

    invoke-static {v4}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 102
    .local v3, "name":[B
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v5, v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    return v8

    .line 104
    .end local v3    # "name":[B
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lsun/nio/fs/UnixException;
    :try_start_3
    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENODATA:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_0

    .line 109
    :try_start_4
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 107
    return v8

    .line 109
    :cond_0
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 114
    .end local v0    # "e":Lsun/nio/fs/UnixException;
    .end local v1    # "fd":I
    :goto_0
    return v7

    .line 108
    .restart local v1    # "fd":I
    :catchall_0
    move-exception v4

    .line 109
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 108
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 111
    .end local v1    # "fd":I
    :catch_1
    move-exception v2

    .local v2, "ignore":Ljava/io/IOException;
    goto :goto_0
.end method


# virtual methods
.method findMountEntry()Lsun/nio/fs/UnixMountEntry;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v10

    invoke-virtual {v10}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v4

    check-cast v4, Lsun/nio/fs/LinuxFileSystem;

    .line 60
    .local v4, "fs":Lsun/nio/fs/LinuxFileSystem;
    const/4 v6, 0x0

    .line 62
    .local v6, "path":Lsun/nio/fs/UnixPath;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v10

    invoke-static {v10}, Lsun/nio/fs/UnixNativeDispatcher;->realpath(Lsun/nio/fs/UnixPath;)[B

    move-result-object v8

    .line 63
    .local v8, "rp":[B
    new-instance v7, Lsun/nio/fs/UnixPath;

    invoke-direct {v7, v4, v8}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "path":Lsun/nio/fs/UnixPath;
    .local v7, "path":Lsun/nio/fs/UnixPath;
    move-object v6, v7

    .line 69
    .end local v7    # "path":Lsun/nio/fs/UnixPath;
    .end local v8    # "rp":[B
    :goto_0
    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v5

    .line 70
    .local v5, "parent":Lsun/nio/fs/UnixPath;
    :goto_1
    if-eqz v5, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v10, 0x1

    :try_start_1
    invoke-static {v5, v10}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 77
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_2
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->dev()J

    move-result-wide v10

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->dev()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 85
    :cond_0
    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v1

    .line 86
    .local v1, "dir":[B
    const-string/jumbo v10, "/proc/mounts"

    invoke-virtual {v4, v10}, Lsun/nio/fs/LinuxFileSystem;->getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/UnixMountEntry;

    .line 87
    .local v2, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-virtual {v2}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v10

    invoke-static {v1, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 88
    return-object v2

    .line 64
    .end local v1    # "dir":[B
    .end local v2    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "parent":Lsun/nio/fs/UnixPath;
    .restart local v6    # "path":Lsun/nio/fs/UnixPath;
    :catch_0
    move-exception v9

    .line 65
    .local v9, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 74
    .end local v6    # "path":Lsun/nio/fs/UnixPath;
    .end local v9    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v5    # "parent":Lsun/nio/fs/UnixPath;
    :catch_1
    move-exception v9

    .line 75
    .restart local v9    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v9, v5}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_2

    .line 79
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v9    # "x":Lsun/nio/fs/UnixException;
    :cond_2
    move-object v6, v5

    .line 80
    .local v6, "path":Lsun/nio/fs/UnixPath;
    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->getParent()Lsun/nio/fs/UnixPath;

    move-result-object v5

    goto :goto_1

    .line 91
    .end local v6    # "path":Lsun/nio/fs/UnixPath;
    .restart local v1    # "dir":[B
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Mount point not found"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public supportsFileAttributeView(Ljava/lang/Class;)Z
    .locals 6
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const-class v2, Ljava/nio/file/attribute/DosFileAttributeView;

    if-eq p1, v2, :cond_0

    .line 122
    const-class v2, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    if-ne p1, v2, :cond_7

    .line 125
    :cond_0
    const-string/jumbo v2, "user_xattr"

    invoke-virtual {p0, v2}, Lsun/nio/fs/LinuxFileStore;->checkIfFeaturePresent(Ljava/lang/String;)Lsun/nio/fs/UnixFileStore$FeatureStatus;

    move-result-object v1

    .line 126
    .local v1, "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    sget-object v2, Lsun/nio/fs/UnixFileStore$FeatureStatus;->PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-ne v1, v2, :cond_1

    .line 127
    return v5

    .line 128
    :cond_1
    sget-object v2, Lsun/nio/fs/UnixFileStore$FeatureStatus;->NOT_PRESENT:Lsun/nio/fs/UnixFileStore$FeatureStatus;

    if-ne v1, v2, :cond_2

    .line 129
    return v4

    .line 133
    :cond_2
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v2

    const-string/jumbo v3, "user_xattr"

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    return v5

    .line 138
    :cond_3
    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ext3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ext4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    :cond_4
    return v4

    .line 142
    :cond_5
    iget-boolean v2, p0, Lsun/nio/fs/LinuxFileStore;->xattrChecked:Z

    if-nez v2, :cond_6

    .line 143
    new-instance v0, Lsun/nio/fs/UnixPath;

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->file()Lsun/nio/fs/UnixPath;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v2

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixMountEntry;->dir()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lsun/nio/fs/UnixPath;-><init>(Lsun/nio/fs/UnixFileSystem;[B)V

    .line 144
    .local v0, "dir":Lsun/nio/fs/UnixPath;
    invoke-direct {p0, v0}, Lsun/nio/fs/LinuxFileStore;->isExtendedAttributesEnabled(Lsun/nio/fs/UnixPath;)Z

    move-result v2

    iput-boolean v2, p0, Lsun/nio/fs/LinuxFileStore;->xattrEnabled:Z

    .line 145
    iput-boolean v5, p0, Lsun/nio/fs/LinuxFileStore;->xattrChecked:Z

    .line 147
    .end local v0    # "dir":Lsun/nio/fs/UnixPath;
    :cond_6
    iget-boolean v2, p0, Lsun/nio/fs/LinuxFileStore;->xattrEnabled:Z

    return v2

    .line 150
    .end local v1    # "status":Lsun/nio/fs/UnixFileStore$FeatureStatus;
    :cond_7
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Lsun/nio/fs/LinuxFileStore;->entry()Lsun/nio/fs/UnixMountEntry;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixMountEntry;->fstype()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vfat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    return v4

    .line 152
    :cond_8
    invoke-super {p0, p1}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v2

    return v2
.end method

.method public supportsFileAttributeView(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string/jumbo v0, "dos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 159
    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-class v0, Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileStore;->supportsFileAttributeView(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 161
    :cond_1
    invoke-super {p0, p1}, Lsun/nio/fs/UnixFileStore;->supportsFileAttributeView(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
