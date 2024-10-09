.class public Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"

# interfaces
.implements Lsun/nio/ch/DirectBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DirectByteBuffer$MemoryRef;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final cleaner:Lsun/misc/Cleaner;

.field final memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/nio/DirectByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    .line 39
    return-void
.end method

.method public constructor <init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    .locals 6
    .param p1, "cap"    # I
    .param p2, "addr"    # J
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "unmapper"    # Ljava/lang/Runnable;
    .param p6, "isReadOnly"    # Z

    .prologue
    .line 110
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(IIIILjava/io/FileDescriptor;)V

    .line 111
    iput-boolean p6, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 112
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p2, p3}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 113
    iput-wide p2, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 114
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-static {v0, p5}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 115
    return-void
.end method

.method constructor <init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V
    .locals 7
    .param p1, "capacity"    # I
    .param p2, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v5, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    iget v6, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 90
    iput-object p2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 91
    iget-wide v0, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    iget v3, p2, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 93
    iput-boolean v2, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 94
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 3
    .param p1, "addr"    # J
    .param p3, "cap"    # I

    .prologue
    .line 99
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Ljava/nio/MappedByteBuffer;-><init>(IIII)V

    .line 100
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p1, p2}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(J)V

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 101
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 103
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIII)V
    .locals 8
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    .prologue
    .line 121
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V
    .locals 7
    .param p1, "memoryRef"    # Ljava/nio/DirectByteBuffer$MemoryRef;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .prologue
    .line 127
    iget-object v5, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Ljava/nio/MappedByteBuffer;-><init>(IIII[BI)V

    .line 128
    iput-boolean p7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 129
    iput-object p1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 130
    iget-wide v0, p1, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    .line 132
    return-void
.end method

.method private get(J)B
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 196
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method private getDouble(J)D
    .locals 5
    .param p1, "a"    # J

    .prologue
    .line 842
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    .line 843
    .local v0, "x":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method private getFloat(J)F
    .locals 3
    .param p1, "a"    # J

    .prologue
    .line 738
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v1}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    .line 739
    .local v0, "x":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private getInt(J)I
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 534
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method private getLong(J)J
    .locals 3
    .param p1, "a"    # J

    .prologue
    .line 636
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShort(J)S
    .locals 1
    .param p1, "a"    # J

    .prologue
    .line 432
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    return v0
.end method

.method private ix(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 192
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private put(JB)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # B

    .prologue
    .line 235
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 236
    return-object p0
.end method

.method private putChar(JC)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # C

    .prologue
    .line 367
    int-to-short v0, p3

    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 368
    return-object p0
.end method

.method private putDouble(JD)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # D

    .prologue
    .line 880
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 881
    .local v0, "y":J
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 882
    return-object p0
.end method

.method private putFloat(JF)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "a"    # J
    .param p3, "x"    # F

    .prologue
    .line 776
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 777
    .local v0, "y":I
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, p2, v0, v1}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 778
    return-object p0
.end method

