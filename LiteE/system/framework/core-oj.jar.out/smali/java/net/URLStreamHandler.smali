.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected equals(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 377
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 5
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 451
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 453
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    monitor-exit p0

    .line 455
    return-object v4

    .line 458
    :cond_2
    :try_start_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    :try_start_3
    iget-object v3, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 461
    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    monitor-exit p0

    .line 462
    return-object v4

    .line 459
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .local v0, "ex":Ljava/net/UnknownHostException;
    monitor-exit p0

    .line 460
    return-object v4

    .end local v0    # "ex":Ljava/net/UnknownHostException;
    .end local v1    # "host":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected hashCode(Ljava/net/URL;)I
    .locals 3
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 394
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 395
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 396
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 397
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 398
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 399
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 400
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 394
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 481
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Method not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 23
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .prologue
    .line 124
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "protocol":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 129
    .local v6, "port":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v10

    .line 133
    .local v10, "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "ref":Ljava/lang/String;
    const/4 v15, 0x0

    .line 136
    .local v15, "isRelPath":Z
    const/16 v18, 0x0

    .line 138
    .local v18, "queryOnly":Z
    const/16 v19, 0x0

    .line 143
    .local v19, "querySet":Z
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    .line 144
    const/16 v2, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 145
    .local v20, "queryStart":I
    move/from16 v0, v20

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 146
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    move/from16 v0, v20

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    .line 147
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 148
    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 149
    move/from16 p4, v20

    .line 150
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 152
    const/16 v19, 0x1

    .line 157
    .end local v20    # "queryStart":I
    :cond_1
    const/4 v13, 0x0

    .line 165
    .local v13, "i":I
    const/16 v16, 0x0

    .line 167
    .local v16, "isUNCName":Z
    if-nez v16, :cond_11

    add-int/lit8 v2, p4, -0x2

    move/from16 v0, p3

    if-gt v0, v2, :cond_11

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_11

    .line 168
    add-int/lit8 v2, p3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_11

    .line 169
    add-int/lit8 p3, p3, 0x2

    .line 170
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 171
    if-ltz v13, :cond_2

    move/from16 v0, p4

    if-le v13, v0, :cond_4

    .line 172
    :cond_2
    const/16 v2, 0x3f

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 173
    if-ltz v13, :cond_3

    move/from16 v0, p4

    if-le v13, v0, :cond_4

    .line 174
    :cond_3
    move/from16 v13, p4

    .line 177
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 179
    const/16 v2, 0x40

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 180
    .local v14, "ind":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_7

    .line 181
    const/16 v2, 0x40

    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v14, v2, :cond_6

    .line 183
    const/4 v8, 0x0

    .line 184
    .local v8, "userInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 192
    .end local v5    # "host":Ljava/lang/String;
    .end local v8    # "userInfo":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_f

    .line 195
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_c

    .line 196
    const/16 v2, 0x5d

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v2, 0x2

    if-le v14, v2, :cond_b

    .line 198
    move-object/from16 v17, v5

    .line 199
    .local v17, "nhost":Ljava/lang/String;
    add-int/lit8 v2, v14, 0x1

    const/4 v3, 0x0

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 201
    .restart local v5    # "host":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid host: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v13    # "i":I
    .end local v14    # "ind":I
    .end local v16    # "isUNCName":Z
    .end local v17    # "nhost":Ljava/lang/String;
    .local v8, "userInfo":Ljava/lang/String;
    .restart local v20    # "queryStart":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 186
    .end local v20    # "queryStart":I
    .restart local v13    # "i":I
    .restart local v14    # "ind":I
    .restart local v16    # "isUNCName":Z
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v7, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 187
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 190
    :cond_7
    const/4 v8, 0x0

    .local v8, "userInfo":Ljava/lang/String;
    goto :goto_1

    .line 206
    .end local v8    # "userInfo":Ljava/lang/String;
    .restart local v17    # "nhost":Ljava/lang/String;
    :cond_8
    const/4 v6, -0x1

    .line 207
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v14, 0x1

    if-le v2, v3, :cond_9

    .line 208
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_a

    .line 209
    add-int/lit8 v14, v14, 0x1

    .line 211
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v14, 0x1

    if-le v2, v3, :cond_9

    .line 212
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 246
    .end local v5    # "host":Ljava/lang/String;
    .end local v17    # "nhost":Ljava/lang/String;
    :cond_9
    :goto_2
    const/4 v2, -0x1

    if-ge v6, v2, :cond_10

    .line 247
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid port number :"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .restart local v5    # "host":Ljava/lang/String;
    .restart local v17    # "nhost":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid authority field: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    .end local v5    # "host":Ljava/lang/String;
    .end local v17    # "nhost":Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid authority field: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_c
    const/16 v2, 0x3a

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 225
    const/4 v6, -0x1

    .line 226
    if-ltz v14, :cond_9

    .line 228
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v14, 0x1

    if-le v2, v3, :cond_d

    .line 231
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 232
    .local v12, "firstPortChar":C
    const/16 v2, 0x30

    if-lt v12, v2, :cond_e

    const/16 v2, 0x39

    if-gt v12, v2, :cond_e

    .line 233
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 240
    .end local v12    # "firstPortChar":C
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v5, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "host":Ljava/lang/String;
    goto/16 :goto_2

    .line 235
    .end local v5    # "host":Ljava/lang/String;
    .restart local v12    # "firstPortChar":C
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "invalid port: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    add-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 235
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v12    # "firstPortChar":C
    :cond_f
    const-string/jumbo v5, ""

    .restart local v5    # "host":Ljava/lang/String;
    goto/16 :goto_2

    .line 249
    .end local v5    # "host":Ljava/lang/String;
    :cond_10
    move/from16 p3, v13

    .line 256
    const/4 v9, 0x0

    .line 257
    .local v9, "path":Ljava/lang/String;
    if-nez v19, :cond_11

    .line 258
    const/4 v10, 0x0

    .line 263
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "query":Ljava/lang/String;
    .end local v14    # "ind":I
    :cond_11
    if-nez v5, :cond_12

    .line 264
    const-string/jumbo v5, ""

    .line 268
    :cond_12
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_13

    .line 269
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_15

    .line 270
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 293
    :cond_13
    :goto_3
    if-nez v9, :cond_14

    .line 294
    const-string/jumbo v9, ""

    .line 301
    :cond_14
    :goto_4
    const-string/jumbo v2, "/./"

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_19

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v13, 0x2

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "path":Ljava/lang/String;
    goto :goto_4

    .line 271
    .end local v9    # "path":Ljava/lang/String;
    :cond_15
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 272
    const/4 v15, 0x1

    .line 273
    const/16 v2, 0x2f

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 274
    .restart local v14    # "ind":I
    const-string/jumbo v21, ""

    .line 275
    .local v21, "seperator":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne v14, v2, :cond_16

    if-eqz v7, :cond_16

    .line 276
    const-string/jumbo v21, "/"

    .line 277
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v14, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_3

    .line 281
    .end local v9    # "path":Ljava/lang/String;
    .end local v14    # "ind":I
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_17
    if-eqz v7, :cond_18

    const-string/jumbo v21, "/"

    .line 282
    .restart local v21    # "seperator":Ljava/lang/String;
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "path":Ljava/lang/String;
    goto/16 :goto_3

    .line 281
    .end local v9    # "path":Ljava/lang/String;
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_18
    const-string/jumbo v21, ""

    .restart local v21    # "seperator":Ljava/lang/String;
    goto :goto_5

    .line 305
    .end local v21    # "seperator":Ljava/lang/String;
    :cond_19
    const/4 v13, 0x0

    .line 306
    :goto_6
    const-string/jumbo v2, "/../"

    invoke-virtual {v9, v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-ltz v13, :cond_1c

    .line 311
    if-nez v13, :cond_1a

    .line 312
    add-int/lit8 v2, v13, 0x3

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 313
    .restart local v9    # "path":Ljava/lang/String;
    const/4 v13, 0x0

    goto :goto_6

    .line 321
    .end local v9    # "path":Ljava/lang/String;
    :cond_1a
    if-lez v13, :cond_1b

    const/16 v2, 0x2f

    add-int/lit8 v3, v13, -0x1

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p4

    if-ltz p4, :cond_1b

    .line 322
    const-string/jumbo v2, "/../"

    move/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1b

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move/from16 v0, p4

    invoke-virtual {v9, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v13, 0x3

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 324
    .restart local v9    # "path":Ljava/lang/String;
    const/4 v13, 0x0

    .line 322
    goto :goto_6

    .line 326
    .end local v9    # "path":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v13, v13, 0x3

    goto :goto_6

    .line 330
    :cond_1c
    :goto_7
    const-string/jumbo v2, "/.."

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 331
    const-string/jumbo v2, "/.."

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 332
    const/16 v2, 0x2f

    add-int/lit8 v3, v13, -0x1

    invoke-virtual {v9, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p4

    if-ltz p4, :cond_1d

    .line 333
    add-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_7

    .line 339
    .end local v9    # "path":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v2, "./"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1e

    .line 340
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 343
    :cond_1e
    const-string/jumbo v2, "/."

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 344
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 347
    :cond_1f
    const-string/jumbo v2, "?"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 348
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 351
    invoke-virtual/range {v2 .. v11}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method protected sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 7
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 416
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    if-eq v2, v5, :cond_0

    .line 417
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 418
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 416
    :goto_0
    if-nez v2, :cond_2

    .line 419
    return v4

    :cond_0
    move v2, v3

    .line 416
    goto :goto_0

    :cond_1
    move v2, v4

    .line 417
    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    if-eq v2, v5, :cond_3

    .line 423
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 422
    :goto_1
    if-nez v2, :cond_5

    .line 424
    return v4

    :cond_3
    move v2, v3

    .line 422
    goto :goto_1

    :cond_4
    move v2, v4

    .line 423
    goto :goto_1

    .line 428
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v2

    if-eq v2, v6, :cond_6

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 429
    .local v0, "port1":I
    :goto_2
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v2

    if-eq v2, v6, :cond_7

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 430
    .local v1, "port2":I
    :goto_3
    if-eq v0, v1, :cond_8

    .line 431
    return v4

    .line 428
    .end local v0    # "port1":I
    .end local v1    # "port2":I
    :cond_6
    iget-object v2, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v2}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    .restart local v0    # "port1":I
    goto :goto_2

    .line 429
    :cond_7
    iget-object v2, p2, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v2}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v1

    .restart local v1    # "port2":I
    goto :goto_3

    .line 434
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 435
    return v4

    .line 437
    :cond_9
    return v3
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 577
    const/4 v6, 0x0

    .line 578
    .local v6, "authority":Ljava/lang/String;
    const/4 v7, 0x0

    .line 579
    .local v7, "userInfo":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    move-object/from16 v6, p3

    .line 581
    .local v6, "authority":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x40

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 582
    .local v11, "at":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_0

    .line 583
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, "userInfo":Ljava/lang/String;
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 591
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "userInfo":Ljava/lang/String;
    .end local v11    # "at":I
    :cond_0
    const/4 v8, 0x0

    .line 592
    .local v8, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 593
    .local v9, "query":Ljava/lang/String;
    if-eqz p5, :cond_1

    .line 594
    const/16 v1, 0x3f

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 595
    .local v12, "q":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_3

    .line 596
    add-int/lit8 v1, v12, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 597
    .local v9, "query":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "query":Ljava/lang/String;
    .end local v12    # "q":I
    :cond_1
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v10, p6

    .line 601
    invoke-virtual/range {v1 .. v10}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void

    .line 580
    .local v6, "authority":Ljava/lang/String;
    .local v7, "userInfo":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "authority":Ljava/lang/String;
    goto :goto_0

    .line 599
    .end local v6    # "authority":Ljava/lang/String;
    .end local v7    # "userInfo":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .local v9, "query":Ljava/lang/String;
    .restart local v12    # "q":I
    :cond_3
    move-object/from16 v8, p5

    .local v8, "path":Ljava/lang/String;
    goto :goto_1
.end method

.method protected setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "userInfo"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    if-eq p0, v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "handler for url different from this handler"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 495
    .local v1, "len":I
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 496
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 497
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 500
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 501
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 503
    :cond_2
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 504
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 506
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 510
    const-string/jumbo v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_4
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "fileAndQuery":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 515
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 518
    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
