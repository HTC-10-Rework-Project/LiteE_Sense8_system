.class public Ljava/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Ljava/util/Base64$Decoder;

.field static final RFC4648:Ljava/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 485
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .line 487
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 488
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Ljava/util/Base64$Encoder;->-get0()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 489
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-get0()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_0
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    aput v4, v1, v7

    .line 497
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 500
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 501
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Ljava/util/Base64$Encoder;->-get1()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 502
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Ljava/util/Base64$Encoder;->-get1()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    :cond_1
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v1, v7

    .line 506
    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v3, v3}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648:Ljava/util/Base64$Decoder;

    .line 507
    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v6, v3}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC4648_URLSAFE:Ljava/util/Base64$Decoder;

    .line 508
    new-instance v1, Ljava/util/Base64$Decoder;

    invoke-direct {v1, v3, v6}, Ljava/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v1, Ljava/util/Base64$Decoder;->RFC2045:Ljava/util/Base64$Decoder;

    .line 467
    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "isURL"    # Z
    .param p2, "isMIME"    # Z

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-boolean p1, p0, Ljava/util/Base64$Decoder;->isURL:Z

    .line 474
    iput-boolean p2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    .line 475
    return-void
.end method

.method private decode0([BII[B)I
    .locals 11
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B

    .prologue
    const/4 v9, 0x6

    .line 689
    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v7, :cond_1

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 690
    .local v1, "base64":[I
    :goto_0
    const/4 v3, 0x0

    .line 691
    .local v3, "dp":I
    const/4 v2, 0x0

    .line 692
    .local v2, "bits":I
    const/16 v5, 0x12

    .local v5, "shiftto":I
    move v4, v3

    .end local v3    # "dp":I
    .local v4, "dp":I
    move v6, p2

    .line 693
    .end local p2    # "sp":I
    .local v6, "sp":I
    :goto_1
    if-ge v6, p3, :cond_e

    .line 694
    add-int/lit8 p2, v6, 0x1

    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    aget-byte v7, p1, v6

    and-int/lit16 v0, v7, 0xff

    .line 695
    .local v0, "b":I
    aget v0, v1, v0

    if-gez v0, :cond_6

    .line 696
    const/4 v7, -0x2

    if-ne v0, v7, :cond_4

    .line 702
    if-ne v5, v9, :cond_3

    if-eq p2, p3, :cond_0

    add-int/lit8 v6, p2, 0x1

    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    aget-byte v7, p1, p2

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_2

    move p2, v6

    .line 704
    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 705
    const-string/jumbo v8, "Input byte array has wrong 4-byte ending unit"

    .line 704
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 689
    .end local v0    # "b":I
    .end local v1    # "base64":[I
    .end local v2    # "bits":I
    .end local v4    # "dp":I
    .end local v5    # "shiftto":I
    :cond_1
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .restart local v1    # "base64":[I
    goto :goto_0

    .end local p2    # "sp":I
    .restart local v0    # "b":I
    .restart local v2    # "bits":I
    .restart local v4    # "dp":I
    .restart local v5    # "shiftto":I
    .restart local v6    # "sp":I
    :cond_2
    move p2, v6

    .line 703
    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    :cond_3
    const/16 v7, 0x12

    if-eq v5, v7, :cond_0

    .line 727
    .end local v0    # "b":I
    :goto_2
    if-ne v5, v9, :cond_7

    .line 728
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    move v6, p2

    .line 739
    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    :goto_3
    if-ge v6, p3, :cond_b

    .line 740
    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_9

    add-int/lit8 p2, v6, 0x1

    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    aget-byte v7, p1, v6

    aget v7, v1, v7

    if-gez v7, :cond_a

    move v6, p2

    .line 741
    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    goto :goto_3

    .line 709
    .end local v3    # "dp":I
    .end local v6    # "sp":I
    .restart local v0    # "b":I
    .restart local v4    # "dp":I
    .restart local p2    # "sp":I
    :cond_4
    iget-boolean v7, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_5

    move v6, p2

    .line 710
    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    goto :goto_1

    .line 712
    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Illegal base64 character "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 714
    add-int/lit8 v9, p2, -0x1

    aget-byte v9, p1, v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    .line 713
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 712
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 716
    :cond_6
    shl-int v7, v0, v5

    or-int/2addr v2, v7

    .line 717
    add-int/lit8 v5, v5, -0x6

    .line 718
    if-gez v5, :cond_d

    .line 719
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    .line 720
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p4, v3

    .line 721
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    int-to-byte v7, v2

    aput-byte v7, p4, v4

    .line 722
    const/16 v5, 0x12

    .line 723
    const/4 v2, 0x0

    :goto_4
    move v4, v3

    .end local v3    # "dp":I
    .restart local v4    # "dp":I
    move v6, p2

    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    goto/16 :goto_1

    .line 729
    .end local v0    # "b":I
    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    :cond_7
    if-nez v5, :cond_8

    .line 730
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p4, v4

    .line 731
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p4, v3

    move v3, v4

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    move v6, p2

    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    goto :goto_3

    .line 732
    .end local v3    # "dp":I
    .end local v6    # "sp":I
    .restart local v4    # "dp":I
    .restart local p2    # "sp":I
    :cond_8
    const/16 v7, 0xc

    if-ne v5, v7, :cond_c

    .line 734
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 735
    const-string/jumbo v8, "Last unit does not have enough valid bits"

    .line 734
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4    # "dp":I
    .end local p2    # "sp":I
    .restart local v3    # "dp":I
    .restart local v6    # "sp":I
    :cond_9
    move p2, v6

    .line 742
    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 743
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Input byte array has incorrect ending byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 742
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 745
    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    :cond_b
    return v3

    .end local v3    # "dp":I
    .end local v6    # "sp":I
    .restart local v4    # "dp":I
    .restart local p2    # "sp":I
    :cond_c
    move v3, v4

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    move v6, p2

    .end local p2    # "sp":I
    .restart local v6    # "sp":I
    goto/16 :goto_3

    .end local v3    # "dp":I
    .end local v6    # "sp":I
    .restart local v0    # "b":I
    .restart local v4    # "dp":I
    .restart local p2    # "sp":I
    :cond_d
    move v3, v4

    .end local v4    # "dp":I
    .restart local v3    # "dp":I
    goto :goto_4

    .end local v0    # "b":I
    .end local v3    # "dp":I
    .end local p2    # "sp":I
    .restart local v4    # "dp":I
    .restart local v6    # "sp":I
    :cond_e
    move p2, v6

    .end local v6    # "sp":I
    .restart local p2    # "sp":I
    goto/16 :goto_2
.end method

.method private outLength([BII)I
    .locals 10
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x3d

    const/4 v7, 0x0

    .line 651
    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v6, :cond_0

    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    .line 652
    .local v1, "base64":[I
    :goto_0
    const/4 v4, 0x0

    .line 653
    .local v4, "paddings":I
    sub-int v2, p3, p2

    .line 654
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 655
    return v7

    .line 651
    .end local v1    # "base64":[I
    .end local v2    # "len":I
    .end local v4    # "paddings":I
    :cond_0
    sget-object v1, Ljava/util/Base64$Decoder;->fromBase64:[I

    .restart local v1    # "base64":[I
    goto :goto_0

    .line 656
    .restart local v2    # "len":I
    .restart local v4    # "paddings":I
    :cond_1
    const/4 v6, 0x2

    if-ge v2, v6, :cond_3

    .line 657
    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v6, :cond_2

    aget v6, v1, v7

    if-ne v6, v9, :cond_2

    .line 658
    return v7

    .line 659
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 660
    const-string/jumbo v7, "Input byte[] should at least have 2 bytes for base64 bytes"

    .line 659
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 662
    :cond_3
    iget-boolean v6, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    if-eqz v6, :cond_8

    .line 665
    const/4 v3, 0x0

    .local v3, "n":I
    move v5, p2

    .line 666
    .end local p2    # "sp":I
    .local v5, "sp":I
    :goto_1
    if-ge v5, p3, :cond_9

    .line 667
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "sp":I
    .restart local p2    # "sp":I
    aget-byte v6, p1, v5

    and-int/lit16 v0, v6, 0xff

    .line 668
    .local v0, "b":I
    if-ne v0, v8, :cond_6

    .line 669
    sub-int v6, p3, p2

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v2, v6

    .line 675
    .end local v0    # "b":I
    :goto_2
    sub-int/2addr v2, v3

    .line 683
    .end local v3    # "n":I
    :cond_4
    :goto_3
    if-nez v4, :cond_5

    and-int/lit8 v6, v2, 0x3

    if-eqz v6, :cond_5

    .line 684
    and-int/lit8 v6, v2, 0x3

    rsub-int/lit8 v4, v6, 0x4

    .line 685
    :cond_5
    add-int/lit8 v6, v2, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v6, v4

    return v6

    .line 672
    .restart local v0    # "b":I
    .restart local v3    # "n":I
    :cond_6
    aget v0, v1, v0

    if-ne v0, v9, :cond_7

    .line 673
    add-int/lit8 v3, v3, 0x1

    :cond_7
    move v5, p2

    .end local p2    # "sp":I
    .restart local v5    # "sp":I
    goto :goto_1

    .line 677
    .end local v0    # "b":I
    .end local v3    # "n":I
    .end local v5    # "sp":I
    .restart local p2    # "sp":I
    :cond_8
    add-int/lit8 v6, p3, -0x1

    aget-byte v6, p1, v6

    if-ne v6, v8, :cond_4

    .line 678
    const/4 v4, 0x1

    .line 679
    add-int/lit8 v6, p3, -0x2

    aget-byte v6, p1, v6

    if-ne v6, v8, :cond_4

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local p2    # "sp":I
    .restart local v3    # "n":I
    .restart local v5    # "sp":I
    :cond_9
    move p2, v5

    .end local v5    # "sp":I
    .restart local p2    # "sp":I
    goto :goto_2
.end method


# virtual methods
.method public decode([B[B)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .prologue
    const/4 v2, 0x0

    .line 578
    array-length v1, p1

    invoke-direct {p0, p1, v2, v1}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    .line 579
    .local v0, "len":I
    array-length v1, p2

    if-ge v1, v0, :cond_0

    .line 580
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 581
    const-string/jumbo v2, "Output byte array is too small for decoding all input bytes"

    .line 580
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_0
    array-length v1, p1

    invoke-direct {p0, p1, v2, v1, p2}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 607
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 611
    .local v2, "pos0":I
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 613
    .local v5, "src":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v4, v6, v7

    .line 614
    .local v4, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    add-int v3, v6, v7

    .line 615
    .local v3, "sl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    :goto_0
    invoke-direct {p0, v5, v4, v3}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v6

    new-array v0, v6, [B

    .line 623
    .local v0, "dst":[B
    invoke-direct {p0, v5, v4, v3, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6

    .line 617
    .end local v0    # "dst":[B
    .end local v3    # "sl":I
    .end local v4    # "sp":I
    .end local v5    # "src":[B
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v5, v6, [B

    .line 618
    .restart local v5    # "src":[B
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 619
    const/4 v4, 0x0

    .line 620
    .restart local v4    # "sp":I
    array-length v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "sl":I
    goto :goto_0

    .line 624
    .end local v3    # "sl":I
    .end local v4    # "sp":I
    .end local v5    # "src":[B
    :catch_0
    move-exception v1

    .line 625
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 626
    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 549
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "src"    # [B

    .prologue
    const/4 v3, 0x0

    .line 525
    array-length v2, p1

    invoke-direct {p0, p1, v3, v2}, Ljava/util/Base64$Decoder;->outLength([BII)I

    move-result v2

    new-array v0, v2, [B

    .line 526
    .local v0, "dst":[B
    array-length v2, p1

    invoke-direct {p0, p1, v3, v2, v0}, Ljava/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    .line 527
    .local v1, "ret":I
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 528
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 530
    :cond_0
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 646
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v1, Ljava/util/Base64$DecInputStream;

    iget-boolean v0, p0, Ljava/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64URL:[I

    :goto_0
    iget-boolean v2, p0, Ljava/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v1, p1, v0, v2}, Ljava/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/Base64$Decoder;->fromBase64:[I

    goto :goto_0
.end method
