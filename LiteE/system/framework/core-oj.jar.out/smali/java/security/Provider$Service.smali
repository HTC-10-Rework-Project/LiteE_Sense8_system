.class public Ljava/security/Provider$Service;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Service"
.end annotation


# static fields
.field private static final CLASS0:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private algorithm:Ljava/lang/String;

.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$UString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private volatile classRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile hasKeyAttributes:Ljava/lang/Boolean;

.field private final provider:Ljava/security/Provider;

.field private registered:Z

.field private supportedClasses:[Ljava/lang/Class;

.field private supportedFormats:[Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/Provider$Service;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/security/Provider$Service;)Z
    .locals 1
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0}, Ljava/security/Provider$Service;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Ljava/security/Provider$Service;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;->addAlias(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1442
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    .line 1417
    return-void
.end method

.method private constructor <init>(Ljava/security/Provider;)V
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;

    .prologue
    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1450
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1451
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1485
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1490
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1489
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 1492
    iput-object p1, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    .line 1493
    invoke-static {p2}, Ljava/security/Provider;->-wrap0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1494
    iput-object p3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1495
    iput-object p4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1496
    if-nez p5, :cond_3

    .line 1497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1501
    :goto_0
    if-nez p6, :cond_4

    .line 1502
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1509
    :cond_2
    return-void

    .line 1499
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    goto :goto_0

    .line 1504
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1505
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1506
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v4, Ljava/security/Provider$UString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "-this1"    # Ljava/security/Provider$Service;

    .prologue
    invoke-direct {p0, p1}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;)V

    return-void
.end method

.method private addAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1458
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    .line 1461
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    return-void
.end method

.method private final getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v0, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    return-object v0
.end method

.method private getImplClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1658
    :try_start_0
    iget-object v3, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;

    .line 1659
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    if-nez v3, :cond_0

    const/4 v1, 0x0

    .line 1660
    :goto_0
    if-nez v1, :cond_3

    .line 1661
    iget-object v4, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v4}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1662
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    .line 1663
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1667
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1668
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 1669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "class configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1670
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1670
    const-string/jumbo v6, ") is not public."

    .line 1669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1668
    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1675
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :catch_0
    move-exception v2

    .line 1676
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "class configured for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1678
    iget-object v6, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1677
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1678
    const-string/jumbo v6, ") cannot be found."

    .line 1677
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1676
    invoke-direct {v4, v5, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1659
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_0

    .line 1665
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v4, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_1

    .line 1672
    :cond_2
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Ljava/security/Provider$Service;->classRef:Ljava/lang/ref/Reference;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1674
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    return-object v1
.end method

.method private getKeyClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1815
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1816
    :catch_0
    move-exception v1

    .line 1820
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    iget-object v2, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v2}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1821
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 1824
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    .line 1827
    :cond_0
    return-object v3
.end method