.method private putInt(JI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # I

    .prologue
    .line 571
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 572
    return-object p0
.end method

.method private putLong(JJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # J

    .prologue
    .line 673
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 674
    return-object p0
.end method

.method private putShort(JS)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "a"    # J
    .param p3, "x"    # S

    .prologue
    .line 469
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeShort(JSZ)V

    .line 470
    return-object p0
.end method


# virtual methods
.method final _get(I)B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method final _put(IB)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "b"    # B

    .prologue
    .line 323
    invoke-virtual {p0, p1, p2}, Ljava/nio/DirectByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 324
    return-void
.end method

.method public final address()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Ljava/nio/DirectByteBuffer;->address:J

    return-wide v0
.end method

.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 10

    .prologue
    .line 414
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 418
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 419
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 420
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 421
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x1

    .line 422
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 428
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 423
    const/4 v2, -0x1

    .line 424
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 422
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 420
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 10

    .prologue
    .line 928
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 932
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 933
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 934
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 936
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x3

    .line 937
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 943
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 938
    const/4 v2, -0x1

    .line 939
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 937
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 934
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 10

    .prologue
    .line 824
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 828
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 829
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 830
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 831
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x2

    .line 832
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 838
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 833
    const/4 v2, -0x1

    .line 834
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 832
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 830
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 10

    .prologue
    .line 618
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 622
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 623
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 624
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 625
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x2

    .line 626
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 632
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 627
    const/4 v2, -0x1

    .line 628
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 626
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 624
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 10

    .prologue
    .line 720
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 724
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 725
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 726
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 727
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x3

    .line 728
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 734
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 729
    const/4 v2, -0x1

    .line 730
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 728
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 726
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 174
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 178
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 179
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 180
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 181
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 182
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 183
    const/4 v7, 0x1

    .line 177
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 10

    .prologue
    .line 516
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v6

    .line 520
    .local v6, "off":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 521
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v6, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    :cond_1
    if-gt v6, v8, :cond_2

    sub-int v9, v8, v6

    .line 523
    .local v9, "rem":I
    :goto_0
    shr-int/lit8 v4, v9, 0x1

    .line 524
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 530
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    .line 525
    const/4 v2, -0x1

    .line 526
    const/4 v3, 0x0

    move-object v1, p0

    move v5, v4

    .line 524
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v0

    .line 522
    .end local v4    # "size":I
    .end local v9    # "rem":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "rem":I
    goto :goto_0
.end method

.method public final attachment()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    return-object v0
.end method

.method public final cleaner()Lsun/misc/Cleaner;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->cleaner:Lsun/misc/Cleaner;

    return-object v0
.end method

.method public final compact()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 287
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_0

    .line 288
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_0
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_1

    .line 291
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 293
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 294
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 295
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-le v1, v0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 296
    :cond_2
    if-gt v1, v0, :cond_3

    sub-int v2, v0, v1

    .line 297
    .local v2, "rem":I
    :goto_0
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    iget v5, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int/2addr v4, v5

    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->hb:[B

    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 298
    invoke-virtual {p0, v2}, Ljava/nio/DirectByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 299
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/DirectByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 300
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->discardMark()V

    .line 301
    return-object p0

    .line 296
    .end local v2    # "rem":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_0
.end method

.method public final duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 160
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isFreed:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer has been freed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    .line 164
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->markValue()I

    move-result v2

    .line 165
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v3

    .line 166
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v4

    .line 167
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    move-result v5

    .line 168
    iget v6, p0, Ljava/nio/DirectByteBuffer;->offset:I

    .line 169
    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    .line 163
    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method

.method public final get()B
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextGetIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 209
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->get(J)B

    move-result v0

    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "length"    # I

    .prologue
    .line 218
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_0

    .line 219
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_0
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 222
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 223
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 224
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-le v1, v0, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 225
    :cond_1
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    .line 226
    .local v2, "rem":I
    :goto_0
    if-le p3, v2, :cond_3

    .line 227
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 225
    .end local v2    # "rem":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_0

    .line 228
    :cond_3
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 230
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 231
    return-object p0
.end method

.method public final getChar()C
    .locals 5

    .prologue
    .line 328
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v2, v2, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v2, :cond_0

    .line 329
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "buffer is inaccessible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_0
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    add-int/lit8 v0, v2, 0x2

    .line 332
    .local v0, "newPosition":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 333
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 335
    :cond_1
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    invoke-direct {p0, v2}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v2

    iget-boolean v4, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v2

    int-to-char v1, v2

    .line 336
    .local v1, "x":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 337
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 342
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    .line 346
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method getCharUnchecked(I)C
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 351
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 856
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 857
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method final getDoubleUnchecked(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 864
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat()F
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public final getFloat(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 752
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method final getFloatUnchecked(I)F
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 760
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 547
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method final getIntUnchecked(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 555
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getInt(J)I

    move-result v0

    return v0
.end method

.method public final getLong()J
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 649
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final getLongUnchecked(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 657
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort()S
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 445
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getShortUnchecked(I)S
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 453
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->getShort(J)S

    move-result v0

    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 359
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 363
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 362
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    .line 364
    return-void
.end method

.method final getUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 872
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 876
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 875
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    .line 877
    return-void
.end method

.method final getUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 768
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 772
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 771
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    .line 773
    return-void
.end method

.method final getUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 563
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 567
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 566
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    .line 568
    return-void
.end method

.method final getUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 665
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 669
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 668
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    .line 670
    return-void
.end method

.method getUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 461
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 465
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 464
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    .line 466
    return-void
.end method

.method public final isAccessible()Z
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    return v0
.end method

.method public final isDirect()Z
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public final put(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # B

    .prologue
    .line 241
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 247
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->nextPutIndex()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 248
    return-object p0
.end method

.method public final put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # B

    .prologue
    .line 253
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 257
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->put(JB)Ljava/nio/ByteBuffer;

    .line 260
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I

    .prologue
    .line 266
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v3, v3, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v3, :cond_0

    .line 267
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "buffer is inaccessible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_0
    iget-boolean v3, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v3, :cond_1

    .line 270
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 272
    :cond_1
    array-length v3, p1

    invoke-static {p2, p3, v3}, Ljava/nio/DirectByteBuffer;->checkBounds(III)V

    .line 273
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v1

    .line 274
    .local v1, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v0

    .line 275
    .local v0, "lim":I
    sget-boolean v3, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    if-le v1, v0, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 276
    :cond_2
    if-gt v1, v0, :cond_3

    sub-int v2, v0, v1

    .line 277
    .local v2, "rem":I
    :goto_0
    if-le p3, v2, :cond_4

    .line 278
    new-instance v3, Ljava/nio/BufferOverflowException;

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v3

    .line 276
    .end local v2    # "rem":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "rem":I
    goto :goto_0

    .line 279
    :cond_4
    invoke-direct {p0, v1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2, p3}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 281
    add-int v3, v1, p3

    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    .line 282
    return-object p0
.end method

.method public final putChar(C)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 373
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 379
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 380
    return-object p0
.end method

.method public final putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 385
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 389
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 391
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 392
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    .prologue
    .line 397
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putChar(JC)Ljava/nio/ByteBuffer;

    .line 401
    return-void
.end method

.method public final putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 887
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 893
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 894
    return-object p0
.end method

.method public final putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 899
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 903
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 905
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 906
    return-object p0
.end method

.method final putDoubleUnchecked(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    .prologue
    .line 911
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putDouble(JD)Ljava/nio/ByteBuffer;

    .line 915
    return-void
.end method

.method public final putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 783
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 787
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 789
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 790
    return-object p0
.end method

.method public final putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 795
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 799
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 801
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 802
    return-object p0
.end method

.method final putFloatUnchecked(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    .prologue
    .line 807
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putFloat(JF)Ljava/nio/ByteBuffer;

    .line 811
    return-void
.end method

.method public final putInt(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 577
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 581
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 583
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 584
    return-object p0
.end method

.method public final putInt(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 589
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 593
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 595
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 596
    return-object p0
.end method

.method final putIntUnchecked(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    .prologue
    .line 601
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putInt(JI)Ljava/nio/ByteBuffer;

    .line 605
    return-void
.end method

.method public final putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 691
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 695
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 697
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 698
    return-object p0
.end method

.method public final putLong(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # J

    .prologue
    .line 679
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 683
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 685
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 686
    return-object p0
.end method

.method final putLongUnchecked(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    .prologue
    .line 703
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Ljava/nio/DirectByteBuffer;->putLong(JJ)Ljava/nio/ByteBuffer;

    .line 707
    return-void
.end method

.method public final putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 487
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 491
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 493
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 494
    return-object p0
.end method

.method public final putShort(S)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # S

    .prologue
    .line 475
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    if-eqz v0, :cond_1

    .line 479
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 481
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/DirectByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 482
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    .prologue
    .line 499
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Ljava/nio/DirectByteBuffer;->putShort(JS)Ljava/nio/ByteBuffer;

    .line 503
    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 405
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 409
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 408
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    .line 410
    return-void
.end method

.method final putUnchecked(I[DII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 919
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 923
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 922
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    .line 924
    return-void
.end method

.method final putUnchecked(I[FII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 815
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 819
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 818
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    .line 820
    return-void
.end method

.method final putUnchecked(I[III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 609
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 613
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 612
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    .line 614
    return-void
.end method

.method final putUnchecked(I[JII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 711
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 715
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 714
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    .line 716
    return-void
.end method

.method putUnchecked(I[SII)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .prologue
    .line 507
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/DirectByteBuffer;->ix(I)J

    move-result-wide v0

    .line 511
    iget-boolean v2, p0, Ljava/nio/DirectByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v5, v2, 0x1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 510
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    .line 512
    return-void
.end method

.method public final setAccessible(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 953
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iput-boolean p1, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 954
    return-void
.end method

.method public final slice()Ljava/nio/ByteBuffer;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v0, v0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "buffer is inaccessible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    move-result v9

    .line 150
    .local v9, "pos":I
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->limit()I

    move-result v8

    .line 151
    .local v8, "lim":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-le v9, v8, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_1
    if-gt v9, v8, :cond_2

    sub-int v4, v8, v9

    .line 153
    .local v4, "rem":I
    :goto_0
    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    add-int v6, v9, v0

    .line 154
    .local v6, "off":I
    sget-boolean v0, Ljava/nio/DirectByteBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    if-gez v6, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    .end local v4    # "rem":I
    .end local v6    # "off":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "rem":I
    goto :goto_0

    .line 155
    .restart local v6    # "off":I
    :cond_3
    new-instance v0, Ljava/nio/DirectByteBuffer;

    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->memoryRef:Ljava/nio/DirectByteBuffer$MemoryRef;

    iget-boolean v7, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    const/4 v2, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/DirectByteBuffer$MemoryRef;IIIIIZ)V

    return-object v0
.end method
