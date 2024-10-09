.class final Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;
.super Ljava/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForEachMappingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$BulkTask",
        "<TK;TV;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final action:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V
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
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 5057
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$BulkTask;, "Ljava/util/concurrent/ConcurrentHashMap$BulkTask<TK;TV;*>;"
    .local p5, "t":[Ljava/util/concurrent/ConcurrentHashMap$Node;, "[Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    .local p6, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 5058
    iput-object p6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->action:Ljava/util/function/BiConsumer;

    .line 5059
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 9

    .prologue
    .line 5062
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;, "Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->action:Ljava/util/function/BiConsumer;

    .local v6, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz v6, :cond_2

    .line 5063
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseIndex:I

    .local v7, "i":I
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    if-lez v0, :cond_0

    .line 5064
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseLimit:I

    .local v4, "f":I
    add-int v0, v4, v7

    ushr-int/lit8 v3, v0, 0x1

    .local v3, "h":I
    if-le v3, v7, :cond_0

    .line 5065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->addToPendingCount(I)V

    .line 5066
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    .line 5067
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    ushr-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseLimit:I

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->tab:[Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, p0

    .line 5066
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljava/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_0

    .line 5070
    .end local v3    # "h":I
    .end local v4    # "f":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->advance()Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v8

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    if-eqz v8, :cond_1

    .line 5071
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v1, v8, Ljava/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v6, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 5072
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->propagateCompletion()V

    .line 5074
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_2
    return-void
.end method
