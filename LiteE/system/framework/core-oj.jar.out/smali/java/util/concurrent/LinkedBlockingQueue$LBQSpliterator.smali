.class final Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBQSpliterator"
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

.field current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 838
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 839
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 938
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 841
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 884
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 885
    .local v2, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v3, :cond_5

    .line 886
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 887
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 889
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    .line 890
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 892
    if-nez v1, :cond_2

    .line 893
    :try_start_0
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 894
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    if-eqz v1, :cond_3

    .line 895
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 896
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    if-eqz v0, :cond_2

    .line 901
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 903
    if-eqz v0, :cond_4

    .line 904
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 905
    :cond_4
    if-nez v1, :cond_1

    .line 907
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_5
    return-void

    .line 900
    .restart local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v3

    .line 901
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 900
    throw v3
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v3, 0x1

    .line 910
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 911
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 912
    .local v1, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v2, :cond_4

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 916
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_1

    .line 917
    iget-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 918
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_2

    .line 919
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 920
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    if-eqz v0, :cond_1

    .line 925
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 927
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_3

    .line 928
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 929
    :cond_3
    if-eqz v0, :cond_4

    .line 930
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 931
    return v3

    .line 924
    :catchall_0
    move-exception v2

    .line 925
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 924
    throw v2

    .line 934
    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 846
    .local v6, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    .line 847
    .local v1, "b":I
    if-gtz v1, :cond_5

    const/4 v4, 0x1

    .line 848
    .local v4, "n":I
    :goto_0
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v7, :cond_8

    .line 849
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v2, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v2, :cond_0

    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_8

    .line 850
    :cond_0
    iget-object v7, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v7, :cond_8

    .line 851
    new-array v0, v4, [Ljava/lang/Object;

    .line 852
    .local v0, "a":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 853
    .local v3, "i":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 854
    .local v5, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 856
    if-nez v5, :cond_1

    :try_start_0
    iget-object v7, v6, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v5, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v5, :cond_3

    .line 858
    :cond_1
    iget-object v7, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v7, v0, v3

    if-eqz v7, :cond_2

    .line 859
    add-int/lit8 v3, v3, 0x1

    .line 860
    :cond_2
    iget-object v5, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    if-lt v3, v4, :cond_1

    .line 863
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 865
    iput-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v5, :cond_7

    .line 866
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 867
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 871
    :cond_4
    :goto_1
    if-lez v3, :cond_8

    .line 872
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    .line 874
    const/4 v7, 0x0

    const/16 v8, 0x1110

    .line 873
    invoke-static {v0, v7, v3, v8}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    .line 847
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_5
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_6

    const/high16 v4, 0x2000000

    .restart local v4    # "n":I
    goto :goto_0

    .end local v4    # "n":I
    :cond_6
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "n":I
    goto :goto_0

    .line 862
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v3    # "i":I
    .restart local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v7

    .line 863
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 862
    throw v7

    .line 869
    :cond_7
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    int-to-long v10, v3

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 870
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    goto :goto_1

    .line 879
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v3    # "i":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_8
    const/4 v7, 0x0

    return-object v7
.end method
