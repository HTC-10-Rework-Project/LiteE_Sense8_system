.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$1;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$LoaderReference;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$RBClassLoader;,
        Ljava/util/ResourceBundle$SingleFormatControl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CACHE_SIZE:I = 0x20

.field private static final NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile expired:Z

.field private volatile keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    .line 285
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 304
    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    .line 310
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 340
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 385
    return-void
.end method

.method private static checkList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1393
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    .line 1394
    :goto_0
    if-eqz v2, :cond_2

    .line 1395
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1396
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_2

    .line 1397
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 1396
    .local v2, "valid":Z
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1393
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "valid":Z
    goto :goto_0

    .line 1397
    .end local v2    # "valid":Z
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "valid":Z
    goto :goto_2

    .line 1400
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_2
    return v2
.end method

.method public static final clearCache()V
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1740
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    .line 1742
    return-void
.end method

.method public static final clearCache(Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1754
    if-nez p0, :cond_0

    .line 1755
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1757
    :cond_0
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1758
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 1759
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-virtual {v0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, p0, :cond_1

    .line 1760
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1763
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    return-void
.end method

.method private static findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Locale;

    .line 1410
    .local v14, "targetLocale":Ljava/util/Locale;
    const/4 v12, 0x0

    .line 1411
    .local v12, "parent":Ljava/util/ResourceBundle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_1

    .line 1412
    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v12

    .line 1423
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v13

    .local v13, "ref":Ljava/lang/Object;
    if-eqz v13, :cond_2

    .line 1424
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    check-cast v13, Ljava/util/ResourceBundle$CacheKeyReference;

    .end local v13    # "ref":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1414
    .restart local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_1
    if-eqz p5, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    return-object p5

    .line 1428
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    .restart local v13    # "ref":Ljava/lang/Object;
    :cond_2
    const/4 v11, 0x0

    .line 1432
    .local v11, "expiredBundle":Z
    invoke-virtual {p0, v14}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    .line 1433
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1434
    .local v8, "bundle":Ljava/util/ResourceBundle;
    invoke-static {v8}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1435
    iget-boolean v11, v8, Ljava/util/ResourceBundle;->expired:Z

    .line 1436
    .local v11, "expiredBundle":Z
    if-nez v11, :cond_4

    .line 1442
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne v2, v12, :cond_3

    .line 1443
    return-object v8

    .line 1447
    :cond_3
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ResourceBundle$BundleReference;

    .line 1448
    .local v9, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_4

    .line 1449
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1454
    .end local v9    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v11    # "expiredBundle":Z
    :cond_4
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v8, v2, :cond_8

    .line 1455
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ResourceBundle$CacheKey;

    .line 1458
    .local v10, "constKey":Ljava/util/ResourceBundle$CacheKey;
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v0, v1, v11}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1459
    if-eqz v8, :cond_7

    .line 1460
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v2, :cond_5

    .line 1461
    invoke-virtual {v8, v12}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1463
    :cond_5
    iput-object v14, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1464
    move-object/from16 v0, p4

    invoke-static {p0, v8, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1472
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_6

    .line 1473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1465
    :cond_6
    return-object v8

    .line 1470
    :cond_7
    :try_start_1
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    move-object/from16 v0, p4

    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_8

    .line 1473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1477
    .end local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :cond_8
    return-object v12

    .line 1471
    .restart local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :catchall_0
    move-exception v2

    .line 1472
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_9

    .line 1473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1471
    :cond_9
    throw v2
.end method

.method private static findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 14
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1576
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle$BundleReference;

    .line 1577
    .local v8, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-nez v8, :cond_0

    .line 1578
    return-object v1

    .line 1580
    :cond_0
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    .line 1581
    .local v5, "bundle":Ljava/util/ResourceBundle;
    if-nez v5, :cond_1

    .line 1582
    return-object v1

    .line 1584
    :cond_1
    iget-object v13, v5, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1585
    .local v13, "p":Ljava/util/ResourceBundle;
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne v13, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1619
    :cond_2
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_5

    .line 1620
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne v5, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1621
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    .line 1622
    iput-object v1, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1623
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1624
    const/4 v5, 0x0

    .line 1669
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_4
    :goto_0
    return-object v5

    .line 1626
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_5
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v12

    .line 1627
    .local v12, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1628
    .local v10, "expirationTime":J
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_4

    cmp-long v0, v10, v2

    if-ltz v0, :cond_4

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_4

    .line 1631
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v5, v0, :cond_8

    .line 1634
    monitor-enter v5

    .line 1635
    :try_start_0
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1636
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_6

    cmp-long v0, v10, v2

    if-ltz v0, :cond_6

    .line 1637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_6

    .line 1639
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1641
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 1642
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1644
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get1(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v6

    move-object v0, p1

    .line 1639
    invoke-virtual/range {v0 .. v7}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1648
    :goto_1
    :try_start_2
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_7

    .line 1653
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1654
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    monitor-exit v5

    goto :goto_0

    .line 1645
    :catch_0
    move-exception v9

    .line 1646
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {p0, v9}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1634
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 1658
    :cond_7
    :try_start_4
    invoke-static {v12, p1}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1664
    :cond_8
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1665
    const/4 v5, 0x0

    .local v5, "bundle":Ljava/util/ResourceBundle;
    goto :goto_0
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 772
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 774
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v2

    .line 770
    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 848
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 850
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v1

    .line 846
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1079
    if-nez p2, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1082
    :cond_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1296
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1297
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1299
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 895
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 893
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 816
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 814
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v3, 0x0

    .line 1309
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1310
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1317
    :cond_1
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    .line 1318
    .local v0, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v6, 0x0

    .line 1321
    .local v6, "bundle":Ljava/util/ResourceBundle;
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ResourceBundle$BundleReference;

    .line 1322
    .local v7, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v7, :cond_2

    .line 1323
    invoke-virtual {v7}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    check-cast v6, Ljava/util/ResourceBundle;

    .line 1324
    .local v6, "bundle":Ljava/util/ResourceBundle;
    const/4 v7, 0x0

    .line 1331
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_2
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1332
    return-object v6

    .line 1338
    :cond_3
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v4

    if-eq p3, v4, :cond_4

    .line 1339
    instance-of v9, p3, Ljava/util/ResourceBundle$SingleFormatControl;

    .line 1340
    :goto_0
    invoke-virtual {p3, p0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1341
    .local v2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_5

    invoke-static {v2}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 1342
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getFormats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1338
    .end local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v9, 0x1

    .local v9, "isKnownControl":Z
    goto :goto_0

    .line 1345
    .end local v9    # "isKnownControl":Z
    .restart local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v5, 0x0

    .line 1346
    .local v5, "baseBundle":Ljava/util/ResourceBundle;
    move-object v10, p1

    .end local v5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v10, "targetLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v10, :cond_7

    .line 1349
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    .line 1350
    .local v1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v9, :cond_6

    invoke-static {v1}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 1351
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getCandidateLocales"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    move-object v4, p3

    .line 1354
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 1361
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1362
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1363
    .local v8, "isBaseBundle":Z
    if-eqz v8, :cond_7

    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1364
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_a

    .line 1365
    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1363
    if-eqz v4, :cond_a

    .line 1378
    .end local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v8    # "isBaseBundle":Z
    :cond_7
    if-nez v6, :cond_9

    .line 1379
    if-nez v5, :cond_8

    .line 1380
    invoke-static {v0}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p0, p1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    .line 1382
    :cond_8
    move-object v6, v5

    .line 1385
    :cond_9
    return-object v6

    .line 1372
    .restart local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "isBaseBundle":Z
    :cond_a
    if-eqz v8, :cond_b

    if-nez v5, :cond_b

    .line 1373
    move-object v5, v6

    .line 1348
    .end local v8    # "isBaseBundle":Z
    :cond_b
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v10

    goto :goto_1
.end method

.method private static getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;

    .prologue
    .line 1304
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0
.end method

.method private static getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 471
    if-nez p0, :cond_0

    .line 479
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-get0()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object p0

    .line 481
    :cond_0
    return-object p0
.end method

.method private static hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .locals 9
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v8, 0x0

    .line 1529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1530
    .local v4, "now":J
    :goto_0
    if-eqz p0, :cond_2

    .line 1531
    iget-boolean v3, p0, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v3, :cond_0

    .line 1532
    return v8

    .line 1534
    :cond_0
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1535
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1

    .line 1536
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    .line 1537
    .local v0, "expirationTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-ltz v3, :cond_1

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 1538
    return v8

    .line 1541
    .end local v0    # "expirationTime":J
    :cond_1
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1543
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidBundle(Ljava/util/ResourceBundle;)Z
    .locals 2
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v0, 0x0

    .line 1521
    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .locals 11
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1489
    .local v2, "targetLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    .line 1490
    .local v6, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1491
    .local v10, "size":I
    const/4 v9, 0x0

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 1492
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1494
    .local v3, "format":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1495
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, p2

    move v5, p3

    .line 1494
    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1504
    :goto_1
    if-eqz v6, :cond_1

    .line 1507
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    .line 1509
    iput-object v2, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, v6, Ljava/util/ResourceBundle;->expired:Z

    .line 1517
    .end local v3    # "format":Ljava/lang/String;
    :cond_0
    return-object v6

    .line 1501
    .restart local v3    # "format":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1502
    .local v7, "cause":Ljava/lang/Exception;
    invoke-static {p0, v7}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1496
    .end local v7    # "cause":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1500
    .local v8, "error":Ljava/lang/LinkageError;
    invoke-static {p0, v8}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1491
    .end local v8    # "error":Ljava/lang/LinkageError;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private static putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 9
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v8, 0x0

    .line 1684
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    .line 1685
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1686
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle$CacheKey;

    .line 1687
    .local v1, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v0, Ljava/util/ResourceBundle$BundleReference;

    sget-object v4, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v4, v1}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    .line 1688
    .local v0, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v1, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1691
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    .line 1695
    .local v3, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v3, :cond_0

    .line 1696
    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;

    .line 1697
    .local v2, "rb":Ljava/util/ResourceBundle;
    if-eqz v2, :cond_1

    iget-boolean v4, v2, Ljava/util/ResourceBundle;->expired:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1699
    iput-object v8, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1700
    move-object p1, v2

    .line 1703
    invoke-virtual {v0}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    .line 1711
    .end local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v2    # "rb":Ljava/util/ResourceBundle;
    .end local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_0
    :goto_0
    return-object p1

    .line 1707
    .restart local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .restart local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .restart local v2    # "rb":Ljava/util/ResourceBundle;
    .restart local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_1
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .locals 7
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1715
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1716
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 1715
    invoke-virtual {p1, v4, v5}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    .line 1717
    .local v2, "ttl":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 1720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1721
    .local v0, "now":J
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-set1(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1722
    add-long v4, v0, v2

    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1728
    .end local v0    # "now":J
    :goto_0
    return-void

    .line 1723
    :cond_0
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1724
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    goto :goto_0

    .line 1726
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid Control: TTL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1554
    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_0

    .line 1555
    const/4 p2, 0x0

    .line 1557
    .end local p2    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1558
    const-string/jumbo v2, ", locale "

    .line 1557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1560
    const-string/jumbo v3, ""

    .line 1557
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1798
    if-nez p1, :cond_0

    .line 1799
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1801
    :cond_0
    move-object v0, p0

    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v0, :cond_2

    .line 1802
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1803
    const/4 v1, 0x1

    return v1

    .line 1801
    :cond_1
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1806
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public getBaseBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 437
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    :cond_0
    if-nez v0, :cond_1

    .line 441
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    const-string/jumbo v3, ", key "

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_1
    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1843
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 1844
    monitor-enter p0

    .line 1845
    :try_start_0
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 1846
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1847
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1848
    .local v0, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1849
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1850
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1851
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1844
    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1854
    .restart local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iput-object v2, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    .line 1858
    :cond_3
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    return-object v3
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1819
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v1, :cond_0

    .line 1820
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1819
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_0

    .line 1822
    :cond_0
    return-object v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .prologue
    .line 526
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_0
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 528
    return-void
.end method
