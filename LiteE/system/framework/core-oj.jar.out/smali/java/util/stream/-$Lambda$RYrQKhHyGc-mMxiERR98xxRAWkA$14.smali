.class final synthetic Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$14;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/LongPipeline$6$1;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/LongPipeline$6$1;->lambda$-java_util_stream_LongPipeline$6$1_11125(J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$14;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$14;->$m$0(J)V

    return-void
.end method
