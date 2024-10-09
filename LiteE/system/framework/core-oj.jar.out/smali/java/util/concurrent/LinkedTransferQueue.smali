.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final HEAD:J

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field private static final SWEEPVOTES:J

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TAIL:J

.field private static final TIMED:I = 0x3

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 414
    :goto_0
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    .line 1567
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1573
    :try_start_0
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1574
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1573
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    .line 1575
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1576
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "tail"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1575
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    .line 1577
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1578
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "sweepVotes"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1577
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 88
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 415
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1225
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1226
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    .line 1239
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1240
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 13
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v2, v10, p5

    .line 695
    .local v2, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 696
    .local v8, "w":Ljava/lang/Thread;
    const/4 v7, -0x1

    .line 697
    .local v7, "spins":I
    const/4 v6, 0x0

    .line 700
    :cond_0
    :goto_1
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 701
    .local v4, "item":Ljava/lang/Object;
    move-object/from16 v0, p3

    if-eq v4, v0, :cond_2

    .line 703
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 704
    move-object v5, v4

    .line 705
    .local v5, "itemE":Ljava/lang/Object;, "TE;"
    return-object v4

    .line 694
    .end local v2    # "deadline":J
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "itemE":Ljava/lang/Object;, "TE;"
    .end local v7    # "spins":I
    .end local v8    # "w":Ljava/lang/Thread;
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "deadline":J
    goto :goto_0

    .line 707
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v7    # "spins":I
    .restart local v8    # "w":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p4, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-gtz v9, :cond_4

    .line 708
    :cond_3
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 709
    move-object/from16 v0, p3

    invoke-virtual {p1, v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 710
    return-object p3

    .line 712
    :cond_4
    if-gez v7, :cond_5

    .line 713
    iget-boolean v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v9}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v7

    if-lez v7, :cond_0

    .line 714
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .local v6, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    goto :goto_1

    .line 716
    .end local v6    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_5
    if-lez v7, :cond_6

    .line 717
    add-int/lit8 v7, v7, -0x1

    .line 718
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_0

    .line 719
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 721
    :cond_6
    iget-object v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v9, :cond_7

    .line 722
    iput-object v8, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 724
    :cond_7
    if-eqz p4, :cond_8

    .line 725
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long p5, v2, v10

    .line 726
    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    .line 727
    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_1

    .line 730
    :cond_8
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 574
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .locals 6
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 578
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 570
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private countOfMode(Z)I
    .locals 4
    .param p1, "data"    # Z

    .prologue
    .line 791
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    const/4 v0, 0x0

    .line 792
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 793
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_3

    .line 794
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_1

    .line 795
    const/4 v3, 0x0

    return v3

    .line 796
    :cond_1
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_3

    .line 802
    :cond_2
    return v0

    .line 799
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1200
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2

    .line 1201
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1202
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1203
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 1204
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1205
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    .line 1204
    if-eqz v3, :cond_3

    .line 1206
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1207
    const/4 v3, 0x1

    return v3

    .line 1210
    :cond_1
    if-nez v0, :cond_3

    .line 1219
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1212
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    move-object v2, v1

    .line 1213
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_0

    .line 1214
    const/4 v2, 0x0

    .line 1215
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

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
    .line 1554
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1557
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1558
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1563
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .locals 1
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .prologue
    .line 740
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 741
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_0

    .line 742
    const/16 v0, 0xc0

    return v0

    .line 743
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    const/16 v0, 0x80

    return v0

    .line 745
    :cond_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 746
    const/16 v0, 0x40

    return v0

    .line 748
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private sweep()V
    .locals 4

    .prologue
    .line 1182
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1

    .line 1183
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1185
    move-object v1, v2

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_2

    .line 1194
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    return-void

    .line 1188
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    if-ne v2, v0, :cond_3

    .line 1190
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_0

    .line 1192
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_0
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 837
    move-object v5, p1

    .line 839
    .local v5, "x":[Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    .line 840
    .local v3, "size":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    .end local v3    # "size":I
    .local v4, "size":I
    :goto_0
    if-eqz v2, :cond_5

    .line 841
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 842
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v6, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v6, :cond_4

    .line 843
    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    .line 844
    if-nez v5, :cond_3

    .line 845
    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/Object;

    .line 848
    :cond_1
    :goto_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "size":I
    .restart local v3    # "size":I
    aput-object v0, v5, v4

    .line 852
    :goto_2
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_0

    :cond_2
    move v3, v4

    .line 843
    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_2

    .line 846
    .end local v3    # "size":I
    .restart local v4    # "size":I
    :cond_3
    array-length v6, v5

    if-ne v4, v6, :cond_1

    .line 847
    add-int/lit8 v6, v4, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 850
    :cond_4
    if-nez v0, :cond_b

    .line 855
    .end local v0    # "item":Ljava/lang/Object;
    :cond_5
    if-nez v5, :cond_6

    .line 856
    new-array v6, v8, [Ljava/lang/Object;

    return-object v6

    .line 857
    :cond_6
    if-eqz p1, :cond_9

    array-length v6, p1

    if-gt v4, v6, :cond_9

    .line 858
    if-eq p1, v5, :cond_7

    .line 859
    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :cond_7
    array-length v6, p1

    if-ge v4, v6, :cond_8

    .line 861
    aput-object v7, p1, v4

    .line 862
    :cond_8
    return-object p1

    .line 864
    :cond_9
    array-length v6, v5

    if-ne v4, v6, :cond_a

    .end local v5    # "x":[Ljava/lang/Object;
    :goto_3
    return-object v5

    .restart local v5    # "x":[Ljava/lang/Object;
    :cond_a
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    .restart local v0    # "item":Ljava/lang/Object;
    :cond_b
    move v3, v4

    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_2
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 6
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    .line 656
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    .line 658
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_1

    .line 659
    invoke-direct {p0, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 660
    return-object p1

    .line 662
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    return-object v5

    .line 664
    :cond_2
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_5

    .line 665
    if-eq v1, v2, :cond_3

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_3

    move-object v2, v3

    move-object v1, v3

    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    .line 666
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3
    if-eq v1, v0, :cond_4

    move-object v1, v0

    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4
    const/4 v1, 0x0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    .line 667
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 668
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0

    .line 670
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    if-eq v1, v2, :cond_9

    .line 671
    :cond_7
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_8

    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_9

    .line 672
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_9

    .line 673
    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    .line 674
    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_7

    .line 676
    :cond_9
    return-object v1
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
    .line 1538
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1539
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1540
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1542
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1543
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .locals 16
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 601
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 602
    :cond_0
    const/4 v4, 0x0

    .line 607
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v14, v2

    .local v14, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v14, :cond_2

    .line 608
    iget-boolean v10, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 609
    .local v10, "isData":Z
    iget-object v11, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 610
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v14, :cond_a

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    :goto_1
    if-ne v3, v10, :cond_a

    .line 611
    move/from16 v0, p2

    if-ne v10, v0, :cond_5

    .line 633
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_2
    if-eqz p3, :cond_d

    .line 634
    if-nez v4, :cond_3

    .line 635
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 636
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    .line 637
    .local v5, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1

    .line 639
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_d

    .line 640
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 610
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 613
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 614
    move-object v15, v14

    .local v15, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    if-eq v15, v2, :cond_8

    .line 615
    iget-object v13, v15, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 616
    .local v13, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v3, v2, :cond_9

    if-nez v13, :cond_7

    move-object v13, v15

    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 617
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 624
    :cond_8
    :goto_3
    iget-object v3, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 625
    move-object v12, v11

    .line 626
    .local v12, "itemE":Ljava/lang/Object;, "TE;"
    return-object v11

    .line 620
    .end local v12    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_8

    .line 621
    iget-object v15, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 620
    if-eqz v3, :cond_6

    goto :goto_3

    .line 629
    .end local v15    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_a
    iget-object v13, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 630
    .restart local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v14, v13, :cond_b

    move-object v14, v13

    goto :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v14, v2

    goto/16 :goto_0

    .line 640
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_c
    const/4 v7, 0x0

    goto :goto_2

    .line 642
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_d
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1288
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1289
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1502
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_1

    .line 1503
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 1504
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1505
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_0

    .line 1506
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1507
    const/4 v2, 0x1

    return v2

    .line 1509
    :cond_0
    if-nez v0, :cond_2

    .line 1513
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 1503
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_0
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
    .line 1371
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1372
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1373
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1375
    :cond_1
    const/4 v1, 0x0

    .line 1376
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1377
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1380
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
    .line 1388
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 1389
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1390
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1392
    :cond_1
    const/4 v1, 0x0

    .line 1393
    .local v1, "n":I
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_2

    .line 1394
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1397
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return v1
.end method

.method final firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 770
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_2

    .line 771
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 772
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_1

    .line 773
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 774
    return-object v2

    .line 776
    :cond_1
    if-nez v0, :cond_3

    .line 781
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    return-object v4

    .line 778
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public getWaitingConsumerCount()I
    .locals 1

    .prologue
    .line 1475
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .locals 4

    .prologue
    .line 1443
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v2, :cond_1

    .line 1444
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1445
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_2

    .line 1446
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    .line 1454
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 1449
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 1450
    const/4 v3, 0x1

    return v3

    .line 1451
    :cond_3
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1438
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1410
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1275
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1276
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1263
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1264
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    .line 1415
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v3, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_0
    if-eqz v3, :cond_2

    .line 1416
    iget-object v1, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1417
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v4, :cond_1

    .line 1418
    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_3

    .line 1419
    move-object v0, v1

    .line 1420
    .local v0, "e":Ljava/lang/Object;, "TE;"
    return-object v1

    .line 1423
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    if-nez v1, :cond_3

    .line 1428
    .end local v1    # "item":Ljava/lang/Object;
    :cond_2
    return-object v5

    .line 1425
    .restart local v1    # "item":Ljava/lang/Object;
    :cond_3
    iget-object v2, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v3, v2, :cond_0

    move-object v3, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1363
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

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
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 1356
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1357
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1358
    :cond_0
    return-object v6

    .line 1359
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1249
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1250
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 1525
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1490
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1471
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

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
    .line 1122
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .locals 1
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 759
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 760
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v0    # "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_0
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .locals 7
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
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 1348
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1349
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    .line 1350
    return-object v6

    .line 1351
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1352
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 882
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 807
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 809
    :cond_0
    const/4 v1, 0x0

    .line 810
    .local v1, "charLength":I
    const/4 v6, 0x0

    .line 811
    .local v6, "size":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v4, v3

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_0
    if-eqz v4, :cond_5

    .line 812
    iget-object v2, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 813
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v8, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v8, :cond_4

    .line 814
    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_2

    .line 815
    if-nez v0, :cond_3

    .line 816
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    .line 819
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    aput-object v5, v0, v7

    .line 821
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    .line 825
    .end local v5    # "s":Ljava/lang/String;
    :goto_2
    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v4, v3, :cond_0

    move-object v4, v3

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_0

    :cond_2
    move v6, v7

    .line 814
    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_2

    .line 817
    .end local v6    # "size":I
    .restart local v7    # "size":I
    :cond_3
    array-length v8, v0

    if-ne v7, v8, :cond_1

    .line 818
    mul-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "a":[Ljava/lang/String;
    goto :goto_1

    .line 823
    .end local v0    # "a":[Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_7

    .line 829
    .end local v2    # "item":Ljava/lang/Object;
    :cond_5
    if-nez v7, :cond_6

    .line 830
    const-string/jumbo v8, "[]"

    return-object v8

    .line 832
    :cond_6
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v2    # "item":Ljava/lang/Object;
    :cond_7
    move v6, v7

    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_2
.end method

.method public transfer(Ljava/lang/Object;)V
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
    .line 1318
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1320
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1322
    :cond_0
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1303
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
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
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1340
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1341
    return v2

    .line 1342
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1343
    const/4 v0, 0x0

    return v0

    .line 1344
    :cond_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .locals 5
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 1136
    iput-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    .line 1144
    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_4

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_4

    .line 1145
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1146
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_0

    .line 1147
    if-eq v2, p2, :cond_4

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    .line 1146
    if-eqz v4, :cond_4

    .line 1149
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1150
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_1

    if-ne v0, p2, :cond_2

    .line 1151
    :cond_1
    return-void

    .line 1150
    :cond_2
    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1160
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_4

    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_4

    .line 1162
    :cond_3
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    .line 1163
    .local v3, "v":I
    const/16 v4, 0x20

    if-ge v3, v4, :cond_7

    .line 1164
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1175
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "v":I
    :cond_4
    :goto_1
    return-void

    .line 1154
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1155
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_6

    .line 1156
    return-void

    .line 1157
    :cond_6
    if-eq v1, v0, :cond_0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1158
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_0

    .line 1167
    .end local v1    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1168
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    goto :goto_1
.end method
