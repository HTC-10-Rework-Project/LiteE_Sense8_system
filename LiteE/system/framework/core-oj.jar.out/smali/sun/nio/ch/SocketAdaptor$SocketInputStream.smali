.class Lsun/nio/ch/SocketAdaptor$SocketInputStream;
.super Lsun/nio/ch/ChannelInputStream;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method private constructor <init>(Lsun/nio/ch/SocketAdaptor;)V
    .locals 1
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    .prologue
    .line 196
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    .line 197
    invoke-static {p1}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor$SocketInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;
    .param p2, "-this1"    # Lsun/nio/ch/SocketAdaptor$SocketInputStream;

    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    return-void
.end method


# virtual methods
.method protected read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 204
    :try_start_0
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-nez v6, :cond_0

    .line 205
    new-instance v6, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v6}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 206
    :cond_0
    :try_start_1
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v6

    if-nez v6, :cond_1

    .line 207
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    .line 208
    :cond_1
    :try_start_2
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :try_start_3
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .local v0, "n":I
    if-eqz v0, :cond_3

    .line 229
    :try_start_4
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 230
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v7

    .line 213
    return v0

    .line 214
    :cond_3
    :try_start_5
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v6

    int-to-long v4, v6

    .line 216
    .local v4, "to":J
    :cond_4
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_6

    .line 217
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 228
    .end local v0    # "n":I
    .end local v4    # "to":J
    :catchall_1
    move-exception v6

    .line 229
    :try_start_6
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v8}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v8

    invoke-virtual {v8}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 230
    iget-object v8, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v8}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 228
    :cond_5
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 218
    .restart local v0    # "n":I
    .restart local v4    # "to":J
    :cond_6
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, "st":J
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    sget-short v8, Lsun/nio/ch/Net;->POLLIN:S

    invoke-virtual {v6, v8, v4, v5}, Lsun/nio/ch/SocketChannelImpl;->poll(IJ)I

    move-result v1

    .line 220
    .local v1, "result":I
    if-lez v1, :cond_8

    .line 221
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    :try_start_8
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    invoke-virtual {v6}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 230
    iget-object v6, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v6}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    monitor-exit v7

    .line 222
    return v0

    .line 224
    :cond_8
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sub-long/2addr v4, v8

    .line 225
    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gtz v6, :cond_4

    .line 226
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method
