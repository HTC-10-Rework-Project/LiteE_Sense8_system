.class final synthetic Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, p1}, Ljava/util/stream/DistinctOps$1;->lambda$-java_util_stream_DistinctOps$1_3835(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$9RlwRKfo_sNL8-VA-0-rDqK5gEM$3;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
