.class Lsun/nio/fs/AbstractPoller$Request;
.super Ljava/lang/Object;
.source "AbstractPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/AbstractPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field private completed:Z

.field private final params:[Ljava/lang/Object;

.field private result:Ljava/lang/Object;

.field private final type:Lsun/nio/fs/AbstractPoller$RequestType;


# direct methods
.method varargs constructor <init>(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Lsun/nio/fs/AbstractPoller$RequestType;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;

    .line 167
    iput-object p1, p0, Lsun/nio/fs/AbstractPoller$Request;->type:Lsun/nio/fs/AbstractPoller$RequestType;

    .line 168
    iput-object p2, p0, Lsun/nio/fs/AbstractPoller$Request;->params:[Ljava/lang/Object;

    .line 169
    return-void
.end method


# virtual methods
.method awaitResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "interrupted":Z
    monitor-enter p0

    .line 194
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 196
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller$Request;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "x":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "x":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 203
    :cond_1
    iget-object v2, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 193
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method parameters()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method release(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller$Request;->completed:Z

    .line 182
    iput-object p1, p0, Lsun/nio/fs/AbstractPoller$Request;->result:Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller$Request;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 185
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method type()Lsun/nio/fs/AbstractPoller$RequestType;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lsun/nio/fs/AbstractPoller$Request;->type:Lsun/nio/fs/AbstractPoller$RequestType;

    return-object v0
.end method
