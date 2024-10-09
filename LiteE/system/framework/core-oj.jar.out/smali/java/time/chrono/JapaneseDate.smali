.class public final Ljava/time/chrono/JapaneseDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/JapaneseDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field static final MEIJI_6_ISODATE:Ljava/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Ljava/time/chrono/JapaneseEra;

.field private final transient isoDate:Ljava/time/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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

    const/4 v2, 0x6

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

    const/4 v2, 0x7

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/chrono/JapaneseDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    const/16 v0, 0x751

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    .line 120
    return-void
.end method

.method constructor <init>(Ljava/time/LocalDate;)V
    .locals 3
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 324
    sget-object v1, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Ljava/time/DateTimeException;

    const-string/jumbo v2, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_0
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 328
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->toJapaneseEra(Lsun/util/calendar/Era;)Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    iput-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 329
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v1

    iput v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 330
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 331
    return-void
.end method

.method constructor <init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V
    .locals 2
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "year"    # I
    .param p3, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 342
    sget-object v0, Ljava/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljava/time/LocalDate;

    invoke-virtual {p3, v0}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    iput-object p1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 346
    iput p2, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 347
    iput-object p3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 348
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 314
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/time/chrono/JapaneseDate;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 191
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 176
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 249
    new-instance v0, Ljava/time/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;
    .locals 4
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 221
    const-string/jumbo v2, "era"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 223
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 224
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "year, month, and day not valid for Era"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_0
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-static {v2, p2, p3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    .line 228
    .local v0, "date":Ljava/time/LocalDate;
    new-instance v2, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v2, p0, p1, v0}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v2
.end method

.method static ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;
    .locals 6
    .param p0, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    const/4 v5, 0x1

    .line 278
    const-string/jumbo v3, "era"

    invoke-static {p0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 280
    .local v0, "firstDay":Lsun/util/calendar/CalendarDate;
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 281
    .local v1, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 282
    if-ne p1, v5, :cond_1

    .line 283
    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, p1, v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 287
    :goto_0
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 288
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseEra;->getPrivateEra()Lsun/util/calendar/Era;

    move-result-object v3

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    if-eq p1, v3, :cond_2

    .line 289
    :cond_0
    new-instance v3, Ljava/time/DateTimeException;

    const-string/jumbo v4, "Invalid parameters"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 285
    :cond_1
    invoke-virtual {v1, p1, v5, p2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 292
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    .line 291
    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    .line 293
    .local v2, "localdate":Ljava/time/LocalDate;
    new-instance v3, Ljava/time/chrono/JapaneseDate;

    invoke-direct {v3, p0, p1, v2}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    return-object v3
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 749
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 750
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 751
    .local v0, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v3, v2, v1, v0}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    return-object v3
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
    .line 720
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toPrivateJapaneseDate(Ljava/time/LocalDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 5
    .param p0, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    const/4 v4, 0x0

    .line 498
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 499
    .local v0, "jdate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {p0}, Ljava/time/chrono/JapaneseEra;->privateEraFrom(Ljava/time/LocalDate;)Lsun/util/calendar/Era;

    move-result-object v1

    .line 500
    .local v1, "sunEra":Lsun/util/calendar/Era;
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    .line 501
    .local v2, "year":I
    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    .line 504
    :cond_0
    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 505
    sget-object v3, Ljava/time/chrono/JapaneseChronology;->JCAL:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v0}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 506
    return-object v0
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .prologue
    .line 657
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_0
    return-object p0

    .restart local p0    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_0
    new-instance p0, Ljava/time/chrono/JapaneseDate;

    .end local p0    # "this":Ljava/time/chrono/JapaneseDate;
    invoke-direct {p0, p1}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_0
.end method

.method private withYear(I)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 602
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Ljava/time/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 584
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    invoke-virtual {v1, p1, p2}, Ljava/time/chrono/JapaneseChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    .line 585
    .local v0, "year":I
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v0}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 737
    new-instance v0, Ljava/time/chrono/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Ljava/time/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 692
    if-ne p0, p1, :cond_0

    .line 693
    const/4 v1, 0x1

    return v1

    .line 695
    :cond_0
    instance-of v1, p1, Ljava/time/chrono/JapaneseDate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 696
    check-cast v0, Ljava/time/chrono/JapaneseDate;

    .line 697
    .local v0, "otherDate":Ljava/time/chrono/JapaneseDate;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    iget-object v2, v0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 699
    .end local v0    # "otherDate":Ljava/time/chrono/JapaneseDate;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/JapaneseChronology;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/JapaneseEra;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 463
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_0

    .line 469
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 486
    :pswitch_0
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 474
    :pswitch_1
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :pswitch_2
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v2, v1

    return-wide v2

    .line 478
    :pswitch_3
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 481
    :pswitch_4
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 482
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 483
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 484
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 488
    .end local v0    # "jcal":Ljava/util/Calendar;
    :cond_0
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 431
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 432
    :cond_1
    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    .line 435
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 393
    .local v0, "jcal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 394
    iget v1, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 395
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    return v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 633
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 566
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 631
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 653
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 643
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->minusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 638
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 628
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 556
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 621
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "days"    # J

    .prologue
    .line 623
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "months"    # J

    .prologue
    .line 613
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusWeeks(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 618
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/JapaneseDate;->plusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "years"    # J

    .prologue
    .line 608
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v6, 0x1

    .line 440
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    .line 441
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 442
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 443
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 454
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 444
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->lengthOfYear()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 448
    :pswitch_3
    invoke-static {}, Ljava/time/chrono/JapaneseChronology;->createCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 449
    .local v1, "jcal":Ljava/util/Calendar;
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 450
    iget v2, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    iget-object v3, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 451
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 456
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "jcal":Ljava/util/Calendar;
    :cond_0
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    :cond_1
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    .line 443
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 2

    .prologue
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 5
    .param p1, "endDate"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 668
    iget-object v1, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 669
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/JapaneseChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;
    .locals 1
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 546
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;
    .locals 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 512
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 513
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 514
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 515
    return-object p0

    .line 517
    :cond_0
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 534
    :goto_0
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 521
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 522
    .local v1, "nvalue":I
    invoke-static {}, Ljava/time/chrono/JapaneseDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 528
    :pswitch_1
    invoke-static {v1}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 524
    :pswitch_2
    invoke-direct {p0, v1}, Ljava/time/chrono/JapaneseDate;->withYear(I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 526
    :pswitch_3
    iget-object v2, p0, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    .line 536
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    return-object v2

    .line 517
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 522
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 743
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 744
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 745
    return-void
.end method
