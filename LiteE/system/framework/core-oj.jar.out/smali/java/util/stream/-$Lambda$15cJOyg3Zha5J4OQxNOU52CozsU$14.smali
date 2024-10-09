.class final synthetic Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)D
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/DoublePipeline;->lambda$-java_util_stream_DoublePipeline_13468(Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$15cJOyg3Zha5J4OQxNOU52CozsU$14;->$m$0(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method
