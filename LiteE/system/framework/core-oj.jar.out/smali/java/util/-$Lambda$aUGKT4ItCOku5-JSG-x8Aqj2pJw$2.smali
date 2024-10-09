.class final synthetic Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;->-$f0:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/IntToLongFunction;

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->lambda$-java_util_Arrays_213075([JLjava/util/function/IntToLongFunction;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw$2;->$m$0(I)V

    return-void
.end method
