.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$IntegerCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field public static final SIZE:I = 0x20

.field private static final SMALL_NEG_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEG_VALUES:[Ljava/lang/String;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final digits:[C

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L

.field static final sizeTable:[I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 73
    const-class v0, [I

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/Integer;->digits:[C

    .line 343
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    .line 344
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .line 346
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/lang/Integer;->DigitTens:[C

    .line 359
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Ljava/lang/Integer;->DigitOnes:[C

    .line 495
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/lang/Integer;->sizeTable:[I

    .line 53
    return-void

    .line 78
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 346
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    .line 359
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    .line 495
    :array_3
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 878
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 879
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 895
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljava/lang/Integer;->value:I

    .line 896
    return-void
.end method

.method public static bitCount(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    const v2, 0x33333333

    .line 1474
    ushr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 1475
    and-int v0, p0, v2

    ushr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    .line 1476
    ushr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 1477
    ushr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 1478
    ushr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 1479
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1262
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compareUnsigned(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/high16 v1, -0x80000000

    .line 1278
    add-int v0, p0, v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1184
    const/16 v5, 0xa

    .line 1185
    .local v5, "radix":I
    const/4 v3, 0x0

    .line 1186
    .local v3, "index":I
    const/4 v4, 0x0

    .line 1189
    .local v4, "negative":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 1190
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Zero length string"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1191
    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1193
    .local v2, "firstChar":C
    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5

    .line 1194
    const/4 v4, 0x1

    .line 1195
    const/4 v3, 0x1

    .line 1200
    :cond_1
    :goto_0
    const-string/jumbo v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "0X"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1201
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 1202
    const/16 v5, 0x10

    .line 1213
    :cond_3
    :goto_1
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "+"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1214
    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Sign character in wrong position"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1196
    :cond_5
    const/16 v7, 0x2b

    if-ne v2, v7, :cond_1

    .line 1197
    const/4 v3, 0x1

    goto :goto_0

    .line 1204
    :cond_6
    const-string/jumbo v7, "#"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1205
    add-int/lit8 v3, v3, 0x1

    .line 1206
    const/16 v5, 0x10

    goto :goto_1

    .line 1208
    :cond_7
    const-string/jumbo v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_3

    .line 1209
    add-int/lit8 v3, v3, 0x1

    .line 1210
    const/16 v5, 0x8

    goto :goto_1

    .line 1217
    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    .line 1218
    .local v6, "result":Ljava/lang/Integer;
    if-eqz v4, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1227
    :cond_9
    :goto_2
    return-object v6

    .line 1219
    .end local v6    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 1223
    .local v1, "e":Ljava/lang/NumberFormatException;
    if-eqz v4, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "constant":Ljava/lang/String;
    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Integer;
    goto :goto_2

    .line 1224
    .end local v0    # "constant":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "constant":Ljava/lang/String;
    goto :goto_3
.end method

.method public static divideUnsigned(II)I
    .locals 4
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 1322
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static formatUnsignedInt(II[CII)I
    .locals 6
    .param p0, "val"    # I
    .param p1, "shift"    # I
    .param p2, "buf"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 332
    move v0, p4

    .line 333
    .local v0, "charPos":I
    const/4 v3, 0x1

    shl-int v2, v3, p1

    .line 334
    .local v2, "radix":I
    add-int/lit8 v1, v2, -0x1

    .line 336
    .local v1, "mask":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int v3, p3, v0

    sget-object v4, Ljava/lang/Integer;->digits:[C

    and-int v5, p0, v1

    aget-char v4, v4, v5

    aput-char v4, p2, v3

    .line 337
    ushr-int/2addr p0, p1

    .line 338
    if-eqz p0, :cond_1

    if-gtz v0, :cond_0

    .line 340
    :cond_1
    return v0
.end method

.method static getChars(II[C)V
    .locals 6
    .param p0, "i"    # I
    .param p1, "index"    # I
    .param p2, "buf"    # [C

    .prologue
    .line 463
    move v0, p1

    .line 464
    .local v0, "charPos":I
    const/4 v3, 0x0

    .line 466
    .local v3, "sign":C
    if-gez p0, :cond_0

    .line 467
    const/16 v3, 0x2d

    .line 468
    neg-int p0, p0

    .line 472
    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    .line 473
    div-int/lit8 v1, p0, 0x64

    .line 475
    .local v1, "q":I
    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 476
    .local v2, "r":I
    move p0, v1

    .line 477
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 478
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    .line 484
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    .line 485
    .restart local v1    # "q":I
    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    .line 486
    .restart local v2    # "r":I
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->digits:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    .line 487
    move p0, v1

    .line 488
    if-nez v1, :cond_1

    .line 490
    if-eqz v3, :cond_2

    .line 491
    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    .line 493
    :cond_2
    return-void
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "nm"    # Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 2
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # I

    .prologue
    const/4 v1, 0x0

    .line 1085
    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 1086
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .param p0, "nm"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/Integer;

    .prologue
    .line 1127
    const/4 v2, 0x0

    .line 1129
    .local v2, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1132
    .end local v2    # "v":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1134
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 1130
    .restart local v2    # "v":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 1135
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "v":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1138
    :cond_0
    return-object p1
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 988
    return p0
.end method

.method public static highestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 1376
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1377
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1378
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1379
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1380
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1381
    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method public static lowestOneBit(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 1399
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static max(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1604
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static min(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1618
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1425
    if-nez p0, :cond_0

    .line 1426
    const/16 v1, 0x20

    return v1

    .line 1427
    :cond_0
    const/4 v0, 0x1

    .line 1428
    .local v0, "n":I
    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_1

    const/16 v0, 0x11

    shl-int/lit8 p0, p0, 0x10

    .line 1429
    :cond_1
    ushr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    .line 1430
    :cond_2
    ushr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    .line 1431
    :cond_3
    ushr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    .line 1432
    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    .line 1433
    return v0
.end method

.method public static numberOfTrailingZeros(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 1453
    if-nez p0, :cond_0

    const/16 v2, 0x20

    return v2

    .line 1454
    :cond_0
    const/16 v0, 0x1f

    .line 1455
    .local v0, "n":I
    shl-int/lit8 v1, p0, 0x10

    .local v1, "y":I
    if-eqz v1, :cond_1

    const/16 v0, 0xf

    move p0, v1

    .line 1456
    :cond_1
    shl-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x8

    move p0, v1

    .line 1457
    :cond_2
    shl-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x4

    move p0, v1

    .line 1458
    :cond_3
    shl-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    move p0, v1

    .line 1459
    :cond_4
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    sub-int v2, v0, v2

    return v2
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 643
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 569
    if-nez p0, :cond_0

    .line 570
    new-instance v9, Ljava/lang/NumberFormatException;

    const-string/jumbo v10, "s == null"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 573
    :cond_0
    const/4 v9, 0x2

    if-ge p1, v9, :cond_1

    .line 574
    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "radix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 575
    const-string/jumbo v11, " less than Character.MIN_RADIX"

    .line 574
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 578
    :cond_1
    const/16 v9, 0x24

    if-le p1, v9, :cond_2

    .line 579
    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "radix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 580
    const-string/jumbo v11, " greater than Character.MAX_RADIX"

    .line 579
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 583
    :cond_2
    const/4 v8, 0x0

    .line 584
    .local v8, "result":I
    const/4 v7, 0x0

    .line 585
    .local v7, "negative":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 586
    .local v4, "len":I
    const v5, -0x7fffffff

    .line 590
    .local v5, "limit":I
    if-lez v4, :cond_a

    .line 591
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 592
    .local v1, "firstChar":C
    const/16 v9, 0x30

    if-ge v1, v9, :cond_6

    .line 593
    const/16 v9, 0x2d

    if-ne v1, v9, :cond_4

    .line 594
    const/4 v7, 0x1

    .line 595
    const/high16 v5, -0x80000000

    .line 599
    :cond_3
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 600
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 596
    :cond_4
    const/16 v9, 0x2b

    if-eq v1, v9, :cond_3

    .line 597
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 601
    :cond_5
    const/4 v2, 0x1

    .line 603
    :cond_6
    div-int v6, v5, p1

    .local v6, "multmin":I
    move v3, v2

    .line 604
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_b

    .line 606
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 607
    .local v0, "digit":I
    if-gez v0, :cond_7

    .line 608
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 610
    :cond_7
    if-ge v8, v6, :cond_8

    .line 611
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 613
    :cond_8
    mul-int/2addr v8, p1

    .line 614
    add-int v9, v5, v0

    if-ge v8, v9, :cond_9

    .line 615
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 617
    :cond_9
    sub-int/2addr v8, v0

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 620
    .end local v0    # "digit":I
    .end local v1    # "firstChar":C
    .end local v3    # "i":I
    .end local v6    # "multmin":I
    .restart local v2    # "i":I
    :cond_a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 622
    .end local v2    # "i":I
    .restart local v1    # "firstChar":C
    .restart local v3    # "i":I
    .restart local v6    # "multmin":I
    :cond_b
    if-eqz v7, :cond_c

    .end local v8    # "result":I
    :goto_1
    return v8

    .restart local v8    # "result":I
    :cond_c
    neg-int v8, v8

    goto :goto_1
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 739
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;I)I
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 691
    if-nez p0, :cond_0

    .line 692
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string/jumbo v5, "null"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 695
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 696
    .local v3, "len":I
    if-lez v3, :cond_5

    .line 697
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 698
    .local v2, "firstChar":C
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1

    .line 699
    new-instance v4, Ljava/lang/NumberFormatException;

    .line 700
    const-string/jumbo v5, "Illegal leading minus sign on unsigned string %s."

    new-array v6, v9, [Ljava/lang/Object;

    .line 701
    aput-object p0, v6, v8

    .line 700
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 699
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 703
    :cond_1
    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 704
    const/16 v4, 0xa

    if-ne p1, v4, :cond_3

    const/16 v4, 0x9

    if-gt v3, v4, :cond_3

    .line 705
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    return v4

    .line 707
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 708
    .local v0, "ell":J
    const-wide v4, -0x100000000L

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 709
    long-to-int v4, v0

    return v4

    .line 711
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    .line 712
    const-string/jumbo v5, "String value %s exceeds range of unsigned int."

    new-array v6, v9, [Ljava/lang/Object;

    .line 713
    aput-object p0, v6, v8

    .line 712
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 711
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 718
    .end local v0    # "ell":J
    .end local v2    # "firstChar":C
    :cond_5
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4
.end method

.method public static remainderUnsigned(II)I
    .locals 4
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 1339
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static reverse(I)I
    .locals 6
    .param p0, "i"    # I

    .prologue
    const v5, 0x55555555

    const v4, 0x33333333

    const v3, 0xf0f0f0f

    const v2, 0xff00

    .line 1542
    and-int v0, p0, v5

    shl-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x1

    and-int/2addr v1, v5

    or-int p0, v0, v1

    .line 1543
    and-int v0, p0, v4

    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v4

    or-int p0, v0, v1

    .line 1544
    and-int v0, p0, v3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v1, p0, 0x4

    and-int/2addr v1, v3

    or-int p0, v0, v1

    .line 1545
    shl-int/lit8 v0, p0, 0x18

    and-int v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 1546
    ushr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v2

    .line 1545
    or-int/2addr v0, v1

    .line 1546
    ushr-int/lit8 v1, p0, 0x18

    .line 1545
    or-int p0, v0, v1

    .line 1547
    return p0
.end method

.method public static reverseBytes(I)I
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 1574
    ushr-int/lit8 v0, p0, 0x18

    .line 1575
    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 1574
    or-int/2addr v0, v1

    .line 1576
    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    .line 1574
    or-int/2addr v0, v1

    .line 1577
    shl-int/lit8 v1, p0, 0x18

    .line 1574
    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateLeft(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 1503
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateRight(II)I
    .locals 2
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 1527
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static signum(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1561
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method static stringSize(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Integer;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    .line 502
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sum(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1590
    add-int v0, p0, p1

    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 234
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 272
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString0(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 11
    .param p0, "i"    # I

    .prologue
    const/16 v7, 0x2d

    const/16 v6, 0xa

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 402
    const/high16 v5, -0x80000000

    if-ne p0, v5, :cond_0

    .line 403
    const-string/jumbo v5, "-2147483648"

    return-object v5

    .line 406
    :cond_0
    if-gez p0, :cond_2

    const/4 v1, 0x1

    .line 407
    .local v1, "negative":Z
    :goto_0
    if-eqz v1, :cond_4

    const/16 v5, -0x64

    if-le p0, v5, :cond_3

    :goto_1
    const/4 v3, 0x1

    .line 408
    .local v3, "small":Z
    :goto_2
    if-eqz v3, :cond_9

    .line 409
    if-eqz v1, :cond_5

    sget-object v4, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    .line 411
    .local v4, "smallValues":[Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_7

    .line 412
    neg-int p0, p0

    .line 413
    aget-object v5, v4, p0

    if-nez v5, :cond_1

    .line 415
    if-ge p0, v6, :cond_6

    new-instance v5, Ljava/lang/String;

    new-array v6, v10, [C

    aput-char v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v9

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 414
    :goto_4
    aput-object v5, v4, p0

    .line 425
    :cond_1
    :goto_5
    aget-object v5, v4, p0

    return-object v5

    .line 406
    .end local v1    # "negative":Z
    .end local v3    # "small":Z
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "negative":Z
    goto :goto_0

    .line 407
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "small":Z
    goto :goto_2

    .end local v3    # "small":Z
    :cond_4
    const/16 v5, 0x64

    if-ge p0, v5, :cond_3

    goto :goto_1

    .line 409
    .restart local v3    # "small":Z
    :cond_5
    sget-object v4, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    .restart local v4    # "smallValues":[Ljava/lang/String;
    goto :goto_3

    .line 416
    :cond_6
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [C

    aput-char v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v10

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    .line 419
    :cond_7
    aget-object v5, v4, p0

    if-nez v5, :cond_1

    .line 421
    if-ge p0, v6, :cond_8

    new-instance v5, Ljava/lang/String;

    new-array v6, v9, [C

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 420
    :goto_6
    aput-object v5, v4, p0

    goto :goto_5

    .line 422
    :cond_8
    new-instance v5, Ljava/lang/String;

    new-array v6, v10, [C

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v6, v9

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    .line 428
    .end local v4    # "smallValues":[Ljava/lang/String;
    :cond_9
    if-eqz v1, :cond_a

    neg-int v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->stringSize(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 429
    .local v2, "size":I
    :goto_7
    new-array v0, v2, [C

    .line 430
    .local v0, "buf":[C
    invoke-static {p0, v2, v0}, Ljava/lang/Integer;->getChars(II[C)V

    .line 431
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 428
    .end local v0    # "buf":[C
    .end local v2    # "size":I
    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v2

    .restart local v2    # "size":I
    goto :goto_7
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .prologue
    .line 132
    const/4 v4, 0x2

    if-lt p1, v4, :cond_0

    const/16 v4, 0x24

    if-le p1, v4, :cond_1

    .line 133
    :cond_0
    const/16 p1, 0xa

    .line 136
    :cond_1
    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    .line 137
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 140
    :cond_2
    const/16 v4, 0x21

    new-array v0, v4, [C

    .line 141
    .local v0, "buf":[C
    if-gez p0, :cond_4

    const/4 v3, 0x1

    .line 142
    .local v3, "negative":Z
    :goto_0
    const/16 v1, 0x20

    .line 144
    .local v1, "charPos":I
    if-nez v3, :cond_3

    .line 145
    neg-int p0, p0

    move v2, v1

    .line 148
    .end local v1    # "charPos":I
    .local v2, "charPos":I
    :goto_1
    neg-int v4, p1

    if-gt p0, v4, :cond_5

    .line 149
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    sget-object v4, Ljava/lang/Integer;->digits:[C

    rem-int v5, p0, p1

    neg-int v5, v5

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 150
    div-int/2addr p0, p1

    :cond_3
    move v2, v1

    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    goto :goto_1

    .line 141
    .end local v2    # "charPos":I
    .end local v3    # "negative":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "negative":Z
    goto :goto_0

    .line 152
    .restart local v2    # "charPos":I
    :cond_5
    sget-object v4, Ljava/lang/Integer;->digits:[C

    neg-int v5, p0

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 154
    if-eqz v3, :cond_6

    .line 155
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    const/16 v4, 0x2d

    aput-char v4, v0, v1

    .line 158
    :goto_2
    new-instance v4, Ljava/lang/String;

    rsub-int/lit8 v5, v1, 0x21

    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .end local v1    # "charPos":I
    .restart local v2    # "charPos":I
    :cond_6
    move v1, v2

    .end local v2    # "charPos":I
    .restart local v1    # "charPos":I
    goto :goto_2
.end method

.method public static toUnsignedLong(I)J
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 1299
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedString(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(II)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .prologue
    .line 188
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toUnsignedString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toUnsignedString0(II)Ljava/lang/String;
    .locals 5
    .param p0, "val"    # I
    .param p1, "shift"    # I

    .prologue
    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x20

    .line 313
    .local v2, "mag":I
    add-int/lit8 v3, p1, -0x1

    add-int/2addr v3, v2

    div-int/2addr v3, p1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    .local v1, "chars":I
    new-array v0, v1, [C

    .line 316
    .local v0, "buf":[C
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3, v1}, Ljava/lang/Integer;->formatUnsignedInt(II[CII)I

    .line 319
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 858
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    if-gt p0, v0, :cond_0

    .line 859
    sget-object v0, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0

    .line 860
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 794
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "anotherInteger"    # Ljava/lang/Integer;

    .prologue
    .line 1244
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1230
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 949
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1002
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1003
    iget v1, p0, Ljava/lang/Integer;->value:I

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1005
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 931
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
