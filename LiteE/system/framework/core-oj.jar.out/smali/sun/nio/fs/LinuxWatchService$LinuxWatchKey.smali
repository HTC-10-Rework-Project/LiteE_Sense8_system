.class Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/LinuxWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinuxWatchKey"
.end annotation


# instance fields
.field private final ifd:I

.field private volatile wd:I


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/LinuxWatchService;II)V
    .locals 0
    .param p1, "dir"    # Lsun/nio/fs/UnixPath;
    .param p2, "watcher"    # Lsun/nio/fs/LinuxWatchService;
    .param p3, "ifd"    # I
    .param p4, "wd"    # I

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 119
    iput p3, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    .line 120
    iput p4, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    .line 121
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->watcher()Lsun/nio/fs/AbstractWatchService;

    move-result-object v0

    check-cast v0, Lsun/nio/fs/LinuxWatchService;

    invoke-static {v0}, Lsun/nio/fs/LinuxWatchService;->-get0(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsun/nio/fs/LinuxWatchService$Poller;->cancel(Ljava/nio/file/WatchKey;)V

    .line 149
    :cond_0
    return-void
.end method

.method descriptor()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    return v0
.end method

.method invalidate(Z)V
    .locals 3
    .param p1, "remove"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    iget v1, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->ifd:I

    iget v2, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    invoke-static {v1, v2}, Lsun/nio/fs/LinuxWatchService;->-wrap4(II)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    .line 136
    return-void

    .line 131
    :catch_0
    move-exception v0

    .local v0, "x":Lsun/nio/fs/UnixException;
    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;->wd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
