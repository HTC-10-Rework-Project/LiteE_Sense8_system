.class final synthetic Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/IntPipeline;->lambda$-java_util_stream_IntPipeline_14709(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$QgGTJrv63_zzBbeGjswm_UMqEbo$12;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
