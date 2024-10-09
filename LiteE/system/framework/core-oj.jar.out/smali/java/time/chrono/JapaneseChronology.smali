.class public final Ljava/time/chrono/JapaneseChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field public static final INSTANCE:Ljava/time/chrono/JapaneseChronology;

.field static final JCAL:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final LOCALE:Ljava/util/Locale;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/JapaneseChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/JapaneseChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/chrono/JapaneseChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-string/jumbo v0, "japanese"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar;

    .line 126
    sput-object v0, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    .line 132
    const-string/jumbo v0, "ja-JP-u-ca-japanese"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    .line 141
    new-instance v0, Ljava/time/chrono/JapaneseChronology;

    invoke-direct {v0}, Ljava/time/chrono/JapaneseChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    .line 124
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 153
    return-void
.end method

.method static createCalendar()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getJapaneseImperialInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 469
    invoke-virtual {p1}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resolveYD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 8
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 506
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v4, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne p4, v4, :cond_0

    .line 509
    invoke-direct {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v3

    .line 510
    .local v3, "y":I
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    .line 511
    .local v0, "days":J
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v4, v0, v1, v5}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    return-object v4

    .line 513
    .end local v0    # "days":J
    .end local v3    # "y":I
    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v5

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6, v7, v4}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 514
    .local v2, "doy":I
    invoke-virtual {p0, p1, p2, v2}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    return-object v4
.end method

.method private resolveYMD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 18
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yoe"    # I
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/JapaneseEra;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .line 473
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v13, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_0

    .line 476
    invoke-direct/range {p0 .. p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v12

    .line 477
    .local v12, "y":I
    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v8

    .line 478
    .local v8, "months":J
    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v4

    .line 479
    .local v4, "days":J
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v13, v8, v9, v14}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v13

    sget-object v14, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v13, v4, v5, v14}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v13

    return-object v13

    .line 481
    .end local v4    # "days":J
    .end local v8    # "months":J
    .end local v12    # "y":I
    :cond_0
    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v10

    .line 482
    .local v10, "moy":I
    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v14

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v13}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v6

    .line 483
    .local v6, "dom":I
    sget-object v13, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_3

    .line 484
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    .line 485
    new-instance v13, Ljava/time/DateTimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Invalid YearOfEra: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 487
    :cond_1
    invoke-direct/range {p0 .. p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYearLenient(Ljava/time/chrono/JapaneseEra;I)I

    move-result v12

    .line 490
    .restart local v12    # "y":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v6}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 497
    .local v11, "result":Ljava/time/chrono/JapaneseDate;
    :goto_0
    invoke-virtual {v11}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v13

    move-object/from16 v0, p1

    if-eq v13, v0, :cond_2

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v11, v13}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_2

    .line 498
    new-instance v13, Ljava/time/DateTimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Invalid YearOfEra for Era: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 491
    .end local v11    # "result":Ljava/time/chrono/JapaneseDate;
    :catch_0
    move-exception v7

    .line 492
    .local v7, "ex":Ljava/time/DateTimeException;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v13}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v13

    invoke-static {}, Ljava/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljava/time/temporal/TemporalAdjuster;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v11

    .restart local v11    # "result":Ljava/time/chrono/JapaneseDate;
    goto :goto_0

    .line 500
    .end local v7    # "ex":Ljava/time/DateTimeException;
    :cond_2
    return-object v11

    .line 502
    .end local v11    # "result":Ljava/time/chrono/JapaneseDate;
    .end local v12    # "y":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v6}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v13

    return-object v13
.end method


