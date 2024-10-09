.class Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$ASCIIToBinaryConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ASCIIToBinaryBuffer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BIG_10_POW:[D

.field private static final MAX_SMALL_TEN:I

.field private static final SINGLE_MAX_SMALL_TEN:I

.field private static final SINGLE_SMALL_10_POW:[F

.field private static final SMALL_10_POW:[D

.field private static final TINY_10_POW:[D


# instance fields
.field decExponent:I

.field digits:[C

.field isNegative:Z

.field nDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    const-class v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    .line 1705
    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    .line 1714
    const/16 v0, 0xb

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    .line 1720
    new-array v0, v1, [D

    fill-array-data v0, :array_2

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    .line 1722
    new-array v0, v1, [D

    fill-array-data v0, :array_3

    sput-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    .line 1725
    sget-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    .line 1726
    sget-object v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    .line 1034
    return-void

    .line 1705
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    .line 1714
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    .line 1720
    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    .line 1722
    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data
.end method

.method constructor <init>(ZI[CI)V
    .locals 0
    .param p1, "negSign"    # Z
    .param p2, "decExponent"    # I
    .param p3, "digits"    # [C
    .param p4, "n"    # I

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1042
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    .line 1043
    iput p2, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    .line 1044
    iput-object p3, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    .line 1045
    iput p4, p0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1046
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 48

    .prologue
    .line 1058
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1063
    .local v7, "kDigits":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v8, 0x0

    aget-char v6, v6, v8

    add-int/lit8 v29, v6, -0x30

    .line 1064
    .local v29, "iValue":I
    const/16 v6, 0x9

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1065
    .local v28, "iDigits":I
    const/16 v27, 0x1

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1066
    mul-int/lit8 v6, v29, 0xa

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v8, v8, v27

    add-int/2addr v6, v8

    add-int/lit8 v29, v6, -0x30

    .line 1065
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1068
    :cond_0
    move/from16 v0, v29

    int-to-long v4, v0

    .line 1069
    .local v4, "lValue":J
    move/from16 v27, v28

    :goto_1
    move/from16 v0, v27

    if-ge v0, v7, :cond_1

    .line 1070
    const-wide/16 v44, 0xa

    mul-long v44, v44, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v27

    add-int/lit8 v6, v6, -0x30

    int-to-long v0, v6

    move-wide/from16 v46, v0

    add-long v4, v44, v46

    .line 1069
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1072
    :cond_1
    long-to-double v0, v4

    move-wide/from16 v22, v0

    .line 1073
    .local v22, "dValue":D
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v25, v6, v7

    .line 1080
    .local v25, "exp":I
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0xf

    if-gt v6, v8, :cond_a

    .line 1091
    if-eqz v25, :cond_2

    const-wide/16 v44, 0x0

    cmpl-double v6, v22, v44

    if-nez v6, :cond_4

    .line 1092
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_3

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .end local v22    # "dValue":D
    :cond_3
    return-wide v22

    .line 1094
    .restart local v22    # "dValue":D
    :cond_4
    if-ltz v25, :cond_8

    .line 1095
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    move/from16 v0, v25

    if-gt v0, v6, :cond_6

    .line 1100
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v44, v6, v25

    mul-double v38, v22, v44

    .line 1101
    .local v38, "rValue":D
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_5

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .end local v38    # "rValue":D
    :cond_5
    return-wide v38

    .line 1103
    :cond_6
    rsub-int/lit8 v40, v7, 0xf

    .line 1104
    .local v40, "slop":I
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    add-int v6, v6, v40

    move/from16 v0, v25

    if-gt v0, v6, :cond_a

    .line 1111
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v44, v6, v40

    mul-double v22, v22, v44

    .line 1112
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    sub-int v8, v25, v40

    aget-wide v44, v6, v8

    mul-double v38, v22, v44

    .line 1113
    .restart local v38    # "rValue":D
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_7

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .end local v38    # "rValue":D
    :cond_7
    return-wide v38

    .line 1119
    .end local v40    # "slop":I
    :cond_8
    sget v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->MAX_SMALL_TEN:I

    neg-int v6, v6

    move/from16 v0, v25

    if-lt v0, v6, :cond_a

    .line 1123
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    move/from16 v0, v25

    neg-int v8, v0

    aget-wide v44, v6, v8

    div-double v38, v22, v44

    .line 1124
    .restart local v38    # "rValue":D
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_9

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .end local v38    # "rValue":D
    :cond_9
    return-wide v38

    .line 1140
    :cond_a
    if-lez v25, :cond_1b

    .line 1141
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v8, 0x135

    if-le v6, v8, :cond_c

    .line 1146
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_b

    const-wide/high16 v44, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_2
    return-wide v44

    :cond_b
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    .line 1148
    :cond_c
    and-int/lit8 v6, v25, 0xf

    if-eqz v6, :cond_d

    .line 1149
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v8, v25, 0xf

    aget-wide v44, v6, v8

    mul-double v22, v22, v44

    .line 1151
    :cond_d
    shr-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_13

    .line 1153
    const/16 v32, 0x0

    .local v32, "j":I
    :goto_3
    const/4 v6, 0x1

    move/from16 v0, v25

    if-le v0, v6, :cond_f

    .line 1154
    and-int/lit8 v6, v25, 0x1

    if-eqz v6, :cond_e

    .line 1155
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v22, v22, v44

    .line 1153
    :cond_e
    add-int/lit8 v32, v32, 0x1

    shr-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1164
    :cond_f
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v22, v44

    .line 1165
    .local v42, "t":D
    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1178
    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    div-double v42, v22, v44

    .line 1179
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v42, v44

    .line 1180
    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1181
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_10

    const-wide/high16 v44, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_4
    return-wide v44

    :cond_10
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    .line 1183
    :cond_11
    const-wide v42, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1185
    :cond_12
    move-wide/from16 v22, v42

    .line 1244
    .end local v32    # "j":I
    .end local v42    # "t":D
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v8, 0x44c

    if-le v6, v8, :cond_14

    .line 1245
    const/16 v6, 0x44d

    move-object/from16 v0, p0

    iput v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1246
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v8, 0x31

    const/16 v41, 0x44c

    aput-char v8, v6, v41

    .line 1248
    :cond_14
    new-instance v3, Lsun/misc/FDBigInteger;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    .line 1249
    .local v3, "bigD0":Lsun/misc/FDBigInteger;
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v25, v6, v8

    .line 1251
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v30

    .line 1252
    .local v30, "ieeeBits":J
    move/from16 v0, v25

    neg-int v6, v0

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1253
    .local v9, "B5":I
    const/4 v6, 0x0

    move/from16 v0, v25

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1254
    .local v11, "D5":I
    const/4 v6, 0x0

    invoke-virtual {v3, v11, v6}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    .line 1255
    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 1256
    const/16 v16, 0x0

    .line 1257
    .local v16, "bigD":Lsun/misc/FDBigInteger;
    const/16 v36, 0x0

    .line 1262
    .end local v16    # "bigD":Lsun/misc/FDBigInteger;
    .local v36, "prevD2":I
    :cond_15
    const/16 v6, 0x34

    ushr-long v44, v30, v6

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1263
    .local v19, "binexp":I
    const-wide v44, 0xfffffffffffffL

    and-long v14, v30, v44

    .line 1264
    .local v14, "bigBbits":J
    if-lez v19, :cond_24

    .line 1265
    const-wide/high16 v44, 0x10000000000000L

    or-long v14, v14, v44

    .line 1273
    :goto_6
    move/from16 v0, v19

    add-int/lit16 v0, v0, -0x3ff

    move/from16 v19, v0

    .line 1274
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v34

    .line 1275
    .local v34, "lowOrderZeros":I
    ushr-long v14, v14, v34

    .line 1276
    add-int/lit8 v6, v19, -0x34

    add-int v17, v6, v34

    .line 1277
    .local v17, "bigIntExp":I
    rsub-int/lit8 v18, v34, 0x35

    .line 1288
    .local v18, "bigIntNBits":I
    move v2, v9

    .line 1289
    .local v2, "B2":I
    move v10, v11

    .line 1291
    .local v10, "D2":I
    if-ltz v17, :cond_26

    .line 1292
    add-int v2, v9, v17

    .line 1296
    :goto_7
    move v12, v2

    .line 1300
    .local v12, "Ulp2":I
    const/16 v6, -0x3ff

    move/from16 v0, v19

    if-gt v0, v6, :cond_27

    .line 1304
    add-int v6, v19, v34

    add-int/lit16 v0, v6, 0x3ff

    move/from16 v26, v0

    .line 1308
    .local v26, "hulpbias":I
    :goto_8
    add-int v2, v2, v26

    .line 1309
    add-int v10, v10, v26

    .line 1312
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1313
    .local v21, "common2":I
    sub-int v2, v2, v21

    .line 1314
    sub-int v10, v10, v21

    .line 1315
    sub-int v12, v12, v21

    .line 1317
    invoke-static {v14, v15, v9, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v13

    .line 1318
    .local v13, "bigB":Lsun/misc/FDBigInteger;
    if-eqz v16, :cond_16

    move/from16 v0, v36

    if-eq v0, v10, :cond_17

    .line 1319
    :cond_16
    invoke-virtual {v3, v10}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v16

    .line 1320
    .local v16, "bigD":Lsun/misc/FDBigInteger;
    move/from16 v36, v10

    .line 1339
    .end local v16    # "bigD":Lsun/misc/FDBigInteger;
    :cond_17
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v20

    .local v20, "cmpResult":I
    if-lez v20, :cond_28

    .line 1340
    const/16 v35, 0x1

    .line 1341
    .local v35, "overvalue":Z
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v24

    .line 1342
    .local v24, "diff":Lsun/misc/FDBigInteger;
    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_18

    const/16 v6, -0x3fe

    move/from16 v0, v17

    if-le v0, v6, :cond_18

    .line 1347
    add-int/lit8 v12, v12, -0x1

    .line 1348
    if-gez v12, :cond_18

    .line 1351
    const/4 v12, 0x0

    .line 1352
    const/4 v6, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v24

    .line 1363
    :cond_18
    :goto_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v20

    .line 1364
    if-gez v20, :cond_29

    .line 1388
    .end local v24    # "diff":Lsun/misc/FDBigInteger;
    .end local v35    # "overvalue":Z
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_1a

    .line 1389
    const-wide/high16 v44, -0x8000000000000000L

    or-long v30, v30, v44

    .line 1391
    :cond_1a
    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v44

    return-wide v44

    .line 1187
    .end local v2    # "B2":I
    .end local v3    # "bigD0":Lsun/misc/FDBigInteger;
    .end local v9    # "B5":I
    .end local v10    # "D2":I
    .end local v11    # "D5":I
    .end local v12    # "Ulp2":I
    .end local v13    # "bigB":Lsun/misc/FDBigInteger;
    .end local v14    # "bigBbits":J
    .end local v17    # "bigIntExp":I
    .end local v18    # "bigIntNBits":I
    .end local v19    # "binexp":I
    .end local v20    # "cmpResult":I
    .end local v21    # "common2":I
    .end local v26    # "hulpbias":I
    .end local v30    # "ieeeBits":J
    .end local v34    # "lowOrderZeros":I
    .end local v36    # "prevD2":I
    :cond_1b
    if-gez v25, :cond_13

    .line 1188
    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    .line 1189
    move-object/from16 v0, p0

    iget v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v8, -0x145

    if-ge v6, v8, :cond_1d

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_1c

    const-wide/high16 v44, -0x8000000000000000L

    :goto_b
    return-wide v44

    :cond_1c
    const-wide/16 v44, 0x0

    goto :goto_b

    .line 1196
    :cond_1d
    and-int/lit8 v6, v25, 0xf

    if-eqz v6, :cond_1e

    .line 1197
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v8, v25, 0xf

    aget-wide v44, v6, v8

    div-double v22, v22, v44

    .line 1199
    :cond_1e
    shr-int/lit8 v25, v25, 0x4

    if-eqz v25, :cond_13

    .line 1201
    const/16 v32, 0x0

    .restart local v32    # "j":I
    :goto_c
    const/4 v6, 0x1

    move/from16 v0, v25

    if-le v0, v6, :cond_20

    .line 1202
    and-int/lit8 v6, v25, 0x1

    if-eqz v6, :cond_1f

    .line 1203
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v22, v22, v44

    .line 1201
    :cond_1f
    add-int/lit8 v32, v32, 0x1

    shr-int/lit8 v25, v25, 0x1

    goto :goto_c

    .line 1212
    :cond_20
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v22, v44

    .line 1213
    .restart local v42    # "t":D
    const-wide/16 v44, 0x0

    cmpl-double v6, v42, v44

    if-nez v6, :cond_23

    .line 1226
    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    mul-double v42, v22, v44

    .line 1227
    sget-object v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v44, v6, v32

    mul-double v42, v42, v44

    .line 1228
    const-wide/16 v44, 0x0

    cmpl-double v6, v42, v44

    if-nez v6, :cond_22

    .line 1229
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v6, :cond_21

    const-wide/high16 v44, -0x8000000000000000L

    :goto_d
    return-wide v44

    :cond_21
    const-wide/16 v44, 0x0

    goto :goto_d

    .line 1231
    :cond_22
    const-wide/16 v42, 0x1

    .line 1233
    :cond_23
    move-wide/from16 v22, v42

    goto/16 :goto_5

    .line 1267
    .end local v32    # "j":I
    .end local v42    # "t":D
    .restart local v3    # "bigD0":Lsun/misc/FDBigInteger;
    .restart local v9    # "B5":I
    .restart local v11    # "D5":I
    .restart local v14    # "bigBbits":J
    .restart local v19    # "binexp":I
    .restart local v30    # "ieeeBits":J
    .restart local v36    # "prevD2":I
    :cond_24
    sget-boolean v6, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    if-nez v6, :cond_25

    const-wide/16 v44, 0x0

    cmp-long v6, v14, v44

    if-nez v6, :cond_25

    new-instance v6, Ljava/lang/AssertionError;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1268
    :cond_25
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v33

    .line 1269
    .local v33, "leadingZeros":I
    add-int/lit8 v37, v33, -0xb

    .line 1270
    .local v37, "shift":I
    shl-long v14, v14, v37

    .line 1271
    rsub-int/lit8 v19, v37, 0x1

    goto/16 :goto_6

    .line 1294
    .end local v33    # "leadingZeros":I
    .end local v37    # "shift":I
    .restart local v2    # "B2":I
    .restart local v10    # "D2":I
    .restart local v17    # "bigIntExp":I
    .restart local v18    # "bigIntNBits":I
    .restart local v34    # "lowOrderZeros":I
    :cond_26
    sub-int v10, v11, v17

    goto/16 :goto_7

    .line 1306
    .restart local v12    # "Ulp2":I
    :cond_27
    add-int/lit8 v26, v34, 0x1

    .restart local v26    # "hulpbias":I
    goto/16 :goto_8

    .line 1355
    .restart local v13    # "bigB":Lsun/misc/FDBigInteger;
    .restart local v20    # "cmpResult":I
    .restart local v21    # "common2":I
    :cond_28
    if-gez v20, :cond_19

    .line 1356
    const/16 v35, 0x0

    .line 1357
    .restart local v35    # "overvalue":Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v24

    .restart local v24    # "diff":Lsun/misc/FDBigInteger;
    goto/16 :goto_9

    .line 1368
    :cond_29
    if-nez v20, :cond_2b

    .line 1371
    const-wide/16 v44, 0x1

    and-long v44, v44, v30

    const-wide/16 v46, 0x0

    cmp-long v6, v44, v46

    if-eqz v6, :cond_19

    .line 1372
    if-eqz v35, :cond_2a

    const/4 v6, -0x1

    :goto_e
    int-to-long v0, v6

    move-wide/from16 v44, v0

    add-long v30, v30, v44

    goto/16 :goto_a

    :cond_2a
    const/4 v6, 0x1

    goto :goto_e

    .line 1380
    :cond_2b
    if-eqz v35, :cond_2c

    const/4 v6, -0x1

    :goto_f
    int-to-long v0, v6

    move-wide/from16 v44, v0

    add-long v30, v30, v44

    .line 1381
    const-wide/16 v44, 0x0

    cmp-long v6, v30, v44

    if-eqz v6, :cond_19

    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v6, v30, v44

    if-nez v6, :cond_15

    goto/16 :goto_a

    .line 1380
    :cond_2c
    const/4 v6, 0x1

    goto :goto_f
.end method

.method public floatValue()F
    .locals 42

    .prologue
    .line 1405
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1409
    .local v7, "kDigits":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    add-int/lit8 v28, v4, -0x30

    .line 1410
    .local v28, "iValue":I
    const/16 v27, 0x1

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    if-ge v0, v7, :cond_0

    .line 1411
    mul-int/lit8 v4, v28, 0xa

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v5, v5, v27

    add-int/2addr v4, v5

    add-int/lit8 v28, v4, -0x30

    .line 1410
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 1413
    :cond_0
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v25, v0

    .line 1414
    .local v25, "fValue":F
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    sub-int v24, v4, v7

    .line 1421
    .local v24, "exp":I
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/4 v5, 0x7

    if-gt v4, v5, :cond_9

    .line 1432
    if-eqz v24, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v25, v4

    if-nez v4, :cond_3

    .line 1433
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_2

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .end local v25    # "fValue":F
    :cond_2
    return v25

    .line 1434
    .restart local v25    # "fValue":F
    :cond_3
    if-ltz v24, :cond_7

    .line 1435
    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    move/from16 v0, v24

    if-gt v0, v4, :cond_5

    .line 1440
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v4, v4, v24

    mul-float v25, v25, v4

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_4

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .end local v25    # "fValue":F
    :cond_4
    return v25

    .line 1443
    .restart local v25    # "fValue":F
    :cond_5
    rsub-int/lit8 v38, v7, 0x7

    .line 1444
    .local v38, "slop":I
    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    add-int v4, v4, v38

    move/from16 v0, v24

    if-gt v0, v4, :cond_c

    .line 1451
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    aget v4, v4, v38

    mul-float v25, v25, v4

    .line 1452
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    sub-int v5, v24, v38

    aget v4, v4, v5

    mul-float v25, v25, v4

    .line 1453
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_6

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .end local v25    # "fValue":F
    :cond_6
    return v25

    .line 1459
    .end local v38    # "slop":I
    .restart local v25    # "fValue":F
    :cond_7
    sget v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_MAX_SMALL_TEN:I

    neg-int v4, v4

    move/from16 v0, v24

    if-lt v0, v4, :cond_c

    .line 1463
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SINGLE_SMALL_10_POW:[F

    move/from16 v0, v24

    neg-int v5, v0

    aget v4, v4, v5

    div-float v25, v25, v4

    .line 1464
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_8

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .end local v25    # "fValue":F
    :cond_8
    return v25

    .line 1470
    .restart local v25    # "fValue":F
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    if-lt v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    add-int/2addr v4, v5

    const/16 v5, 0xf

    if-gt v4, v5, :cond_c

    .line 1480
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v32, v0

    .line 1481
    .local v32, "lValue":J
    move/from16 v27, v7

    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    move/from16 v0, v27

    if-ge v0, v4, :cond_a

    .line 1482
    const-wide/16 v4, 0xa

    mul-long v4, v4, v32

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    aget-char v6, v6, v27

    add-int/lit8 v6, v6, -0x30

    int-to-long v0, v6

    move-wide/from16 v40, v0

    add-long v32, v4, v40

    .line 1481
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1484
    :cond_a
    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v22, v0

    .line 1485
    .local v22, "dValue":D
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v24, v4, v5

    .line 1486
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    aget-wide v4, v4, v24

    mul-double v22, v22, v4

    .line 1487
    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v25, v0

    .line 1488
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_b

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    .end local v25    # "fValue":F
    :cond_b
    return v25

    .line 1500
    .end local v22    # "dValue":D
    .end local v32    # "lValue":J
    .restart local v25    # "fValue":F
    :cond_c
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 1501
    .restart local v22    # "dValue":D
    if-lez v24, :cond_11

    .line 1502
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v5, 0x27

    if-le v4, v5, :cond_e

    .line 1507
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_d

    const/high16 v4, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_2
    return v4

    :cond_d
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2

    .line 1509
    :cond_e
    and-int/lit8 v4, v24, 0xf

    if-eqz v4, :cond_f

    .line 1510
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v5, v24, 0xf

    aget-wide v4, v4, v5

    mul-double v22, v22, v4

    .line 1512
    :cond_f
    shr-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_16

    .line 1514
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_3
    if-lez v24, :cond_16

    .line 1515
    and-int/lit8 v4, v24, 0x1

    if-eqz v4, :cond_10

    .line 1516
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->BIG_10_POW:[D

    aget-wide v4, v4, v30

    mul-double v22, v22, v4

    .line 1514
    :cond_10
    add-int/lit8 v30, v30, 0x1

    shr-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 1520
    .end local v30    # "j":I
    :cond_11
    if-gez v24, :cond_16

    .line 1521
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    .line 1522
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    const/16 v5, -0x2e

    if-ge v4, v5, :cond_13

    .line 1527
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_12

    const/high16 v4, -0x80000000

    :goto_4
    return v4

    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 1529
    :cond_13
    and-int/lit8 v4, v24, 0xf

    if-eqz v4, :cond_14

    .line 1530
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->SMALL_10_POW:[D

    and-int/lit8 v5, v24, 0xf

    aget-wide v4, v4, v5

    div-double v22, v22, v4

    .line 1532
    :cond_14
    shr-int/lit8 v24, v24, 0x4

    if-eqz v24, :cond_16

    .line 1534
    const/16 v30, 0x0

    .restart local v30    # "j":I
    :goto_5
    if-lez v24, :cond_16

    .line 1535
    and-int/lit8 v4, v24, 0x1

    if-eqz v4, :cond_15

    .line 1536
    sget-object v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->TINY_10_POW:[D

    aget-wide v4, v4, v30

    mul-double v22, v22, v4

    .line 1534
    :cond_15
    add-int/lit8 v30, v30, 0x1

    shr-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 1541
    .end local v30    # "j":I
    :cond_16
    move-wide/from16 v0, v22

    double-to-float v4, v0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v25

    .line 1550
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    const/16 v5, 0xc8

    if-le v4, v5, :cond_17

    .line 1551
    const/16 v4, 0xc9

    move-object/from16 v0, p0

    iput v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    const/16 v5, 0x31

    const/16 v6, 0xc8

    aput-char v5, v4, v6

    .line 1554
    :cond_17
    new-instance v3, Lsun/misc/FDBigInteger;

    move/from16 v0, v28

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->digits:[C

    move-object/from16 v0, p0

    iget v8, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    invoke-direct/range {v3 .. v8}, Lsun/misc/FDBigInteger;-><init>(J[CII)V

    .line 1555
    .local v3, "bigD0":Lsun/misc/FDBigInteger;
    move-object/from16 v0, p0

    iget v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->decExponent:I

    move-object/from16 v0, p0

    iget v5, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->nDigits:I

    sub-int v24, v4, v5

    .line 1557
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v29

    .line 1558
    .local v29, "ieeeBits":I
    move/from16 v0, v24

    neg-int v4, v0

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1559
    .local v9, "B5":I
    const/4 v4, 0x0

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1560
    .local v11, "D5":I
    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4}, Lsun/misc/FDBigInteger;->multByPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v3

    .line 1561
    invoke-virtual {v3}, Lsun/misc/FDBigInteger;->makeImmutable()V

    .line 1562
    const/4 v15, 0x0

    .line 1563
    .local v15, "bigD":Lsun/misc/FDBigInteger;
    const/16 v36, 0x0

    .line 1568
    .end local v15    # "bigD":Lsun/misc/FDBigInteger;
    .local v36, "prevD2":I
    :cond_18
    ushr-int/lit8 v18, v29, 0x17

    .line 1569
    .local v18, "binexp":I
    const v4, 0x7fffff

    and-int v14, v29, v4

    .line 1570
    .local v14, "bigBbits":I
    if-lez v18, :cond_1e

    .line 1571
    const/high16 v4, 0x800000

    or-int/2addr v14, v4

    .line 1579
    :goto_6
    add-int/lit8 v18, v18, -0x7f

    .line 1580
    invoke-static {v14}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v34

    .line 1581
    .local v34, "lowOrderZeros":I
    ushr-int v14, v14, v34

    .line 1582
    add-int/lit8 v4, v18, -0x17

    add-int v16, v4, v34

    .line 1583
    .local v16, "bigIntExp":I
    rsub-int/lit8 v17, v34, 0x18

    .line 1594
    .local v17, "bigIntNBits":I
    move v2, v9

    .line 1595
    .local v2, "B2":I
    move v10, v11

    .line 1597
    .local v10, "D2":I
    if-ltz v16, :cond_20

    .line 1598
    add-int v2, v9, v16

    .line 1602
    :goto_7
    move v12, v2

    .line 1606
    .local v12, "Ulp2":I
    const/16 v4, -0x7f

    move/from16 v0, v18

    if-gt v0, v4, :cond_21

    .line 1610
    add-int v4, v18, v34

    add-int/lit8 v26, v4, 0x7f

    .line 1614
    .local v26, "hulpbias":I
    :goto_8
    add-int v2, v2, v26

    .line 1615
    add-int v10, v10, v26

    .line 1618
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 1619
    .local v20, "common2":I
    sub-int v2, v2, v20

    .line 1620
    sub-int v10, v10, v20

    .line 1621
    sub-int v12, v12, v20

    .line 1623
    int-to-long v4, v14

    invoke-static {v4, v5, v9, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v13

    .line 1624
    .local v13, "bigB":Lsun/misc/FDBigInteger;
    if-eqz v15, :cond_19

    move/from16 v0, v36

    if-eq v0, v10, :cond_1a

    .line 1625
    :cond_19
    invoke-virtual {v3, v10}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v15

    .line 1626
    .local v15, "bigD":Lsun/misc/FDBigInteger;
    move/from16 v36, v10

    .line 1645
    .end local v15    # "bigD":Lsun/misc/FDBigInteger;
    :cond_1a
    invoke-virtual {v13, v15}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v19

    .local v19, "cmpResult":I
    if-lez v19, :cond_22

    .line 1646
    const/16 v35, 0x1

    .line 1647
    .local v35, "overvalue":Z
    invoke-virtual {v13, v15}, Lsun/misc/FDBigInteger;->leftInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v21

    .line 1648
    .local v21, "diff":Lsun/misc/FDBigInteger;
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    const/16 v4, -0x7e

    move/from16 v0, v16

    if-le v0, v4, :cond_1b

    .line 1653
    add-int/lit8 v12, v12, -0x1

    .line 1654
    if-gez v12, :cond_1b

    .line 1657
    const/4 v12, 0x0

    .line 1658
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v21

    .line 1669
    :cond_1b
    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->cmpPow52(II)I

    move-result v19

    .line 1670
    if-gez v19, :cond_23

    .line 1694
    .end local v21    # "diff":Lsun/misc/FDBigInteger;
    .end local v35    # "overvalue":Z
    :cond_1c
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->isNegative:Z

    if-eqz v4, :cond_1d

    .line 1695
    const/high16 v4, -0x80000000

    or-int v29, v29, v4

    .line 1697
    :cond_1d
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    return v4

    .line 1573
    .end local v2    # "B2":I
    .end local v10    # "D2":I
    .end local v12    # "Ulp2":I
    .end local v13    # "bigB":Lsun/misc/FDBigInteger;
    .end local v16    # "bigIntExp":I
    .end local v17    # "bigIntNBits":I
    .end local v19    # "cmpResult":I
    .end local v20    # "common2":I
    .end local v26    # "hulpbias":I
    .end local v34    # "lowOrderZeros":I
    :cond_1e
    sget-boolean v4, Lsun/misc/FloatingDecimal$ASCIIToBinaryBuffer;->-assertionsDisabled:Z

    if-nez v4, :cond_1f

    if-nez v14, :cond_1f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1574
    :cond_1f
    invoke-static {v14}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v31

    .line 1575
    .local v31, "leadingZeros":I
    add-int/lit8 v37, v31, -0x8

    .line 1576
    .local v37, "shift":I
    shl-int v14, v14, v37

    .line 1577
    rsub-int/lit8 v18, v37, 0x1

    goto/16 :goto_6

    .line 1600
    .end local v31    # "leadingZeros":I
    .end local v37    # "shift":I
    .restart local v2    # "B2":I
    .restart local v10    # "D2":I
    .restart local v16    # "bigIntExp":I
    .restart local v17    # "bigIntNBits":I
    .restart local v34    # "lowOrderZeros":I
    :cond_20
    sub-int v10, v11, v16

    goto/16 :goto_7

    .line 1612
    .restart local v12    # "Ulp2":I
    :cond_21
    add-int/lit8 v26, v34, 0x1

    .restart local v26    # "hulpbias":I
    goto :goto_8

    .line 1661
    .restart local v13    # "bigB":Lsun/misc/FDBigInteger;
    .restart local v19    # "cmpResult":I
    .restart local v20    # "common2":I
    :cond_22
    if-gez v19, :cond_1c

    .line 1662
    const/16 v35, 0x0

    .line 1663
    .restart local v35    # "overvalue":Z
    invoke-virtual {v15, v13}, Lsun/misc/FDBigInteger;->rightInplaceSub(Lsun/misc/FDBigInteger;)Lsun/misc/FDBigInteger;

    move-result-object v21

    .restart local v21    # "diff":Lsun/misc/FDBigInteger;
    goto :goto_9

    .line 1674
    :cond_23
    if-nez v19, :cond_25

    .line 1677
    and-int/lit8 v4, v29, 0x1

    if-eqz v4, :cond_1c

    .line 1678
    if-eqz v35, :cond_24

    const/4 v4, -0x1

    :goto_b
    add-int v29, v29, v4

    goto :goto_a

    :cond_24
    const/4 v4, 0x1

    goto :goto_b

    .line 1686
    :cond_25
    if-eqz v35, :cond_26

    const/4 v4, -0x1

    :goto_c
    add-int v29, v29, v4

    .line 1687
    if-eqz v29, :cond_1c

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    move/from16 v0, v29

    if-ne v0, v4, :cond_18

    goto :goto_a

    .line 1686
    :cond_26
    const/4 v4, 0x1

    goto :goto_c
.end method
