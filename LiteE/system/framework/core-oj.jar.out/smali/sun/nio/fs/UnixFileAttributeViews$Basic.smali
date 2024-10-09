.class Lsun/nio/fs/UnixFileAttributeViews$Basic;
.super Lsun/nio/fs/AbstractBasicFileAttributeView;
.source "UnixFileAttributeViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixFileAttributeViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Basic"
.end annotation


# instance fields
.field protected final file:Lsun/nio/fs/UnixPath;

.field protected final followLinks:Z


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Lsun/nio/fs/AbstractBasicFileAttributeView;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    .line 44
    iput-boolean p2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    .line 45
    return-void
.end method


# virtual methods
.method public readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 52
    :try_start_0
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v3, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    invoke-static {v2, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 53
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 54
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "x":Lsun/nio/fs/UnixException;
    iget-object v2, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    .line 56
    const/4 v2, 0x0

    return-object v2
.end method

.method public setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 12
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "createTime"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 66
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 68
    return-void

    .line 72
    :cond_0
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v8}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 74
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v9, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->followLinks:Z

    invoke-virtual {v8, v9}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v3

    .line 79
    .local v3, "fd":I
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 81
    :cond_1
    :try_start_0
    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v2

    .line 82
    .local v2, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-nez p1, :cond_2

    .line 83
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    .line 84
    :cond_2
    if-nez p2, :cond_3

    .line 85
    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 92
    .end local v2    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_3
    :goto_0
    :try_start_1
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 93
    .local v4, "modValue":J
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 95
    .local v0, "accessValue":J
    const/4 v6, 0x0

    .line 97
    .local v6, "retry":Z
    :try_start_2
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 98
    invoke-static {v3, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_1
    if-eqz v6, :cond_6

    .line 113
    cmp-long v8, v4, v10

    if-gez v8, :cond_4

    const-wide/16 v4, 0x0

    .line 114
    :cond_4
    cmp-long v8, v0, v10

    if-gez v8, :cond_5

    const-wide/16 v0, 0x0

    .line 116
    :cond_5
    :try_start_3
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 117
    invoke-static {v3, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :cond_6
    :goto_2
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 128
    return-void

    .line 86
    .end local v0    # "accessValue":J
    .end local v4    # "modValue":J
    .end local v6    # "retry":Z
    :catch_0
    move-exception v7

    .line 87
    .local v7, "x":Lsun/nio/fs/UnixException;
    :try_start_4
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 125
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v8

    .line 126
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 125
    throw v8

    .line 100
    .restart local v0    # "accessValue":J
    .restart local v4    # "modValue":J
    .restart local v6    # "retry":Z
    :cond_7
    :try_start_5
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v8, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 102
    :catch_1
    move-exception v7

    .line 105
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    :try_start_6
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v8

    sget v9, Lsun/nio/fs/UnixConstants;->EINVAL:I

    if-ne v8, v9, :cond_9

    .line 106
    cmp-long v8, v4, v10

    if-ltz v8, :cond_8

    cmp-long v8, v0, v10

    if-gez v8, :cond_9

    .line 107
    :cond_8
    const/4 v6, 0x1

    goto :goto_1

    .line 109
    :cond_9
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 119
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :cond_a
    :try_start_7
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-static {v8, v0, v1, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 121
    :catch_2
    move-exception v7

    .line 122
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    :try_start_8
    iget-object v8, p0, Lsun/nio/fs/UnixFileAttributeViews$Basic;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v7, v8}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method
