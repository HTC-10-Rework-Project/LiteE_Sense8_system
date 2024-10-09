.class public Lsun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile channelsAvailable:Z


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/ReadableByteChannel;

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private haveLeftoverChar:Z

.field private in:Ljava/io/InputStream;

.field private volatile isOpen:Z

.field private leftoverChar:C

.field private needsFlush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/cs/StreamDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    .line 211
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 234
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 235
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 234
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 236
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 234
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 233
    invoke-direct {p0, p1, p2, v0}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    .line 237
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 240
    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 54
    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 57
    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 241
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 242
    iput-object p3, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 250
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_0

    .line 251
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 252
    iput-object v2, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 253
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 255
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 256
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .locals 3
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "mbc"    # I

    .prologue
    const/16 v0, 0x20

    const/4 v2, 0x0

    .line 258
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    .line 54
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 57
    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 260
    iput-object p1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 261
    iput-object p2, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 262
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 263
    if-gez p3, :cond_1

    .line 264
    const/16 p3, 0x2000

    .line 263
    .end local p3    # "mbc":I
    :cond_0
    :goto_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 268
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 269
    return-void

    .line 265
    .restart local p3    # "mbc":I
    :cond_1
    if-ge p3, v0, :cond_0

    move p3, v0

    .line 266
    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    return-void
.end method

.method public static forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .prologue
    .line 97
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lsun/nio/cs/StreamDecoder;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p2

    .line 67
    .local v0, "csn":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 68
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance v2, Lsun/nio/cs/StreamDecoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 72
    :catch_0
    move-exception v1

    .line 73
    :cond_1
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v2, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 80
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lsun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .prologue
    .line 87
    new-instance v0, Lsun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lsun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method private static getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p0, "in"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v2, 0x0

    .line 214
    sget-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    if-nez v1, :cond_0

    .line 215
    return-object v2

    .line 217
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "x":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lsun/nio/cs/StreamDecoder;->channelsAvailable:Z

    .line 220
    return-object v2
.end method

.method private inReady()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    :try_start_0
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 401
    :cond_0
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "x":Ljava/io/IOException;
    return v2
.end method

.method private isOpen()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z

    return v0
.end method

