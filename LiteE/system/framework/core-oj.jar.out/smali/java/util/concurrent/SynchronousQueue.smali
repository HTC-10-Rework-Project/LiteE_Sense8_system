.class public Ljava/util/concurrent/SynchronousQueue;
.super Ljava/util/AbstractQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;,
        Ljava/util/concurrent/SynchronousQueue$TransferQueue;,
        Ljava/util/concurrent/SynchronousQueue$TransferStack;,
        Ljava/util/concurrent/SynchronousQueue$Transferer;,
        Ljava/util/concurrent/SynchronousQueue$WaitQueue;
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
.field static final MAX_TIMED_SPINS:I

.field static final MAX_UNTIMED_SPINS:I

.field static final SPIN_FOR_TIMEOUT_THRESHOLD:J = 0x3e8L

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field private qlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile transient transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue$Transferer",
            "<TE;>;"
        }
    .end annotation
.end field

.field private waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

.field private waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    .line 196
    :goto_0
    sput v1, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    .line 204
    sget v1, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    mul-int/lit8 v1, v1, 0x10

    sput v1, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    .line 1206
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 88
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 197
    .end local v0    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/16 v1, 0x20

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 851
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    .line 852
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "fair"    # Z

    .prologue
    .line 860
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 861
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 862
    return-void

    .line 861
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1196
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1197
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    instance-of v0, v0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    if-eqz v0, :cond_0

    .line 1198
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    .line 1201
    :goto_0
    return-void

    .line 1200
    :cond_0
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    instance-of v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    .line 1174
    .local v0, "fair":Z
    if-eqz v0, :cond_0

    .line 1175
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1176
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1177
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1184
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1185
    return-void

    .line 1180
    :cond_0
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->qlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1181
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingProducers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    .line 1182
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->waitingConsumers:Ljava/util/concurrent/SynchronousQueue$WaitQueue;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 989
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 999
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1115
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1116
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1117
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1119
    :cond_1
    const/4 v1, 0x0

    .line 1120
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1121
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1124
    :cond_2
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 3
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1135
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1136
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1137
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1138
    :cond_1
    const/4 v1, 0x0

    .line 1139
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/SynchronousQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1140
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 961
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x1

    return v0
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
    .line 1064
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 908
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 909
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
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
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x1

    .line 890
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 891
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 892
    return v1

    .line 893
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 894
    const/4 v0, 0x0

    return v0

    .line 895
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
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
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v5, 0x0

    .line 937
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v5, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 938
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 939
    :cond_0
    return-object v0

    .line 940
    :cond_1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
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
    .line 872
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 873
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 874
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 875
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 877
    :cond_1
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 981
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1010
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

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
    .line 1075
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 6
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
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v5, 0x0

    .line 920
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue;->transferer:Ljava/util/concurrent/SynchronousQueue$Transferer;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4, v2, v3}, Ljava/util/concurrent/SynchronousQueue$Transferer;->transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 921
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 922
    return-object v0

    .line 923
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 924
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1095
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 1097
    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1105
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>;"
    const-string/jumbo v0, "[]"

    return-object v0
.end method
