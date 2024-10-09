.class final Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
.super Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$SliceSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const-wide/16 v6, 0x0

    invoke-interface {p1}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 695
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJJJ)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava/util/Spliterator;JJJJ)V

    .line 700
    return-void
.end method

.method static synthetic lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_25294(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .local p0, "e":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method static synthetic lambda$-java_util_stream_StreamSpliterators$SliceSpliterator$OfRef_26203(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .local p0, "e":Ljava/lang/Object;, "TT;"
    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v4, 0x1

    .line 730
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 733
    return-void

    .line 735
    :cond_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 736
    return-void

    .line 738
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 740
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 741
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    .line 753
    :cond_2
    return-void

    .line 744
    :cond_3
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 745
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 746
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 749
    :cond_4
    :goto_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 750
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 749
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_1
.end method

.method protected makeSpliterator(Ljava/util/Spliterator;JJJJ)Ljava/util/Spliterator;
    .locals 10
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJJJ)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;JJJJ)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    .line 711
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 714
    return v4

    .line 716
    :cond_0
    :goto_0
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->sliceOrigin:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 717
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    new-instance v1, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$1;

    invoke-direct {v1}, Ljava/util/stream/-$Lambda$pjwaaeJ_eHmC5XAnmHPMW0IKfyc$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    .line 718
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    goto :goto_0

    .line 721
    :cond_1
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 722
    return v4

    .line 724
    :cond_2
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->index:J

    .line 725
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
