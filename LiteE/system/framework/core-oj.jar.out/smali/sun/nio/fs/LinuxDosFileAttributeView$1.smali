.class Lsun/nio/fs/LinuxDosFileAttributeView$1;
.super Ljava/lang/Object;
.source "LinuxDosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/LinuxDosFileAttributeView;

.field final synthetic val$attrs:Lsun/nio/fs/UnixFileAttributes;

.field final synthetic val$dosAttribute:I


# direct methods
.method constructor <init>(Lsun/nio/fs/LinuxDosFileAttributeView;Lsun/nio/fs/UnixFileAttributes;I)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/fs/LinuxDosFileAttributeView;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->this$0:Lsun/nio/fs/LinuxDosFileAttributeView;

    iput-object p2, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    iput p3, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->fileKey()Lsun/nio/fs/UnixFileKey;

    move-result-object v0

    return-object v0
.end method

.method public isArchive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 172
    iget v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 168
    iget v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOther()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isOther()Z

    move-result v0

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    iget v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRegularFile()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isRegularFile()Z

    move-result v0

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 176
    iget v1, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$dosAttribute:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lsun/nio/fs/LinuxDosFileAttributeView$1;->val$attrs:Lsun/nio/fs/UnixFileAttributes;

    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
