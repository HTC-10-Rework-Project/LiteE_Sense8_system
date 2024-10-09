.class final Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CLQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field exhausted:Z

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 823
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 896
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 893
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 856
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 857
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 858
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v4, :cond_4

    .line 859
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 860
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    .line 862
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 863
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_5

    .line 864
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 865
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 866
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 867
    :cond_3
    if-nez v1, :cond_2

    .line 869
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    return-void

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v5, 0x1

    .line 873
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 874
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 875
    .local v3, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v4, :cond_4

    .line 876
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v1, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 879
    :cond_1
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 880
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v2, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v1, v2, :cond_5

    .line 881
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 882
    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-nez v0, :cond_2

    if-nez v1, :cond_1

    .line 883
    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v1, :cond_3

    .line 884
    iput-boolean v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    .line 885
    :cond_3
    if-eqz v0, :cond_4

    .line 886
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 887
    return v5

    .line 890
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    const/4 v4, 0x0

    return v4

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;, "Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator<TE;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 827
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 828
    .local v6, "q":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    iget v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    .line 829
    .local v1, "b":I
    if-gtz v1, :cond_5

    const/4 v3, 0x1

    .line 830
    .local v3, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    if-nez v7, :cond_7

    .line 831
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v4, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v4, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 832
    :cond_0
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v7, :cond_7

    .line 833
    new-array v0, v3, [Ljava/lang/Object;

    .line 834
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 836
    .local v2, "i":I
    :cond_1
    iget-object v7, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    aput-object v7, v0, v2

    if-eqz v7, :cond_2

    .line 837
    add-int/lit8 v2, v2, 0x1

    .line 838
    :cond_2
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne v4, v5, :cond_8

    .line 839
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    .line 840
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v4, :cond_3

    if-lt v2, v3, :cond_1

    .line 841
    :cond_3
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->current:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v4, :cond_4

    .line 842
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->exhausted:Z

    .line 843
    :cond_4
    if-lez v2, :cond_7

    .line 844
    iput v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$CLQSpliterator;->batch:I

    .line 846
    const/16 v7, 0x1110

    .line 845
    invoke-static {v0, v9, v2, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    .line 829
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_6

    const/high16 v3, 0x2000000

    .restart local v3    # "n":I
    goto :goto_0

    .end local v3    # "n":I
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .restart local v3    # "n":I
    goto :goto_0

    .line 851
    :cond_7
    return-object v8

    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_8
    move-object v4, v5

    .end local v5    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4    # "p":Ljava/util/concurrent/ConcurrentLinkedQueue$Node;, "Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_1
.end method
