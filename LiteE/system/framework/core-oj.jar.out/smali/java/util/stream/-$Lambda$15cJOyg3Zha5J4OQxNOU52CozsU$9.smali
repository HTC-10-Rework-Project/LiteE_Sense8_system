.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjDoubleConsumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;D)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # D

    .prologue
    check-cast p1, [D

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_14331([DD)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;D)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$9;->$m$0(Ljava/lang/Object;D)V

    return-void
.end method
