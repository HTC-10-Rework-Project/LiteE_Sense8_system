.class final Ljava/util/stream/DoubleStream$1;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoubleStream;->iterate(DLjava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:D

.field final synthetic val$f:Ljava/util/function/DoubleUnaryOperator;

.field final synthetic val$seed:D


# direct methods
.method constructor <init>(DLjava/util/function/DoubleUnaryOperator;)V
    .locals 3

    .prologue
    .line 1
    iput-wide p1, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    iput-object p3, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$1;->val$seed:D

    iput-wide v0, p0, Ljava/util/stream/DoubleStream$1;->t:D

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 243
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public nextDouble()D
    .locals 6

    .prologue
    .line 785
    iget-wide v0, p0, Ljava/util/stream/DoubleStream$1;->t:D

    .line 786
    .local v0, "v":D
    iget-object v2, p0, Ljava/util/stream/DoubleStream$1;->val$f:Ljava/util/function/DoubleUnaryOperator;

    iget-wide v4, p0, Ljava/util/stream/DoubleStream$1;->t:D

    invoke-interface {v2, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/stream/DoubleStream$1;->t:D

    .line 787
    return-wide v0
.end method
