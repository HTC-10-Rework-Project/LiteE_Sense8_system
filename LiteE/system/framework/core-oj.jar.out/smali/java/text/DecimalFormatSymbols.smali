.class public Ljava/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x3

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private transient cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

.field private transient currency:Ljava/util/Currency;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private digit:C

.field private exponential:C

.field private exponentialSeparator:Ljava/lang/String;

.field private groupingSeparator:C

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private minusSign:C

.field private monetarySeparator:C

.field private patternSeparator:C

.field private perMill:C

.field private percent:C

.field private serialVersionOnStream:I

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 817
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 818
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "currencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 819
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "decimalSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 820
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "digit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 821
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponential"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    .line 822
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "exponentialSeparator"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 823
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "groupingSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 824
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "infinity"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 825
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "intlCurrencySymbol"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 826
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSign"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 827
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "monetarySeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 828
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "NaN"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 829
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "patternSeparator"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 830
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percent"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 831
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "perMill"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 832
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "serialVersionOnStream"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 833
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "zeroDigit"

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 834
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "locale"

    const-class v3, Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 835
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "minusSignStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 836
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "percentStr"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 817
    sput-object v0, Ljava/text/DecimalFormatSymbols;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1114
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 83
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    const/4 v0, 0x3

    iput v0, p0, Ljava/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1114
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 105
    invoke-direct {p0, p1}, Ljava/text/DecimalFormatSymbols;->initialize(Ljava/util/Locale;)V

    .line 106
    return-void
.end method

