.class final synthetic Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Collector;

    invoke-static {v0}, Ljava/util/stream/Collectors;->lambda$-java_util_stream_Collectors_52675(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$78;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
