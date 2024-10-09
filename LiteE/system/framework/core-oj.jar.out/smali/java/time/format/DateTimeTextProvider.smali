.class Ljava/time/format/DateTimeTextProvider;
.super Ljava/lang/Object;
.source "DateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeTextProvider$1;,
        Ljava/time/format/DateTimeTextProvider$LocaleStore;
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I

.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/format/DateTimeTextProvider;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/format/DateTimeTextProvider;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/format/DateTimeTextProvider;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1d

    :catch_1
    move-exception v1

    goto :goto_1c

    :catch_2
    move-exception v1

    goto :goto_1b

    :catch_3
    move-exception v1

    goto :goto_1a

    :catch_4
    move-exception v1

    goto :goto_19

    :catch_5
    move-exception v1

    goto :goto_18

    :catch_6
    move-exception v1

    goto :goto_17

    :catch_7
    move-exception v1

    goto :goto_16

    :catch_8
    move-exception v1

    goto :goto_15

    :catch_9
    move-exception v1

    goto :goto_14

    :catch_a
    move-exception v1

    goto :goto_13

    :catch_b
    move-exception v1

    goto/16 :goto_12

    :catch_c
    move-exception v1

    goto/16 :goto_11

    :catch_d
    move-exception v1

    goto/16 :goto_10

    :catch_e
    move-exception v1

    goto/16 :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_d

    :catch_11
    move-exception v1

    goto/16 :goto_c

    :catch_12
    move-exception v1

    goto/16 :goto_b

    :catch_13
    move-exception v1

    goto/16 :goto_a

    :catch_14
    move-exception v1

    goto/16 :goto_9

    :catch_15
    move-exception v1

    goto/16 :goto_8

    :catch_16
    move-exception v1

    goto/16 :goto_7

    :catch_17
    move-exception v1

    goto/16 :goto_6

    :catch_18
    move-exception v1

    goto/16 :goto_5

    :catch_19
    move-exception v1

    goto/16 :goto_4

    :catch_1a
    move-exception v1

    goto/16 :goto_3

    :catch_1b
    move-exception v1

    goto/16 :goto_2

    :catch_1c
    move-exception v1

    goto/16 :goto_1

    :catch_1d
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "text"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 109
    new-instance v0, Ljava/time/format/DateTimeTextProvider$1;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider$1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;

    .line 104
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Ljava/util/Map$Entry",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "text":Ljava/lang/Object;, "TA;"
    .local p1, "field":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 26
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 329
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 330
    .local v16, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    sget-object v19, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 331
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v17, v21, v20

    .line 332
    .local v17, "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 331
    :cond_0
    :goto_1
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_0

    .line 337
    :cond_1
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x0

    .line 336
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 338
    .local v6, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 339
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 341
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 343
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 344
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 348
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v17    # "textStyle":Ljava/time/format/TextStyle;
    :cond_3
    new-instance v19, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v19

    .line 351
    :cond_4
    sget-object v19, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 352
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v19

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v17, v21, v20

    .line 354
    .restart local v17    # "textStyle":Ljava/time/format/TextStyle;
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x2

    .line 353
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 355
    .restart local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 356
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    .line 357
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 358
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 364
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    const/4 v11, 0x0

    .local v11, "month":I
    :goto_5
    const/16 v19, 0xb

    move/from16 v0, v19

    if-gt v11, v0, :cond_6

    .line 367
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x2

    .line 366
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v11, v2, v3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 368
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_8

    .line 374
    .end local v11    # "month":I
    .end local v12    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 375
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_7
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_3

    .line 371
    .restart local v11    # "month":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_8
    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 378
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v11    # "month":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "textStyle":Ljava/time/format/TextStyle;
    :cond_9
    new-instance v19, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v19

    .line 381
    :cond_a
    sget-object v19, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 382
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v19

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    aget-object v17, v21, v20

    .line 384
    .restart local v17    # "textStyle":Ljava/time/format/TextStyle;
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x7

    .line 383
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 385
    .restart local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 386
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v6, :cond_b

    .line 387
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 388
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 394
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    :cond_b
    const/16 v18, 0x1

    .local v18, "wday":I
    :goto_8
    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 397
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x7

    .line 396
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v18

    move/from16 v3, v23

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 398
    .restart local v12    # "name":Ljava/lang/String;
    if-nez v12, :cond_e

    .line 404
    .end local v12    # "name":Ljava/lang/String;
    .end local v18    # "wday":I
    :cond_c
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_d

    .line 405
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_d
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto/16 :goto_6

    .line 401
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v18    # "wday":I
    :cond_e
    invoke-static/range {v18 .. v18}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 408
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "name":Ljava/lang/String;
    .end local v17    # "textStyle":Ljava/time/format/TextStyle;
    .end local v18    # "wday":I
    :cond_f
    new-instance v19, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v19

    .line 411
    :cond_10
    sget-object v19, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 412
    invoke-static {}, Ljava/time/format/TextStyle;->values()[Ljava/time/format/TextStyle;

    move-result-object v21

    const/16 v19, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v20, v19

    :goto_9
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    aget-object v17, v21, v20

    .line 413
    .restart local v17    # "textStyle":Ljava/time/format/TextStyle;
    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->isStandalone()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 412
    :cond_11
    :goto_a
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_9

    .line 418
    :cond_12
    const-string/jumbo v19, "gregory"

    invoke-virtual/range {v17 .. v17}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v23

    const/16 v24, 0x9

    .line 417
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 419
    .restart local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_11

    .line 420
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 421
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 422
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 424
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_13
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_11

    .line 425
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 429
    .end local v6    # "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v17    # "textStyle":Ljava/time/format/TextStyle;
    :cond_14
    new-instance v19, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v19

    .line 432
    :cond_15
    sget-object v19, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 435
    const-string/jumbo v19, "android/icu/impl/data/icudt58b"

    .line 434
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    check-cast v14, Landroid/icu/impl/ICUResourceBundle;

    .line 436
    .local v14, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v19, "calendar/gregorian/quarters"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v13

    .line 437
    .local v13, "quartersRb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v19, "format"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v9

    .line 438
    .local v9, "formatRb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v19, "stand-alone"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v15

    .line 439
    .local v15, "standaloneRb":Landroid/icu/impl/ICUResourceBundle;
    sget-object v19, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "wide"

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v19, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "wide"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v19, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "abbreviated"

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v19, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "abbreviated"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v19, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "narrow"

    move-object/from16 v0, v20

    invoke-static {v9, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v19, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    const-string/jumbo v20, "narrow"

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/time/format/DateTimeTextProvider;->extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v19, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    return-object v19

    .line 448
    .end local v9    # "formatRb":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "quartersRb":Landroid/icu/impl/ICUResourceBundle;
    .end local v14    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v15    # "standaloneRb":Landroid/icu/impl/ICUResourceBundle;
    :cond_16
    const-string/jumbo v19, ""

    return-object v19
.end method

.method private static extractQuarters(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "rb"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "q":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 455
    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    :cond_0
    return-object v0
.end method

.method private findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 310
    invoke-static {p1, p2}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 311
    .local v0, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/time/temporal/TemporalField;Ljava/util/Locale;>;"
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "store":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 313
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeTextProvider;->createStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v1

    .line 314
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v2, Ljava/time/format/DateTimeTextProvider;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 317
    :cond_0
    return-object v1
.end method

.method static getInstance()Ljava/time/format/DateTimeTextProvider;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Ljava/time/format/DateTimeTextProvider;

    invoke-direct {v0}, Ljava/time/format/DateTimeTextProvider;-><init>()V

    return-object v0
.end method

.method private static toWeekDay(I)I
    .locals 1
    .param p0, "calWeekDay"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 322
    const/4 v0, 0x7

    return v0

    .line 324
    :cond_0
    add-int/lit8 v0, p0, -0x1

    return v0
.end method


# virtual methods
.method public getText(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 9
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "value"    # J
    .param p5, "style"    # Ljava/time/format/TextStyle;
    .param p6, "locale"    # Ljava/util/Locale;

    .prologue
    .line 166
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v0, :cond_0

    .line 167
    instance-of v0, p2, Ljava/time/temporal/ChronoField;

    xor-int/lit8 v0, v0, 0x1

    .line 166
    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 168
    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeTextProvider;->getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    sget-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_5

    .line 174
    const/4 v6, 0x0

    .line 175
    .local v6, "fieldIndex":I
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v0, :cond_4

    .line 176
    const-wide/16 v0, -0x3e7

    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    .line 177
    const/4 v7, 0x0

    .line 200
    .local v7, "fieldValue":I
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v1

    .line 199
    invoke-static {v0, v6, v7, v1, p6}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    .end local v7    # "fieldValue":I
    :cond_3
    long-to-int v0, p3

    add-int/lit8 v7, v0, 0x2

    .restart local v7    # "fieldValue":I
    goto :goto_0

    .line 182
    .end local v7    # "fieldValue":I
    :cond_4
    long-to-int v7, p3

    .restart local v7    # "fieldValue":I
    goto :goto_0

    .line 184
    .end local v6    # "fieldIndex":I
    .end local v7    # "fieldValue":I
    :cond_5
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_6

    .line 185
    const/4 v6, 0x2

    .line 186
    .restart local v6    # "fieldIndex":I
    long-to-int v0, p3

    add-int/lit8 v7, v0, -0x1

    .restart local v7    # "fieldValue":I
    goto :goto_0

    .line 187
    .end local v6    # "fieldIndex":I
    .end local v7    # "fieldValue":I
    :cond_6
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_7

    .line 188
    const/4 v6, 0x7

    .line 189
    .restart local v6    # "fieldIndex":I
    long-to-int v0, p3

    add-int/lit8 v7, v0, 0x1

    .line 190
    .restart local v7    # "fieldValue":I
    const/4 v0, 0x7

    if-le v7, v0, :cond_2

    .line 191
    const/4 v7, 0x1

    goto :goto_0

    .line 193
    .end local v6    # "fieldIndex":I
    .end local v7    # "fieldValue":I
    :cond_7
    sget-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    if-ne p2, v0, :cond_8

    .line 194
    const/16 v6, 0x9

    .line 195
    .restart local v6    # "fieldIndex":I
    long-to-int v7, p3

    .restart local v7    # "fieldValue":I
    goto :goto_0

    .line 197
    .end local v6    # "fieldIndex":I
    .end local v7    # "fieldValue":I
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/time/temporal/TemporalField;JLjava/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J
    .param p4, "style"    # Ljava/time/format/TextStyle;
    .param p5, "locale"    # Ljava/util/Locale;

    .prologue
    .line 142
    invoke-direct {p0, p1, p5}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    .end local v0    # "store":Ljava/lang/Object;
    invoke-virtual {v0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getText(JLjava/time/format/TextStyle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    .restart local v0    # "store":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTextIterator(Ljava/time/chrono/Chronology;Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 10
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "field"    # Ljava/time/temporal/TemporalField;
    .param p3, "style"    # Ljava/time/format/TextStyle;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 246
    sget-object v7, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-eq p1, v7, :cond_0

    .line 247
    instance-of v7, p2, Ljava/time/temporal/ChronoField;

    xor-int/lit8 v7, v7, 0x1

    .line 246
    if-eqz v7, :cond_1

    .line 248
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Ljava/time/format/DateTimeTextProvider;->getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v7

    return-object v7

    .line 252
    :cond_1
    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v7

    check-cast p2, Ljava/time/temporal/ChronoField;

    .end local p2    # "field":Ljava/time/temporal/TemporalField;
    invoke-virtual {p2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 266
    return-object v9

    .line 254
    :pswitch_0
    const/4 v4, 0x0

    .line 269
    .local v4, "fieldIndex":I
    :goto_0
    if-nez p3, :cond_2

    const/4 v0, 0x0

    .line 271
    .local v0, "calendarStyle":I
    :goto_1
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v7

    .line 270
    invoke-static {v7, v4, v0, p4}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveJavaTimeFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v6

    .line 272
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v6, :cond_3

    .line 273
    return-object v9

    .line 257
    .end local v0    # "calendarStyle":I
    .end local v4    # "fieldIndex":I
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_1
    const/4 v4, 0x2

    .line 258
    .restart local v4    # "fieldIndex":I
    goto :goto_0

    .line 260
    .end local v4    # "fieldIndex":I
    :pswitch_2
    const/4 v4, 0x7

    .line 261
    .restart local v4    # "fieldIndex":I
    goto :goto_0

    .line 263
    .end local v4    # "fieldIndex":I
    :pswitch_3
    const/16 v4, 0x9

    .line 264
    .restart local v4    # "fieldIndex":I
    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p3}, Ljava/time/format/TextStyle;->toCalendarStyle()I

    move-result v0

    .restart local v0    # "calendarStyle":I
    goto :goto_1

    .line 275
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    sparse-switch v4, :sswitch_data_0

    .line 301
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 278
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :sswitch_0
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 280
    .local v3, "era":I
    sget-object v7, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    if-ne p1, v7, :cond_4

    .line 281
    if-nez v3, :cond_5

    .line 282
    const/16 v3, -0x3e7

    .line 287
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 284
    :cond_5
    add-int/lit8 v3, v3, -0x2

    goto :goto_4

    .line 291
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "era":I
    :sswitch_1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 296
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :sswitch_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 297
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/time/format/DateTimeTextProvider;->toWeekDay(I)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/format/DateTimeTextProvider;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 306
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    return-object v7

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 276
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public getTextIterator(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "style"    # Ljava/time/format/TextStyle;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p3}, Ljava/time/format/DateTimeTextProvider;->findStore(Ljava/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "store":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    .end local v0    # "store":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeTextProvider$LocaleStore;->getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 224
    .restart local v0    # "store":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
