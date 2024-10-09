.class Lsun/nio/fs/UnixCopyFile;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixCopyFile$Flags;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .locals 0
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .param p4, "addressToPollForCancel"    # J

    .prologue
    invoke-static/range {p0 .. p5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .locals 14
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 511
    .local v9, "sm":Ljava/lang/SecurityManager;
    if-eqz v9, :cond_0

    .line 512
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 513
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 517
    :cond_0
    invoke-static/range {p2 .. p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    .line 519
    .local v3, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    const/4 v1, 0x0

    .line 520
    .local v1, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v11, 0x0

    .line 524
    .local v11, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :try_start_0
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 530
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    new-instance v0, Ljava/nio/file/LinkPermission;

    const-string/jumbo v2, "symbolic"

    invoke-direct {v0, v2}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 536
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 540
    .end local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_1
    if-eqz v11, :cond_2

    const/4 v12, 0x1

    .line 546
    .local v12, "targetExists":Z
    :goto_2
    if-eqz v12, :cond_5

    .line 547
    invoke-virtual {v1, v11}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    return-void

    .line 525
    .end local v12    # "targetExists":Z
    .restart local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_0
    move-exception v13

    .line 526
    .local v13, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v13, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 537
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :catch_1
    move-exception v13

    .restart local v13    # "x":Lsun/nio/fs/UnixException;
    goto :goto_1

    .line 540
    .end local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "targetExists":Z
    goto :goto_2

    .line 549
    :cond_3
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_4

    .line 550
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 551
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_4
    :try_start_2
    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    .line 571
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 572
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 573
    return-void

    .line 556
    :cond_6
    :try_start_3
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 558
    :catch_2
    move-exception v13

    .line 560
    .restart local v13    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 561
    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_7

    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_8

    .line 563
    :cond_7
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 564
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_8
    invoke-virtual {v13, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_3

    .line 575
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :cond_9
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 576
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 577
    return-void

    .line 579
    :cond_a
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    if-nez v0, :cond_b

    .line 581
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    .line 582
    return-void

    .line 586
    :cond_b
    move-object v6, v1

    .line 587
    .local v6, "attrsToCopy":Lsun/nio/fs/UnixFileAttributes;
    new-instance v7, Lsun/nio/fs/UnixCopyFile$1;

    invoke-direct {v7, p0, v6, p1, v3}, Lsun/nio/fs/UnixCopyFile$1;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 594
    .local v7, "copyTask":Lsun/nio/fs/Cancellable;
    :try_start_4
    invoke-static {v7}, Lsun/nio/fs/Cancellable;->runInterruptibly(Lsun/nio/fs/Cancellable;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3

    .line 601
    return-void

    .line 595
    :catch_3
    move-exception v8

    .line 596
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 597
    .local v10, "t":Ljava/lang/Throwable;
    instance-of v0, v10, Ljava/io/IOException;

    if-eqz v0, :cond_c

    .line 598
    check-cast v10, Ljava/io/IOException;

    .end local v10    # "t":Ljava/lang/Throwable;
    throw v10

    .line 599
    .restart local v10    # "t":Ljava/lang/Throwable;
    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 10
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    if-nez v5, :cond_0

    .line 141
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    .line 140
    if-eqz v5, :cond_0

    .line 142
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    .line 140
    if-eqz v5, :cond_0

    .line 142
    return-void

    .line 135
    :catch_0
    move-exception v4

    .line 136
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 146
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_0
    const/4 v0, -0x1

    .line 148
    .local v0, "dfd":I
    :try_start_1
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 157
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 160
    .local v1, "done":Z
    :try_start_2
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    .line 162
    if-ltz v0, :cond_8

    .line 163
    :try_start_3
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 164
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :cond_2
    :goto_2
    :try_start_4
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_4

    if-ltz v0, :cond_4

    .line 177
    const/4 v3, -0x1

    .line 179
    .local v3, "sfd":I
    :try_start_5
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    .line 184
    :cond_3
    :goto_3
    if-ltz v3, :cond_4

    .line 185
    :try_start_6
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 186
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 190
    .end local v3    # "sfd":I
    :cond_4
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_5

    .line 192
    if-ltz v0, :cond_b

    :try_start_7
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 194
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 195
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 193
    invoke-static {v0, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 207
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 209
    if-ltz v0, :cond_6

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_6
    if-nez v1, :cond_7

    .line 213
    :try_start_8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_6

    .line 216
    :cond_7
    :goto_5
    return-void

    .line 149
    .end local v1    # "done":Z
    :catch_1
    move-exception v4

    .line 151
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_1

    .line 152
    :try_start_9
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_9} :catch_2

    .line 153
    :goto_6
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    .line 152
    :catch_2
    move-exception v2

    .local v2, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_6

    .line 166
    .end local v2    # "ignore":Lsun/nio/fs/UnixException;
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v1    # "done":Z
    :cond_8
    :try_start_a
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 167
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_a
    .catch Lsun/nio/fs/UnixException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 169
    :catch_3
    move-exception v4

    .line 171
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_b
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_2

    .line 172
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 208
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v5

    .line 209
    if-ltz v0, :cond_9

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_9
    if-nez v1, :cond_a

    .line 213
    :try_start_c
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_c
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_c} :catch_7

    .line 208
    :cond_a
    :goto_7
    throw v5

    .line 180
    .restart local v3    # "sfd":I
    :catch_4
    move-exception v4

    .line 181
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_d
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_3

    .line 182
    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 198
    .end local v3    # "sfd":I
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_b
    :try_start_e
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 199
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 197
    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_e
    .catch Lsun/nio/fs/UnixException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 201
    :catch_5
    move-exception v4

    .line 203
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_f
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_5

    .line 204
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 213
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catch_6
    move-exception v2

    .restart local v2    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_5

    .end local v2    # "ignore":Lsun/nio/fs/UnixException;
    :catch_7
    move-exception v2

    .restart local v2    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_7
.end method

.method private static copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .locals 10
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .param p4, "addressToPollForCancel"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v1, -0x1

    .line 228
    .local v1, "fi":I
    :try_start_0
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 235
    :goto_0
    const/4 v2, -0x1

    .line 238
    .local v2, "fo":I
    :try_start_1
    sget v5, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    .line 239
    sget v6, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    .line 238
    or-int/2addr v5, v6

    .line 240
    sget v6, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    .line 238
    or-int/2addr v5, v6

    .line 241
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v6

    .line 237
    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 247
    :goto_1
    const/4 v0, 0x0

    .line 251
    .local v0, "complete":Z
    :try_start_2
    invoke-static {v2, v1, p4, p5}, Lsun/nio/fs/UnixCopyFile;->transfer(IIJ)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    :goto_2
    :try_start_3
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    .line 258
    :try_start_4
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 259
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 266
    :cond_0
    :goto_3
    :try_start_5
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_1

    .line 267
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 270
    :cond_1
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_2

    .line 272
    :try_start_6
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 275
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 273
    invoke-static {v2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 286
    :cond_2
    :goto_4
    const/4 v0, 0x1

    .line 288
    :try_start_7
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 291
    if-nez v0, :cond_3

    .line 293
    :try_start_8
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 298
    :cond_3
    :goto_5
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 300
    return-void

    .line 229
    .end local v0    # "complete":Z
    .end local v2    # "fo":I
    :catch_0
    move-exception v4

    .line 230
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 242
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "fo":I
    :catch_1
    move-exception v4

    .line 243
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_9
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 297
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v5

    .line 298
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 297
    throw v5

    .line 252
    .restart local v0    # "complete":Z
    :catch_2
    move-exception v4

    .line 253
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_a
    invoke-virtual {v4, p0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 287
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_1
    move-exception v5

    .line 288
    :try_start_b
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 291
    if-nez v0, :cond_4

    .line 293
    :try_start_c
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_c
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 287
    :cond_4
    :goto_6
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 260
    :catch_3
    move-exception v4

    .line 261
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_e
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    .line 278
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_5
    :try_start_f
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 279
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 277
    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_f
    .catch Lsun/nio/fs/UnixException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .line 281
    :catch_4
    move-exception v4

    .line 282
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_10
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_4

    .line 294
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catch_5
    move-exception v3

    .local v3, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_5

    .end local v3    # "ignore":Lsun/nio/fs/UnixException;
    :catch_6
    move-exception v3

    .restart local v3    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_6
.end method

.method private static copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 4
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "linktarget":[B
    :try_start_0
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    .end local v0    # "linktarget":[B
    :goto_0
    :try_start_1
    invoke-static {v0, p2}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V

    .line 318
    iget-boolean v2, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_0

    .line 320
    :try_start_2
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v2

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {p2, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    .line 328
    :cond_0
    :goto_1
    return-void

    .line 312
    .restart local v0    # "linktarget":[B
    :catch_0
    move-exception v1

    .line 313
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 325
    .end local v0    # "linktarget":[B
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catch_1
    move-exception v1

    .line 326
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    .line 321
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catch_2
    move-exception v1

    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    goto :goto_1
.end method

.method private static copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .locals 8
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mknod(Lsun/nio/fs/UnixPath;IJ)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    const/4 v0, 0x0

    .line 344
    .local v0, "done":Z
    :try_start_1
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 346
    :try_start_2
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {p2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 347
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {p2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :cond_0
    :goto_1
    :try_start_3
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 356
    :try_start_4
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 357
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 355
    invoke-static {p2, v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 365
    if-nez v0, :cond_2

    .line 366
    :try_start_5
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_3

    .line 369
    :cond_2
    :goto_3
    return-void

    .line 339
    .end local v0    # "done":Z
    :catch_0
    move-exception v2

    .line 340
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 348
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "done":Z
    :catch_1
    move-exception v2

    .line 349
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :try_start_6
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v3, :cond_0

    .line 350
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 364
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v3

    .line 365
    if-nez v0, :cond_3

    .line 366
    :try_start_7
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_4

    .line 364
    :cond_3
    :goto_4
    throw v3

    .line 358
    :catch_2
    move-exception v2

    .line 359
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :try_start_8
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v3, :cond_1

    .line 360
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 366
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catch_3
    move-exception v1

    .local v1, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_3

    .end local v1    # "ignore":Lsun/nio/fs/UnixException;
    :catch_4
    move-exception v1

    .restart local v1    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_4
.end method

.method static varargs move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .locals 11
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 377
    .local v7, "sm":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_0

    .line 378
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 379
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 383
    :cond_0
    invoke-static {p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    .line 386
    .local v3, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    if-eqz v0, :cond_2

    .line 388
    :try_start_0
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v10

    .line 390
    .local v10, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-ne v0, v2, :cond_1

    .line 391
    new-instance v0, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 392
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-direct {v0, v2, v4, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    goto :goto_0

    .line 402
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :cond_2
    const/4 v1, 0x0

    .line 403
    .local v1, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v8, 0x0

    .line 407
    .local v8, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_1
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 414
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    .line 418
    .end local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_2
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    .line 424
    .local v9, "targetExists":Z
    :goto_3
    if-eqz v9, :cond_6

    .line 425
    invoke-virtual {v1, v8}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    return-void

    .line 408
    .end local v9    # "targetExists":Z
    .restart local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_1
    move-exception v10

    .line 409
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_1

    .line 415
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :catch_2
    move-exception v10

    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    goto :goto_2

    .line 418
    .end local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "targetExists":Z
    goto :goto_3

    .line 427
    :cond_4
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_5

    .line 428
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 429
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_5
    :try_start_3
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 435
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_3

    .line 453
    :cond_6
    :goto_4
    :try_start_4
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_4} :catch_4

    .line 454
    return-void

    .line 437
    :cond_7
    :try_start_5
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_5
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 439
    :catch_3
    move-exception v10

    .line 441
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_8

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_9

    .line 444
    :cond_8
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 445
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_9
    invoke-virtual {v10, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_4

    .line 455
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :catch_4
    move-exception v10

    .line 456
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v0, v2, :cond_a

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-eq v0, v2, :cond_a

    .line 457
    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 462
    :cond_a
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 463
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 478
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 479
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_6
    .catch Lsun/nio/fs/UnixException; {:try_start_6 .. :try_end_6} :catch_5

    .line 502
    :goto_6
    return-void

    .line 465
    :cond_b
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_5

    .line 468
    :cond_c
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDevice()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 469
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_5

    .line 471
    :cond_d
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    goto :goto_5

    .line 481
    :cond_e
    :try_start_7
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 483
    :catch_5
    move-exception v10

    .line 487
    :try_start_8
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 488
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_8
    .catch Lsun/nio/fs/UnixException; {:try_start_8 .. :try_end_8} :catch_6

    .line 494
    :goto_7
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 495
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_f

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_11

    .line 497
    :cond_f
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 498
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_10
    :try_start_9
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_9
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_7

    .line 492
    :catch_6
    move-exception v6

    .local v6, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_7

    .line 500
    .end local v6    # "ignore":Lsun/nio/fs/UnixException;
    :cond_11
    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_6
.end method

.method static native transfer(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
