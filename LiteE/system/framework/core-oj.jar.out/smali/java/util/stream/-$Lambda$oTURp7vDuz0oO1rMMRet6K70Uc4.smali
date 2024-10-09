.class final synthetic Ljava/util/stream/-$Lambda$oTURp7vDuz0oO1rMMRet6K70Uc4;
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
    iget-object v0, p0, Ljava/util/stream/-$Lambda$oTURp7vDuz0oO1rMMRet6K70Uc4;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/stream/SpinedBuffer;->-java_util_stream_SpinedBuffer-mthref-0(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$oTURp7vDuz0oO1rMMRet6K70Uc4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$oTURp7vDuz0oO1rMMRet6K70Uc4;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
