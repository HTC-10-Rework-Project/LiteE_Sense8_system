.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ObjIntConsumer;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # I

    .prologue
    check-cast p1, Ljava/util/IntSummaryStatistics;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/util/stream/IntPipeline;->-java_util_stream_IntPipeline-mthref-6(Ljava/util/IntSummaryStatistics;I)V

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$9;->$m$0(Ljava/lang/Object;I)V

    return-void
.end method
