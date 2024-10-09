.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntryIterator;,
        Ljava/util/IdentityHashMap$EntrySet;,
        Ljava/util/IdentityHashMap$EntrySpliterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;,
        Ljava/util/IdentityHashMap$KeyIterator;,
        Ljava/util/IdentityHashMap$KeySet;,
        Ljava/util/IdentityHashMap$KeySpliterator;,
        Ljava/util/IdentityHashMap$ValueIterator;,
        Ljava/util/IdentityHashMap$ValueSpliterator;,
        Ljava/util/IdentityHashMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20

.field private static final MAXIMUM_CAPACITY:I = 0x20000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field static final NULL_KEY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field size:I

.field transient table:[Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "-this"    # Ljava/util/IdentityHashMap;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "-this"    # Ljava/util/IdentityHashMap;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "length"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 210
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 211
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "expectedMaxSize"    # I

    .prologue
    .line 222
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 223
    if-gez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expectedMaxSize is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-static {p1}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 267
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 268
    return-void
.end method

.method private static capacity(I)I
    .locals 1
    .param p0, "expectedMaxSize"    # I

    .prologue
    .line 239
    const v0, 0xaaaaaaa

    if-le p0, v0, :cond_0

    const/high16 v0, 0x20000000

    .line 238
    :goto_0
    return v0

    .line 240
    :cond_0
    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 241
    :cond_1
    shl-int/lit8 v0, p0, 0x1

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_0
.end method

.method private closeDeletion(I)V
    .locals 8
    .param p1, "d"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 583
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 584
    .local v4, "tab":[Ljava/lang/Object;
    array-length v2, v4

    .line 591
    .local v2, "len":I
    invoke-static {p1, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 599
    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    .line 600
    .local v3, "r":I
    if-ge v0, v3, :cond_2

    if-le v3, p1, :cond_0

    if-gt p1, v0, :cond_2

    .line 601
    :cond_0
    :goto_1
    aput-object v1, v4, p1

    .line 602
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aput-object v6, v4, v5

    .line 603
    aput-object v7, v4, v0

    .line 604
    add-int/lit8 v5, v0, 0x1

    aput-object v7, v4, v5

    .line 605
    move p1, v0

    .line 592
    :cond_1
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 600
    :cond_2
    if-gt v3, p1, :cond_1

    if-gt p1, v0, :cond_1

    goto :goto_1

    .line 608
    .end local v3    # "r":I
    :cond_3
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 390
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 391
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 392
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 393
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 395
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 396
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_1

    .line 397
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    if-ne v6, p2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    .line 398
    :cond_1
    if-nez v1, :cond_2

    .line 399
    return v5

    .line 400
    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private static hash(Ljava/lang/Object;I)I
    .locals 3
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "length"    # I

    .prologue
    .line 294
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 296
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    return v1
.end method

.method private init(I)V
    .locals 1
    .param p1, "initCapacity"    # I

    .prologue
    .line 254
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 195
    if-nez p0, :cond_0

    sget-object p0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method private static nextKeyIndex(II)I
    .locals 1
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    .line 303
    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 1326
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1327
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1328
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 1329
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 1332
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 1333
    if-ne v1, v2, :cond_0

    .line 1334
    new-instance v5, Ljava/io/StreamCorruptedException;

    invoke-direct {v5}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v5

    .line 1335
    :cond_0
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 1337
    :cond_1
    aput-object v2, v4, v0

    .line 1338
    add-int/lit8 v5, v0, 0x1

    aput-object p2, v4, v5

    .line 1339
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1300
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1304
    .local v2, "size":I
    if-gez v2, :cond_0

    .line 1305
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 1306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal mappings count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1305
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1307
    :cond_0
    invoke-static {v2}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->init(I)V

    .line 1310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1314
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1315
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1, v3}, Ljava/util/IdentityHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1317
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 551
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 553
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 554
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 557
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 558
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_1

    .line 559
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eq v5, p2, :cond_0

    .line 560
    return v7

    .line 561
    :cond_0
    iget v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 562
    iget v5, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->size:I

    .line 563
    aput-object v6, v4, v0

    .line 564
    add-int/lit8 v5, v0, 0x1

    aput-object v6, v4, v5

    .line 565
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 566
    const/4 v5, 0x1

    return v5

    .line 568
    :cond_1
    if-nez v1, :cond_2

    .line 569
    return v7

    .line 570
    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private resize(I)Z
    .locals 11
    .param p1, "newCapacity"    # I

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 459
    mul-int/lit8 v3, p1, 0x2

    .line 461
    .local v3, "newLength":I
    iget-object v6, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 462
    .local v6, "oldTable":[Ljava/lang/Object;
    array-length v5, v6

    .line 463
    .local v5, "oldLength":I
    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_1

    .line 464
    iget v8, p0, Ljava/util/IdentityHashMap;->size:I

    const v9, 0x1fffffff

    if-ne v8, v9, :cond_0

    .line 465
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Capacity exhausted."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 466
    :cond_0
    return v10

    .line 468
    :cond_1
    if-lt v5, v3, :cond_2

    .line 469
    return v10

    .line 471
    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    .line 473
    .local v4, "newTable":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 474
    aget-object v2, v6, v1

    .line 475
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 476
    add-int/lit8 v8, v1, 0x1

    aget-object v7, v6, v8

    .line 477
    .local v7, "value":Ljava/lang/Object;
    aput-object v9, v6, v1

    .line 478
    add-int/lit8 v8, v1, 0x1

    aput-object v9, v6, v8

    .line 479
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 480
    .local v0, "i":I
    :goto_1
    aget-object v8, v4, v0

    if-eqz v8, :cond_3

    .line 481
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_1

    .line 482
    :cond_3
    aput-object v2, v4, v0

    .line 483
    add-int/lit8 v8, v0, 0x1

    aput-object v7, v4, v8

    .line 473
    .end local v0    # "i":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 486
    .end local v2    # "key":Ljava/lang/Object;
    :cond_5
    iput-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 487
    const/4 v8, 0x1

    return v8
.end method

.method static final unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .prologue
    .line 202
    sget-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "key":Ljava/lang/Object;
    :cond_0
    return-object p0
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
    .line 1277
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1280
    iget v3, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1283
    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1284
    .local v2, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1285
    aget-object v1, v2, v0

    .line 1286
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1287
    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1288
    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1284
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1291
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 615
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 616
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 617
    .local v1, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 618
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    .line 620
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 703
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/IdentityHashMap;

    .line 704
    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 705
    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-object v1

    .line 707
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 349
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 350
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 351
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 352
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 354
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 355
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 356
    const/4 v5, 0x1

    return v5

    .line 357
    :cond_0
    if-nez v1, :cond_1

    .line 358
    const/4 v5, 0x0

    return v5

    .line 359
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 373
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 374
    .local v1, "tab":[Ljava/lang/Object;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 375
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_0

    .line 376
    const/4 v2, 0x1

    return v2

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 378
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 1177
    iget-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    .line 1178
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 1179
    return-object v0

    .line 1181
    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 640
    if-ne p1, p0, :cond_0

    .line 641
    return v8

    .line 642
    :cond_0
    instance-of v5, p1, Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 643
    check-cast v2, Ljava/util/IdentityHashMap;

    .line 644
    .local v2, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->size()I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    if-eq v5, v6, :cond_1

    .line 645
    return v7

    .line 647
    :cond_1
    iget-object v4, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 648
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 649
    aget-object v1, v4, v0

    .line 650
    .local v1, "k":Ljava/lang/Object;
    if-eqz v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v1, v5}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 651
    return v7

    .line 648
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 653
    .end local v1    # "k":Ljava/lang/Object;
    :cond_3
    return v8

    .line 654
    .end local v0    # "i":I
    .end local v2    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<**>;"
    .end local v4    # "tab":[Ljava/lang/Object;
    :cond_4
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_5

    move-object v3, p1

    .line 655
    check-cast v3, Ljava/util/Map;

    .line 656
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 658
    .end local v3    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_5
    return v7
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1344
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1347
    .local v0, "expectedModCount":I
    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1348
    .local v3, "t":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1349
    aget-object v2, v3, v1

    .line 1350
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1351
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v3, v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1354
    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    .line 1355
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1348
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1358
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 325
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 326
    .local v2, "k":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 327
    .local v4, "tab":[Ljava/lang/Object;
    array-length v3, v4

    .line 328
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 330
    .local v0, "i":I
    :goto_0
    aget-object v1, v4, v0

    .line 331
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 332
    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    return-object v5

    .line 333
    :cond_0
    if-nez v1, :cond_1

    .line 334
    return-object v5

    .line 335
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 682
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 683
    .local v3, "result":I
    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 684
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 685
    aget-object v2, v4, v0

    .line 686
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 687
    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 688
    .local v1, "k":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 689
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 688
    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 684
    .end local v1    # "k":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 692
    .end local v2    # "key":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 287
    iget v1, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 966
    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 967
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/util/IdentityHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeySet;)V

    .line 969
    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    .line 971
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 420
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 423
    .local v2, "k":Ljava/lang/Object;
    :cond_0
    iget-object v6, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 424
    .local v6, "tab":[Ljava/lang/Object;
    array-length v3, v6

    .line 425
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 427
    .local v0, "i":I
    :goto_0
    aget-object v1, v6, v0

    .local v1, "item":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 429
    if-ne v1, v2, :cond_1

    .line 431
    add-int/lit8 v7, v0, 0x1

    aget-object v4, v6, v7

    .line 432
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v7, v0, 0x1

    aput-object p2, v6, v7

    .line 433
    return-object v4

    .line 428
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    .line 437
    :cond_2
    iget v7, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v5, v7, 0x1

    .line 440
    .local v5, "s":I
    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v5

    if-le v7, v3, :cond_3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 443
    :cond_3
    iget v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 444
    aput-object v2, v6, v0

    .line 445
    add-int/lit8 v7, v0, 0x1

    aput-object p2, v6, v7

    .line 446
    iput v5, p0, Ljava/util/IdentityHashMap;->size:I

    .line 447
    return-object v8
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 500
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 501
    return-void

    .line 502
    :cond_0
    iget v3, p0, Ljava/util/IdentityHashMap;->size:I

    if-le v2, v3, :cond_1

    .line 503
    invoke-static {v2}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)Z

    .line 505
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 506
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 519
    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 520
    .local v2, "k":Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 521
    .local v5, "tab":[Ljava/lang/Object;
    array-length v3, v5

    .line 522
    .local v3, "len":I
    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    .line 525
    .local v0, "i":I
    :goto_0
    aget-object v1, v5, v0

    .line 526
    .local v1, "item":Ljava/lang/Object;
    if-ne v1, v2, :cond_0

    .line 527
    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 528
    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    .line 530
    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    .line 531
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v0, 0x1

    aput-object v7, v5, v6

    .line 532
    aput-object v7, v5, v0

    .line 533
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    .line 534
    return-object v4

    .line 536
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    if-nez v1, :cond_1

    .line 537
    return-object v7

    .line 538
    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    .line 1366
    .local v0, "expectedModCount":I
    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1367
    .local v3, "t":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1368
    aget-object v2, v3, v1

    .line 1369
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1370
    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1373
    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    .line 1374
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1367
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1377
    .end local v2    # "k":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1072
    iget-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 1073
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 1074
    new-instance v0, Ljava/util/IdentityHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0, v1}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V

    .line 1075
    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    .line 1077
    :cond_0
    return-object v0
.end method
