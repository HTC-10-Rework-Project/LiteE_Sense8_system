.class final synthetic Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BinaryOperator;

    invoke-static {v0}, Ljava/util/stream/Collectors;->-java_util_stream_Collectors-mthref-12(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$79;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
