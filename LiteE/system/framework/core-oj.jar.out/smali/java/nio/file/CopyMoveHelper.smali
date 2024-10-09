.class Ljava/nio/file/CopyMoveHelper;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/CopyMoveHelper$CopyOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs convertMoveToCopyOptions([Ljava/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;
    .locals 7
    .param p0, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/AtomicMoveNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 81
    array-length v1, p0

    .line 82
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x2

    new-array v2, v4, [Ljava/nio/file/CopyOption;

    .line 83
    .local v2, "newOptions":[Ljava/nio/file/CopyOption;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 84
    aget-object v3, p0, v0

    .line 85
    .local v3, "option":Ljava/nio/file/CopyOption;
    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    if-ne v3, v4, :cond_0

    .line 86
    new-instance v4, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 87
    const-string/jumbo v5, "Atomic move between providers is not supported"

    .line 86
    invoke-direct {v4, v6, v6, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_0
    aput-object v3, v2, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "option":Ljava/nio/file/CopyOption;
    :cond_1
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v2, v1

    .line 92
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v2, v4

    .line 93
    return-object v2
.end method

.method static varargs copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 11
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 104
    invoke-static {p2}, Ljava/nio/file/CopyMoveHelper$CopyOptions;->parse([Ljava/nio/file/CopyOption;)Ljava/nio/file/CopyMoveHelper$CopyOptions;

    move-result-object v3

    .line 105
    .local v3, "opts":Ljava/nio/file/CopyMoveHelper$CopyOptions;
    iget-boolean v7, v3, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    if-eqz v7, :cond_0

    new-array v2, v9, [Ljava/nio/file/LinkOption;

    .line 110
    .local v2, "linkOptions":[Ljava/nio/file/LinkOption;
    :goto_0
    const-class v7, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 109
    invoke-static {p0, v7, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 112
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Copying of symbolic links not supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 106
    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v2    # "linkOptions":[Ljava/nio/file/LinkOption;
    :cond_0
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/nio/file/LinkOption;

    sget-object v7, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v7, v2, v9

    .restart local v2    # "linkOptions":[Ljava/nio/file/LinkOption;
    goto :goto_0

    .line 116
    .restart local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_1
    iget-boolean v7, v3, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    if-eqz v7, :cond_5

    .line 117
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 122
    :cond_2
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 123
    new-array v7, v9, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v7}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 131
    :cond_3
    iget-boolean v7, v3, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    if-eqz v7, :cond_4

    .line 133
    const-class v7, Ljava/nio/file/attribute/BasicFileAttributeView;

    new-array v8, v9, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v7, v8}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v5

    check-cast v5, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 135
    .local v5, "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    .line 136
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    .line 137
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v9

    .line 135
    invoke-interface {v5, v7, v8, v9}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 148
    .end local v5    # "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    :cond_4
    return-void

    .line 118
    :cond_5
    new-array v7, v9, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    new-instance v7, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_6
    const/4 v1, 0x0

    .local v1, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    :try_start_1
    new-array v7, v7, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v7}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 126
    .local v1, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/nio/file/CopyOption;

    invoke-static {v1, p1, v7}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_1
    if-eqz v8, :cond_3

    throw v8

    :catch_0
    move-exception v8

    goto :goto_1

    .end local v1    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_2
    if-eqz v1, :cond_8

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    :goto_3
    if-eqz v8, :cond_a

    throw v8

    :catch_2
    move-exception v9

    if-nez v8, :cond_9

    move-object v8, v9

    goto :goto_3

    :cond_9
    if-eq v8, v9, :cond_8

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    throw v7

    .line 138
    .restart local v5    # "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    :catch_3
    move-exception v6

    .line 141
    .local v6, "x":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 145
    :goto_4
    throw v6

    .line 142
    :catch_4
    move-exception v4

    .line 143
    .local v4, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 127
    .end local v4    # "suppressed":Ljava/lang/Throwable;
    .end local v5    # "view":Ljava/nio/file/attribute/BasicFileAttributeView;
    .end local v6    # "x":Ljava/lang/Throwable;
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method static varargs moveToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 1
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p2}, Ljava/nio/file/CopyMoveHelper;->convertMoveToCopyOptions([Ljava/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 158
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 159
    return-void
.end method
