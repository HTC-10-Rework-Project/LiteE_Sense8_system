.class final Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
.super Ljava/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$SizedCollectorTask",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;",
        "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
        "<TP_IN;TP_OUT;>;>;",
        "Ljava/util/stream/Sink",
        "<TP_OUT;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TP_OUT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;[TP_OUT;)V"
        }
    .end annotation

    .prologue
    .line 1902
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p2, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TP_OUT;"
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/Spliterator;Ljava/util/stream/PipelineHelper;I)V

    .line 1903
    iput-object p3, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1904
    return-void
.end method

.method constructor <init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V
    .locals 9
    .param p3, "offset"    # J
    .param p5, "length"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
            "<TP_IN;TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 1908
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "parent":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask;Ljava/util/Spliterator;JJI)V

    .line 1909
    iget-object v0, p1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    .line 1910
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "value":Ljava/lang/Object;, "TP_OUT;"
    iget v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->fence:I

    if-lt v0, v1, :cond_0

    .line 1921
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1923
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1924
    return-void
.end method

.method makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;
    .locals 8
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;JJ)",
            "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    .prologue
    .line 1915
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v1, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;-><init>(Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;Ljava/util/Spliterator;JJ)V

    return-object v1
.end method

.method bridge synthetic makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask;
    .locals 2

    .prologue
    .line 1912
    .local p0, "this":Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;, "Ljava/util/stream/Nodes$SizedCollectorTask$OfRef<TP_IN;TP_OUT;>;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;->makeChild(Ljava/util/Spliterator;JJ)Ljava/util/stream/Nodes$SizedCollectorTask$OfRef;

    move-result-object v0

    return-object v0
.end method
