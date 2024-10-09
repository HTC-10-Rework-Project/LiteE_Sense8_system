.class final synthetic Ljava/util/stream/-$Lambda$FhdcrNpyVDGf61Kgpb2-fJGXzpo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$FhdcrNpyVDGf61Kgpb2-fJGXzpo;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/stream/Sink;

    invoke-static {v0, p1}, Ljava/util/stream/SortedOps$RefSortingSink;->-java_util_stream_SortedOps$RefSortingSink-mthref-0(Ljava/util/stream/Sink;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$FhdcrNpyVDGf61Kgpb2-fJGXzpo;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$FhdcrNpyVDGf61Kgpb2-fJGXzpo;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
