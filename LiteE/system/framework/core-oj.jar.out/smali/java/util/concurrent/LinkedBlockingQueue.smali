.class public Ljava/util/concurrent/LinkedBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedBlockingQueue$Itr;,
        Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;,
        Ljava/util/concurrent/LinkedBlockingQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 251
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 260
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 158
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 161
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 261
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 262
    :cond_0
    iput p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    .line 263
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 264
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v4, 0x7fffffff

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 278
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 279
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "n":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 284
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    .line 292
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    throw v4

    .line 285
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v2, v4, :cond_1

    .line 286
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Queue full"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_1
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v4, v0}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    return-void
.end method

.method private dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 213
    .local v1, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 214
    .local v0, "first":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iput-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 215
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 216
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 217
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 218
    return-object v2
.end method

.method private enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 202
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 1001
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1003
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1004
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 1009
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1010
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1012
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .prologue
    .line 171
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 172
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 178
    return-void

    .line 175
    :catchall_0
    move-exception v1

    .line 176
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 185
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 191
    return-void

    .line 188
    :catchall_0
    move-exception v1

    .line 189
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 975
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 978
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 981
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 982
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 981
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_0

    .line 985
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 989
    return-void

    .line 986
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v1

    .line 987
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 986
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 672
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 674
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-eqz v1, :cond_0

    .line 675
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 676
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 674
    move-object v0, v1

    goto :goto_0

    .line 678
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 680
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    iget v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v2, v3, :cond_1

    .line 681
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 685
    return-void

    .line 682
    .end local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 683
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 682
    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v2, 0x0

    .line 569
    if-nez p1, :cond_0

    return v2

    .line 570
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 572
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 573
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const/4 v1, 0x1

    .line 577
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 574
    return v1

    .line 572
    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 575
    return v2

    .line 576
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v1

    .line 577
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 576
    throw v1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 9
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v6, 0x0

    .line 704
    if-nez p1, :cond_0

    .line 705
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 706
    :cond_0
    if-ne p1, p0, :cond_1

    .line 707
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 708
    :cond_1
    if-gtz p2, :cond_2

    .line 709
    return v6

    .line 710
    :cond_2
    const/4 v4, 0x0

    .line 711
    .local v4, "signalNotFull":Z
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 712
    .local v5, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 714
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 716
    .local v2, "n":I
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 717
    .local v0, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v1, 0x0

    .line 719
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 720
    :try_start_1
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 721
    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v6, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 722
    const/4 v6, 0x0

    iput-object v6, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 723
    iput-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    move-object v0, v3

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_3
    if-lez v1, :cond_4

    .line 732
    :try_start_2
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 733
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v7, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v6

    iget v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v7, :cond_6

    const/4 v4, 0x1

    .line 737
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 738
    if-eqz v4, :cond_5

    .line 739
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 727
    :cond_5
    return v2

    .line 733
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 728
    :catchall_0
    move-exception v6

    .line 730
    if-lez v1, :cond_7

    .line 732
    :try_start_3
    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 733
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v7

    iget v8, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v7, v8, :cond_9

    const/4 v4, 0x1

    .line 728
    :cond_7
    :goto_2
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 736
    .end local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_1
    move-exception v6

    .line 737
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 738
    if-eqz v4, :cond_8

    .line 739
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 736
    :cond_8
    throw v6

    .line 733
    .restart local v0    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method fullyLock()V
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 226
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .prologue
    .line 233
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 234
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    .line 411
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 412
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 413
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v5, v6, :cond_1

    .line 414
    return v4

    .line 415
    :cond_1
    const/4 v0, -0x1

    .line 416
    .local v0, "c":I
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 417
    .local v2, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 418
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 420
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_2

    .line 421
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 422
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 423
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_2

    .line 424
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 429
    if-nez v0, :cond_3

    .line 430
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 431
    :cond_3
    if-ltz v0, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4

    .line 426
    :catchall_0
    move-exception v4

    .line 427
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 426
    throw v4
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 375
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 376
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 377
    .local v2, "nanos":J
    const/4 v0, -0x1

    .line 378
    .local v0, "c":I
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 379
    .local v4, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 380
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 382
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v6, :cond_2

    .line 383
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 392
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 384
    return v8

    .line 385
    :cond_1
    :try_start_1
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 387
    :cond_2
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v5, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 388
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 389
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3

    .line 390
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 394
    if-nez v0, :cond_4

    .line 395
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 396
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 391
    :catchall_0
    move-exception v5

    .line 392
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    throw v5
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v1, 0x0

    .line 505
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 506
    return-object v1

    .line 507
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 508
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 510
    :try_start_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 510
    return-object v1

    .line 511
    :catchall_0
    move-exception v1

    .line 512
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 483
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 484
    const/4 v4, 0x0

    return-object v4

    .line 485
    :cond_0
    const/4 v3, 0x0

    .line 486
    .local v3, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    .line 487
    .local v0, "c":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 488
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 490
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    .line 491
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    .line 492
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 493
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 494
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 499
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_2

    .line 500
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 501
    :cond_2
    return-object v3

    .line 496
    :catchall_0
    move-exception v4

    .line 497
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    throw v4
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 457
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v5, 0x0

    .line 458
    .local v5, "x":Ljava/lang/Object;, "TE;"
    const/4 v0, -0x1

    .line 459
    .local v0, "c":I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 460
    .local v2, "nanos":J
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 461
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 462
    .local v4, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 464
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 465
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    .line 466
    const/4 v6, 0x0

    .line 474
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 466
    return-object v6

    .line 467
    :cond_0
    :try_start_1
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v5

    .line 470
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 471
    const/4 v6, 0x1

    if-le v0, v6, :cond_2

    .line 472
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 476
    iget v6, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v6, :cond_3

    .line 477
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 478
    :cond_3
    return-object v5

    .line 473
    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v6

    .line 474
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 473
    throw v6
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 335
    :cond_0
    const/4 v0, -0x1

    .line 336
    .local v0, "c":I
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 337
    .local v2, "node":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 338
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 339
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 349
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v4, v5, :cond_1

    .line 350
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v4

    .line 357
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 356
    throw v4

    .line 352
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->enqueue(Ljava/util/concurrent/LinkedBlockingQueue$Node;)V

    .line 353
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 354
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_2

    .line 355
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 359
    if-nez v0, :cond_3

    .line 360
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotEmpty()V

    .line 361
    :cond_3
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 321
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v3, 0x0

    .line 543
    if-nez p1, :cond_0

    return v3

    .line 544
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 546
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v1, "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 549
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    const/4 v2, 0x1

    .line 556
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 551
    return v2

    .line 548
    :cond_1
    move-object v1, v0

    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 554
    return v3

    .line 555
    .end local v0    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1    # "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v2

    .line 556
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 555
    throw v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    const/4 v0, -0x1

    .line 437
    .local v0, "c":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 438
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 439
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 441
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v4

    .line 449
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 448
    throw v4

    .line 444
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    .line 445
    .local v3, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 446
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 447
    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 451
    iget v4, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_2

    .line 452
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->signalNotFull()V

    .line 453
    :cond_2
    return-object v3
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 595
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 597
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 598
    .local v4, "size":I
    new-array v0, v4, [Ljava/lang/Object;

    .line 599
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 600
    .local v1, "k":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_0

    .line 601
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 600
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 602
    return-object v0

    .line 603
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    .line 604
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 603
    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 647
    :try_start_0
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 648
    .local v4, "size":I
    array-length v5, p1

    if-ge v5, v4, :cond_0

    .line 650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 649
    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 652
    :cond_0
    const/4 v1, 0x0

    .line 653
    .local v1, "k":I
    iget-object v5, p0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v3, :cond_1

    .line 654
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 653
    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 655
    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    .line 656
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 657
    return-object p1

    .line 658
    .end local v2    # "k":I
    .end local v3    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    .line 659
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 658
    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    .local p1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .local p2, "trail":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 524
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 525
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    .line 526
    iput-object p2, p0, Ljava/util/concurrent/LinkedBlockingQueue;->last:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 527
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 529
    :cond_1
    return-void
.end method
