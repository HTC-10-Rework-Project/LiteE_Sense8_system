.class Ljava/util/stream/DoublePipeline$5$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$5;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/stream/DoublePipeline$5;

.field final synthetic val$mapper:Ljava/util/function/DoubleFunction;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline$5;Ljava/util/stream/Sink;Ljava/util/function/DoubleFunction;)V
    .locals 0
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$5;

    .prologue
    .line 1
    .local p2, "$anonymous0":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    iput-object p3, p0, Ljava/util/stream/DoublePipeline$5$1;->val$mapper:Ljava/util/function/DoubleFunction;

    .line 262
    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 7
    .param p1, "t"    # D

    .prologue
    const/4 v3, 0x0

    .line 270
    const/4 v1, 0x0

    .local v1, "result":Ljava/util/stream/DoubleStream;
    :try_start_0
    iget-object v2, p0, Ljava/util/stream/DoublePipeline$5$1;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v2, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/stream/DoubleStream;

    move-object v1, v0

    .line 272
    .local v1, "result":Ljava/util/stream/DoubleStream;
    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v2

    new-instance v4, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;

    invoke-direct {v4, p0}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v2

    .line 275
    .restart local v1    # "result":Ljava/util/stream/DoubleStream;
    :cond_5
    return-void

    .line 274
    .end local v1    # "result":Ljava/util/stream/DoubleStream;
    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public begin(J)V
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 265
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Ljava/util/stream/Sink;->begin(J)V

    .line 266
    return-void
.end method

.method synthetic lambda$-java_util_stream_DoublePipeline$5$1_10563(D)V
    .locals 1
    .param p1, "i"    # D

    .prologue
    .line 273
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Sink;->accept(D)V

    return-void
.end method
