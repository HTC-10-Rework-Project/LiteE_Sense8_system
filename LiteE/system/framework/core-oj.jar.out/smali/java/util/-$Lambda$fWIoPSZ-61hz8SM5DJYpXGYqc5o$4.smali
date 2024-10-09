.class final synthetic Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongConsumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Ljava/util/Spliterator$OfLong;->-java_util_Spliterator$OfLong-mthref-1(Ljava/util/function/Consumer;J)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$fWIoPSZ-61hz8SM5DJYpXGYqc5o$4;->$m$0(J)V

    return-void
.end method