.method private hasKeyAttributes()Z
    .locals 9

    .prologue
    .line 1782
    iget-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;

    .line 1783
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_4

    .line 1784
    monitor-enter p0

    .line 1786
    :try_start_0
    const-string/jumbo v7, "SupportedKeyFormats"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1787
    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1788
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    .line 1790
    :cond_0
    const-string/jumbo v7, "SupportedKeyClasses"

    invoke-virtual {p0, v7}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1791
    if-eqz v6, :cond_3

    .line 1792
    const-string/jumbo v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1794
    .local v4, "classNames":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1795
    .local v2, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v7, 0x0

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, v4, v7

    .line 1796
    .local v3, "className":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/security/Provider$Service;->getKeyClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1797
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1

    .line 1798
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1795
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1801
    .end local v3    # "className":Ljava/lang/String;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    sget-object v7, Ljava/security/Provider$Service;->CLASS0:[Ljava/lang/Class;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    iput-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    .line 1803
    .end local v2    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v4    # "classNames":[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v7, :cond_5

    .line 1804
    iget-object v7, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-eqz v7, :cond_6

    const/4 v1, 0x1

    .line 1805
    .local v1, "bool":Z
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1806
    iput-object v0, p0, Ljava/security/Provider$Service;->hasKeyAttributes:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1809
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 1803
    .restart local v6    # "s":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "bool":Z
    goto :goto_1

    .line 1804
    .end local v1    # "bool":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "bool":Z
    goto :goto_1

    .line 1784
    .end local v1    # "bool":Z
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private isValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1454
    iget-object v1, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 1689
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v1

    .line 1690
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 1693
    const/4 v7, 0x0

    :try_start_0
    new-array v5, v7, [Ljava/lang/Class;

    .line 1694
    .local v5, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1695
    .local v2, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 1696
    .end local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 1697
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No public no-arg constructor found in class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1698
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1697
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1701
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1702
    .local v0, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1705
    .local v3, "cons":[Ljava/lang/reflect/Constructor;
    array-length v9, v3

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v2, v3, v7

    .line 1706
    .restart local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 1707
    .local v6, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v6

    if-eq v10, v11, :cond_2

    .line 1705
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1710
    :cond_2
    aget-object v10, v6, v8

    invoke-virtual {v10, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1713
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    return-object v7

    .line 1715
    .end local v2    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    new-instance v7, Ljava/security/NoSuchAlgorithmException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No public constructor matching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1716
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1715
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1716
    const-string/jumbo v9, " found in class "

    .line 1715
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1716
    iget-object v9, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1715
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private supportsKeyClass(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1847
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 1848
    return v3

    .line 1850
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1851
    .local v1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedClasses:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 1852
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1853
    const/4 v2, 0x1

    return v2

    .line 1851
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return v3
.end method

.method private supportsKeyFormat(Ljava/security/Key;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v3, 0x0

    .line 1831
    iget-object v2, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1832
    return v3

    .line 1834
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1835
    .local v0, "format":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1836
    return v3

    .line 1838
    :cond_1
    iget-object v4, p0, Ljava/security/Provider$Service;->supportedFormats:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 1839
    .local v1, "supportedFormat":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1840
    const/4 v2, 0x1

    return v2

    .line 1838
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1843
    .end local v1    # "supportedFormat":Ljava/lang/String;
    :cond_3
    return v3
.end method


# virtual methods
.method addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1465
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    .line 1468
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    return-void
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1565
    if-nez p1, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1568
    :cond_0
    iget-object v0, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    new-instance v1, Ljava/security/Provider$UString;

    invoke-direct {v1, p1}, Ljava/security/Provider$UString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 1536
    iget-object v0, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    return-object v0
.end method

.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1599
    iget-boolean v10, p0, Ljava/security/Provider$Service;->registered:Z

    if-nez v10, :cond_1

    .line 1600
    iget-object v10, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    iget-object v11, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v10

    if-eq v10, p0, :cond_0

    .line 1601
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1602
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Service not registered with Provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1603
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1602
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1603
    const-string/jumbo v12, ": "

    .line 1602
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1601
    invoke-direct {v10, v11}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1605
    :cond_0
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/security/Provider$Service;->registered:Z

    .line 1608
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v10

    iget-object v11, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$EngineDescription;

    .line 1609
    .local v1, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v1, :cond_2

    .line 1613
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider$Service;->newInstanceGeneric(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 1615
    :cond_2
    iget-object v10, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 1616
    if-eqz p1, :cond_3

    .line 1617
    new-instance v10, Ljava/security/InvalidParameterException;

    .line 1618
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "constructorParameter not used with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1619
    const-string/jumbo v12, " engines"

    .line 1618
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1617
    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1640
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :catch_0
    move-exception v7

    .line 1641
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    throw v7

    .line 1621
    .end local v7    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1622
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v8, v10, [Ljava/lang/Class;

    .line 1623
    .local v8, "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 1624
    .local v3, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 1626
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "empty":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-virtual {v1}, Ljava/security/Provider$EngineDescription;->getConstructorParameterClass()Ljava/lang/Class;

    move-result-object v9

    .line 1627
    .local v9, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_5

    .line 1628
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1629
    .local v0, "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1630
    new-instance v10, Ljava/security/InvalidParameterException;

    .line 1631
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "constructorParameter must be instanceof "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1632
    iget-object v12, v1, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    const/16 v13, 0x24

    const/16 v14, 0x2e

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 1631
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1633
    const-string/jumbo v12, " for engine type "

    .line 1631
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1633
    iget-object v12, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1631
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1630
    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1642
    .end local v0    # "argClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 1643
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1644
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error constructing implementation (algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1645
    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1645
    const-string/jumbo v12, ", provider: "

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1645
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1646
    const-string/jumbo v12, ", class: "

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1646
    iget-object v12, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1646
    const-string/jumbo v12, ")"

    .line 1644
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1646
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    .line 1643
    invoke-direct {v10, v11, v12}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 1636
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .restart local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->getImplClass()Ljava/lang/Class;

    move-result-object v2

    .line 1637
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1638
    .local v4, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    return-object v10

    .line 1647
    .end local v1    # "cap":Ljava/security/Provider$EngineDescription;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v5

    .line 1648
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/security/NoSuchAlgorithmException;

    .line 1649
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error constructing implementation (algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1650
    iget-object v12, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1650
    const-string/jumbo v12, ", provider: "

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1650
    iget-object v12, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v12}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1651
    const-string/jumbo v12, ", class: "

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1651
    iget-object v12, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1651
    const-string/jumbo v12, ")"

    .line 1649
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1648
    invoke-direct {v10, v11, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public supportsParameter(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1747
    invoke-static {}, Ljava/security/Provider;->-get0()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1748
    .local v0, "cap":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_0

    .line 1750
    return v4

    .line 1752
    :cond_0
    iget-boolean v2, v0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    if-nez v2, :cond_1

    .line 1753
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supportsParameter() not used with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1754
    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    .line 1753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1754
    const-string/jumbo v4, " engines"

    .line 1753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1757
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/security/Key;

    if-nez v2, :cond_2

    .line 1758
    new-instance v2, Ljava/security/InvalidParameterException;

    .line 1759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parameter must be instanceof Key for engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1758
    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1761
    :cond_2
    invoke-direct {p0}, Ljava/security/Provider$Service;->hasKeyAttributes()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1762
    return v4

    .line 1764
    :cond_3
    if-nez p1, :cond_4

    .line 1765
    return v5

    :cond_4
    move-object v1, p1

    .line 1767
    check-cast v1, Ljava/security/Key;

    .line 1768
    .local v1, "key":Ljava/security/Key;
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyFormat(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1769
    return v4

    .line 1771
    :cond_5
    invoke-direct {p0, v1}, Ljava/security/Provider$Service;->supportsKeyClass(Ljava/security/Key;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1772
    return v4

    .line 1774
    :cond_6
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1865
    iget-object v2, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1866
    const-string/jumbo v0, ""

    .line 1867
    .local v0, "aString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1868
    const-string/jumbo v1, ""

    .line 1869
    .local v1, "attrs":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/security/Provider$Service;->provider:Ljava/security/Provider;

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1870
    const-string/jumbo v3, " -> "

    .line 1869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1870
    iget-object v3, p0, Ljava/security/Provider$Service;->className:Ljava/lang/String;

    .line 1869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1870
    const-string/jumbo v3, "\r\n"

    .line 1869
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1866
    .end local v0    # "aString":Ljava/lang/String;
    .end local v1    # "attrs":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  aliases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->aliases:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "aString":Ljava/lang/String;
    goto :goto_0

    .line 1868
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\r\n  attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider$Service;->attributes:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "attrs":Ljava/lang/String;
    goto :goto_1
.end method
