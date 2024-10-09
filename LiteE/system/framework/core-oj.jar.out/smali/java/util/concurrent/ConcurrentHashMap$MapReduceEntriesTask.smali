.class final Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapReduceEntriesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;TU;>;"
    }
.end annotation


# instance fields
.field nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final reducer:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;"
        }
    .end annotation
.end field

.field final transformer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V
    .locals 0
    .param p2, "b"    # I
    .param p3, "i"    # I
    .param p4, "f"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
            "<TK;TV;*>;III[",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask",
            "<TK;TV;TU;>;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;+TU;>;",
            "Ljava/util/function/BiFunction",
            "<-TU;-TU;+TU;>;)V"
        }
    .end annotation

    .prologue
    .line 5648
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "nextRight":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .local p7, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    .local p8, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5649
    iput-object p7, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    .line 5650
    iput-object p8, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .line 5651
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 19

    .prologue
    .line 5656
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->transformer:Ljava/util/function/Function;

    .local v8, "transformer":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map$Entry<TK;TV;>;+TU;>;"
    if-eqz v8, :cond_7

    .line 5657
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    .local v9, "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    if-eqz v9, :cond_7

    .line 5658
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseIndex:I

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    if-lez v1, :cond_0

    .line 5659
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    .local v5, "f":I
    add-int v1, v5, v11

    ushr-int/lit8 v4, v1, 0x1

    .local v4, "h":I
    if-le v4, v11, :cond_0

    .line 5660
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->addToPendingCount(I)V

    .line 5661
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5662
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->batch:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->baseLimit:I

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 5663
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    move-object/from16 v2, p0

    .line 5661
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;Ljava/util/function/Function;Ljava/util/function/BiFunction;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5665
    .end local v4    # "h":I
    .end local v5    # "f":I
    :cond_0
    const/4 v13, 0x0

    .line 5666
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v12

    .local v12, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v12, :cond_3

    .line 5668
    invoke-interface {v8, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .local v18, "u":Ljava/lang/Object;, "TU;"
    if-eqz v18, :cond_1

    .line 5669
    if-nez v13, :cond_2

    move-object/from16 v13, v18

    .local v13, "r":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    :cond_2
    move-object/from16 v0, v18

    invoke-interface {v9, v13, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .restart local v13    # "r":Ljava/lang/Object;, "TU;"
    goto :goto_1

    .line 5671
    .end local v13    # "r":Ljava/lang/Object;, "TU;"
    .end local v18    # "u":Ljava/lang/Object;, "TU;"
    :cond_3
    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5673
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    .local v10, "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    if-eqz v10, :cond_7

    move-object/from16 v16, v10

    .line 5676
    check-cast v16, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5677
    .local v16, "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    iget-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .line 5678
    .local v14, "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :goto_3
    if-eqz v14, :cond_6

    .line 5680
    iget-object v15, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .local v15, "sr":Ljava/lang/Object;, "TU;"
    if-eqz v15, :cond_4

    .line 5681
    move-object/from16 v0, v16

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .local v17, "tr":Ljava/lang/Object;, "TU;"
    if-nez v17, :cond_5

    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    :goto_4
    move-object/from16 v0, v16

    iput-object v15, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    .line 5683
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_4
    iget-object v14, v14, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->nextRight:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    move-object/from16 v0, v16

    iput-object v14, v0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->rights:Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;

    .restart local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    goto :goto_3

    .line 5682
    .restart local v15    # "sr":Ljava/lang/Object;, "TU;"
    .restart local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v9, v0, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    .line 5673
    .end local v15    # "sr":Ljava/lang/Object;, "TU;"
    .end local v17    # "tr":Ljava/lang/Object;, "TU;"
    :cond_6
    invoke-virtual {v10}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v10

    goto :goto_2

    .line 5687
    .end local v9    # "reducer":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TU;-TU;+TU;>;"
    .end local v10    # "c":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v11    # "i":I
    .end local v12    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .end local v14    # "s":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    .end local v16    # "t":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    :cond_7
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 5652
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;, "Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask<TK;TV;TU;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapReduceEntriesTask;->result:Ljava/lang/Object;

    return-object v0
.end method
