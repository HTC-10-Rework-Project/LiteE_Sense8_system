.class final synthetic Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)J
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/LongPipeline;->lambda$-java_util_stream_LongPipeline_13909(Ljava/lang/Long;)J

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
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$12;->$m$0(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
