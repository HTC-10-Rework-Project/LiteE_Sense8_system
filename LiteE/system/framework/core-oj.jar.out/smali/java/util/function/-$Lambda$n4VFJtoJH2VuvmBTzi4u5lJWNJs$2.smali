.class final synthetic Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)I
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntUnaryOperator;

    iget-object v1, p0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntUnaryOperator;->lambda$-java_util_function_IntUnaryOperator_2591(Ljava/util/function/IntUnaryOperator;I)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs$2;->$m$0(I)I

    move-result v0

    return v0
.end method
