.class final synthetic Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjLongConsumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # J

    .prologue
    check-cast p1, Ljava/util/LongSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2, p3}, Ljava/util/stream/LongPipeline;->-java_util_stream_LongPipeline-mthref-6(Ljava/util/LongSummaryStatistics;J)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;J)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/-$Lambda$RYrQKhHyGc-mMxiERR98xxRAWkA$9;->$m$0(Ljava/lang/Object;J)V

    return-void
.end method
