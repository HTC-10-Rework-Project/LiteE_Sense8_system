.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# instance fields
.field protected final buf:[B

.field protected final def:Ljava/util/zip/Deflater;

.field private rbuf:[B

.field private reachEOF:Z

.field private usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 78
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;

    .prologue
    .line 91
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;
    .param p3, "bufLen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    new-array v0, v2, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    .line 56
    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    .line 59
    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    if-nez p2, :cond_1

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null deflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    if-ge p3, v2, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    .line 117
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    .line 118
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 265
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_0
    const/4 v0, 0x1

    return v0
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

    .line 127
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 130
    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 134
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    .line 139
    :cond_1
    return-void

    .line 135
    :catchall_0
    move-exception v0

    .line 136
    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    .line 135
    throw v0
.end method

.method public mark(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 288
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v0

    .line 153
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 154
    const/4 v1, -0x1

    return v1

    .line 155
    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 173
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null buffer for read"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 177
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 176
    :cond_2
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_1

    .line 178
    if-nez p3, :cond_3

    .line 179
    return v5

    .line 183
    :cond_3
    const/4 v0, 0x0

    .line 184
    .local v0, "cnt":I
    :goto_0
    if-lez p3, :cond_6

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 188
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 190
    .local v1, "n":I
    if-gez v1, :cond_5

    .line 192
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 199
    .end local v1    # "n":I
    :cond_4
    :goto_1
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    .line 200
    .restart local v1    # "n":I
    add-int/2addr v0, v1

    .line 201
    add-int/2addr p2, v1

    .line 202
    sub-int/2addr p3, v1

    goto :goto_0

    .line 193
    :cond_5
    if-lez v1, :cond_4

    .line 194
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_1

    .line 206
    .end local v1    # "n":I
    :cond_6
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 207
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    .line 208
    if-nez v0, :cond_7

    .line 209
    const/4 v0, -0x1

    .line 213
    :cond_7
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x200

    const/4 v6, 0x0

    .line 229
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 230
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "negative skip length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 235
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    if-ge v4, v7, :cond_1

    .line 236
    new-array v4, v7, [B

    iput-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    .line 238
    :cond_1
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 239
    .local v3, "total":I
    const-wide/16 v0, 0x0

    .line 240
    .local v0, "cnt":J
    :goto_0
    if-lez v3, :cond_2

    .line 242
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    if-gt v3, v4, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {p0, v5, v6, v4}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v2

    .line 244
    .local v2, "len":I
    if-gez v2, :cond_4

    .line 250
    .end local v2    # "len":I
    :cond_2
    return-wide v0

    .line 242
    :cond_3
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    goto :goto_1

    .line 247
    .restart local v2    # "len":I
    :cond_4
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 248
    sub-int/2addr v3, v2

    goto :goto_0
.end method
