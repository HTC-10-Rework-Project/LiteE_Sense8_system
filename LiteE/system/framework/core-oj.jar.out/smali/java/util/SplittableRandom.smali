.class public final Ljava/util/SplittableRandom;
.super Ljava/lang/Object;
.source "SplittableRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/SplittableRandom$1;,
        Ljava/util/SplittableRandom$RandomDoublesSpliterator;,
        Ljava/util/SplittableRandom$RandomIntsSpliterator;,
        Ljava/util/SplittableRandom$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final gamma:J

.field private seed:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xff

    const/16 v10, 0x8

    .line 231
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v6

    .line 232
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v8

    .line 231
    xor-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 230
    sput-object v4, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 237
    new-instance v4, Ljava/util/SplittableRandom$1;

    invoke-direct {v4}, Ljava/util/SplittableRandom$1;-><init>()V

    .line 236
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-static {v10}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 242
    .local v1, "seedBytes":[B
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long v2, v4, v12

    .line 243
    .local v2, "s":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 244
    shl-long v4, v2, v10

    aget-byte v6, v1, v0

    int-to-long v6, v6

    and-long/2addr v6, v12

    or-long v2, v4, v6

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    sget-object v4, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 89
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    sget-object v2, Ljava/util/SplittableRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v4, 0x3c6ef372fe94f82aL    # 1.3422845051698468E-17

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    .line 379
    .local v0, "s":J
    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->seed:J

    .line 380
    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 381
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "seed"    # J

    .prologue
    .line 368
    const-wide v0, -0x61c8864680b583ebL

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/SplittableRandom;-><init>(JJ)V

    .line 369
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "seed"    # J
    .param p3, "gamma"    # J

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-wide p1, p0, Ljava/util/SplittableRandom;->seed:J

    .line 184
    iput-wide p3, p0, Ljava/util/SplittableRandom;->gamma:J

    .line 185
    return-void
.end method

.method private static mix32(J)I
    .locals 4
    .param p0, "z"    # J

    .prologue
    .line 200
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long p0, v0, v2

    .line 201
    const/16 v0, 0x1c

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static mix64(J)J
    .locals 4
    .param p0, "z"    # J

    .prologue
    .line 191
    const/16 v0, 0x1e

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x40a7b892e31b1a47L    # -0.0014818730883930777

    mul-long p0, v0, v2

    .line 192
    const/16 v0, 0x1b

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, -0x6b2fb644ecceee15L    # -1.981759996145912E-208

    mul-long p0, v0, v2

    .line 193
    const/16 v0, 0x1f

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static mixGamma(J)J
    .locals 6
    .param p0, "z"    # J

    .prologue
    const/16 v1, 0x21

    .line 208
    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    const-wide v4, -0xae502812aa7333L

    mul-long p0, v2, v4

    .line 209
    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    const-wide v4, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, v2, v4

    .line 210
    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    const-wide/16 v4, 0x1

    or-long p0, v2, v4

    .line 211
    const/4 v1, 0x1

    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    .line 212
    .local v0, "n":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-wide v2, -0x5555555555555556L

    xor-long/2addr p0, v2

    .end local p0    # "z":J
    :cond_0
    return-wide p0
.end method

.method private nextSeed()J
    .locals 4

    .prologue
    .line 219
    iget-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    iget-wide v2, p0, Ljava/util/SplittableRandom;->gamma:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/SplittableRandom;->seed:J

    return-wide v0
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .locals 10

    .prologue
    .line 765
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    .line 766
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, p0

    .line 765
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 767
    const/4 v1, 0x0

    .line 764
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .prologue
    const/4 v10, 0x0

    .line 814
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 815
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v10

    .line 814
    goto :goto_0

    .line 817
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    .line 818
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .line 817
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 816
    invoke-static {v0, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 745
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    .line 749
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    .line 748
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 750
    const/4 v1, 0x0

    .line 747
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .prologue
    .line 788
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_0
    cmpg-double v0, p3, p5

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 793
    :cond_2
    new-instance v0, Ljava/util/SplittableRandom$RandomDoublesSpliterator;

    .line 794
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 793
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomDoublesSpliterator;-><init>(Ljava/util/SplittableRandom;JJDD)V

    .line 795
    const/4 v1, 0x0

    .line 792
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method final internalNextDouble(DD)D
    .locals 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .prologue
    .line 349
    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double v0, v2, v4

    .line 350
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    .line 351
    sub-double v2, p3, p1

    mul-double/2addr v2, v0

    add-double v0, v2, p1

    .line 352
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_0

    .line 353
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 355
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v2

    .line 322
    .local v2, "r":I
    if-ge p1, p2, :cond_0

    .line 323
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    .line 324
    .local v0, "m":I
    and-int v4, v1, v0

    if-nez v4, :cond_1

    .line 325
    and-int v4, v2, v0

    add-int v2, v4, p1

    .line 338
    .end local v0    # "m":I
    .end local v1    # "n":I
    :cond_0
    :goto_0
    return v2

    .line 326
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    :cond_1
    if-lez v1, :cond_3

    .line 327
    ushr-int/lit8 v3, v2, 0x1

    .line 328
    .local v3, "u":I
    :goto_1
    add-int v4, v3, v0

    rem-int v2, v3, v1

    sub-int/2addr v4, v2

    .line 327
    if-gez v4, :cond_2

    .line 329
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_1

    .line 331
    :cond_2
    add-int/2addr v2, p1

    goto :goto_0

    .line 334
    .end local v3    # "u":I
    :cond_3
    :goto_2
    if-lt v2, p1, :cond_4

    if-lt v2, p2, :cond_0

    .line 335
    :cond_4
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v2

    goto :goto_2
.end method

.method final internalNextLong(JJ)J
    .locals 13
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v4

    .line 293
    .local v4, "r":J
    cmp-long v8, p1, p3

    if-gez v8, :cond_0

    .line 294
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v8, 0x1

    sub-long v0, v2, v8

    .line 295
    .local v0, "m":J
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 296
    and-long v8, v4, v0

    add-long v4, v8, p1

    .line 309
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_0
    :goto_0
    return-wide v4

    .line 297
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 298
    const/4 v8, 0x1

    ushr-long v6, v4, v8

    .line 299
    .local v6, "u":J
    :goto_1
    add-long v8, v6, v0

    rem-long v4, v6, v2

    sub-long/2addr v8, v4

    const-wide/16 v10, 0x0

    .line 298
    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 300
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v8

    const/4 v10, 0x1

    ushr-long v6, v8, v10

    goto :goto_1

    .line 302
    :cond_2
    add-long/2addr v4, p1

    goto :goto_0

    .line 305
    .end local v6    # "u":J
    :cond_3
    :goto_2
    cmp-long v8, v4, p1

    if-ltz v8, :cond_4

    cmp-long v8, v4, p3

    if-ltz v8, :cond_0

    .line 306
    :cond_4
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v4

    goto :goto_2
.end method

.method public ints()Ljava/util/stream/IntStream;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 592
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    .line 593
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const v6, 0x7fffffff

    move-object v1, p0

    .line 592
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 591
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .prologue
    .line 640
    if-lt p1, p2, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    .line 644
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move v6, p1

    move v7, p2

    .line 643
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 645
    const/4 v1, 0x0

    .line 642
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 573
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    .line 577
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v4, p1

    .line 576
    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 575
    invoke-static {v0, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 614
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    if-lt p3, p4, :cond_1

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomIntsSpliterator;

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/SplittableRandom$RandomIntsSpliterator;-><init>(Ljava/util/SplittableRandom;JJII)V

    .line 621
    const/4 v1, 0x0

    .line 618
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .locals 10

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 678
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    move-object v1, p0

    move-wide v6, v4

    move-wide v8, v2

    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    .line 680
    const/4 v1, 0x0

    .line 677
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 659
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    .line 663
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v4, p1

    move-wide v8, v2

    .line 662
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    .line 664
    const/4 v1, 0x0

    .line 661
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .prologue
    .line 726
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    .line 730
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    .line 729
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    .line 731
    const/4 v1, 0x0

    .line 728
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .prologue
    .line 700
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    cmp-long v0, p3, p5

    if-ltz v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    new-instance v0, Ljava/util/SplittableRandom$RandomLongsSpliterator;

    .line 706
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    .line 705
    invoke-direct/range {v0 .. v9}, Ljava/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava/util/SplittableRandom;JJJJ)V

    .line 707
    const/4 v1, 0x0

    .line 704
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public nextBoolean()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 7
    .param p1, "bound"    # D

    .prologue
    .line 526
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    .line 527
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bound must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    const/16 v4, 0xb

    ushr-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ca0000000000000L

    mul-double/2addr v2, v4

    mul-double v0, v2, p1

    .line 529
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_2

    .end local v0    # "result":D
    :goto_1
    return-wide v0

    .line 530
    .restart local v0    # "result":D
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_1
.end method

.method public nextDouble(DD)D
    .locals 3
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .prologue
    .line 545
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 2

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "bound"    # I

    .prologue
    .line 420
    if-gtz p1, :cond_0

    .line 421
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "bound must be positive"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 423
    :cond_0
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v1

    .line 424
    .local v1, "r":I
    add-int/lit8 v0, p1, -0x1

    .line 425
    .local v0, "m":I
    and-int v3, p1, v0

    if-nez v3, :cond_2

    .line 426
    and-int/2addr v1, v0

    .line 433
    :cond_1
    return v1

    .line 428
    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    .line 429
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v0

    rem-int v1, v2, p1

    sub-int/2addr v3, v1

    .line 428
    if-gez v3, :cond_1

    .line 430
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .prologue
    .line 448
    if-lt p1, p2, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/SplittableRandom;->internalNextInt(II)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "bound"    # J

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    .line 472
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 473
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bound must be positive"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 475
    :cond_0
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v2

    .line 476
    .local v2, "r":J
    const-wide/16 v6, 0x1

    sub-long v0, p1, v6

    .line 477
    .local v0, "m":J
    and-long v6, p1, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 478
    and-long/2addr v2, v0

    .line 485
    :cond_1
    return-wide v2

    .line 480
    :cond_2
    ushr-long v4, v2, v10

    .line 481
    .local v4, "u":J
    :goto_0
    add-long v6, v4, v0

    rem-long v2, v4, p1

    sub-long/2addr v6, v2

    .line 480
    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 482
    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/SplittableRandom;->mix64(J)J

    move-result-wide v6

    ushr-long v4, v6, v10

    goto :goto_0
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .prologue
    .line 500
    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public split()Ljava/util/SplittableRandom;
    .locals 6

    .prologue
    .line 398
    new-instance v0, Ljava/util/SplittableRandom;

    invoke-virtual {p0}, Ljava/util/SplittableRandom;->nextLong()J

    move-result-wide v2

    invoke-direct {p0}, Ljava/util/SplittableRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/util/SplittableRandom;->mixGamma(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/SplittableRandom;-><init>(JJ)V

    return-object v0
.end method
