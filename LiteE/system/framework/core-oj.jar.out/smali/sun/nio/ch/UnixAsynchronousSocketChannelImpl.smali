.class Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
.super Lsun/nio/ch/AsynchronousSocketChannelImpl;
.source "UnixAsynchronousSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Port$PollableChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;,
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;,
        Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final disableSynchronousRead:Z

.field private static final nd:Lsun/nio/ch/NativeDispatcher;


# instance fields
.field private connectAttachment:Ljava/lang/Object;

.field private connectFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connectPending:Z

.field private final fdVal:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private isGatheringWrite:Z

.field private isScatteringRead:Z

.field private pendingRemote:Ljava/net/SocketAddress;

.field private final port:Lsun/nio/ch/Port;

.field private readAttachment:Ljava/lang/Object;

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private readBuffers:[Ljava/nio/ByteBuffer;

.field private readFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readPending:Z

.field private readTimeoutTask:Ljava/lang/Runnable;

.field private readTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final updateLock:Ljava/lang/Object;

.field private writeAttachment:Ljava/lang/Object;

.field private writeBuffer:Ljava/nio/ByteBuffer;

.field private writeBuffers:[Ljava/nio/ByteBuffer;

.field private writeFuture:Lsun/nio/ch/PendingFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/ch/PendingFuture",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private writeHandler:Ljava/nio/channels/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Number;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private writePending:Z

.field private writeTimeoutTask:Ljava/lang/Runnable;

.field private writeTimer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    return-object v0
.end method

.method static synthetic -get2(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method static synthetic -get3(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-boolean v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return v0
.end method

.method static synthetic -get4(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Lsun/nio/ch/PendingFuture;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    return-object v0
.end method

.method static synthetic -get7(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Ljava/nio/channels/CompletionHandler;
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    return-object v0
.end method

.method static synthetic -get8(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)Z
    .locals 1
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    .prologue
    iget-boolean v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return v0
.end method

.method static synthetic -set0(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    return p1
.end method

.method static synthetic -set1(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-assertionsDisabled:Z

    .line 56
    new-instance v1, Lsun/nio/ch/SocketDispatcher;

    invoke-direct {v1}, Lsun/nio/ch/SocketDispatcher;-><init>()V

    sput-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    .line 62
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.ch.disableSynchronousRead"

    const-string/jumbo v3, "false"

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    .local v0, "propValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 63
    :goto_0
    sput-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    .line 53
    return-void

    .line 64
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method constructor <init>(Lsun/nio/ch/Port;)V
    .locals 3
    .param p1, "port"    # Lsun/nio/ch/Port;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 104
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 466
    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    .line 661
    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    .line 113
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 120
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    .line 123
    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v1, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V

    .line 125
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 126
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "x":Ljava/io/IOException;
    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 116
    throw v0
.end method

.method constructor <init>(Lsun/nio/ch/Port;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .locals 3
    .param p1, "port"    # Lsun/nio/ch/Port;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/ch/AsynchronousSocketChannelImpl;-><init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    .line 104
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    .line 466
    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$1;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    .line 661
    new-instance v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;

    invoke-direct {v1, p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$2;-><init>(Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;)V

    iput-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    .line 136
    invoke-static {p2}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    .line 137
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lsun/nio/ch/IOUtil;->configureBlocking(Ljava/io/FileDescriptor;Z)V

    .line 140
    :try_start_0
    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {p1, v1, p0}, Lsun/nio/ch/Port;->register(ILsun/nio/ch/Port$PollableChannel;)V
    :try_end_0
    .catch Ljava/nio/channels/ShutdownChannelGroupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    .line 148
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 149
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 144
    .local v0, "x":Ljava/nio/channels/ShutdownChannelGroupException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native checkConnect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private finish(ZZZ)V
    .locals 6
    .param p1, "mayInvokeDirect"    # Z
    .param p2, "readable"    # Z
    .param p3, "writable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "finishRead":Z
    const/4 v2, 0x0

    .line 182
    .local v2, "finishWrite":Z
    const/4 v0, 0x0

    .line 185
    .local v0, "finishConnect":Z
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 186
    if-eqz p2, :cond_0

    :try_start_0
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v3, :cond_0

    .line 187
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    .line 188
    const/4 v1, 0x1

    .line 190
    :cond_0
    if-eqz p3, :cond_1

    .line 191
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v3, :cond_3

    .line 192
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v2, 0x1

    :cond_1
    :goto_0
    monitor-exit v4

    .line 204
    if-eqz v1, :cond_4

    .line 205
    if-eqz v2, :cond_2

    .line 206
    invoke-direct {p0, v5}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    .line 207
    :cond_2
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishRead(Z)V

    .line 208
    return-void

    .line 194
    :cond_3
    :try_start_1
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-eqz v3, :cond_1

    .line 195
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 210
    :cond_4
    if-eqz v2, :cond_5

    .line 211
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishWrite(Z)V

    .line 213
    :cond_5
    if-eqz v0, :cond_6

    .line 214
    invoke-direct {p0, p1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finishConnect(Z)V

    .line 216
    :cond_6
    return-void
.end method

.method private finishConnect(Z)V
    .locals 8
    .param p1, "mayInvokeDirect"    # Z

    .prologue
    const/4 v7, 0x0

    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 281
    iget v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-static {v6}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->checkConnect(I)V

    .line 282
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 290
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 293
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :cond_0
    :goto_1
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    .line 301
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;

    .line 302
    .local v0, "att":Ljava/lang/Object;
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;

    .line 303
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;Ljava/lang/Object;>;"
    if-nez v3, :cond_2

    .line 304
    invoke-virtual {v2, v7, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 312
    :goto_2
    return-void

    .line 283
    .end local v0    # "att":Ljava/lang/Object;
    .end local v2    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;Ljava/lang/Object;>;"
    .end local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    .restart local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v5

    .line 284
    .local v5, "x":Ljava/lang/Throwable;
    :try_start_2
    instance-of v6, v5, Ljava/nio/channels/ClosedChannelException;

    if-eqz v6, :cond_1

    .line 285
    new-instance v5, Ljava/nio/channels/AsynchronousCloseException;

    .end local v5    # "x":Ljava/lang/Throwable;
    invoke-direct {v5}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    .restart local v5    # "x":Ljava/lang/Throwable;
    :cond_1
    move-object v1, v5

    .line 288
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_0

    .line 287
    .end local v5    # "x":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 288
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 287
    throw v6

    .line 294
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 295
    .local v4, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 306
    .end local v4    # "suppressed":Ljava/lang/Throwable;
    .restart local v0    # "att":Ljava/lang/Object;
    .restart local v2    # "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;Ljava/lang/Object;>;"
    .restart local v3    # "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;Ljava/lang/Object;>;"
    :cond_2
    if-eqz p1, :cond_3

    .line 307
    invoke-static {v3, v0, v7, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 309
    :cond_3
    invoke-static {p0, v3, v0, v7, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private finishRead(Z)V
    .locals 14
    .param p1, "mayInvokeDirect"    # Z

    .prologue
    .line 400
    const/4 v4, -0x1

    .line 401
    .local v4, "n":I
    const/4 v1, 0x0

    .line 404
    .local v1, "exc":Ljava/lang/Throwable;
    iget-boolean v6, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    .line 405
    .local v6, "scattering":Z
    iget-object v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 406
    .local v3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 407
    .local v0, "att":Ljava/lang/Object;
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    .line 408
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    .line 411
    .local v7, "timeout":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 413
    if-eqz v6, :cond_1

    .line 414
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v11}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    long-to-int v4, v10

    .line 418
    :goto_0
    const/4 v9, -0x2

    if-ne v4, v9, :cond_5

    .line 420
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 441
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_0

    .line 442
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 423
    return-void

    .line 416
    :cond_1
    :try_start_3
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v12, -0x1

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v12, v13, v11}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v4

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 434
    :catch_0
    move-exception v8

    .line 435
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 436
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_2

    .line 437
    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    .end local v8    # "x":Ljava/lang/Throwable;
    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    .restart local v8    # "x":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v8

    .line 441
    .local v1, "exc":Ljava/lang/Throwable;
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_3

    .line 442
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 443
    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 447
    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v8    # "x":Ljava/lang/Throwable;
    :goto_1
    if-eqz v7, :cond_4

    .line 448
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 451
    :cond_4
    if-eqz v1, :cond_8

    const/4 v5, 0x0

    .line 455
    :goto_2
    if-nez v3, :cond_a

    .line 456
    invoke-virtual {v2, v5, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 464
    :goto_3
    return-void

    .line 427
    .local v1, "exc":Ljava/lang/Throwable;
    :cond_5
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    .line 428
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    .line 429
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 432
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 441
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_6

    .line 442
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 443
    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_1

    .line 439
    :catchall_1
    move-exception v9

    .line 441
    instance-of v10, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v10, :cond_7

    .line 442
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 443
    :cond_7
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 439
    throw v9

    .line 451
    .end local v1    # "exc":Ljava/lang/Throwable;
    :cond_8
    if-eqz v6, :cond_9

    .line 452
    int-to-long v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .local v5, "result":Ljava/lang/Number;
    goto :goto_2

    .end local v5    # "result":Ljava/lang/Number;
    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Number;
    goto :goto_2

    .line 458
    .end local v5    # "result":Ljava/lang/Number;
    :cond_a
    if-eqz p1, :cond_b

    .line 459
    invoke-static {v3, v0, v5, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 461
    :cond_b
    invoke-static {p0, v3, v0, v5, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private finishWrite(Z)V
    .locals 14
    .param p1, "mayInvokeDirect"    # Z

    .prologue
    .line 595
    const/4 v5, -0x1

    .line 596
    .local v5, "n":I
    const/4 v1, 0x0

    .line 599
    .local v1, "exc":Ljava/lang/Throwable;
    iget-boolean v3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    .line 600
    .local v3, "gathering":Z
    iget-object v4, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 601
    .local v4, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 602
    .local v0, "att":Ljava/lang/Object;
    iget-object v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    .line 603
    .local v2, "future":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Number;Ljava/lang/Object;>;"
    iget-object v7, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    .line 606
    .local v7, "timer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 608
    if-eqz v3, :cond_1

    .line 609
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v11}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v10

    long-to-int v5, v10

    .line 613
    :goto_0
    const/4 v9, -0x2

    if-ne v5, v9, :cond_5

    .line 615
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 616
    const/4 v10, 0x1

    :try_start_1
    iput-boolean v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 636
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_0

    .line 637
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 618
    return-void

    .line 611
    :cond_1
    :try_start_3
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    const-wide/16 v12, -0x1

    sget-object v11, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    invoke-static {v9, v10, v12, v13, v11}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 629
    :catch_0
    move-exception v8

    .line 630
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 631
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_2

    .line 632
    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    .end local v8    # "x":Ljava/lang/Throwable;
    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    .restart local v8    # "x":Ljava/lang/Throwable;
    :cond_2
    move-object v1, v8

    .line 636
    .local v1, "exc":Ljava/lang/Throwable;
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_3

    .line 637
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 638
    :cond_3
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 642
    .end local v1    # "exc":Ljava/lang/Throwable;
    .end local v8    # "x":Ljava/lang/Throwable;
    :goto_1
    if-eqz v7, :cond_4

    .line 643
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 646
    :cond_4
    if-eqz v1, :cond_8

    const/4 v6, 0x0

    .line 650
    :goto_2
    if-nez v4, :cond_a

    .line 651
    invoke-virtual {v2, v6, v1}, Lsun/nio/ch/PendingFuture;->setResult(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 659
    :goto_3
    return-void

    .line 622
    .local v1, "exc":Ljava/lang/Throwable;
    :cond_5
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 623
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    .line 624
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 627
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 636
    instance-of v9, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v9, :cond_6

    .line 637
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 638
    :cond_6
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_1

    .line 634
    :catchall_1
    move-exception v9

    .line 636
    instance-of v10, v1, Ljava/nio/channels/AsynchronousCloseException;

    if-nez v10, :cond_7

    .line 637
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->lockAndUpdateEvents()V

    .line 638
    :cond_7
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 634
    throw v9

    .line 646
    .end local v1    # "exc":Ljava/lang/Throwable;
    :cond_8
    if-eqz v3, :cond_9

    .line 647
    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .local v6, "result":Ljava/lang/Number;
    goto :goto_2

    .end local v6    # "result":Ljava/lang/Number;
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Number;
    goto :goto_2

    .line 653
    .end local v6    # "result":Ljava/lang/Number;
    :cond_a
    if-eqz p1, :cond_b

    .line 654
    invoke-static {v4, v0, v6, v1}, Lsun/nio/ch/Invoker;->invokeUnchecked(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 656
    :cond_b
    invoke-static {p0, v4, v0, v6, v1}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private lockAndUpdateEvents()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 173
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    .line 272
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 273
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 275
    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateEvents()V
    .locals 3

    .prologue
    .line 158
    sget-boolean v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, "events":I
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    if-eqz v1, :cond_1

    .line 161
    sget-short v1, Lsun/nio/ch/Net;->POLLIN:S

    or-int/lit8 v0, v1, 0x0

    .line 162
    :cond_1
    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    if-eqz v1, :cond_3

    .line 163
    :cond_2
    sget-short v1, Lsun/nio/ch/Net;->POLLOUT:S

    or-int/2addr v0, v1

    .line 164
    :cond_3
    if-eqz v0, :cond_4

    .line 165
    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v1, v2, v0}, Lsun/nio/ch/Port;->startPoll(II)V

    .line 166
    :cond_4
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-super {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->finalize()V

    .line 255
    return-void

    .line 252
    :catchall_0
    move-exception v0

    .line 253
    invoke-super {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->finalize()V

    .line 252
    throw v0
.end method

.method public group()Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    return-object v0
.end method

.method implClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 235
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 237
    iget-object v0, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    iget v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fdVal:I

    invoke-virtual {v0, v1}, Lsun/nio/ch/Port;->unregister(I)V

    .line 240
    sget-object v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    iget-object v1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/NativeDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    .line 244
    return-void
.end method

.method implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 12
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isOpen()Z

    move-result v9

    if-nez v9, :cond_1

    .line 321
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 322
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p3, :cond_0

    .line 323
    invoke-static {v0}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    .line 325
    :cond_0
    const/4 v9, 0x0

    invoke-static {p0, p3, p2, v9, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 326
    const/4 v9, 0x0

    return-object v9

    .line 330
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 333
    .local v1, "isa":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 334
    .local v6, "sm":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_2

    .line 335
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 339
    :cond_2
    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v10

    .line 340
    :try_start_0
    iget v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    .line 341
    new-instance v9, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v9}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 342
    :cond_3
    :try_start_1
    iget v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    .line 343
    new-instance v9, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v9}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v9

    .line 344
    :cond_4
    const/4 v9, 0x1

    iput v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->state:I

    .line 345
    iput-object p1, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->pendingRemote:Ljava/net/SocketAddress;

    .line 346
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_6

    const/4 v3, 0x1

    .local v3, "notifyBeforeTcpConnect":Z
    :goto_0
    monitor-exit v10

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 353
    if-eqz v3, :cond_5

    .line 354
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-static {v9, v10, v11}, Lsun/net/NetHooks;->beforeTcpConnect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 355
    :cond_5
    iget-object v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    invoke-static {v9, v10, v11}, Lsun/nio/ch/Net;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)I

    move-result v2

    .line 356
    .local v2, "n":I
    const/4 v9, -0x2

    if-ne v2, v9, :cond_a

    .line 358
    const/4 v4, 0x0

    .line 359
    .local v4, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    iget-object v10, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 360
    if-nez p3, :cond_7

    .line 361
    :try_start_3
    new-instance v5, Lsun/nio/ch/PendingFuture;

    sget-object v9, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    invoke-direct {v5, p0, v9}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 362
    .end local v4    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    .local v5, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    :try_start_4
    iput-object v5, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectFuture:Lsun/nio/ch/PendingFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v4, v5

    .line 367
    .end local v5    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    :goto_1
    const/4 v9, 0x1

    :try_start_5
    iput-boolean v9, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectPending:Z

    .line 368
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 378
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 370
    return-object v4

    .line 346
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "n":I
    .end local v3    # "notifyBeforeTcpConnect":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "notifyBeforeTcpConnect":Z
    goto :goto_0

    .line 364
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "n":I
    .restart local v4    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    :cond_7
    :try_start_7
    iput-object p3, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectHandler:Ljava/nio/channels/CompletionHandler;

    .line 365
    iput-object p2, p0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->connectAttachment:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 359
    .end local v4    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    :catchall_1
    move-exception v9

    :goto_2
    :try_start_8
    monitor-exit v10

    throw v9
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 373
    .end local v2    # "n":I
    :catch_0
    move-exception v8

    .line 374
    .local v8, "x":Ljava/lang/Throwable;
    :try_start_9
    instance-of v9, v8, Ljava/nio/channels/ClosedChannelException;

    if-eqz v9, :cond_8

    .line 375
    new-instance v8, Ljava/nio/channels/AsynchronousCloseException;

    .end local v8    # "x":Ljava/lang/Throwable;
    invoke-direct {v8}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 376
    .restart local v8    # "x":Ljava/lang/Throwable;
    :cond_8
    move-object v0, v8

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 382
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v8    # "x":Ljava/lang/Throwable;
    :goto_3
    if-eqz v0, :cond_9

    .line 384
    :try_start_a
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 389
    :cond_9
    :goto_4
    if-nez p3, :cond_b

    .line 390
    const/4 v9, 0x0

    invoke-static {v9, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v9

    return-object v9

    .line 372
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v2    # "n":I
    :cond_a
    :try_start_b
    invoke-direct {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->setConnected()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 378
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_3

    .line 377
    .end local v2    # "n":I
    :catchall_2
    move-exception v9

    .line 378
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 377
    throw v9

    .line 385
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 386
    .local v7, "suppressed":Ljava/lang/Throwable;
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 392
    .end local v7    # "suppressed":Ljava/lang/Throwable;
    :cond_b
    const/4 v9, 0x0

    invoke-static {p0, p3, p2, v9, v0}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 393
    const/4 v9, 0x0

    return-object v9

    .line 359
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "n":I
    .restart local v5    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    .local v4, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Void;TA;>;"
    goto :goto_2
.end method

.method implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 18
    .param p1, "isScatteringRead"    # Z
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    const/4 v7, 0x0

    .line 513
    .local v7, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    const/4 v6, 0x0

    .line 514
    .local v6, "invokeDirect":Z
    const/4 v4, 0x0

    .line 515
    .local v4, "attemptRead":Z
    sget-boolean v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->disableSynchronousRead:Z

    if-nez v14, :cond_0

    .line 516
    if-nez p8, :cond_4

    .line 517
    const/4 v4, 0x1

    .line 526
    .end local v4    # "attemptRead":Z
    .end local v6    # "invokeDirect":Z
    .end local v7    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    :cond_0
    :goto_0
    const/4 v8, -0x2

    .line 527
    .local v8, "n":I
    const/4 v5, 0x0

    .line 528
    .local v5, "exc":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 531
    .local v9, "pending":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 533
    if-eqz v4, :cond_1

    .line 534
    if-eqz p1, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p3

    invoke-static {v14, v0, v15}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v14

    long-to-int v8, v14

    .line 541
    :cond_1
    :goto_1
    const/4 v14, -0x2

    if-ne v8, v14, :cond_a

    .line 542
    const/4 v11, 0x0

    .line 543
    .local v11, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 544
    :try_start_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isScatteringRead:Z

    .line 545
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffer:Ljava/nio/ByteBuffer;

    .line 546
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readBuffers:[Ljava/nio/ByteBuffer;

    .line 547
    if-nez p8, :cond_7

    .line 548
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 549
    new-instance v12, Lsun/nio/ch/PendingFuture;

    sget-object v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local v12, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;

    .line 551
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v12

    .line 557
    .end local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v14, p4, v16

    if-lez v14, :cond_2

    .line 558
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-virtual {v14, v0, v1, v2, v3}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readTimer:Ljava/util/concurrent/Future;

    .line 560
    :cond_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readPending:Z

    .line 561
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    const/4 v9, 0x1

    .line 571
    if-nez v9, :cond_3

    .line 572
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 573
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 564
    return-object v11

    .line 519
    .end local v5    # "exc":Ljava/lang/Throwable;
    .end local v8    # "n":I
    .end local v9    # "pending":Z
    .restart local v4    # "attemptRead":Z
    .restart local v6    # "invokeDirect":Z
    .restart local v7    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    :cond_4
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v7

    .line 520
    .local v7, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v7, v14}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v6

    .line 522
    .local v6, "invokeDirect":Z
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-virtual {v14}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v14

    xor-int/lit8 v4, v14, 0x1

    .local v4, "attemptRead":Z
    goto/16 :goto_0

    .local v4, "attemptRead":Z
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 537
    .end local v4    # "attemptRead":Z
    .end local v6    # "invokeDirect":Z
    .end local v7    # "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    .restart local v5    # "exc":Ljava/lang/Throwable;
    .restart local v8    # "n":I
    .restart local v9    # "pending":Z
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v16, -0x1

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2, v15}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v8

    goto/16 :goto_1

    .line 553
    .restart local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :cond_7
    :try_start_6
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readHandler:Ljava/nio/channels/CompletionHandler;

    .line 554
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readAttachment:Ljava/lang/Object;

    .line 555
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->readFuture:Lsun/nio/ch/PendingFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 543
    .end local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_0
    move-exception v14

    :goto_3
    :try_start_7
    monitor-exit v15

    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 566
    :catch_0
    move-exception v13

    .line 567
    .local v13, "x":Ljava/lang/Throwable;
    :try_start_8
    instance-of v14, v13, Ljava/nio/channels/ClosedChannelException;

    if-eqz v14, :cond_8

    .line 568
    new-instance v13, Ljava/nio/channels/AsynchronousCloseException;

    .end local v13    # "x":Ljava/lang/Throwable;
    invoke-direct {v13}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 569
    .restart local v13    # "x":Ljava/lang/Throwable;
    :cond_8
    move-object v5, v13

    .line 571
    .local v5, "exc":Ljava/lang/Throwable;
    if-nez v9, :cond_9

    .line 572
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 573
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 576
    .end local v5    # "exc":Ljava/lang/Throwable;
    .end local v13    # "x":Ljava/lang/Throwable;
    :goto_4
    if-eqz v5, :cond_d

    const/4 v10, 0x0

    .line 580
    :goto_5
    if-eqz p8, :cond_10

    .line 581
    if-eqz v6, :cond_f

    .line 582
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v7, v0, v1, v10, v5}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 586
    :goto_6
    const/4 v14, 0x0

    return-object v14

    .line 571
    .local v5, "exc":Ljava/lang/Throwable;
    :cond_a
    if-nez v9, :cond_b

    .line 572
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 573
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_4

    .line 570
    :catchall_1
    move-exception v14

    .line 571
    if-nez v9, :cond_c

    .line 572
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableReading()V

    .line 573
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 570
    throw v14

    .line 576
    .end local v5    # "exc":Ljava/lang/Throwable;
    :cond_d
    if-eqz p1, :cond_e

    .line 577
    int-to-long v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .local v10, "result":Ljava/lang/Number;
    goto :goto_5

    .end local v10    # "result":Ljava/lang/Number;
    :cond_e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "result":Ljava/lang/Number;
    goto :goto_5

    .line 584
    .end local v10    # "result":Ljava/lang/Number;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v10, v5}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 588
    :cond_10
    invoke-static {v10, v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v14

    return-object v14

    .line 543
    .restart local v5    # "exc":Ljava/lang/Throwable;
    .restart local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local v11, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    goto :goto_3
.end method

.method implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .locals 18
    .param p1, "isGatheringWrite"    # Z
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 704
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    invoke-static {}, Lsun/nio/ch/Invoker;->getGroupAndInvokeCount()Lsun/nio/ch/Invoker$GroupAndInvokeCount;

    move-result-object v7

    .line 705
    .local v7, "myGroupAndInvokeCount":Lsun/nio/ch/Invoker$GroupAndInvokeCount;
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-static {v7, v14}, Lsun/nio/ch/Invoker;->mayInvokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Lsun/nio/ch/AsynchronousChannelGroupImpl;)Z

    move-result v6

    .line 706
    .local v6, "invokeDirect":Z
    if-eqz p8, :cond_3

    if-nez v6, :cond_3

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    invoke-virtual {v14}, Lsun/nio/ch/Port;->isFixedThreadPool()Z

    move-result v14

    xor-int/lit8 v4, v14, 0x1

    .line 709
    :goto_0
    const/4 v8, -0x2

    .line 710
    .local v8, "n":I
    const/4 v5, 0x0

    .line 711
    .local v5, "exc":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 714
    .local v9, "pending":Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->begin()V

    .line 716
    if-eqz v4, :cond_0

    .line 717
    if-eqz p1, :cond_4

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p3

    invoke-static {v14, v0, v15}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J

    move-result-wide v14

    long-to-int v8, v14

    .line 724
    :cond_0
    :goto_1
    const/4 v14, -0x2

    if-ne v8, v14, :cond_8

    .line 725
    const/4 v11, 0x0

    .line 726
    .local v11, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 727
    :try_start_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->isGatheringWrite:Z

    .line 728
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 729
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeBuffers:[Ljava/nio/ByteBuffer;

    .line 730
    if-nez p8, :cond_5

    .line 731
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 732
    new-instance v12, Lsun/nio/ch/PendingFuture;

    sget-object v14, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    .end local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local v12, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;

    .line 734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v12

    .line 740
    .end local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :goto_2
    const-wide/16 v16, 0x0

    cmp-long v14, p4, v16

    if-lez v14, :cond_1

    .line 741
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->port:Lsun/nio/ch/Port;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimeoutTask:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    invoke-virtual {v14, v0, v1, v2, v3}, Lsun/nio/ch/Port;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeTimer:Ljava/util/concurrent/Future;

    .line 743
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writePending:Z

    .line 744
    invoke-direct/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->updateEvents()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 746
    const/4 v9, 0x1

    .line 754
    if-nez v9, :cond_2

    .line 755
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 756
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 747
    return-object v11

    .line 706
    .end local v5    # "exc":Ljava/lang/Throwable;
    .end local v8    # "n":I
    .end local v9    # "pending":Z
    :cond_3
    const/4 v4, 0x1

    .local v4, "attemptWrite":Z
    goto :goto_0

    .line 720
    .end local v4    # "attemptWrite":Z
    .restart local v5    # "exc":Ljava/lang/Throwable;
    .restart local v8    # "n":I
    .restart local v9    # "pending":Z
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v16, -0x1

    sget-object v15, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->nd:Lsun/nio/ch/NativeDispatcher;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2, v15}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v8

    goto :goto_1

    .line 736
    .restart local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :cond_5
    :try_start_6
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeHandler:Ljava/nio/channels/CompletionHandler;

    .line 737
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeAttachment:Ljava/lang/Object;

    .line 738
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->writeFuture:Lsun/nio/ch/PendingFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 726
    .end local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_0
    move-exception v14

    :goto_3
    :try_start_7
    monitor-exit v15

    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 749
    :catch_0
    move-exception v13

    .line 750
    .local v13, "x":Ljava/lang/Throwable;
    :try_start_8
    instance-of v14, v13, Ljava/nio/channels/ClosedChannelException;

    if-eqz v14, :cond_6

    .line 751
    new-instance v13, Ljava/nio/channels/AsynchronousCloseException;

    .end local v13    # "x":Ljava/lang/Throwable;
    invoke-direct {v13}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 752
    .restart local v13    # "x":Ljava/lang/Throwable;
    :cond_6
    move-object v5, v13

    .line 754
    .local v5, "exc":Ljava/lang/Throwable;
    if-nez v9, :cond_7

    .line 755
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 756
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 759
    .end local v5    # "exc":Ljava/lang/Throwable;
    .end local v13    # "x":Ljava/lang/Throwable;
    :goto_4
    if-eqz v5, :cond_b

    const/4 v10, 0x0

    .line 763
    :goto_5
    if-eqz p8, :cond_e

    .line 764
    if-eqz v6, :cond_d

    .line 765
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {v7, v0, v1, v10, v5}, Lsun/nio/ch/Invoker;->invokeDirect(Lsun/nio/ch/Invoker$GroupAndInvokeCount;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 769
    :goto_6
    const/4 v14, 0x0

    return-object v14

    .line 754
    .local v5, "exc":Ljava/lang/Throwable;
    :cond_8
    if-nez v9, :cond_9

    .line 755
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 756
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    goto :goto_4

    .line 753
    :catchall_1
    move-exception v14

    .line 754
    if-nez v9, :cond_a

    .line 755
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->enableWriting()V

    .line 756
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->end()V

    .line 753
    throw v14

    .line 759
    .end local v5    # "exc":Ljava/lang/Throwable;
    :cond_b
    if-eqz p1, :cond_c

    .line 760
    int-to-long v14, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .local v10, "result":Ljava/lang/Number;
    goto :goto_5

    .end local v10    # "result":Ljava/lang/Number;
    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .restart local v10    # "result":Ljava/lang/Number;
    goto :goto_5

    .line 767
    .end local v10    # "result":Ljava/lang/Number;
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2, v10, v5}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 771
    :cond_e
    invoke-static {v10, v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v14

    return-object v14

    .line 726
    .restart local v5    # "exc":Ljava/lang/Throwable;
    .restart local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    :catchall_2
    move-exception v14

    move-object v11, v12

    .end local v12    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    .local v11, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<TV;TA;>;"
    goto :goto_3
.end method

.method public onCancel(Lsun/nio/ch/PendingFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/ch/PendingFuture",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "task":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<**>;"
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->CONNECT:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killConnect()V

    .line 261
    :cond_0
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->READ:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killReading()V

    .line 263
    :cond_1
    invoke-virtual {p1}, Lsun/nio/ch/PendingFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;->WRITE:Lsun/nio/ch/UnixAsynchronousSocketChannelImpl$OpType;

    if-ne v0, v1, :cond_2

    .line 264
    invoke-virtual {p0}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->killWriting()V

    .line 265
    :cond_2
    return-void
.end method

.method public onEvent(IZ)V
    .locals 4
    .param p1, "events"    # I
    .param p2, "mayInvokeDirect"    # Z

    .prologue
    .line 223
    sget-short v2, Lsun/nio/ch/Net;->POLLIN:S

    and-int/2addr v2, p1

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 224
    .local v0, "readable":Z
    :goto_0
    sget-short v2, Lsun/nio/ch/Net;->POLLOUT:S

    and-int/2addr v2, p1

    if-lez v2, :cond_2

    const/4 v1, 0x1

    .line 225
    .local v1, "writable":Z
    :goto_1
    sget-short v2, Lsun/nio/ch/Net;->POLLERR:S

    sget-short v3, Lsun/nio/ch/Net;->POLLHUP:S

    or-int/2addr v2, v3

    and-int/2addr v2, p1

    if-lez v2, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lsun/nio/ch/UnixAsynchronousSocketChannelImpl;->finish(ZZZ)V

    .line 230
    return-void

    .line 223
    .end local v0    # "readable":Z
    .end local v1    # "writable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "readable":Z
    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "writable":Z
    goto :goto_1
.end method
