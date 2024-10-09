.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$UseManualSkipException;
    }
.end annotation


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;

.field private final tracker:Llibcore/io/IoTracker;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 66
    iput-object v2, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 68
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/FileInputStream;->closed:Z

    .line 72
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v2, Llibcore/io/IoTracker;

    invoke-direct {v2}, Llibcore/io/IoTracker;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 134
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 136
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 139
    :cond_0
    if-nez v0, :cond_2

    .line 140
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 134
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_1
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_3
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 147
    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 149
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 150
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;->open(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .locals 2
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 66
    iput-object v1, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    .line 72
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 73
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 180
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 184
    iput-boolean p2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 185
    iput-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 103
    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    return-void
.end method

.method private native available0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private open(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0, p1}, Ljava/io/FileInputStream;->open0(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private native open0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private native skip0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileInputStream$UseManualSkipException;
        }
    .end annotation
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-direct {p0}, Ljava/io/FileInputStream;->available0()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v1, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 344
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 349
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 351
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 360
    :cond_1
    iget-boolean v0, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 363
    :cond_2
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 420
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_1

    .line 421
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 423
    :cond_1
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    .prologue
    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 404
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 212
    new-array v0, v2, [B

    .line 213
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-eq v2, v1, :cond_0

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    :cond_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iget-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    invoke-virtual {v0, p3}, Llibcore/io/IoTracker;->trackIo(I)V

    .line 254
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    :try_start_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    invoke-interface {v1}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 288
    invoke-direct {p0, p1, p2}, Ljava/io/FileInputStream;->skip0(J)J
    :try_end_0
    .catch Ljava/io/FileInputStream$UseManualSkipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/FileInputStream$UseManualSkipException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    return-wide v2
.end method
