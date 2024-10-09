.class public interface abstract Ljava/util/stream/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Node$Builder;,
        Ljava/util/stream/Node$OfDouble;,
        Ljava/util/stream/Node$OfInt;,
        Ljava/util/stream/Node$OfLong;,
        Ljava/util/stream/Node$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$-java_util_stream_Node_5216(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .local p0, "e":Ljava/lang/Object;, "TT;"
    return-void
.end method


# virtual methods
.method public abstract asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation
.end method

.method public abstract copyInto([Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation
.end method

.method public getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getShape()Ljava/util/stream/StreamShape;
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    sget-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    return-object v0
.end method

.method public abstract spliterator()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 9
    .param p1, "from"    # J
    .param p3, "to"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Ljava/util/stream/Node;, "Ljava/util/stream/Node<TT;>;"
    .local p5, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    invoke-interface {p0}, Ljava/util/stream/Node;->count()J

    move-result-wide v6

    cmp-long v5, p3, v6

    if-nez v5, :cond_0

    .line 123
    return-object p0

    .line 124
    :cond_0
    invoke-interface {p0}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v4

    .line 125
    .local v4, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    sub-long v2, p3, p1

    .line 126
    .local v2, "size":J
    invoke-static {v2, v3, p5}, Ljava/util/stream/Nodes;->builder(JLjava/util/function/IntFunction;)Ljava/util/stream/Node$Builder;

    move-result-object v1

    .line 127
    .local v1, "nodeBuilder":Ljava/util/stream/Node$Builder;, "Ljava/util/stream/Node$Builder<TT;>;"
    invoke-interface {v1, v2, v3}, Ljava/util/stream/Node$Builder;->begin(J)V

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v6, v0

    cmp-long v5, v6, p1

    if-gez v5, :cond_1

    new-instance v5, Ljava/util/stream/-$Lambda$gxn6Hor6yuk2I7Qlz5sIlMEFl7s;

    invoke-direct {v5}, Ljava/util/stream/-$Lambda$gxn6Hor6yuk2I7Qlz5sIlMEFl7s;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    :goto_1
    int-to-long v6, v0

    cmp-long v5, v6, v2

    if-gez v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->end()V

    .line 131
    invoke-interface {v1}, Ljava/util/stream/Node$Builder;->build()Ljava/util/stream/Node;

    move-result-object v5

    return-object v5
.end method
