.class final Ljava/util/stream/Nodes$CollectorTask$OfDouble;
.super Ljava/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$CollectorTask",
        "<TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/Node$OfDouble;",
        "Ljava/util/stream/Node$Builder$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_Nodes$CollectorTask$OfDouble-mthref-0(J)Ljava/util/stream/Node$Builder$OfDouble;
    .locals 2

    .prologue
    .line 2223
    invoke-static {p0, p1}, Ljava/util/stream/Nodes;->doubleBuilder(J)Ljava/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Nodes$CollectorTask$OfDouble-mthref-1(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)Ljava/util/stream/Node$OfDouble;
    .locals 1

    .prologue
    .line 2223
    new-instance v0, Ljava/util/stream/Nodes$ConcNode$OfDouble;

    invoke-direct {v0, p0, p1}, Ljava/util/stream/Nodes$ConcNode$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)V"
        }
    .end annotation

    .prologue
    .line 2223
    .local p0, "this":Ljava/util/stream/Nodes$CollectorTask$OfDouble;, "Ljava/util/stream/Nodes$CollectorTask$OfDouble<TP_IN;>;"
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$4;

    invoke-direct {v0}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc$4;-><init>()V

    new-instance v1, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$aRB2Ve9yTNaLYumrLKKo_GKLlhc;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/stream/Nodes$CollectorTask;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;)V

    .line 2224
    return-void
.end method
