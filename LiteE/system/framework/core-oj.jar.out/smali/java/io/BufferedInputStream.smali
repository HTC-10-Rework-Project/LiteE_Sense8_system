.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7

.field private static final bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/io/BufferedInputStream;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-class v0, Ljava/io/BufferedInputStream;

    const-class v1, [B

    const-string/jumbo v2, "buf"

    .line 80
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 79
    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 185
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 202
    if-gtz p2, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 206
    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x7ffffff7

    const/4 v7, 0x0

    .line 216
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    .line 217
    .local v0, "buffer":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v5, :cond_2

    .line 218
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 247
    :cond_0
    :goto_0
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    .line 248
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v5

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v7, v0

    iget v8, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 249
    .local v1, "n":I
    if-lez v1, :cond_1

    .line 250
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    .line 251
    :cond_1
    return-void

    .line 219
    .end local v1    # "n":I
    :cond_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v6, v0

    if-lt v5, v6, :cond_0

    .line 220
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_3

    .line 221
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int v4, v5, v6

    .line 222
    .local v4, "sz":I
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    invoke-static {v0, v5, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 223
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 224
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    goto :goto_0

    .line 225
    .end local v4    # "sz":I
    :cond_3
    array-length v5, v0

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_4

    .line 226
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 227
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 228
    :cond_4
    array-length v5, v0

    if-lt v5, v8, :cond_5

    .line 229
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v6, "Required array size too large"

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 231
    :cond_5
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v6, v8, v6

    if-gt v5, v6, :cond_7

    .line 232
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    mul-int/lit8 v3, v5, 0x2

    .line 233
    .local v3, "nsz":I
    :goto_1
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v3, v5, :cond_6

    .line 234
    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 235
    :cond_6
    new-array v2, v3, [B

    .line 236
    .local v2, "nbuf":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v0, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 237
    sget-object v5, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 243
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Stream closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    .end local v2    # "nbuf":[B
    .end local v3    # "nsz":I
    :cond_7
    const v3, 0x7ffffff7

    .restart local v3    # "nsz":I
    goto :goto_1

    .line 245
    .restart local v2    # "nbuf":[B
    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method private getBufIfOpen()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 171
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 172
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    return-object v0
.end method

.method private getInIfOpen()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 160
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 161
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_0
    return-object v0
.end method

.method private read1([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    .line 280
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 285
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    array-length v2, v2

    if-lt p3, v2, :cond_0

    iget v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v2, :cond_0

    .line 286
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    .line 288
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 289
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    .line 290
    if-gtz v0, :cond_1

    const/4 v2, -0x1

    return v2

    .line 292
    :cond_1
    if-ge v0, p3, :cond_2

    move v1, v0

    .line 293
    .local v1, "cnt":I
    :goto_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 295
    return v1

    .line 292
    .end local v1    # "cnt":I
    :cond_2
    move v1, p3

    .restart local v1    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0x7fffffff

    monitor-enter p0

    .line 411
    :try_start_0
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v1, v3, v4

    .line 412
    .local v1, "n":I
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 413
    .local v0, "avail":I
    sub-int v3, v2, v0

    if-le v1, v3, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    .line 415
    :cond_0
    add-int v2, v1, v0

    goto :goto_0

    .end local v0    # "avail":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 480
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .local v0, "buffer":[B
    if-eqz v0, :cond_2

    .line 481
    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 483
    .local v1, "input":Ljava/io/InputStream;
    iput-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 484
    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_1
    return-void

    .line 490
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    .line 427
    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 428
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 429
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 268
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 269
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 271
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 338
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 339
    or-int v3, p2, p3

    add-int v4, p2, p3

    or-int/2addr v3, v4

    array-length v4, p1

    add-int v5, p2, p3

    sub-int/2addr v4, v5

    or-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 340
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 341
    :cond_0
    if-nez p3, :cond_1

    monitor-exit p0

    .line 342
    return v6

    .line 345
    :cond_1
    const/4 v1, 0x0

    .line 347
    .local v1, "n":I
    :cond_2
    add-int v3, p2, v1

    sub-int v4, p3, v1

    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Ljava/io/BufferedInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 348
    .local v2, "nread":I
    if-gtz v2, :cond_4

    .line 349
    if-nez v1, :cond_3

    .end local v2    # "nread":I
    :goto_0
    monitor-exit p0

    return v2

    .restart local v2    # "nread":I
    :cond_3
    move v2, v1

    goto :goto_0

    .line 350
    :cond_4
    add-int/2addr v1, v2

    .line 351
    if-lt v1, p3, :cond_5

    monitor-exit p0

    .line 352
    return v1

    .line 354
    :cond_5
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 355
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-gtz v3, :cond_2

    monitor-exit p0

    .line 356
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 448
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 449
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v0, :cond_0

    .line 450
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 451
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 452
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    monitor-enter p0

    .line 370
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    monitor-exit p0

    .line 372
    return-wide v6

    .line 374
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 376
    .local v0, "avail":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    .line 378
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v4, :cond_1

    .line 379
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 382
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 383
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 384
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    monitor-exit p0

    .line 385
    return-wide v6

    .line 388
    :cond_2
    cmp-long v4, v0, p1

    if-gez v4, :cond_3

    move-wide v2, v0

    .line 389
    .local v2, "skipped":J
    :goto_0
    :try_start_3
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 390
    return-wide v2

    .line 388
    .end local v2    # "skipped":J
    :cond_3
    move-wide v2, p1

    .restart local v2    # "skipped":J
    goto :goto_0

    .end local v0    # "avail":J
    .end local v2    # "skipped":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