.method private read0()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 119
    iget-object v3, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 124
    iget-char v2, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    .line 128
    :cond_0
    const/4 v2, 0x2

    :try_start_1
    new-array v0, v2, [C

    .line 129
    .local v0, "cb":[C
    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v2, v4}, Lsun/nio/cs/StreamDecoder;->read([CII)I

    move-result v1

    .line 130
    .local v1, "n":I
    packed-switch v1, :pswitch_data_0

    .line 140
    :pswitch_0
    sget-boolean v2, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0    # "cb":[C
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "cb":[C
    .restart local v1    # "n":I
    :pswitch_1
    monitor-exit v3

    .line 132
    return v5

    .line 134
    :pswitch_2
    const/4 v2, 0x1

    :try_start_2
    aget-char v2, v0, v2

    iput-char v2, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    .line 135
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 138
    :pswitch_3
    const/4 v2, 0x0

    aget-char v2, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v2

    :cond_1
    monitor-exit v3

    .line 141
    return v5

    .line 130
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readBytes()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 274
    :try_start_0
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v4, v5}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 279
    .local v1, "n":I
    if-gez v1, :cond_7

    .line 299
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 280
    return v1

    .line 283
    .end local v1    # "n":I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 284
    .local v0, "lim":I
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 285
    .local v2, "pos":I
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-le v2, v0, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v0    # "lim":I
    .end local v2    # "pos":I
    :catchall_0
    move-exception v4

    .line 299
    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 296
    throw v4

    .line 286
    .restart local v0    # "lim":I
    .restart local v2    # "pos":I
    :cond_1
    if-gt v2, v0, :cond_2

    sub-int v3, v0, v2

    .line 287
    .local v3, "rem":I
    :goto_0
    :try_start_2
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    if-gtz v3, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 286
    .end local v3    # "rem":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "rem":I
    goto :goto_0

    .line 288
    :cond_3
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 289
    .restart local v1    # "n":I
    if-gez v1, :cond_4

    .line 299
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 290
    return v1

    .line 291
    :cond_4
    if-nez v1, :cond_5

    .line 292
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Underlying input stream returned zero bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_5
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    if-le v1, v3, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 294
    :cond_6
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    add-int v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    .end local v0    # "lim":I
    .end local v2    # "pos":I
    .end local v3    # "rem":I
    :cond_7
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 302
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 303
    .restart local v3    # "rem":I
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    new-instance v4, Ljava/lang/AssertionError;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 304
    :cond_8
    return v3
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 194
    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implClose()V

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->isOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 198
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method encodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method implRead([CII)I
    .locals 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 313
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_0

    sub-int v4, p3, p2

    if-gt v4, v7, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 315
    :cond_0
    sub-int v4, p3, p2

    invoke-static {p1, p2, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 316
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 321
    :cond_1
    iget-boolean v4, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    if-eqz v4, :cond_5

    .line 322
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 323
    .local v1, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    return v4

    .line 329
    :cond_2
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 330
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-nez v4, :cond_3

    .line 331
    return v6

    .line 334
    :cond_3
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    return v4

    .line 337
    :cond_4
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 341
    .end local v1    # "cr":Ljava/nio/charset/CoderResult;
    :cond_5
    const/4 v2, 0x0

    .line 343
    .local v2, "eof":Z
    :cond_6
    :goto_0
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 344
    .restart local v1    # "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 345
    if-eqz v2, :cond_8

    .line 371
    :cond_7
    if-eqz v2, :cond_d

    .line 372
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 374
    iput-boolean v7, p0, Lsun/nio/cs/StreamDecoder;->needsFlush:Z

    .line 375
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    return v4

    .line 347
    :cond_8
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-lez v4, :cond_9

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_7

    .line 351
    :cond_9
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->readBytes()I

    move-result v3

    .line 352
    .local v3, "n":I
    if-gez v3, :cond_6

    .line 353
    const/4 v2, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "n":I
    :cond_a
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 365
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_7

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-gtz v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 368
    :cond_b
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_0

    .line 378
    :cond_c
    iget-object v4, p0, Lsun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 379
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-nez v4, :cond_d

    .line 380
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 384
    :cond_d
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-nez v4, :cond_f

    .line 385
    if-eqz v2, :cond_e

    .line 386
    return v6

    .line 387
    :cond_e
    sget-boolean v4, Lsun/nio/cs/StreamDecoder;->-assertionsDisabled:Z

    if-nez v4, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 389
    :cond_f
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    return v4
.end method

.method implReady()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lsun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->inReady()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 10
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 147
    move v3, p2

    .line 148
    .local v3, "off":I
    move v1, p3

    .line 149
    .local v1, "len":I
    iget-object v5, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 150
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 151
    if-ltz p2, :cond_0

    array-length v6, p1

    if-le p2, v6, :cond_1

    .line 153
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 151
    :cond_1
    if-ltz p3, :cond_0

    .line 152
    add-int v6, p2, p3

    :try_start_1
    array-length v7, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v6, v7, :cond_0

    add-int v6, p2, p3

    if-ltz v6, :cond_0

    .line 155
    if-nez p3, :cond_2

    monitor-exit v5

    .line 156
    return v8

    .line 158
    :cond_2
    const/4 v2, 0x0

    .line 160
    .local v2, "n":I
    :try_start_2
    iget-boolean v6, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v6, :cond_4

    .line 162
    iget-char v6, p0, Lsun/nio/cs/StreamDecoder;->leftoverChar:C

    aput-char v6, p1, p2

    .line 163
    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v1, p3, -0x1

    .line 164
    const/4 v6, 0x0

    iput-boolean v6, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 165
    const/4 v2, 0x1

    .line 166
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    :cond_3
    monitor-exit v5

    .line 168
    return v9

    .line 171
    :cond_4
    if-ne v1, v9, :cond_7

    .line 173
    :try_start_3
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->read0()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 174
    .local v0, "c":I
    if-ne v0, v4, :cond_6

    .line 175
    if-nez v2, :cond_5

    move v2, v4

    .end local v2    # "n":I
    :cond_5
    monitor-exit v5

    return v2

    .line 176
    .restart local v2    # "n":I
    :cond_6
    int-to-char v4, v0

    :try_start_4
    aput-char v4, p1, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    add-int/lit8 v4, v2, 0x1

    monitor-exit v5

    return v4

    .line 180
    .end local v0    # "c":I
    :cond_7
    add-int v4, v3, v1

    :try_start_5
    invoke-virtual {p0, p1, v3, v4}, Lsun/nio/cs/StreamDecoder;->implRead([CII)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v4

    add-int/2addr v4, v2

    monitor-exit v5

    return v4
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v1, p0, Lsun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-direct {p0}, Lsun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 187
    iget-boolean v0, p0, Lsun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/cs/StreamDecoder;->implReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
