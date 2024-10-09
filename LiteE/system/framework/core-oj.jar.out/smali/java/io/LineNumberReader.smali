.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# static fields
.field private static final maxSkipBufferSize:I = 0x2000


# instance fields
.field private lineNumber:I

.field private markedLineNumber:I

.field private markedSkipLF:Z

.field private skipBuffer:[C

.field private skipLF:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 87
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    return v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 263
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 264
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->skipLF:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 266
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 125
    iget-object v2, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 127
    .local v0, "c":I
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    if-eqz v1, :cond_1

    .line 128
    if-ne v0, v3, :cond_0

    .line 129
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    monitor-exit v2

    .line 139
    return v0

    .line 134
    :pswitch_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 136
    :pswitch_2
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 137
    return v3

    .line 125
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read([CII)I
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v4, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 168
    .local v2, "n":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int v3, p2, v2

    if-ge v1, v3, :cond_1

    .line 169
    aget-char v0, p1, v1

    .line 170
    .local v0, "c":I
    iget-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z

    if-eqz v3, :cond_0

    .line 171
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 172
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 168
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 179
    :goto_2
    :pswitch_1
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 165
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 177
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :pswitch_2
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v0    # "c":I
    :cond_1
    monitor-exit v4

    .line 184
    return v2

    .line 175
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v2, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    invoke-super {p0, v1}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "l":Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->skipLF:Z

    .line 203
    if-eqz v0, :cond_0

    .line 204
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 205
    return-object v0

    .line 200
    .end local v0    # "l":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 278
    iget v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 279
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->markedSkipLF:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->skipLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 281
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    .prologue
    .line 98
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 99
    return-void
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 230
    cmp-long v4, p1, v8

    if-gez v4, :cond_0

    .line 231
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "skip() value is negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_0
    const-wide/16 v4, 0x2000

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 233
    .local v1, "nn":I
    iget-object v5, p0, Ljava/io/LineNumberReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 234
    :try_start_0
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    if-eqz v4, :cond_1

    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v1, :cond_2

    .line 235
    :cond_1
    new-array v4, v1, [C

    iput-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    .line 236
    :cond_2
    move-wide v2, p1

    .line 237
    .local v2, "r":J
    :goto_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_3

    .line 238
    iget-object v4, p0, Ljava/io/LineNumberReader;->skipBuffer:[C

    int-to-long v6, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v6}, Ljava/io/LineNumberReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 239
    .local v0, "nc":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 243
    .end local v0    # "nc":I
    :cond_3
    sub-long v6, p1, v2

    monitor-exit v5

    return-wide v6

    .line 241
    .restart local v0    # "nc":I
    :cond_4
    int-to-long v6, v0

    sub-long/2addr v2, v6

    goto :goto_0

    .line 233
    .end local v0    # "nc":I
    .end local v2    # "r":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
