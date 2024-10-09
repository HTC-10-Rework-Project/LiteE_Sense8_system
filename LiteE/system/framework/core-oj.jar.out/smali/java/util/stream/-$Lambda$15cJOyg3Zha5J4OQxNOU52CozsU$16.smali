.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)V
    .locals 1
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/DoublePipeline$5$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/DoublePipeline$5$1;->lambda$-java_util_stream_DoublePipeline$5$1_10563(D)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(D)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$16;->$m$0(D)V

    return-void
.end method