.method protected static fromIcuInstance(Landroid/icu/text/DecimalFormatSymbols;)Ljava/text/DecimalFormatSymbols;
    .locals 3
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .prologue
    .line 787
    new-instance v1, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 788
    .local v1, "result":Ljava/text/DecimalFormatSymbols;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 789
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 790
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 791
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 792
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 793
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    .line 794
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 795
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 796
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 797
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 802
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 803
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 813
    return-object v1

    .line 805
    :cond_0
    :try_start_1
    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "XXX"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setCurrency(Ljava/util/Currency;)V

    goto :goto_0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 159
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initialize(Ljava/util/Locale;)V
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 631
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, "needCacheUpdate":Z
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 637
    .local v0, "data":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 638
    invoke-static {p1}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 639
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 640
    .local v2, "localeData":Llibcore/icu/LocaleData;
    new-array v0, v11, [Ljava/lang/Object;

    .line 641
    const/16 v6, 0xb

    new-array v5, v6, [Ljava/lang/String;

    .line 642
    .local v5, "values":[Ljava/lang/String;
    iget-char v6, v2, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 643
    iget-char v6, v2, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 644
    iget-char v6, v2, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 645
    iget-object v6, v2, Llibcore/icu/LocaleData;->percent:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 646
    iget-char v6, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 647
    const-string/jumbo v6, "#"

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 648
    iget-object v6, v2, Llibcore/icu/LocaleData;->minusSign:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 649
    iget-object v6, v2, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    aput-object v6, v5, v12

    .line 650
    iget-char v6, v2, Llibcore/icu/LocaleData;->perMill:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 651
    iget-object v6, v2, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    const/16 v7, 0x9

    aput-object v6, v5, v7

    .line 652
    iget-object v6, v2, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    const/16 v7, 0xa

    aput-object v6, v5, v7

    .line 653
    aput-object v5, v0, v8

    .line 654
    const/4 v3, 0x1

    .line 657
    .end local v2    # "localeData":Llibcore/icu/LocaleData;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    aget-object v4, v0, v8

    check-cast v4, [Ljava/lang/String;

    .line 660
    .local v4, "numberElements":[Ljava/lang/String;
    aget-object v6, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 661
    aget-object v6, v4, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 662
    aget-object v6, v4, v10

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 663
    aget-object v6, v4, v11

    const/16 v7, 0x25

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 664
    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 665
    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 666
    const/4 v6, 0x6

    aget-object v6, v4, v6

    const/16 v7, 0x2d

    invoke-static {v6, v7}, Ljava/text/DecimalFormatSymbols;->maybeStripMarkers(Ljava/lang/String;C)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 667
    aget-object v6, v4, v12

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 668
    aget-object v6, v4, v12

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 669
    const/16 v6, 0x8

    aget-object v6, v4, v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 670
    const/16 v6, 0x9

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 671
    const/16 v6, 0xa

    aget-object v6, v4, v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 677
    const-string/jumbo v6, ""

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 679
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 684
    :cond_1
    :goto_0
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-eqz v6, :cond_4

    .line 685
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 686
    aget-object v6, v0, v9

    if-eqz v6, :cond_3

    aget-object v6, v0, v9

    iget-object v7, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    if-ne v6, v7, :cond_3

    .line 687
    aget-object v6, v0, v10

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 706
    :goto_1
    iget-char v6, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char v6, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 708
    if-eqz v3, :cond_2

    .line 709
    sget-object v6, Ljava/text/DecimalFormatSymbols;->cachedLocaleData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_2
    return-void

    .line 689
    :cond_3
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v6, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 690
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    aput-object v6, v0, v9

    .line 691
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    aput-object v6, v0, v10

    .line 692
    const/4 v3, 0x1

    goto :goto_1

    .line 696
    :cond_4
    const-string/jumbo v6, "XXX"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 698
    :try_start_1
    iget-object v6, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 701
    :goto_2
    const-string/jumbo v6, "\u00a4"

    iput-object v6, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    goto :goto_1

    .line 699
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 680
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static maybeStripMarkers(Ljava/lang/String;C)C
    .locals 6
    .param p0, "symbol"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    .prologue
    .line 723
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 724
    .local v2, "length":I
    const/4 v5, 0x1

    if-lt v2, v5, :cond_4

    .line 725
    const/4 v4, 0x0

    .line 726
    .local v4, "sawNonMarker":Z
    const/4 v3, 0x0

    .line 727
    .local v3, "nonMarker":C
    const/4 v1, 0x0

    .end local v3    # "nonMarker":C
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 728
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 729
    .local v0, "c":C
    const/16 v5, 0x200e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x200f

    if-ne v0, v5, :cond_1

    .line 727
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    :cond_1
    const/16 v5, 0x61c

    if-eq v0, v5, :cond_0

    .line 732
    if-eqz v4, :cond_2

    .line 734
    return p1

    .line 736
    :cond_2
    const/4 v4, 0x1

    .line 737
    move v3, v0

    .local v3, "nonMarker":C
    goto :goto_1

    .line 739
    .end local v0    # "c":C
    .end local v3    # "nonMarker":C
    :cond_3
    if-eqz v4, :cond_4

    .line 740
    return v3

    .line 743
    .end local v1    # "i":I
    .end local v4    # "sawNonMarker":Z
    :cond_4
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 885
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 886
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v5, "serialVersionOnStream"

    invoke-virtual {v1, v5, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    .line 887
    .local v4, "serialVersionOnStream":I
    const-string/jumbo v5, "currencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 888
    const-string/jumbo v5, "decimalSeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 889
    const-string/jumbo v5, "digit"

    const/16 v6, 0x23

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setDigit(C)V

    .line 890
    const-string/jumbo v5, "groupingSeparator"

    const/16 v6, 0x2c

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 891
    const-string/jumbo v5, "infinity"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 892
    const-string/jumbo v5, "intlCurrencySymbol"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 893
    const-string/jumbo v5, "NaN"

    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 894
    const-string/jumbo v5, "patternSeparator"

    const/16 v6, 0x3b

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 900
    const-string/jumbo v5, "minusSignStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 901
    .local v2, "minusSignStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 902
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 906
    :goto_0
    const-string/jumbo v5, "percentStr"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 907
    .local v3, "percentStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 908
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 913
    :goto_1
    const-string/jumbo v5, "perMill"

    const/16 v6, 0x2030

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPerMill(C)V

    .line 914
    const-string/jumbo v5, "zeroDigit"

    const/16 v6, 0x30

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 915
    const-string/jumbo v5, "locale"

    invoke-virtual {v1, v5, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    .line 916
    if-nez v4, :cond_2

    .line 917
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 922
    :goto_2
    if-nez v4, :cond_3

    .line 924
    const-string/jumbo v5, "E"

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 934
    :goto_3
    :try_start_0
    iget-object v5, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    iput-object v5, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :goto_4
    return-void

    .line 904
    .end local v3    # "percentStr":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "minusSign"

    const/16 v6, 0x2d

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMinusSign(C)V

    goto :goto_0

    .line 910
    .restart local v3    # "percentStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "percent"

    const/16 v6, 0x25

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setPercent(C)V

    goto :goto_1

    .line 919
    :cond_2
    const-string/jumbo v5, "monetarySeparator"

    invoke-virtual {v1, v5, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    goto :goto_2

    .line 925
    :cond_3
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 927
    const-string/jumbo v5, "exponential"

    const/16 v6, 0x45

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    .line 930
    :cond_4
    const-string/jumbo v5, "exponentialSeparator"

    const-string/jumbo v6, "E"

    invoke-virtual {v1, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    goto :goto_3

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iput-object v7, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_4
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 841
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "currencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 842
    const-string/jumbo v1, "decimalSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 843
    const-string/jumbo v1, "digit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 844
    const-string/jumbo v1, "exponential"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 845
    const-string/jumbo v1, "exponentialSeparator"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    const-string/jumbo v1, "groupingSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 847
    const-string/jumbo v1, "infinity"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 848
    const-string/jumbo v1, "intlCurrencySymbol"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 849
    const-string/jumbo v1, "monetarySeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMonetaryDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 850
    const-string/jumbo v1, "NaN"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 851
    const-string/jumbo v1, "patternSeparator"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 852
    const-string/jumbo v1, "perMill"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPerMill()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 853
    const-string/jumbo v1, "serialVersionOnStream"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 854
    const-string/jumbo v1, "zeroDigit"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 855
    const-string/jumbo v1, "locale"

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 859
    const-string/jumbo v1, "minusSign"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 860
    const-string/jumbo v1, "percent"

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;C)V

    .line 862
    const-string/jumbo v1, "minusSignStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 863
    const-string/jumbo v1, "percentStr"

    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 865
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 569
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 581
    if-nez p1, :cond_0

    return v1

    .line 582
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    return v1

    .line 583
    :cond_1
    invoke-virtual {p0}, Ljava/text/DecimalFormatSymbols;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    .line 584
    check-cast v0, Ljava/text/DecimalFormatSymbols;

    .line 585
    .local v0, "other":Ljava/text/DecimalFormatSymbols;
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    if-ne v2, v3, :cond_3

    .line 586
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_3

    .line 587
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_3

    .line 588
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_3

    .line 589
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_3

    .line 590
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_3

    .line 591
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_3

    .line 592
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_3

    .line 593
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_3

    .line 594
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_3

    .line 595
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_3

    .line 596
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_3

    .line 597
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    if-ne v2, v3, :cond_3

    .line 598
    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, v0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_3

    .line 599
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    iget-object v3, v0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_3

    .line 600
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v2, v0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 585
    :cond_3
    return v1
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    return-object v0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDecimalSeparator()C
    .locals 1

    .prologue
    .line 206
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    return v0
.end method

.method public getDigit()C
    .locals 1

    .prologue
    .line 272
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    return v0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    return-object v0
.end method

.method getExponentialSymbol()C
    .locals 1

    .prologue
    .line 517
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    return v0
.end method

.method public getGroupingSeparator()C
    .locals 1

    .prologue
    .line 187
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    return v0
.end method

.method protected getIcuDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 3

    .prologue
    .line 751
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v1, :cond_0

    .line 752
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    .line 755
    :cond_0
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 756
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setZeroDigit(C)V

    .line 757
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDigit(C)V

    .line 758
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 759
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 760
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPatternSeparator(C)V

    .line 761
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setPercent(C)V

    .line 762
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparator(C)V

    .line 763
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSign(C)V

    .line 764
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    .line 769
    :try_start_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 770
    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 769
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->setInternationalCurrencySymbol(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    return-object v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "XXX"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    goto :goto_0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getMinusSign()C
    .locals 1

    .prologue
    .line 356
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    return v0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 1

    .prologue
    .line 493
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    return v0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object v0
.end method

.method public getPatternSeparator()C
    .locals 1

    .prologue
    .line 292
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    return v0
.end method

.method public getPerMill()C
    .locals 1

    .prologue
    .line 225
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    return v0
.end method

.method public getPercent()C
    .locals 1

    .prologue
    .line 244
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    return v0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZeroDigit()C
    .locals 1

    .prologue
    .line 168
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 608
    iget-char v0, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 609
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int v0, v1, v2

    .line 610
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int v0, v1, v2

    .line 611
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    add-int v0, v1, v2

    .line 612
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    add-int v0, v1, v2

    .line 613
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    add-int v0, v1, v2

    .line 614
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    add-int v0, v1, v2

    .line 615
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    add-int v0, v1, v2

    .line 616
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 617
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 618
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 619
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 620
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    invoke-virtual {v2}, Ljava/util/Currency;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 621
    mul-int/lit8 v1, v0, 0x25

    iget-char v2, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    add-int v0, v1, v2

    .line 622
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 623
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 624
    return v0
.end method

.method public setCurrency(Ljava/util/Currency;)V
    .locals 2
    .param p1, "currency"    # Ljava/util/Currency;

    .prologue
    const/4 v1, 0x0

    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 479
    invoke-virtual {p1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 481
    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 482
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 1
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 406
    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 1
    .param p1, "decimalSeparator"    # C

    .prologue
    .line 215
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 217
    return-void
.end method

.method public setDigit(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 281
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->digit:C

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 283
    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 1
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 555
    :cond_0
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->exponentialSeparator:Ljava/lang/String;

    .line 556
    return-void
.end method

.method setExponentialSymbol(C)V
    .locals 1
    .param p1, "exp"    # C

    .prologue
    .line 537
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->exponential:C

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 539
    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 1
    .param p1, "groupingSeparator"    # C

    .prologue
    .line 196
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 198
    return-void
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 1
    .param p1, "infinity"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 325
    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 438
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 439
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 440
    if-eqz p1, :cond_0

    .line 442
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    .line 443
    iget-object v1, p0, Ljava/text/DecimalFormatSymbols;->currency:Ljava/util/Currency;

    iget-object v2, p0, Ljava/text/DecimalFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :cond_0
    :goto_0
    iput-object v3, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 448
    return-void

    .line 444
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public setMinusSign(C)V
    .locals 1
    .param p1, "minusSign"    # C

    .prologue
    .line 379
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->minusSign:C

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 381
    return-void
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 1
    .param p1, "sep"    # C

    .prologue
    .line 504
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 506
    return-void
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 1
    .param p1, "NaN"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Ljava/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 346
    return-void
.end method

.method public setPatternSeparator(C)V
    .locals 1
    .param p1, "patternSeparator"    # C

    .prologue
    .line 302
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->patternSeparator:C

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 304
    return-void
.end method

.method public setPerMill(C)V
    .locals 1
    .param p1, "perMill"    # C

    .prologue
    .line 234
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->perMill:C

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 236
    return-void
.end method

.method public setPercent(C)V
    .locals 1
    .param p1, "percent"    # C

    .prologue
    .line 262
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->percent:C

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 264
    return-void
.end method

.method public setZeroDigit(C)V
    .locals 1
    .param p1, "zeroDigit"    # C

    .prologue
    .line 177
    iput-char p1, p0, Ljava/text/DecimalFormatSymbols;->zeroDigit:C

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/text/DecimalFormatSymbols;->cachedIcuDFS:Landroid/icu/text/DecimalFormatSymbols;

    .line 179
    return-void
.end method
