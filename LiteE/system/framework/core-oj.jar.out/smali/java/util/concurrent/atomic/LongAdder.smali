.class public Ljava/util/concurrent/atomic/LongAdder;
.super Ljava/util/concurrent/atomic/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/util/concurrent/atomic/Striped64;-><init>()V

    .line 78
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/LongAdder$SerializationProxy;-><init>(Ljava/util/concurrent/atomic/LongAdder;)V

    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 11
    .param p1, "x"    # J

    .prologue
    const/4 v10, 0x0

    .line 87
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    if-nez v1, :cond_0

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .local v2, "b":J
    add-long v8, v2, p1

    invoke-virtual {p0, v2, v3, v8, v9}, Ljava/util/concurrent/atomic/LongAdder;->casBase(JJ)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 88
    .end local v2    # "b":J
    :cond_0
    const/4 v5, 0x1

    .line 89
    .local v5, "uncontended":Z
    if-eqz v1, :cond_1

    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .local v4, "m":I
    if-gez v4, :cond_3

    .line 92
    .end local v4    # "m":I
    .end local v5    # "uncontended":Z
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v10, v5}, Ljava/util/concurrent/atomic/LongAdder;->longAccumulate(JLjava/util/function/LongBinaryOperator;Z)V

    .line 94
    :cond_2
    return-void

    .line 90
    .restart local v4    # "m":I
    .restart local v5    # "uncontended":Z
    :cond_3
    invoke-static {}, Ljava/util/concurrent/atomic/LongAdder;->getProbe()I

    move-result v8

    and-int/2addr v8, v4

    aget-object v0, v1, v8

    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_1

    .line 91
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    .local v6, "v":J
    add-long v8, v6, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/util/concurrent/atomic/Striped64$Cell;->cas(JJ)Z

    move-result v5

    .local v5, "uncontended":Z
    xor-int/lit8 v8, v5, 0x1

    .line 89
    if-eqz v8, :cond_2

    goto :goto_0
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 108
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 100
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    .line 101
    return-void
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 139
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 140
    if-eqz v1, :cond_1

    .line 141
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 142
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-void
.end method

.method public sum()J
    .locals 8

    .prologue
    .line 120
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 121
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 122
    .local v2, "sum":J
    if-eqz v1, :cond_1

    .line 123
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 124
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 125
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    add-long/2addr v2, v6

    .line 123
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public sumThenReset()J
    .locals 8

    .prologue
    .line 158
    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAdder;->cells:[Ljava/util/concurrent/atomic/Striped64$Cell;

    .line 159
    .local v1, "as":[Ljava/util/concurrent/atomic/Striped64$Cell;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 160
    .local v2, "sum":J
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ljava/util/concurrent/atomic/LongAdder;->base:J

    .line 161
    if-eqz v1, :cond_1

    .line 162
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 163
    .local v0, "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    if-eqz v0, :cond_0

    .line 164
    iget-wide v6, v0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    add-long/2addr v2, v6

    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/Striped64$Cell;->reset()V

    .line 162
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "a":Ljava/util/concurrent/atomic/Striped64$Cell;
    :cond_1
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
