.class public abstract Ljava/net/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final contentClassPrefix:Ljava/lang/String; = "sun.net.www.content"

.field private static final contentPathProp:Ljava/lang/String; = "java.content.handler.pkgs"

.field private static defaultAllowUserInteraction:Z

.field private static defaultUseCaches:Z

.field static factory:Ljava/net/ContentHandlerFactory;

.field private static fileNameMap:Ljava/net/FileNameMap;

.field private static handlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/ContentHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected allowUserInteraction:Z

.field private connectTimeout:I

.field protected connected:Z

.field protected doInput:Z

.field protected doOutput:Z

.field protected ifModifiedSince:J

.field private readTimeout:I

.field private requests:Lsun/net/www/MessageHeader;

.field protected url:Ljava/net/URL;

.field protected useCaches:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 229
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1219
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    .line 161
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    .line 206
    iput-boolean v2, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 227
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 246
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    iput-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 273
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    .line 447
    iput-object p1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 448
    return-void
.end method

.method private static checkfpx(Ljava/io/InputStream;)Z
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    const/16 v10, 0x100

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1600
    const-wide/16 v8, 0x1c

    .line 1603
    .local v8, "toSkip":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v2

    .line 1600
    .local v2, "posn":J
    const-wide/16 v10, 0x1c

    .line 1603
    cmp-long v10, v2, v10

    if-gez v10, :cond_0

    .line 1604
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1605
    const/4 v10, 0x0

    return v10

    .line 1608
    :cond_0
    const/16 v10, 0x10

    new-array v1, v10, [I

    .line 1609
    .local v1, "c":[I
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_1

    .line 1610
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1611
    const/4 v10, 0x0

    return v10

    .line 1614
    :cond_1
    const/4 v10, 0x0

    aget v0, v1, v10

    .line 1616
    .local v0, "byteOrder":I
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1618
    const/4 v10, 0x2

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_2

    .line 1619
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1620
    const/4 v10, 0x0

    return v10

    .line 1623
    :cond_2
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_3

    .line 1624
    const/4 v10, 0x0

    aget v5, v1, v10

    .line 1625
    .local v5, "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v5, v10

    .line 1632
    :goto_0
    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 1633
    const-wide/16 v10, 0x30

    sub-long v8, v10, v2

    .line 1634
    const-wide/16 v6, 0x0

    .line 1635
    .local v6, "skipped":J
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v6

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    .line 1636
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1637
    const/4 v10, 0x0

    return v10

    .line 1628
    .end local v5    # "uSectorShift":I
    .end local v6    # "skipped":J
    :cond_3
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v5, v10, 0x8

    .line 1629
    .restart local v5    # "uSectorShift":I
    const/4 v10, 0x1

    aget v10, v1, v10

    add-int/2addr v5, v10

    goto :goto_0

    .line 1639
    .restart local v6    # "skipped":J
    :cond_4
    add-long/2addr v2, v6

    .line 1641
    const/4 v10, 0x4

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_5

    .line 1642
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1643
    const/4 v10, 0x0

    return v10

    .line 1647
    :cond_5
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_6

    .line 1648
    const/4 v10, 0x0

    aget v4, v1, v10

    .line 1649
    .local v4, "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1650
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1651
    const/4 v10, 0x3

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x18

    add-int/2addr v4, v10

    .line 1658
    :goto_1
    const-wide/16 v10, 0x4

    add-long/2addr v2, v10

    .line 1659
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1661
    const/4 v10, 0x1

    shl-int/2addr v10, v5

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x200

    add-long/2addr v10, v12

    const-wide/16 v12, 0x50

    add-long v8, v10, v12

    .line 1664
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_7

    .line 1665
    const/4 v10, 0x0

    return v10

    .line 1653
    .end local v4    # "sectDirStart":I
    :cond_6
    const/4 v10, 0x0

    aget v10, v1, v10

    shl-int/lit8 v4, v10, 0x18

    .line 1654
    .restart local v4    # "sectDirStart":I
    const/4 v10, 0x1

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v4, v10

    .line 1655
    const/4 v10, 0x2

    aget v10, v1, v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v4, v10

    .line 1656
    const/4 v10, 0x3

    aget v10, v1, v10

    add-int/2addr v4, v10

    goto :goto_1

    .line 1674
    :cond_7
    long-to-int v10, v8

    add-int/lit8 v10, v10, 0x30

    invoke-virtual {p0, v10}, Ljava/io/InputStream;->mark(I)V

    .line 1676
    invoke-static {p0, v8, v9}, Ljava/net/URLConnection;->skipForward(Ljava/io/InputStream;J)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_8

    .line 1677
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1678
    const/4 v10, 0x0

    return v10

    .line 1693
    :cond_8
    const/16 v10, 0x10

    invoke-static {v1, v10, p0}, Ljava/net/URLConnection;->readBytes([IILjava/io/InputStream;)I

    move-result v10

    if-gez v10, :cond_9

    .line 1694
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1695
    const/4 v10, 0x0

    return v10

    .line 1699
    :cond_9
    const/16 v10, 0xfe

    if-ne v0, v10, :cond_a

    .line 1700
    const/4 v10, 0x0

    aget v10, v1, v10

    if-nez v10, :cond_a

    const/4 v10, 0x2

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_a

    const/4 v10, 0x3

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_a

    .line 1701
    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_a

    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_a

    .line 1702
    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_a

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_a

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_a

    .line 1703
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_a

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_a

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_a

    .line 1704
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_a

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_a

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_a

    .line 1705
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1706
    const/4 v10, 0x1

    return v10

    .line 1710
    :cond_a
    const/4 v10, 0x3

    aget v10, v1, v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    aget v10, v1, v10

    const/16 v11, 0x61

    if-ne v10, v11, :cond_b

    const/4 v10, 0x0

    aget v10, v1, v10

    const/16 v11, 0x56

    if-ne v10, v11, :cond_b

    .line 1711
    const/4 v10, 0x5

    aget v10, v1, v10

    const/16 v11, 0x54

    if-ne v10, v11, :cond_b

    const/4 v10, 0x4

    aget v10, v1, v10

    const/16 v11, 0xc1

    if-ne v10, v11, :cond_b

    const/4 v10, 0x7

    aget v10, v1, v10

    const/16 v11, 0xce

    if-ne v10, v11, :cond_b

    .line 1712
    const/4 v10, 0x6

    aget v10, v1, v10

    const/16 v11, 0x11

    if-ne v10, v11, :cond_b

    const/16 v10, 0x8

    aget v10, v1, v10

    const/16 v11, 0x85

    if-ne v10, v11, :cond_b

    const/16 v10, 0x9

    aget v10, v1, v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_b

    .line 1713
    const/16 v10, 0xa

    aget v10, v1, v10

    if-nez v10, :cond_b

    const/16 v10, 0xb

    aget v10, v1, v10

    const/16 v11, 0xaa

    if-ne v10, v11, :cond_b

    const/16 v10, 0xc

    aget v10, v1, v10

    if-nez v10, :cond_b

    .line 1714
    const/16 v10, 0xd

    aget v10, v1, v10

    const/16 v11, 0xa1

    if-ne v10, v11, :cond_b

    const/16 v10, 0xe

    aget v10, v1, v10

    const/16 v11, 0xf9

    if-ne v10, v11, :cond_b

    const/16 v10, 0xf

    aget v10, v1, v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_b

    .line 1715
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1716
    const/4 v10, 0x1

    return v10

    .line 1718
    :cond_b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 1719
    const/4 v10, 0x0

    return v10
.end method

.method private getContentHandlerPkgPrefixes()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1360
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "java.content.handler.pkgs"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1362
    .local v0, "packagePrefixList":Ljava/lang/String;
    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_0

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sun.net.www.content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    return v0
.end method

.method public static getDefaultRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1180
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getFileNameMap()Ljava/net/FileNameMap;
    .locals 2

    .prologue
    const-class v1, Ljava/net/URLConnection;

    monitor-enter v1

    .line 302
    :try_start_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/net/DefaultFileNameMap;

    invoke-direct {v0}, Ljava/net/DefaultFileNameMap;-><init>()V

    sput-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 305
    :cond_0
    sget-object v0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fname"    # Ljava/lang/String;

    .prologue
    .line 1381
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 19
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1408
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1409
    const/16 v18, 0x0

    return-object v18

    .line 1411
    :cond_0
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 1412
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1413
    .local v2, "c1":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 1414
    .local v10, "c2":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v11

    .line 1415
    .local v11, "c3":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 1416
    .local v12, "c4":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 1417
    .local v13, "c5":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v14

    .line 1418
    .local v14, "c6":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v15

    .line 1419
    .local v15, "c7":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v16

    .line 1420
    .local v16, "c8":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v17

    .line 1421
    .local v17, "c9":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1422
    .local v3, "c10":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1423
    .local v4, "c11":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 1424
    .local v5, "c12":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1425
    .local v6, "c13":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 1426
    .local v7, "c14":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 1427
    .local v8, "c15":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 1428
    .local v9, "c16":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->reset()V

    .line 1430
    const/16 v18, 0xca

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_1

    const/16 v18, 0xba

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    const/16 v18, 0xbe

    move/from16 v0, v18

    if-ne v12, v0, :cond_1

    .line 1431
    const-string/jumbo v18, "application/java-vm"

    return-object v18

    .line 1434
    :cond_1
    const/16 v18, 0xac

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    const/16 v18, 0xed

    move/from16 v0, v18

    if-ne v10, v0, :cond_2

    .line 1436
    const-string/jumbo v18, "application/x-java-serialized-object"

    return-object v18

    .line 1439
    :cond_2
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v2, v0, :cond_a

    .line 1440
    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    .line 1441
    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    const/16 v18, 0x74

    move/from16 v0, v18

    if-ne v11, v0, :cond_4

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 1447
    :cond_3
    const-string/jumbo v18, "text/html"

    return-object v18

    .line 1442
    :cond_4
    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_5

    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1443
    :cond_5
    const/16 v18, 0x62

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    const/16 v18, 0x6f

    move/from16 v0, v18

    if-ne v11, v0, :cond_6

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_6

    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1444
    :cond_6
    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v10, v0, :cond_8

    const/16 v18, 0x54

    move/from16 v0, v18

    if-ne v11, v0, :cond_7

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1445
    :cond_7
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v11, v0, :cond_8

    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v12, v0, :cond_8

    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1446
    :cond_8
    const/16 v18, 0x42

    move/from16 v0, v18

    if-ne v10, v0, :cond_9

    const/16 v18, 0x4f

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    const/16 v18, 0x44

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    const/16 v18, 0x59

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 1450
    :cond_9
    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v10, v0, :cond_a

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v11, v0, :cond_a

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v12, v0, :cond_a

    const/16 v18, 0x6c

    move/from16 v0, v18

    if-ne v13, v0, :cond_a

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v14, v0, :cond_a

    .line 1451
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1456
    :cond_a
    const/16 v18, 0xef

    move/from16 v0, v18

    if-ne v2, v0, :cond_b

    const/16 v18, 0xbb

    move/from16 v0, v18

    if-ne v10, v0, :cond_b

    const/16 v18, 0xbf

    move/from16 v0, v18

    if-ne v11, v0, :cond_b

    .line 1457
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_b

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 1458
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1463
    :cond_b
    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v2, v0, :cond_c

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v10, v0, :cond_c

    .line 1464
    if-nez v11, :cond_c

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    if-nez v13, :cond_c

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v14, v0, :cond_c

    .line 1465
    if-nez v15, :cond_c

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1466
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1470
    :cond_c
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_d

    .line 1471
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v11, v0, :cond_d

    if-nez v12, :cond_d

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    if-nez v14, :cond_d

    .line 1472
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v15, v0, :cond_d

    if-nez v16, :cond_d

    .line 1473
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1478
    :cond_d
    if-nez v2, :cond_e

    if-nez v10, :cond_e

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v11, v0, :cond_e

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v12, v0, :cond_e

    .line 1479
    if-nez v13, :cond_e

    if-nez v14, :cond_e

    if-nez v15, :cond_e

    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1480
    if-nez v17, :cond_e

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    const/16 v18, 0x3f

    move/from16 v0, v18

    if-ne v5, v0, :cond_e

    .line 1481
    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v9, v0, :cond_e

    .line 1482
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1486
    :cond_e
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    const/16 v18, 0xfe

    move/from16 v0, v18

    if-ne v10, v0, :cond_f

    if-nez v11, :cond_f

    if-nez v12, :cond_f

    .line 1487
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v13, v0, :cond_f

    if-nez v14, :cond_f

    if-nez v15, :cond_f

    if-nez v16, :cond_f

    .line 1488
    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    if-nez v3, :cond_f

    if-nez v4, :cond_f

    if-nez v5, :cond_f

    .line 1489
    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v6, v0, :cond_f

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    if-nez v9, :cond_f

    .line 1490
    const-string/jumbo v18, "application/xml"

    return-object v18

    .line 1494
    :cond_f
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_10

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_10

    const/16 v18, 0x38

    move/from16 v0, v18

    if-ne v12, v0, :cond_10

    .line 1495
    const-string/jumbo v18, "image/gif"

    return-object v18

    .line 1498
    :cond_10
    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v2, v0, :cond_11

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v10, v0, :cond_11

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v11, v0, :cond_11

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v12, v0, :cond_11

    .line 1499
    const-string/jumbo v18, "image/x-bitmap"

    return-object v18

    .line 1502
    :cond_11
    const/16 v18, 0x21

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    const/16 v18, 0x20

    move/from16 v0, v18

    if-ne v10, v0, :cond_12

    const/16 v18, 0x58

    move/from16 v0, v18

    if-ne v11, v0, :cond_12

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v12, v0, :cond_12

    .line 1503
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-ne v13, v0, :cond_12

    const/16 v18, 0x32

    move/from16 v0, v18

    if-ne v14, v0, :cond_12

    .line 1504
    const-string/jumbo v18, "image/x-pixmap"

    return-object v18

    .line 1507
    :cond_12
    const/16 v18, 0x89

    move/from16 v0, v18

    if-ne v2, v0, :cond_13

    const/16 v18, 0x50

    move/from16 v0, v18

    if-ne v10, v0, :cond_13

    const/16 v18, 0x4e

    move/from16 v0, v18

    if-ne v11, v0, :cond_13

    .line 1508
    const/16 v18, 0x47

    move/from16 v0, v18

    if-ne v12, v0, :cond_13

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v13, v0, :cond_13

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v14, v0, :cond_13

    .line 1509
    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_13

    const/16 v18, 0xa

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1510
    const-string/jumbo v18, "image/png"

    return-object v18

    .line 1513
    :cond_13
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v2, v0, :cond_16

    const/16 v18, 0xd8

    move/from16 v0, v18

    if-ne v10, v0, :cond_16

    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v11, v0, :cond_16

    .line 1514
    const/16 v18, 0xe0

    move/from16 v0, v18

    if-eq v12, v0, :cond_14

    const/16 v18, 0xee

    move/from16 v0, v18

    if-ne v12, v0, :cond_15

    .line 1515
    :cond_14
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1524
    :cond_15
    const/16 v18, 0xe1

    move/from16 v0, v18

    if-ne v12, v0, :cond_16

    .line 1525
    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v15, v0, :cond_16

    const/16 v18, 0x78

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v18, 0x69

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v3, v0, :cond_16

    .line 1526
    if-nez v4, :cond_16

    .line 1527
    const-string/jumbo v18, "image/jpeg"

    return-object v18

    .line 1531
    :cond_16
    const/16 v18, 0xd0

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    const/16 v18, 0xcf

    move/from16 v0, v18

    if-ne v10, v0, :cond_17

    const/16 v18, 0x11

    move/from16 v0, v18

    if-ne v11, v0, :cond_17

    const/16 v18, 0xe0

    move/from16 v0, v18

    if-ne v12, v0, :cond_17

    .line 1532
    const/16 v18, 0xa1

    move/from16 v0, v18

    if-ne v13, v0, :cond_17

    const/16 v18, 0xb1

    move/from16 v0, v18

    if-ne v14, v0, :cond_17

    const/16 v18, 0x1a

    move/from16 v0, v18

    if-ne v15, v0, :cond_17

    const/16 v18, 0xe1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 1538
    invoke-static/range {p0 .. p0}, Ljava/net/URLConnection;->checkfpx(Ljava/io/InputStream;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1539
    const-string/jumbo v18, "image/vnd.fpx"

    return-object v18

    .line 1543
    :cond_17
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v10, v0, :cond_18

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v11, v0, :cond_18

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v12, v0, :cond_18

    .line 1544
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1547
    :cond_18
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_19

    const/16 v18, 0x6e

    move/from16 v0, v18

    if-ne v10, v0, :cond_19

    const/16 v18, 0x73

    move/from16 v0, v18

    if-ne v11, v0, :cond_19

    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v12, v0, :cond_19

    .line 1548
    const-string/jumbo v18, "audio/basic"

    return-object v18

    .line 1551
    :cond_19
    const/16 v18, 0x52

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    const/16 v18, 0x49

    move/from16 v0, v18

    if-ne v10, v0, :cond_1a

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v11, v0, :cond_1a

    const/16 v18, 0x46

    move/from16 v0, v18

    if-ne v12, v0, :cond_1a

    .line 1555
    const-string/jumbo v18, "audio/x-wav"

    return-object v18

    .line 1557
    :cond_1a
    const/16 v18, 0x0

    return-object v18
.end method

.method private lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    .locals 12
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-direct {p0, p1}, Ljava/net/URLConnection;->typeToPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    .local v3, "contentHandlerClassName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/net/URLConnection;->getContentHandlerPkgPrefixes()Ljava/lang/String;

    move-result-object v4

    .line 1298
    .local v4, "contentHandlerPkgPrefixes":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string/jumbo v10, "|"

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .local v9, "packagePrefixIter":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1301
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1304
    .local v8, "packagePrefix":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1305
    .local v2, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1307
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1314
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 1316
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/ContentHandler;

    .line 1317
    .local v7, "handler":Ljava/net/ContentHandler;
    return-object v7

    .line 1308
    .end local v7    # "handler":Ljava/net/ContentHandler;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 1309
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1310
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 1311
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 1323
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clsName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "packagePrefix":Ljava/lang/String;
    :cond_2
    sget-object v10, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;

    return-object v10

    .line 1319
    .restart local v8    # "packagePrefix":Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static readBytes([IILjava/io/InputStream;)I
    .locals 4
    .param p0, "c"    # [I
    .param p1, "len"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1730
    new-array v0, p1, [B

    .line 1731
    .local v0, "buf":[B
    invoke-virtual {p2, v0, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 1732
    const/4 v2, -0x1

    return v2

    .line 1736
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 1737
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, p0, v1

    .line 1736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1739
    :cond_1
    return v3
.end method

.method public static declared-synchronized setContentHandlerFactory(Ljava/net/ContentHandlerFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/ContentHandlerFactory;

    .prologue
    const-class v2, Ljava/net/URLConnection;

    monitor-enter v2

    .line 1209
    :try_start_0
    sget-object v1, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v1, :cond_0

    .line 1210
    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1212
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1213
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1214
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1216
    :cond_1
    sput-object p0, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1217
    return-void
.end method

.method public static setDefaultAllowUserInteraction(Z)V
    .locals 0
    .param p0, "defaultallowuserinteraction"    # Z

    .prologue
    .line 940
    sput-boolean p0, Ljava/net/URLConnection;->defaultAllowUserInteraction:Z

    .line 941
    return-void
.end method

.method public static setDefaultRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1160
    return-void
.end method

.method public static setFileNameMap(Ljava/net/FileNameMap;)V
    .locals 1
    .param p0, "map"    # Ljava/net/FileNameMap;

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 325
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 326
    :cond_0
    sput-object p0, Ljava/net/URLConnection;->fileNameMap:Ljava/net/FileNameMap;

    .line 327
    return-void
.end method

.method private static skipForward(Ljava/io/InputStream;J)J
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1751
    const-wide/16 v0, 0x0

    .line 1752
    .local v0, "eachSkip":J
    const-wide/16 v2, 0x0

    .line 1754
    .local v2, "skipped":J
    :goto_0
    cmp-long v4, v2, p1

    if-eqz v4, :cond_2

    .line 1755
    sub-long v4, p1, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 1758
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    .line 1759
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1760
    return-wide v2

    .line 1762
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 1765
    :cond_1
    add-long/2addr v2, v0

    goto :goto_0

    .line 1767
    :cond_2
    return-wide v2
.end method

.method private stripOffParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1266
    if-nez p1, :cond_0

    .line 1267
    return-object v1

    .line 1268
    :cond_0
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1270
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 1271
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1273
    :cond_1
    return-object p1
.end method

.method private typeToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1333
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1334
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1335
    .local v2, "len":I
    new-array v3, v2, [C

    .line 1336
    .local v3, "nm":[C
    invoke-virtual {p1, v4, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1338
    aget-char v0, v3, v1

    .line 1339
    .local v0, "c":C
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    .line 1340
    const/16 v4, 0x2e

    aput-char v4, v3, v1

    .line 1337
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1341
    :cond_1
    const/16 v4, 0x41

    if-gt v4, v0, :cond_2

    const/16 v4, 0x5a

    if-le v0, v4, :cond_0

    .line 1342
    :cond_2
    const/16 v4, 0x61

    if-gt v4, v0, :cond_3

    const/16 v4, 0x7a

    if-le v0, v4, :cond_0

    .line 1343
    :cond_3
    const/16 v4, 0x30

    if-gt v4, v0, :cond_4

    const/16 v4, 0x39

    if-le v0, v4, :cond_0

    .line 1344
    :cond_4
    const/16 v4, 0x5f

    aput-char v4, v3, v1

    goto :goto_1

    .line 1347
    .end local v0    # "c":C
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1087
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1088
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_0
    if-nez p1, :cond_1

    .line 1090
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_2

    .line 1093
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1095
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 928
    iget-boolean v0, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Ljava/net/URLConnection;->connectTimeout:I

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 729
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 757
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentHandler()Ljava/net/ContentHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string/jumbo v0, "content-encoding"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getContentHandler()Ljava/net/ContentHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/net/URLConnection;->stripOffParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    .local v1, "contentType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1229
    .local v3, "handler":Ljava/net/ContentHandler;
    if-nez v1, :cond_0

    .line 1230
    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1231
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    :cond_0
    if-nez v1, :cond_1

    .line 1236
    sget-object v4, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 1239
    :cond_1
    :try_start_1
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/ContentHandler;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    .local v3, "handler":Ljava/net/ContentHandler;
    if-eqz v3, :cond_2

    monitor-exit p0

    .line 1241
    return-object v3

    .line 1242
    .local v3, "handler":Ljava/net/ContentHandler;
    :catch_0
    move-exception v2

    .line 1245
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_2
    :try_start_2
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    if-eqz v4, :cond_3

    .line 1246
    sget-object v4, Ljava/net/URLConnection;->factory:Ljava/net/ContentHandlerFactory;

    invoke-interface {v4, v1}, Ljava/net/ContentHandlerFactory;->createContentHandler(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1247
    :cond_3
    if-nez v3, :cond_4

    .line 1249
    :try_start_3
    invoke-direct {p0, v1}, Ljava/net/URLConnection;->lookupContentHandlerClassFor(Ljava/lang/String;)Ljava/net/ContentHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 1254
    .local v3, "handler":Ljava/net/ContentHandler;
    :goto_0
    :try_start_4
    sget-object v4, Ljava/net/URLConnection;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "handler":Ljava/net/ContentHandler;
    :cond_4
    monitor-exit p0

    .line 1256
    return-object v3

    .line 1250
    :catch_1
    move-exception v2

    .line 1251
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1252
    sget-object v3, Ljava/net/UnknownContentHandler;->INSTANCE:Ljava/net/ContentHandler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v3    # "handler":Ljava/net/ContentHandler;
    goto :goto_0

    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "handler":Ljava/net/ContentHandler;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getContentLength()I
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    .line 475
    .local v0, "l":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 476
    const/4 v2, -0x1

    return v2

    .line 477
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public getContentLengthLong()J
    .locals 4

    .prologue
    .line 490
    const-string/jumbo v0, "content-length"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    const-string/jumbo v0, "content-type"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 4

    .prologue
    .line 536
    const-string/jumbo v0, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 1031
    sget-boolean v0, Ljava/net/URLConnection;->defaultUseCaches:Z

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Ljava/net/URLConnection;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Ljava/net/URLConnection;->doOutput:Z

    return v0
.end method

.method public getExpiration()J
    .locals 4

    .prologue
    .line 524
    const-string/jumbo v0, "expires"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 678
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # I

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 660
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Default"    # J

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 1015
    iget-wide v0, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support input"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModified()J
    .locals 4

    .prologue
    .line 548
    const-string/jumbo v0, "last-modified"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string/jumbo v1, "protocol doesn\'t support output"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    sget-object v0, Lsun/security/util/SecurityConstants;->ALL_PERMISSION:Ljava/security/AllPermission;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Ljava/net/URLConnection;->readTimeout:I

    return v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1132
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_1

    .line 1136
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, v1}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1110
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1113
    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_1

    .line 1114
    return-object v1

    .line 1116
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Ljava/net/URLConnection;->useCaches:Z

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 2
    .param p1, "allowuserinteraction"    # Z

    .prologue
    .line 914
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->allowUserInteraction:Z

    .line 917
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 376
    if-gez p1, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->connectTimeout:I

    .line 380
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 0
    .param p1, "defaultusecaches"    # Z

    .prologue
    .line 1042
    sput-boolean p1, Ljava/net/URLConnection;->defaultUseCaches:Z

    .line 1043
    return-void
.end method

.method public setDoInput(Z)V
    .locals 2
    .param p1, "doinput"    # Z

    .prologue
    .line 858
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 859
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doInput:Z

    .line 861
    return-void
.end method

.method public setDoOutput(Z)V
    .locals 2
    .param p1, "dooutput"    # Z

    .prologue
    .line 888
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->doOutput:Z

    .line 891
    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 3
    .param p1, "ifmodifiedsince"    # J

    .prologue
    .line 1003
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_0
    iput-wide p1, p0, Ljava/net/URLConnection;->ifModifiedSince:J

    .line 1006
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 419
    if-gez p1, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    iput p1, p0, Ljava/net/URLConnection;->readTimeout:I

    .line 423
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1062
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 1063
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1064
    :cond_0
    if-nez p1, :cond_1

    .line 1065
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1067
    :cond_1
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    if-nez v0, :cond_2

    .line 1068
    new-instance v0, Lsun/net/www/MessageHeader;

    invoke-direct {v0}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1070
    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method public setUseCaches(Z)V
    .locals 2
    .param p1, "usecaches"    # Z

    .prologue
    .line 977
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 978
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    iput-boolean p1, p0, Ljava/net/URLConnection;->useCaches:Z

    .line 980
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