# virtual methods
.method public bridge synthetic date(III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public date(III)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 233
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 212
    instance-of v0, p1, Ljava/time/chrono/JapaneseEra;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Era must be JapaneseEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    check-cast p1, Ljava/time/chrono/JapaneseEra;

    .end local p1    # "era":Ljava/time/chrono/Era;
    invoke-static {p1, p2, p3, p4}, Ljava/time/chrono/JapaneseDate;->of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 310
    instance-of v0, p1, Ljava/time/chrono/JapaneseDate;

    if-eqz v0, :cond_0

    .line 311
    check-cast p1, Ljava/time/chrono/JapaneseDate;

    .end local p1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p1

    .line 313
    .restart local p1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->dateEpochDay(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/JapaneseDate;
    .locals 3
    .param p1, "epochDay"    # J

    .prologue
    .line 290
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->dateNow()Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/JapaneseDate;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "clock"    # Ljava/time/Clock;

    .prologue
    .line 305
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 300
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(II)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    .line 278
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p1, p2}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 260
    check-cast p1, Ljava/time/chrono/JapaneseEra;

    .end local p1    # "era":Ljava/time/chrono/Era;
    invoke-static {p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/JapaneseEra;
    .locals 1
    .param p1, "eraValue"    # I

    .prologue
    .line 384
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string/jumbo v0, "japanese"

    return-object v0
.end method

.method getCurrentEra()Ljava/time/chrono/JapaneseEra;
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    .line 395
    .local v0, "eras":[Ljava/time/chrono/JapaneseEra;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string/jumbo v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1
    .param p1, "prolepticYear"    # J

    .prologue
    .line 347
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v0, p1, p2}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .prologue
    const/4 v5, 0x1

    .line 352
    instance-of v3, p1, Ljava/time/chrono/JapaneseEra;

    if-nez v3, :cond_0

    .line 353
    new-instance v3, Ljava/lang/ClassCastException;

    const-string/jumbo v4, "Era must be JapaneseEra"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p1

    .line 356
    check-cast v2, Ljava/time/chrono/JapaneseEra;

    .line 357
    .local v2, "jera":Ljava/time/chrono/JapaneseEra;
    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    add-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    .line 358
    .local v0, "gregorianYear":I
    if-ne p2, v5, :cond_1

    .line 359
    return v0

    .line 361
    :cond_1
    const v3, -0x3b9ac9ff

    if-lt v0, v3, :cond_2

    const v3, 0x3b9ac9ff

    if-gt v0, v3, :cond_2

    .line 362
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 363
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 364
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 365
    return v0

    .line 368
    .end local v1    # "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_2
    new-instance v3, Ljava/time/DateTimeException;

    const-string/jumbo v4, "Invalid yearOfEra value"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 11
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .prologue
    const/4 v4, 0x1

    .line 401
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 427
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_0
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_1
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v9

    .line 410
    .local v9, "jcal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->getCurrentEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v10

    .line 411
    .local v10, "startYear":I
    const-wide/16 v0, 0x1

    invoke-virtual {v9, v4}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v2

    int-to-long v2, v2

    .line 412
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 413
    const v6, 0x3b9ac9ff

    sub-int/2addr v6, v10

    int-to-long v6, v6

    .line 411
    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 417
    .end local v9    # "jcal":Ljava/util/Calendar;
    .end local v10    # "startYear":I
    :pswitch_2
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v9

    .line 418
    .restart local v9    # "jcal":Ljava/util/Calendar;
    const/4 v8, 0x6

    .line 419
    .local v8, "fieldIndex":I
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v2

    int-to-long v2, v2

    .line 420
    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v6

    int-to-long v6, v6

    .line 419
    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 423
    .end local v8    # "fieldIndex":I
    .end local v9    # "jcal":Ljava/util/Calendar;
    :pswitch_3
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 425
    :pswitch_4
    sget-object v0, Ljava/time/chrono/JapaneseEra;->MEIJI:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Ljava/time/chrono/JapaneseChronology;->getCurrentEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/JapaneseDate;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 9
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .prologue
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 440
    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 441
    .local v1, "eraLong":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 442
    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    if-eqz v1, :cond_0

    .line 443
    sget-object v4, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v5, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v6, v7, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/time/chrono/JapaneseChronology;->eraOf(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    .line 445
    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 446
    .local v3, "yoeLong":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 447
    .local v2, "yoe":I
    if-eqz v3, :cond_1

    .line 448
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v6, v7, v5}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v2

    .line 451
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-eq p2, v4, :cond_2

    .line 452
    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v4

    invoke-static {}, Ljava/time/chrono/JapaneseEra;->values()[Ljava/time/chrono/JapaneseEra;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v4, v5

    .line 455
    :cond_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 456
    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 457
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    invoke-direct {p0, v0, v2, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveYMD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 461
    :cond_3
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 462
    invoke-direct {p0, v0, v2, p1, p2}, Ljava/time/chrono/JapaneseChronology;->resolveYD(Ljava/time/chrono/JapaneseEra;ILjava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    return-object v4

    .line 465
    :cond_4
    return-object v8
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
