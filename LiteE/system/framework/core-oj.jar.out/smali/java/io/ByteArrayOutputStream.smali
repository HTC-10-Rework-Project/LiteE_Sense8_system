.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 73
    if-gez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 78
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 92
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;->grow(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    .prologue
    .line 112
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v1, v2

    .line 113
    .local v1, "oldCapacity":I
    shl-int/lit8 v0, v1, 0x1

    .line 114
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    if-gez v2, :cond_0

    .line 115
    move v0, p1

    .line 116
    :cond_0
    const v2, 0x7ffffff7

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    .line 117
    invoke-static {p1}, Ljava/io/ByteArrayOutputStream;->hugeCapacity(I)I

    move-result v0

    .line 118
    :cond_1
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 119
    return-void
.end method

.method private static hugeCapacity(I)I
    .locals 1
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 122
    if-gez p0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 124
    :cond_0
    if-le p0, v0, :cond_1

    .line 125
    const v0, 0x7fffffff

    .line 124
    :cond_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 179
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 180
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 2

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 221
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    monitor-enter p0

    .line 272
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Ljava/lang/String;-><init>([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 245
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    monitor-enter p0

    .line 135
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 136
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 137
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    monitor-enter p0

    .line 149
    if-ltz p2, :cond_0

    :try_start_0
    array-length v0, p1

    if-le p2, v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_1
    if-ltz p3, :cond_0

    .line 150
    add-int v0, p2, p3

    :try_start_1
    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 153
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    .line 154
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 155
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 156
    return-void
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 168
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
