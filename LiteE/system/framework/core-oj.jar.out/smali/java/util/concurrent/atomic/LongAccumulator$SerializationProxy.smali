.class Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;
.super Ljava/lang/Object;
.source "LongAccumulator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/LongAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# instance fields
.field private final function:Ljava/util/function/LongBinaryOperator;

.field private final identity:J

.field private final value:J


# direct methods
.method constructor <init>(JLjava/util/function/LongBinaryOperator;J)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p4, "identity"    # J

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->value:J

    .line 253
    iput-object p3, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->function:Ljava/util/function/LongBinaryOperator;

    .line 254
    iput-wide p4, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->identity:J

    .line 255
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/util/concurrent/atomic/LongAccumulator;

    iget-object v1, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->function:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->identity:J

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/atomic/LongAccumulator;-><init>(Ljava/util/function/LongBinaryOperator;J)V

    .line 266
    .local v0, "a":Ljava/util/concurrent/atomic/LongAccumulator;
    iget-wide v2, p0, Ljava/util/concurrent/atomic/LongAccumulator$SerializationProxy;->value:J

    iput-wide v2, v0, Ljava/util/concurrent/atomic/LongAccumulator;->base:J

    .line 267
    return-object v0
.end method
