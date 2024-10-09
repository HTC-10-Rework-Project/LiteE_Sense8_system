.class Ljava/io/ObjectInputStream$BlockDataInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDataInputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final HEADER_BLOCKED:I = -0x2

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final din:Ljava/io/DataInputStream;

.field private end:I

.field private final hbuf:[B

.field private final in:Ljava/io/ObjectInputStream$PeekInputStream;

.field private pos:I

.field final synthetic this$0:Ljava/io/ObjectInputStream;

.field private unread:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "this$0"    # Ljava/io/ObjectInputStream;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 2413
    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    .line 2417
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2391
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    .line 2393
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    .line 2395
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    .line 2398
    iput-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2402
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2404
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2406
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2418
    new-instance v0, Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream$PeekInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    .line 2419
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    .line 2420
    return-void
.end method

.method private readBlockHeader(Z)I
    .locals 9
    .param p1, "canBlock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 2474
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get1(Ljava/io/ObjectInputStream;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2481
    return v6

    .line 2519
    .local v0, "avail":I
    .local v3, "tc":I
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    .line 2520
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-wrap3(Ljava/io/ObjectInputStream;)V

    .line 2485
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7fffffff

    .line 2486
    .restart local v0    # "avail":I
    :goto_0
    if-nez v0, :cond_2

    .line 2487
    return v5

    .line 2485
    .end local v0    # "avail":I
    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    .restart local v0    # "avail":I
    goto :goto_0

    .line 2490
    :cond_2
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v3

    .line 2491
    .restart local v3    # "tc":I
    packed-switch v3, :pswitch_data_0

    .line 2524
    :pswitch_1
    if-ltz v3, :cond_7

    const/16 v4, 0x70

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_7

    .line 2525
    :cond_3
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 2526
    const-string/jumbo v5, "invalid type code: %02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2527
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2526
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2525
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2532
    .end local v0    # "avail":I
    .end local v3    # "tc":I
    :catch_0
    move-exception v1

    .line 2533
    .local v1, "ex":Ljava/io/EOFException;
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 2534
    const-string/jumbo v5, "unexpected EOF while reading block data header"

    .line 2533
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2493
    .end local v1    # "ex":Ljava/io/EOFException;
    .restart local v0    # "avail":I
    .restart local v3    # "tc":I
    :pswitch_2
    if-ge v0, v7, :cond_4

    .line 2494
    return v5

    .line 2496
    :cond_4
    :try_start_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2497
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    return v4

    .line 2500
    :pswitch_3
    const/4 v4, 0x5

    if-ge v0, v4, :cond_5

    .line 2501
    return v5

    .line 2503
    :cond_5
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2504
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v2

    .line 2505
    .local v2, "len":I
    if-gez v2, :cond_6

    .line 2506
    new-instance v4, Ljava/io/StreamCorruptedException;

    .line 2507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "illegal block data header length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2506
    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2510
    :cond_6
    return v2

    .line 2529
    .end local v2    # "len":I
    :cond_7
    return v6

    .line 2491
    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private readUTFBody(J)Ljava/lang/String;
    .locals 7
    .param p1, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3062
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_0

    .line 3063
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3066
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    .line 3067
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v0, v2, v3

    .line 3068
    .local v0, "avail":I
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 3069
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 3068
    goto :goto_0

    .line 3071
    :cond_2
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v2, :cond_3

    .line 3073
    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFChar(Ljava/lang/StringBuilder;J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr p1, v2

    goto :goto_0

    .line 3076
    :cond_3
    if-lez v0, :cond_4

    .line 3077
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3079
    :cond_4
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3080
    const-wide/16 v2, 0x400

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 3081
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_0

    .line 3086
    .end local v0    # "avail":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readUTFChar(Ljava/lang/StringBuilder;J)I
    .locals 10
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x2

    const/16 v6, 0x80

    .line 3176
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 3177
    .local v0, "b1":I
    shr-int/lit8 v3, v0, 0x4

    packed-switch v3, :pswitch_data_0

    .line 3220
    :pswitch_0
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3186
    :pswitch_1
    int-to-char v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3187
    const/4 v3, 0x1

    return v3

    .line 3191
    :pswitch_2
    cmp-long v3, p2, v8

    if-gez v3, :cond_0

    .line 3192
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3194
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3195
    .local v1, "b2":I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v6, :cond_1

    .line 3196
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3198
    :cond_1
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x6

    .line 3199
    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x0

    .line 3198
    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3200
    const/4 v3, 0x2

    return v3

    .line 3203
    .end local v1    # "b2":I
    :pswitch_3
    const-wide/16 v4, 0x3

    cmp-long v3, p2, v4

    if-gez v3, :cond_3

    .line 3204
    cmp-long v3, p2, v8

    if-nez v3, :cond_2

    .line 3205
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    .line 3207
    :cond_2
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3209
    :cond_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    .line 3210
    .restart local v1    # "b2":I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v2

    .line 3211
    .local v2, "b3":I
    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v6, :cond_4

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v6, :cond_5

    .line 3212
    :cond_4
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    .line 3214
    :cond_5
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    .line 3215
    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x6

    .line 3214
    or-int/2addr v3, v4

    .line 3216
    and-int/lit8 v4, v2, 0x3f

    shl-int/lit8 v4, v4, 0x0

    .line 3214
    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3217
    const/4 v3, 0x3

    return v3

    .line 3177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readUTFSpan(Ljava/lang/StringBuilder;J)J
    .locals 16
    .param p1, "sbuf"    # Ljava/lang/StringBuilder;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3098
    const/4 v6, 0x0

    .line 3099
    .local v6, "cpos":I
    move-object/from16 v0, p0

    iget v10, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3100
    .local v10, "start":I
    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v13

    const/16 v13, 0x100

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3102
    .local v2, "avail":I
    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    int-to-long v14, v2

    cmp-long v12, p2, v14

    if-lez v12, :cond_1

    add-int/lit8 v12, v2, -0x2

    :goto_0
    add-int v11, v13, v12

    .line 3103
    .local v11, "stop":I
    const/4 v9, 0x0

    .local v9, "outOfBounds":Z
    move v7, v6

    .line 3106
    .end local v6    # "cpos":I
    .local v7, "cpos":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    if-ge v12, v11, :cond_6

    .line 3108
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v12, v12, v13

    and-int/lit16 v3, v12, 0xff

    .line 3109
    .local v3, "b1":I
    shr-int/lit8 v12, v3, 0x4

    packed-switch v12, :pswitch_data_0

    .line 3144
    :pswitch_0
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3147
    .end local v3    # "b1":I
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v6, v7

    .line 3148
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :goto_2
    const/4 v9, 0x1

    .line 3150
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_9

    .line 3156
    :cond_0
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3157
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 3102
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v9    # "outOfBounds":Z
    .end local v11    # "stop":I
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v12, v0

    goto :goto_0

    .line 3118
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v7    # "cpos":I
    .restart local v9    # "outOfBounds":Z
    .restart local v11    # "stop":I
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    int-to-char v13, v3

    :try_start_2
    aput-char v13, v12, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    move v7, v6

    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    goto :goto_1

    .line 3123
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v4, v12, v13

    .line 3124
    .local v4, "b2":I
    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    .line 3125
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3149
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :catchall_0
    move-exception v12

    move v6, v7

    .line 3150
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :goto_4
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v13, v10

    int-to-long v14, v13

    cmp-long v13, v14, p2

    if-lez v13, :cond_a

    .line 3156
    :cond_2
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3157
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 3127
    .end local v6    # "cpos":I
    .restart local v3    # "b1":I
    .restart local v4    # "b2":I
    .restart local v7    # "cpos":I
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0x1f

    shl-int/lit8 v13, v13, 0x6

    .line 3128
    and-int/lit8 v14, v4, 0x3f

    shl-int/lit8 v14, v14, 0x0

    .line 3127
    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_5
    aput-char v13, v12, v7
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 3147
    .end local v4    # "b2":I
    :catch_1
    move-exception v8

    .restart local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_2

    .line 3132
    .end local v6    # "cpos":I
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7    # "cpos":I
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v13, 0x1

    aget-byte v5, v12, v13

    .line 3133
    .local v5, "b3":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v13, 0x0

    aget-byte v4, v12, v13

    .line 3134
    .restart local v4    # "b2":I
    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3135
    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_4

    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_5

    .line 3136
    :cond_4
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    .line 3138
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    and-int/lit8 v13, v3, 0xf

    shl-int/lit8 v13, v13, 0xc

    .line 3139
    and-int/lit8 v14, v4, 0x3f

    shl-int/lit8 v14, v14, 0x6

    .line 3138
    or-int/2addr v13, v14

    .line 3140
    and-int/lit8 v14, v5, 0x3f

    shl-int/lit8 v14, v14, 0x0

    .line 3138
    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_7
    aput-char v13, v12, v7
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 3149
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    :catchall_1
    move-exception v12

    goto :goto_4

    .line 3150
    .end local v3    # "b1":I
    .end local v6    # "cpos":I
    .restart local v7    # "cpos":I
    :cond_6
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_8

    .line 3156
    :cond_7
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3157
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    :cond_8
    move v6, v7

    .line 3161
    .end local v7    # "cpos":I
    .restart local v6    # "cpos":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3162
    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    return-wide v12

    .line 3149
    :cond_a
    throw v12

    .line 3109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2548
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2549
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v2, :cond_2

    .line 2551
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    .line 2552
    .local v1, "n":I
    if-ltz v1, :cond_1

    .line 2553
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2554
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    sub-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2569
    :goto_0
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-eq v2, v3, :cond_0

    .line 2576
    return-void

    .line 2556
    :cond_1
    new-instance v2, Ljava/io/StreamCorruptedException;

    .line 2557
    const-string/jumbo v3, "unexpected EOF in middle of data block"

    .line 2556
    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2570
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 2571
    .local v0, "ex":Ljava/io/IOException;
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2572
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2573
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2574
    throw v0

    .line 2560
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v1

    .line 2561
    .restart local v1    # "n":I
    if-ltz v1, :cond_3

    .line 2562
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2563
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_0

    .line 2565
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2566
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2669
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v3, :cond_4

    .line 2670
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-nez v3, :cond_1

    .line 2672
    :cond_0
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v0

    .local v0, "n":I
    if-eqz v0, :cond_0

    .line 2673
    packed-switch v0, :pswitch_data_0

    .line 2683
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2684
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2685
    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2690
    .end local v0    # "n":I
    :cond_1
    :goto_0
    :pswitch_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v3, :cond_3

    .line 2691
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v3

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2692
    .local v1, "unreadAvail":I
    :goto_1
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v3, :cond_2

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    :cond_2
    return v2

    .line 2678
    .end local v1    # "unreadAvail":I
    .restart local v0    # "n":I
    :pswitch_1
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2679
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    goto :goto_0

    .line 2691
    .end local v0    # "n":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "unreadAvail":I
    goto :goto_1

    .line 2694
    .end local v1    # "unreadAvail":I
    :cond_4
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v2

    return v2

    .line 2673
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2699
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_0

    .line 2700
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2701
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2702
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2704
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->close()V

    .line 2705
    return-void
.end method

.method currentBlockRemaining()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2584
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_1

    .line 2585
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v1, :cond_0

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    add-int/2addr v0, v1

    :cond_0
    return v0

    .line 2587
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method getBlockDataMode()Z
    .locals 1

    .prologue
    .line 2449
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2597
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_2

    .line 2598
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_0

    .line 2599
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2601
    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2603
    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v0

    return v0
.end method

.method peekByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2613
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    move-result v0

    .line 2614
    .local v0, "val":I
    if-gez v0, :cond_0

    .line 2615
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2617
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2630
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_2

    .line 2631
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_0

    .line 2632
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2634
    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 2636
    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    return v0
.end method

.method read([BIIZ)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2715
    if-nez p3, :cond_0

    .line 2716
    return v4

    .line 2717
    :cond_0
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_3

    .line 2718
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v1, v2, :cond_1

    .line 2719
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2721
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v1, :cond_2

    .line 2722
    const/4 v1, -0x1

    return v1

    .line 2724
    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2725
    .local v0, "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2726
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2727
    return v0

    .line 2728
    .end local v0    # "nread":I
    :cond_3
    if-eqz p4, :cond_5

    .line 2729
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/16 v3, 0x400

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    .line 2730
    .restart local v0    # "nread":I
    if-lez v0, :cond_4

    .line 2731
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2733
    :cond_4
    return v0

    .line 2735
    .end local v0    # "nread":I
    :cond_5
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    return v1
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2773
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2774
    .local v0, "v":I
    if-gez v0, :cond_0

    .line 2775
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2777
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method readBooleans([ZII)V
    .locals 8
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2898
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 2899
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2900
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    .line 2901
    sub-int v4, v0, v1

    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2902
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v4, v5, v7, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2903
    add-int v3, v1, v2

    .line 2904
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2912
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2913
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v4

    aput-boolean v4, p1, v1

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    .line 2905
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 2906
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    aput-boolean v4, p1, v1

    move v1, p2

    .line 2907
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2909
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    add-int/2addr v4, v1

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "stop":I
    goto :goto_1

    .line 2916
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2781
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2782
    .local v0, "v":I
    if-gez v0, :cond_0

    .line 2783
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2785
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2797
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    .line 2798
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2799
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2803
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getChar([BI)C

    move-result v0

    .line 2804
    .local v0, "v":C
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2805
    return v0

    .line 2800
    .end local v0    # "v":C
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 2801
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readChar()C

    move-result v1

    return v1
.end method

.method readChars([CII)V
    .locals 8
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2919
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 2920
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2921
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    .line 2922
    sub-int v4, v0, v1

    const/16 v5, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2923
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2924
    add-int v3, v1, v2

    .line 2925
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2933
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2934
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getChar([BI)C

    move-result v4

    aput-char v4, p1, v1

    .line 2935
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    .line 2926
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 2927
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readChar()C

    move-result v4

    aput-char v4, p1, v1

    move v1, p2

    .line 2928
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2930
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "stop":I
    goto :goto_1

    .line 2938
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2869
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_1

    .line 2870
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2871
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2875
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v0

    .line 2876
    .local v0, "v":D
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2877
    return-wide v0

    .line 2872
    .end local v0    # "v":D
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_0

    .line 2873
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method readDoubles([DII)V
    .locals 7
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3027
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 3028
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3029
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v3, :cond_0

    .line 3030
    sub-int v3, v0, v1

    const/16 v4, 0x80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3031
    .local v2, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v2, 0x3

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3032
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3040
    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap1([BI[DII)V

    .line 3041
    add-int p2, v1, v2

    .line 3042
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 3033
    .end local v2    # "span":I
    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v3, v4

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 3034
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v1

    move v1, p2

    .line 3035
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 3037
    :cond_1
    sub-int v3, v0, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "span":I
    goto :goto_1

    .line 3044
    .end local v2    # "span":I
    :cond_2
    return-void
.end method

.method public readFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2845
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    .line 2846
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2847
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2851
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getFloat([BI)F

    move-result v0

    .line 2852
    .local v0, "v":F
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2853
    return v0

    .line 2848
    .end local v0    # "v":F
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 2849
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    return v1
.end method

.method readFloats([FII)V
    .locals 7
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2985
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 2986
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2987
    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v3, :cond_0

    .line 2988
    sub-int v3, v0, v1

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2989
    .local v2, "span":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2990
    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2998
    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap2([BI[FII)V

    .line 2999
    add-int p2, v1, v2

    .line 3000
    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2991
    .end local v2    # "span":I
    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 2992
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, p1, v1

    move v1, p2

    .line 2993
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2995
    :cond_1
    sub-int v3, v0, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2    # "span":I
    goto :goto_1

    .line 3002
    .end local v2    # "span":I
    :cond_2
    return-void
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2748
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2749
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    .line 2753
    return-void
.end method

.method public readFully([BIIZ)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2758
    :goto_0
    if-lez p3, :cond_1

    .line 2759
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    .line 2760
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 2761
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2763
    :cond_0
    add-int/2addr p2, v0

    .line 2764
    sub-int/2addr p3, v0

    goto :goto_0

    .line 2766
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2833
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    .line 2834
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2835
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2839
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    .line 2840
    .local v0, "v":I
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2841
    return v0

    .line 2836
    .end local v0    # "v":I
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 2837
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    return v1
.end method

.method readInts([III)V
    .locals 8
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2963
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 2964
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2965
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    .line 2966
    sub-int v4, v0, v1

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2967
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x2

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2968
    add-int v3, v1, v2

    .line 2969
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2977
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2978
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v4

    aput v4, p1, v1

    .line 2979
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    .line 2970
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 2971
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, p1, v1

    move v1, p2

    .line 2972
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2974
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "stop":I
    goto :goto_1

    .line 2982
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2886
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2857
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_1

    .line 2858
    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2859
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2863
    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v0

    .line 2864
    .local v0, "v":J
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2865
    return-wide v0

    .line 2860
    .end local v0    # "v":J
    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_0

    .line 2861
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    return-wide v2
.end method

.method readLongUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3052
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readLongs([JII)V
    .locals 8
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3005
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 3006
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3007
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    .line 3008
    sub-int v4, v0, v1

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3009
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x3

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 3010
    add-int v3, v1, v2

    .line 3011
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 3019
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 3020
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 3021
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    .line 3012
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    .line 3013
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, p1, v1

    move v1, p2

    .line 3014
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 3016
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "stop":I
    goto :goto_1

    .line 3024
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2809
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    .line 2810
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2811
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2815
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    .line 2816
    .local v0, "v":S
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2817
    return v0

    .line 2812
    .end local v0    # "v":S
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 2813
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    return v1
.end method

.method readShorts([SII)V
    .locals 8
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2941
    add-int v0, p2, p3

    .local v0, "endoff":I
    move v1, p2

    .line 2942
    .end local p2    # "off":I
    .local v1, "off":I
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2943
    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    .line 2944
    sub-int v4, v0, v1

    const/16 v5, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2945
    .local v2, "span":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2946
    add-int v3, v1, v2

    .line 2947
    .local v3, "stop":I
    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2955
    .end local v2    # "span":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2956
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getShort([BI)S

    move-result v4

    aput-short v4, p1, v1

    .line 2957
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    .line 2948
    .end local v3    # "stop":I
    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 2949
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    aput-short v4, p1, v1

    move v1, p2

    .line 2950
    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_0

    .line 2952
    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "stop":I
    goto :goto_1

    .line 2960
    .end local v3    # "stop":I
    :cond_3
    return-void
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2881
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2789
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    .line 2790
    .local v0, "v":I
    if-gez v0, :cond_0

    .line 2791
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 2793
    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2821
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    .line 2822
    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2823
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    .line 2827
    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    .line 2828
    .local v0, "v":I
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2829
    return v0

    .line 2824
    .end local v0    # "v":I
    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    .line 2825
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    return v1
.end method

.method setBlockDataMode(Z)Z
    .locals 2
    .param p1, "newmode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2430
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-ne v0, p1, :cond_0

    .line 2431
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0

    .line 2433
    :cond_0
    if-eqz p1, :cond_2

    .line 2434
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    .line 2435
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    .line 2436
    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    .line 2440
    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    .line 2441
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2437
    :cond_2
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ge v0, v1, :cond_1

    .line 2438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unread block data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2645
    move-wide v2, p1

    .line 2646
    .local v2, "remain":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2647
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_3

    .line 2648
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v1, v4, :cond_0

    .line 2649
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    .line 2651
    :cond_0
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v1, :cond_2

    .line 2665
    :cond_1
    sub-long v4, p1, v2

    return-wide v4

    .line 2654
    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 2655
    .local v0, "nread":I
    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 2656
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_0

    .line 2658
    .end local v0    # "nread":I
    :cond_3
    const-wide/16 v4, 0x400

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 2659
    .restart local v0    # "nread":I
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v4, v6, v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2662
    int-to-long v4, v0

    sub-long/2addr v2, v4

    goto :goto_0
.end method

.method skipBlockData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2458
    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v0, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not in block data mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2461
    :cond_0
    :goto_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    .line 2462
    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    goto :goto_0

    .line 2464
    :cond_1
    return-void
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2769
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
