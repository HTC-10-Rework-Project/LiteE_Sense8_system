.class public Ljava/text/DecimalFormat;
.super Ljava/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field private static final synthetic -java-math-RoundingModeSwitchesValues:[I = null

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAXIMUM_FRACTION_DIGITS:I = 0x7fffffff

.field static final MAXIMUM_INTEGER_DIGITS:I = 0x7fffffff

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field private transient icuDecimalFormat:Landroid/icu/text/DecimalFormat;

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private roundingMode:Ljava/math/RoundingMode;

.field private symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method private static synthetic -getjava-math-RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Ljava/text/DecimalFormat;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1496
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 1497
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positivePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1498
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "positiveSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1499
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativePrefix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1500
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negativeSuffix"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    .line 1501
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1502
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "posSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1503
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negPrefixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1504
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "negSuffixPattern"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1505
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "multiplier"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1506
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSize"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1507
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingUsed"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1508
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparatorAlwaysShown"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1509
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "parseBigDecimal"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1510
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "roundingMode"

    const-class v3, Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1511
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "symbols"

    const-class v3, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1512
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "useExponentialNotation"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1513
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minExponentDigits"

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 1514
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 1515
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumIntegerDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1516
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "maximumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 1517
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minimumFractionDigits"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 1518
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 1496
    sput-object v0, Ljava/text/DecimalFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1727
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1726
    sput-object v0, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 381
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1704
    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 403
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 405
    .local v0, "def":Ljava/util/Locale;
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 408
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-object v1, v2, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    .line 410
    sget-object v2, Ljava/text/DecimalFormat;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    new-instance v2, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 413
    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1704
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 437
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 438
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "symbols"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/text/NumberFormat;-><init>()V

    .line 1704
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 465
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormatSymbols;

    iput-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 466
    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method private compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/text/DecimalFormat;

    .prologue
    const/4 v1, 0x0

    .line 1125
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1126
    .local v0, "increment":Ljava/math/BigDecimal;
    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1128
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1127
    :cond_0
    return v1

    .line 1130
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static convertRoundingMode(Ljava/math/RoundingMode;)I
    .locals 2
    .param p0, "rm"    # Ljava/math/RoundingMode;

    .prologue
    .line 1424
    invoke-static {}, Ljava/text/DecimalFormat;->-getjava-math-RoundingModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid rounding mode specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1428
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1430
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1432
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1434
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 1436
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 1438
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1440
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 1424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigDecimal;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 657
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 658
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 660
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 661
    return-object p2
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/math/BigInteger;
    .param p2, "result"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 677
    invoke-static {p3}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 678
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 679
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 680
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 681
    return-object p2
.end method

.method private static getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;
    .locals 4
    .param p0, "fp"    # Ljava/text/FieldPosition;

    .prologue
    .line 481
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p0

    .line 484
    :cond_0
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_1

    .line 485
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    .line 510
    .local v0, "attribute":Landroid/icu/text/NumberFormat$Field;
    :goto_0
    new-instance v1, Ljava/text/FieldPosition;

    invoke-direct {v1, v0}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 511
    .local v1, "icuFieldPosition":Ljava/text/FieldPosition;
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 512
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 513
    return-object v1

    .line 486
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    .end local v1    # "icuFieldPosition":Ljava/text/FieldPosition;
    :cond_1
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_2

    .line 487
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 488
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_2
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_3

    .line 489
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 490
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_3
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_4

    .line 491
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 492
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_4
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_5

    .line 493
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 494
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_5
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_6

    .line 495
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 496
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_6
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_7

    .line 497
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 498
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_7
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_8

    .line 499
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 500
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_8
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_9

    .line 501
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 502
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_9
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_a

    .line 503
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto :goto_0

    .line 504
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_a
    invoke-virtual {p0}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    if-ne v2, v3, :cond_b

    .line 505
    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .restart local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    goto/16 :goto_0

    .line 507
    .end local v0    # "attribute":Landroid/icu/text/NumberFormat$Field;
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unexpected field position attribute type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 470
    new-instance v0, Landroid/icu/text/DecimalFormat;

    .line 471
    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 470
    invoke-direct {v0, p1, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    iput-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 472
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 473
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x154

    const/16 v11, 0x135

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1593
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 1594
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "symbols"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/DecimalFormatSymbols;

    iput-object v5, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 1596
    const-string/jumbo v5, ""

    invoke-direct {p0, v5}, Ljava/text/DecimalFormat;->init(Ljava/lang/String;)V

    .line 1598
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positivePrefix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 1599
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "positiveSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 1600
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativePrefix"

    const-string/jumbo v7, "-"

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 1601
    iget-object v6, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v5, "negativeSuffix"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 1602
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "multiplier"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 1603
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingSize"

    invoke-virtual {v0, v6, v10}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 1604
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "groupingUsed"

    invoke-virtual {v0, v6, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1605
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const-string/jumbo v6, "decimalSeparatorAlwaysShown"

    invoke-virtual {v0, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1608
    const-string/jumbo v5, "roundingMode"

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/RoundingMode;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 1610
    const-string/jumbo v5, "maximumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1611
    .local v2, "maximumIntegerDigits":I
    const-string/jumbo v5, "minimumIntegerDigits"

    invoke-virtual {v0, v5, v11}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 1612
    .local v4, "minimumIntegerDigits":I
    const-string/jumbo v5, "maximumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    .line 1613
    .local v1, "maximumFractionDigits":I
    const-string/jumbo v5, "minimumFractionDigits"

    invoke-virtual {v0, v5, v12}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    .line 1619
    .local v3, "minimumFractionDigits":I
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5, v2}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1620
    iget-object v5, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-super {p0, v5}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1622
    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1623
    invoke-virtual {p0, v3}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1624
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1625
    const-string/jumbo v5, "parseBigDecimal"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1627
    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v0, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 1628
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1629
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1630
    invoke-super {p0}, Ljava/text/NumberFormat;->getMaximumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1631
    invoke-super {p0}, Ljava/text/NumberFormat;->getMinimumFractionDigits()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1633
    :cond_0
    return-void
.end method

.method private static toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;
    .locals 3
    .param p0, "icuAttribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, Ljava/text/NumberFormat$Field;->INTEGER:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    sget-object v0, Ljava/text/NumberFormat$Field;->CURRENCY:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 529
    :cond_1
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    sget-object v0, Ljava/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 532
    :cond_2
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 535
    :cond_3
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 538
    :cond_4
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    sget-object v0, Ljava/text/NumberFormat$Field;->EXPONENT_SYMBOL:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 541
    :cond_5
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    sget-object v0, Ljava/text/NumberFormat$Field;->FRACTION:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 544
    :cond_6
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 545
    sget-object v0, Ljava/text/NumberFormat$Field;->GROUPING_SEPARATOR:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 547
    :cond_7
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 548
    sget-object v0, Ljava/text/NumberFormat$Field;->SIGN:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 550
    :cond_8
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 551
    sget-object v0, Ljava/text/NumberFormat$Field;->PERCENT:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 553
    :cond_9
    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    invoke-virtual {v1}, Ljava/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 554
    sget-object v0, Ljava/text/NumberFormat$Field;->PERMILLE:Ljava/text/NumberFormat$Field;

    return-object v0

    .line 556
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/text/AttributedCharacterIterator$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateFieldsFromIcu()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    const/16 v1, 0x135

    if-ne v0, v1, :cond_0

    .line 1225
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    const v1, 0x77359400

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1227
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1228
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1229
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1230
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1231
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1522
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1523
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "positivePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1524
    const-string/jumbo v1, "positiveSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1525
    const-string/jumbo v1, "negativePrefix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1526
    const-string/jumbo v1, "negativeSuffix"

    iget-object v3, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1527
    const-string/jumbo v3, "posPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1528
    const-string/jumbo v3, "posSuffixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1529
    const-string/jumbo v3, "negPrefixPattern"

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1530
    const-string/jumbo v1, "negSuffixPattern"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1531
    const-string/jumbo v1, "multiplier"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1532
    const-string/jumbo v1, "groupingSize"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1533
    const-string/jumbo v1, "groupingUsed"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1534
    const-string/jumbo v1, "decimalSeparatorAlwaysShown"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1535
    const-string/jumbo v1, "parseBigDecimal"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1536
    const-string/jumbo v1, "roundingMode"

    iget-object v2, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1537
    const-string/jumbo v1, "symbols"

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    const-string/jumbo v1, "useExponentialNotation"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1539
    const-string/jumbo v1, "minExponentDigits"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;B)V

    .line 1540
    const-string/jumbo v1, "maximumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1541
    const-string/jumbo v1, "minimumIntegerDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1542
    const-string/jumbo v1, "maximumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1543
    const-string/jumbo v1, "minimumFractionDigits"

    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1544
    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1545
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1546
    return-void
.end method


# virtual methods
.method adjustForCurrencyDefaultFractionDigits()V
    .locals 5

    .prologue
    .line 1469
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    .line 1470
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    .line 1472
    :try_start_0
    iget-object v4, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1476
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1477
    invoke-virtual {v0}, Ljava/util/Currency;->getDefaultFractionDigits()I

    move-result v1

    .line 1478
    .local v1, "digits":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 1479
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v3

    .line 1482
    .local v3, "oldMinDigits":I
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1483
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1484
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1491
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :cond_1
    :goto_1
    return-void

    .line 1486
    .restart local v1    # "digits":I
    .restart local v3    # "oldMinDigits":I
    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1487
    invoke-virtual {p0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    goto :goto_1

    .line 1473
    .end local v1    # "digits":I
    .end local v3    # "oldMinDigits":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1216
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 1218
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 1187
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0}, Ljava/text/DecimalFormat;->updateFieldsFromIcu()V

    .line 1189
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1095
    :try_start_0
    invoke-super {p0}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormat;

    .line 1096
    .local v1, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DecimalFormat;

    iput-object v2, v1, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    .line 1097
    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DecimalFormatSymbols;

    iput-object v2, v1, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    return-object v1

    .line 1099
    .end local v1    # "other":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1110
    if-nez p1, :cond_0

    .line 1111
    return v1

    .line 1113
    :cond_0
    if-ne p0, p1, :cond_1

    .line 1114
    const/4 v1, 0x1

    return v1

    .line 1116
    :cond_1
    instance-of v2, p1, Ljava/text/DecimalFormat;

    if-nez v2, :cond_2

    .line 1117
    return v1

    :cond_2
    move-object v0, p1

    .line 1119
    check-cast v0, Ljava/text/DecimalFormat;

    .line 1120
    .local v0, "other":Ljava/text/DecimalFormat;
    iget-object v2, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v3, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v2, v3}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1121
    iget-object v1, v0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-direct {p0, v1}, Ljava/text/DecimalFormat;->compareIcuRoundingIncrement(Landroid/icu/text/DecimalFormat;)Z

    move-result v1

    .line 1120
    :cond_3
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # D
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 616
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 617
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 619
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 620
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "number"    # J
    .param p3, "result"    # Ljava/lang/StringBuffer;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 637
    invoke-static {p4}, Ljava/text/DecimalFormat;->getIcuFieldPosition(Ljava/text/FieldPosition;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 638
    .local v0, "icuFieldPosition":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 640
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 641
    return-object p3
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "number"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    .prologue
    .line 584
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 585
    instance-of v0, p1, Ljava/lang/Short;

    .line 584
    if-nez v0, :cond_0

    .line 585
    instance-of v0, p1, Ljava/lang/Byte;

    .line 584
    if-nez v0, :cond_0

    .line 586
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 584
    if-nez v0, :cond_0

    .line 587
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 584
    if-nez v0, :cond_0

    .line 588
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 589
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 590
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 591
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 592
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 593
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 594
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, p3}, Ljava/text/DecimalFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 595
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 596
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "number":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 598
    .restart local p1    # "number":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "object == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 712
    :cond_0
    iget-object v9, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v9, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    .line 715
    .local v5, "original":Ljava/text/AttributedCharacterIterator;
    new-instance v8, Ljava/lang/StringBuilder;

    .line 716
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v10

    sub-int/2addr v9, v10

    .line 715
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 718
    .local v8, "textBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 719
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->next()C

    .line 718
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 723
    :cond_1
    new-instance v6, Ljava/text/AttributedString;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 725
    .local v6, "result":Ljava/text/AttributedString;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    :goto_1
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 726
    invoke-interface {v5, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    .line 729
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 728
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    .line 730
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunStart()I

    move-result v7

    .line 731
    .local v7, "start":I
    invoke-interface {v5}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v2

    .line 732
    .local v2, "end":I
    invoke-static {v0}, Ljava/text/DecimalFormat;->toJavaFieldAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/NumberFormat$Field;

    move-result-object v4

    .line 733
    .local v4, "javaAttr":Ljava/text/NumberFormat$Field;
    invoke-virtual {v6, v4, v4, v7, v2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_2

    .line 725
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v2    # "end":I
    .end local v4    # "javaAttr":Ljava/text/NumberFormat$Field;
    .end local v7    # "start":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 737
    .end local v1    # "attribute$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v6}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v9

    return-object v9
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public getGroupingSize()I
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getGroupingSize()I

    move-result v0

    return v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 1353
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .prologue
    .line 1327
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    return v0
.end method

.method public getMultiplier()I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getMultiplier()I

    move-result v0

    return v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1138
    invoke-super {p0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isDecimalSeparatorAlwaysShown()Z

    move-result v0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isGroupingUsed()Z

    move-result v0

    return v0
.end method

.method public isParseBigDecimal()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v0

    return v0
.end method

.method public isParseIntegerOnly()Z
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v3, 0x0

    .line 799
    iget v1, p2, Ljava/text/ParsePosition;->index:I

    if-ltz v1, :cond_0

    iget v1, p2, Ljava/text/ParsePosition;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 800
    :cond_0
    return-object v3

    .line 804
    :cond_1
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 805
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_2

    .line 806
    return-object v3

    .line 808
    :cond_2
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 809
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 810
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 812
    :cond_3
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 813
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 812
    if-eqz v1, :cond_4

    .line 814
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 816
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 817
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    .line 816
    if-eqz v1, :cond_6

    .line 818
    :cond_5
    return-object v0

    .line 820
    :cond_6
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-eqz v1, :cond_7

    .line 821
    check-cast v0, Landroid/icu/math/BigDecimal;

    .end local v0    # "number":Ljava/lang/Number;
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 824
    .restart local v0    # "number":Ljava/lang/Number;
    :cond_7
    instance-of v1, v0, Landroid/icu/math/BigDecimal;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    .line 825
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 827
    :cond_9
    invoke-virtual {p0}, Ljava/text/DecimalFormat;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/Double;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 828
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 830
    :cond_a
    return-object v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    .line 1400
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1401
    invoke-virtual {p1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1400
    if-eqz v0, :cond_1

    .line 1402
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    .line 1403
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1406
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1407
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1409
    :cond_1
    return-void
.end method

.method public setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V
    .locals 3
    .param p1, "newSymbols"    # Ljava/text/DecimalFormatSymbols;

    .prologue
    .line 853
    :try_start_0
    invoke-virtual {p1}, Ljava/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;

    iput-object v1, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 854
    iget-object v1, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    iget-object v2, p0, Ljava/text/DecimalFormat;->symbols:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .local v0, "foo":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1039
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1040
    return-void
.end method

.method public setGroupingSize(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 996
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingSize(I)V

    .line 997
    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1015
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 1016
    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x154

    .line 1285
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1286
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1288
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    .line 1289
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1290
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1293
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1294
    return-void

    .line 1287
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_0

    .line 1291
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_1
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x135

    .line 1243
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1244
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1246
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    .line 1247
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1248
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1251
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMaximumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 1252
    return-void

    .line 1245
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_0

    .line 1249
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_1
.end method

.method public setMinimumFractionDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x154

    .line 1306
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    .line 1307
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 1309
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v2, :cond_0

    .line 1310
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    .line 1311
    iget v0, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1314
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 1315
    return-void

    .line 1308
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumFractionDigits:I

    goto :goto_0

    .line 1312
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumFractionDigits:I

    goto :goto_1
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    const/16 v1, 0x135

    .line 1264
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    .line 1265
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-super {p0, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1267
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iget v2, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v2, :cond_0

    .line 1268
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    iput v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    .line 1269
    iget v0, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    if-le v0, v1, :cond_2

    :goto_1
    invoke-super {p0, v1}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 1272
    :cond_0
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0}, Ljava/text/DecimalFormat;->getMinimumIntegerDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 1273
    return-void

    .line 1266
    :cond_1
    iget v0, p0, Ljava/text/DecimalFormat;->minimumIntegerDigits:I

    goto :goto_0

    .line 1270
    :cond_2
    iget v1, p0, Ljava/text/DecimalFormat;->maximumIntegerDigits:I

    goto :goto_1
.end method

.method public setMultiplier(I)V
    .locals 1
    .param p1, "newValue"    # I

    .prologue
    .line 966
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setMultiplier(I)V

    .line 967
    return-void
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 937
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setNegativeSuffix(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public setParseBigDecimal(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 1065
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 1066
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1073
    invoke-super {p0, p1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 1074
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 1075
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 877
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositivePrefix(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 917
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setPositiveSuffix(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 2
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1455
    if-nez p1, :cond_0

    .line 1456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1459
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormat;->roundingMode:Ljava/math/RoundingMode;

    .line 1461
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-static {p1}, Ljava/text/DecimalFormat;->convertRoundingMode(Ljava/math/RoundingMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setRoundingMode(I)V

    .line 1462
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Ljava/text/DecimalFormat;->icuDecimalFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
