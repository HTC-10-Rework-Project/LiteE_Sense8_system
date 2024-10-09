.class final synthetic Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-static {v0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->-java_util_stream_StreamSpliterators$IntWrappingSpliterator-mthref-1(Ljava/util/function/IntConsumer;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$11;->$m$0(I)V

    return-void
.end method
