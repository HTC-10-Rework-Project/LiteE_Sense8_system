.class Lsun/nio/fs/UnixCopyFile$Flags;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixCopyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# instance fields
.field atomicMove:Z

.field copyBasicAttributes:Z

.field copyNonPosixAttributes:Z

.field copyPosixAttributes:Z

.field failIfUnableToCopyBasic:Z

.field failIfUnableToCopyNonPosix:Z

.field failIfUnableToCopyPosix:Z

.field followLinks:Z

.field interruptible:Z

.field replaceExisting:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;
    .locals 7
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 65
    new-instance v0, Lsun/nio/fs/UnixCopyFile$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixCopyFile$Flags;-><init>()V

    .line 66
    .local v0, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    .line 67
    array-length v4, p0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v1, p0, v2

    .line 68
    .local v1, "option":Ljava/nio/file/CopyOption;
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v1, v5, :cond_0

    .line 69
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v1, v5, :cond_1

    .line 73
    iput-boolean v3, v0, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    goto :goto_1

    .line 76
    :cond_1
    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne v1, v5, :cond_2

    .line 79
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    .line 80
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    .line 81
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    .line 82
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    goto :goto_1

    .line 85
    :cond_2
    sget-object v5, Lcom/sun/nio/file/ExtendedCopyOption;->INTERRUPTIBLE:Lcom/sun/nio/file/ExtendedCopyOption;

    if-ne v1, v5, :cond_3

    .line 86
    iput-boolean v6, v0, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    goto :goto_1

    .line 89
    :cond_3
    if-nez v1, :cond_4

    .line 90
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 91
    :cond_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Unsupported copy option"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1    # "option":Ljava/nio/file/CopyOption;
    :cond_5
    return-object v0
.end method

.method static varargs fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;
    .locals 6
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .prologue
    const/4 v5, 0x1

    .line 97
    new-instance v0, Lsun/nio/fs/UnixCopyFile$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixCopyFile$Flags;-><init>()V

    .line 98
    .local v0, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, p0, v2

    .line 99
    .local v1, "option":Ljava/nio/file/CopyOption;
    sget-object v4, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    if-ne v1, v4, :cond_1

    .line 100
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    .line 98
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v1, v4, :cond_2

    .line 104
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    goto :goto_1

    .line 107
    :cond_2
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-eq v1, v4, :cond_0

    .line 111
    if-nez v1, :cond_3

    .line 112
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 113
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Unsupported copy option"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v1    # "option":Ljava/nio/file/CopyOption;
    :cond_4
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    .line 119
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    .line 120
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    .line 121
    iput-boolean v5, v0, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    .line 122
    return-object v0
.end method
