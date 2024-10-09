.class public Ljava/util/concurrent/CopyOnWriteArrayList;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;,
        Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOCK:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x785d9fd546ab90c3L


# instance fields
.field private volatile transient elements:[Ljava/lang/Object;

.field final transient lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1550
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/CopyOnWriteArrayList;->U:Lsun/misc/Unsafe;

    .line 1554
    :try_start_0
    sget-object v1, Ljava/util/concurrent/CopyOnWriteArrayList;->U:Lsun/misc/Unsafe;

    .line 1555
    const-class v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string/jumbo v3, "lock"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1554
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CopyOnWriteArrayList;->LOCK:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 125
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v1, v2, :cond_1

    .line 139
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "elements":[Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 148
    return-void

    .line 141
    .end local v0    # "elements":[Ljava/lang/Object;
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 144
    .restart local v0    # "elements":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 145
    array-length v1, v0

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "toCopyIn":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    .line 158
    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method private addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 9
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 599
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 600
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 601
    .local v1, "current":[Ljava/lang/Object;
    array-length v3, v1

    .line 602
    .local v3, "len":I
    if-eq p2, v1, :cond_2

    .line 604
    array-length v5, p2

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 605
    .local v0, "common":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 606
    aget-object v5, v1, v2

    aget-object v7, p2, v2

    if-eq v5, v7, :cond_0

    .line 607
    aget-object v5, v1, v2

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 606
    if-eqz v5, :cond_0

    monitor-exit v6

    .line 608
    return v8

    .line 605
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_1
    :try_start_1
    invoke-static {p1, v1, v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ltz v5, :cond_2

    monitor-exit v6

    .line 610
    return v8

    .line 612
    .end local v0    # "common":I
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v5, v3, 0x1

    :try_start_2
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 613
    .local v4, "newElements":[Ljava/lang/Object;
    aput-object p1, v4, v3

    .line 614
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 599
    .end local v1    # "current":[Ljava/lang/Object;
    .end local v3    # "len":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private get([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    aget-object v0, p1, p2

    return-object v0
.end method

.method private static indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "fence"    # I

    .prologue
    .line 190
    if-nez p0, :cond_1

    .line 191
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 192
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 193
    return v0

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p3, :cond_3

    .line 196
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    return v0

    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "elements"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 210
    if-nez p0, :cond_1

    .line 211
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 212
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 213
    return v0

    .line 211
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_1
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 216
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    return v0

    .line 215
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 219
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method static outOfBounds(II)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I
    .param p1, "size"    # I

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 925
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 928
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V

    .line 931
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 932
    .local v2, "len":I
    new-array v0, v2, [Ljava/lang/Object;

    .line 935
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 936
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V

    .line 938
    return-void
.end method

.method private remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "snapshot"    # [Ljava/lang/Object;
    .param p3, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v8, 0x0

    .line 519
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 520
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, "current":[Ljava/lang/Object;
    array-length v2, v0

    .line 522
    .local v2, "len":I
    if-eq p2, v0, :cond_0

    .line 523
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 524
    .local v4, "prefix":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 525
    aget-object v5, v0, v1

    aget-object v7, p2, v1

    if-eq v5, v7, :cond_1

    .line 526
    aget-object v5, v0, v1

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 525
    if-eqz v5, :cond_1

    .line 527
    move p3, v1

    .line 539
    .end local v1    # "i":I
    .end local v4    # "prefix":I
    :cond_0
    add-int/lit8 v5, v2, -0x1

    new-array v3, v5, [Ljava/lang/Object;

    .line 540
    .local v3, "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v3, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    add-int/lit8 v5, p3, 0x1

    .line 543
    sub-int v7, v2, p3

    add-int/lit8 v7, v7, -0x1

    .line 541
    invoke-static {v0, v5, v3, p3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 524
    .end local v3    # "newElements":[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v4    # "prefix":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_2
    if-lt p3, v2, :cond_3

    monitor-exit v6

    .line 532
    return v8

    .line 533
    :cond_3
    :try_start_1
    aget-object v5, v0, p3

    if-eq v5, p1, :cond_0

    .line 535
    invoke-static {p1, v0, p3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p3

    .line 536
    if-gez p3, :cond_0

    monitor-exit v6

    .line 537
    return v8

    .line 519
    .end local v0    # "current":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "prefix":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private resetLock()V
    .locals 4

    .prologue
    .line 1548
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    sget-object v0, Ljava/util/concurrent/CopyOnWriteArrayList;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CopyOnWriteArrayList;->LOCK:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1549
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 906
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 908
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 911
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 912
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 451
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 453
    .local v1, "len":I
    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 454
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "len":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 456
    .restart local v0    # "elements":[Ljava/lang/Object;
    .restart local v1    # "len":I
    :cond_1
    sub-int v3, v1, p1

    .line 457
    .local v3, "numMoved":I
    if-nez v3, :cond_2

    .line 458
    add-int/lit8 v4, v1, 0x1

    :try_start_1
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 465
    .local v2, "newElements":[Ljava/lang/Object;
    :goto_0
    aput-object p2, v2, p1

    .line 466
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 468
    return-void

    .line 460
    .end local v2    # "newElements":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v4, v1, 0x1

    :try_start_2
    new-array v2, v4, [Ljava/lang/Object;

    .line 461
    .restart local v2    # "newElements":[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    add-int/lit8 v4, p1, 0x1

    invoke-static {v0, p1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 435
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 436
    .local v2, "newElements":[Ljava/lang/Object;
    aput-object p1, v2, v1

    .line 437
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 432
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "len":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v7, 0x0

    .line 808
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 809
    .local v0, "cs":[Ljava/lang/Object;
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 810
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 811
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 812
    .local v2, "len":I
    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 813
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 814
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "len":I
    :cond_1
    :try_start_1
    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    monitor-exit v6

    .line 815
    return v7

    .line 816
    :cond_2
    sub-int v4, v2, p1

    .line 818
    .local v4, "numMoved":I
    if-nez v4, :cond_3

    .line 819
    :try_start_2
    array-length v5, v0

    add-int/2addr v5, v2

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 827
    .local v3, "newElements":[Ljava/lang/Object;
    :goto_0
    array-length v5, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 829
    const/4 v5, 0x1

    monitor-exit v6

    return v5

    .line 821
    .end local v3    # "newElements":[Ljava/lang/Object;
    :cond_3
    :try_start_3
    array-length v5, v0

    add-int/2addr v5, v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 822
    .restart local v3    # "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v5, v3, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    array-length v5, v0

    add-int/2addr v5, p1

    .line 823
    invoke-static {v1, p1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v6, 0x0

    .line 773
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v4, v5, :cond_0

    .line 774
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 775
    .local v0, "cs":[Ljava/lang/Object;
    :goto_0
    array-length v4, v0

    if-nez v4, :cond_1

    .line 776
    return v6

    .line 774
    .end local v0    # "cs":[Ljava/lang/Object;
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "cs":[Ljava/lang/Object;
    goto :goto_0

    .line 777
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_1
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 778
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 779
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v1

    .line 780
    .local v2, "len":I
    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, [Ljava/lang/Object;

    if-ne v4, v6, :cond_2

    .line 781
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :goto_1
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 783
    :cond_2
    :try_start_1
    array-length v4, v0

    add-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 784
    .local v3, "newElements":[Ljava/lang/Object;
    array-length v4, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 777
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "len":I
    .end local v3    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public addAllAbsent(Ljava/util/Collection;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v9, 0x0

    .line 729
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 730
    .local v2, "cs":[Ljava/lang/Object;
    array-length v8, v2

    if-nez v8, :cond_0

    .line 731
    return v9

    .line 732
    :cond_0
    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 733
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v4

    .line 734
    .local v4, "elements":[Ljava/lang/Object;
    array-length v6, v4

    .line 735
    .local v6, "len":I
    const/4 v0, 0x0

    .line 737
    .local v0, "added":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v1, v0

    .end local v0    # "added":I
    .local v1, "added":I
    :goto_0
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 738
    aget-object v3, v2, v5

    .line 739
    .local v3, "e":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v3, v4, v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_1

    .line 740
    const/4 v8, 0x0

    invoke-static {v3, v2, v8, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v8

    if-gez v8, :cond_1

    .line 741
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "added":I
    .restart local v0    # "added":I
    aput-object v3, v2, v1

    .line 737
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0    # "added":I
    .restart local v1    # "added":I
    goto :goto_0

    :cond_1
    move v0, v1

    .line 741
    .end local v1    # "added":I
    .restart local v0    # "added":I
    goto :goto_1

    .line 743
    .end local v0    # "added":I
    .end local v3    # "e":Ljava/lang/Object;
    .restart local v1    # "added":I
    :cond_2
    if-lez v1, :cond_3

    .line 744
    add-int v8, v6, v1

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    .line 745
    .local v7, "newElements":[Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v2, v8, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    invoke-virtual {p0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "newElements":[Ljava/lang/Object;
    :cond_3
    monitor-exit v9

    .line 748
    return v1

    .line 732
    .end local v1    # "added":I
    .end local v4    # "elements":[Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "len":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 589
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 590
    .local v0, "snapshot":[Ljava/lang/Object;
    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v1

    .line 591
    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 757
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 760
    return-void

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 302
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 303
    .local v0, "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->resetLock()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    return-object v0

    .line 305
    .end local v0    # "clone":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "elements":[Ljava/lang/Object;
    array-length v2, v0

    invoke-static {p1, v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v5, 0x0

    .line 630
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 631
    .local v2, "elements":[Ljava/lang/Object;
    array-length v3, v2

    .line 632
    .local v3, "len":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 633
    .local v0, "e":Ljava/lang/Object;
    invoke-static {v0, v2, v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v4

    if-gez v4, :cond_0

    .line 634
    return v5

    .line 636
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 970
    if-ne p1, p0, :cond_0

    .line 971
    return v8

    .line 972
    :cond_0
    instance-of v5, p1, Ljava/util/List;

    if-nez v5, :cond_1

    .line 973
    return v7

    :cond_1
    move-object v4, p1

    .line 975
    check-cast v4, Ljava/util/List;

    .line 976
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 977
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 978
    .local v0, "elements":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v0

    .local v3, "len":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 979
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v0, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 980
    :cond_2
    return v7

    .line 978
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 981
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 982
    return v7

    .line 983
    :cond_5
    return v8
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 835
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 836
    .local v1, "x":Ljava/lang/Object;
    move-object v0, v1

    .line 837
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v3, 0x0

    .line 994
    const/4 v0, 0x1

    .line 995
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 996
    .local v1, "x":Ljava/lang/Object;
    mul-int/lit8 v7, v0, 0x1f

    if-nez v1, :cond_0

    move v2, v3

    :goto_1
    add-int v0, v7, v2

    .line 995
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 997
    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 239
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {p1, v0, p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 267
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 268
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 289
    .local v0, "elements":[Ljava/lang/Object;
    invoke-static {p1, v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 1039
    .local v1, "len":I
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    .line 1040
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->outOfBounds(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1042
    :cond_1
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;

    invoke-direct {v2, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList$COWIterator;-><init>([Ljava/lang/Object;I)V

    return-object v2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 479
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 480
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 481
    .local v1, "len":I
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 482
    .local v4, "oldValue":Ljava/lang/Object;, "TE;"
    sub-int v5, v1, p1

    add-int/lit8 v3, v5, -0x1

    .line 483
    .local v3, "numMoved":I
    if-nez v3, :cond_0

    .line 484
    add-int/lit8 v5, v1, -0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    .line 492
    return-object v4

    .line 486
    :cond_0
    add-int/lit8 v5, v1, -0x1

    :try_start_1
    new-array v2, v5, [Ljava/lang/Object;

    .line 487
    .local v2, "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v2, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    add-int/lit8 v5, p1, 0x1

    invoke-static {v0, v5, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 478
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "len":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    .end local v3    # "numMoved":I
    .end local v4    # "oldValue":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    const/4 v2, 0x0

    .line 509
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 510
    .local v1, "snapshot":[Ljava/lang/Object;
    array-length v3, v1

    invoke-static {p1, v1, v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v0

    .line 511
    .local v0, "index":I
    if-gez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x0

    .line 656
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 657
    :cond_0
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 658
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 659
    .local v1, "elements":[Ljava/lang/Object;
    array-length v3, v1

    .line 660
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 662
    const/4 v4, 0x0

    .line 663
    .local v4, "newlen":I
    new-array v6, v3, [Ljava/lang/Object;

    .line 664
    .local v6, "temp":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "newlen":I
    .local v5, "newlen":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 665
    aget-object v0, v1, v2

    .line 666
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 667
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    aput-object v0, v6, v5

    .line 664
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "newlen":I
    .restart local v5    # "newlen":I
    goto :goto_0

    .line 669
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    if-eq v5, v3, :cond_2

    .line 670
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    const/4 v7, 0x1

    monitor-exit v8

    return v7

    .end local v2    # "i":I
    .end local v5    # "newlen":I
    .end local v6    # "temp":[Ljava/lang/Object;
    :cond_2
    monitor-exit v8

    .line 674
    return v9

    .line 657
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v3    # "len":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "element":Ljava/lang/Object;
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v5    # "newlen":I
    .restart local v6    # "temp":[Ljava/lang/Object;
    :cond_3
    move v4, v5

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    goto :goto_1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    const/4 v10, 0x0

    .line 842
    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8

    .line 843
    :cond_0
    iget-object v9, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 844
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 845
    .local v1, "elements":[Ljava/lang/Object;
    array-length v3, v1

    .line 847
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 848
    aget-object v0, v1, v2

    .line 849
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 850
    move v5, v2

    .line 851
    .local v5, "newlen":I
    add-int/lit8 v8, v3, -0x1

    new-array v4, v8, [Ljava/lang/Object;

    .line 852
    .local v4, "newElements":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v1, v8, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "newlen":I
    .local v6, "newlen":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 854
    aget-object v7, v1, v2

    .line 855
    .local v7, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 856
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "newlen":I
    .restart local v5    # "newlen":I
    aput-object v7, v4, v6

    .line 853
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "newlen":I
    .restart local v6    # "newlen":I
    goto :goto_1

    .line 858
    .end local v7    # "x":Ljava/lang/Object;, "TE;"
    :cond_1
    add-int/lit8 v8, v3, -0x1

    if-ne v6, v8, :cond_2

    .end local v4    # "newElements":[Ljava/lang/Object;
    :goto_3
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    const/4 v8, 0x1

    monitor-exit v9

    return v8

    .line 860
    .restart local v4    # "newElements":[Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_3

    .line 847
    .end local v4    # "newElements":[Ljava/lang/Object;
    .end local v6    # "newlen":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    monitor-exit v9

    .line 864
    return v10

    .line 843
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "newElements":[Ljava/lang/Object;
    .restart local v6    # "newlen":I
    .restart local v7    # "x":Ljava/lang/Object;, "TE;"
    :cond_5
    move v5, v6

    .end local v6    # "newlen":I
    .restart local v5    # "newlen":I
    goto :goto_2
.end method

.method removeRange(II)V
    .locals 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 562
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 563
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 564
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 566
    .local v1, "len":I
    if-ltz p1, :cond_0

    if-le p2, v1, :cond_1

    .line 567
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "len":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 566
    .restart local v0    # "elements":[Ljava/lang/Object;
    .restart local v1    # "len":I
    :cond_1
    if-lt p2, p1, :cond_0

    .line 568
    sub-int v5, p2, p1

    sub-int v3, v1, v5

    .line 569
    .local v3, "newlen":I
    sub-int v4, v1, p2

    .line 570
    .local v4, "numMoved":I
    if-nez v4, :cond_2

    .line 571
    :try_start_1
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v6

    .line 580
    return-void

    .line 573
    :cond_2
    :try_start_2
    new-array v2, v3, [Ljava/lang/Object;

    .line 574
    .local v2, "newElements":[Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v2, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-static {v0, p2, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 870
    :cond_0
    iget-object v6, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 871
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 872
    .local v1, "elements":[Ljava/lang/Object;
    array-length v3, v1

    .line 873
    .local v3, "len":I
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 874
    .local v4, "newElements":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 875
    aget-object v0, v1, v2

    .line 876
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 878
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 880
    return-void

    .line 870
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v9, 0x0

    .line 695
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 696
    :cond_0
    iget-object v8, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 697
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 698
    .local v1, "elements":[Ljava/lang/Object;
    array-length v3, v1

    .line 699
    .local v3, "len":I
    if-eqz v3, :cond_2

    .line 701
    const/4 v4, 0x0

    .line 702
    .local v4, "newlen":I
    new-array v6, v3, [Ljava/lang/Object;

    .line 703
    .local v6, "temp":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "newlen":I
    .local v5, "newlen":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 704
    aget-object v0, v1, v2

    .line 705
    .local v0, "element":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 706
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    aput-object v0, v6, v5

    .line 703
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "newlen":I
    .restart local v5    # "newlen":I
    goto :goto_0

    .line 708
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    if-eq v5, v3, :cond_2

    .line 709
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const/4 v7, 0x1

    monitor-exit v8

    return v7

    .end local v2    # "i":I
    .end local v5    # "newlen":I
    .end local v6    # "temp":[Ljava/lang/Object;
    :cond_2
    monitor-exit v8

    .line 713
    return v9

    .line 696
    .end local v1    # "elements":[Ljava/lang/Object;
    .end local v3    # "len":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "element":Ljava/lang/Object;
    .restart local v1    # "elements":[Ljava/lang/Object;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v5    # "newlen":I
    .restart local v6    # "temp":[Ljava/lang/Object;
    :cond_3
    move v4, v5

    .end local v5    # "newlen":I
    .restart local v4    # "newlen":I
    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v5, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 409
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 410
    .local v0, "elements":[Ljava/lang/Object;
    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 412
    .local v3, "oldValue":Ljava/lang/Object;, "TE;"
    if-eq v3, p2, :cond_0

    .line 413
    array-length v1, v0

    .line 414
    .local v1, "len":I
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 415
    .local v2, "newElements":[Ljava/lang/Object;
    aput-object p2, v2, p1

    .line 416
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "len":I
    .end local v2    # "newElements":[Ljava/lang/Object;
    :goto_0
    monitor-exit v5

    .line 421
    return-object v3

    .line 419
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method final setArray([Ljava/lang/Object;)V
    .locals 0
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 118
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->elements:[Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v4, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 884
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "elements":[Ljava/lang/Object;
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 886
    .local v2, "newElements":[Ljava/lang/Object;
    move-object v1, v2

    .line 887
    .local v1, "es":[Ljava/lang/Object;, "[TE;"
    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 888
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->setArray([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 890
    return-void

    .line 883
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "es":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "newElements":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1061
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x410

    .line 1060
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/CopyOnWriteArrayList;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1161
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1162
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 1163
    .local v1, "len":I
    if-ltz p1, :cond_0

    if-le p2, v1, :cond_1

    .line 1164
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    .end local v0    # "elements":[Ljava/lang/Object;
    .end local v1    # "len":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1163
    .restart local v0    # "elements":[Ljava/lang/Object;
    .restart local v1    # "len":I
    :cond_1
    if-gt p1, p2, :cond_0

    .line 1165
    :try_start_1
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;

    invoke-direct {v2, p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubList;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 325
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 369
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 370
    .local v0, "elements":[Ljava/lang/Object;
    array-length v1, v0

    .line 371
    .local v1, "len":I
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 374
    :cond_0
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 376
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 377
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
