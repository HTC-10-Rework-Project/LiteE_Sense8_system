.class public final Ljava/time/LocalDate;
.super Ljava/lang/Object;
.source "LocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final synthetic -java-time-temporal-ChronoUnitSwitchesValues:[I = null

.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final MAX:Ljava/time/LocalDate;

.field public static final MIN:Ljava/time/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_4

    :goto_19
    :try_start_1a
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3

    :goto_1a
    :try_start_1b
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method private static synthetic -getjava-time-temporal-ChronoUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/temporal/ChronoUnit;->values()[Ljava/time/temporal/ChronoUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Ljava/time/LocalDate;->-java-time-temporal-ChronoUnitSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic -java_time_LocalDate-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 1

    .prologue
    .line 394
    invoke-static {p0}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 138
    const v0, -0x3b9ac9ff

    invoke-static {v0, v1, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    .line 143
    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    .line 131
    return-void
.end method

.method private constructor <init>(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Ljava/time/LocalDate;->year:I

    .line 464
    int-to-short v0, p2

    iput-short v0, p0, Ljava/time/LocalDate;->month:S

    .line 465
    int-to-short v0, p3

    iput-short v0, p0, Ljava/time/LocalDate;->day:S

    .line 466
    return-void
.end method

.method private static create(III)Ljava/time/LocalDate;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 408
    const/16 v1, 0x1c

    if-le p2, v1, :cond_2

    .line 409
    const/16 v0, 0x1f

    .line 410
    .local v0, "dom":I
    packed-switch p1, :pswitch_data_0

    .line 421
    :goto_0
    :pswitch_0
    if-le p2, v0, :cond_2

    .line 422
    const/16 v1, 0x1d

    if-ne p2, v1, :cond_1

    .line 423
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid date \'February 29\' as \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not a leap year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :pswitch_1
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 418
    :pswitch_2
    const/16 v0, 0x1e

    .line 419
    goto :goto_0

    .line 425
    :cond_1
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid date \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    .end local v0    # "dom":I
    :cond_2
    new-instance v1, Ljava/time/LocalDate;

    invoke-direct {v1, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v1

    .line 410
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 4
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 358
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    .line 360
    .local v0, "date":Ljava/time/LocalDate;
    if-nez v0, :cond_0

    .line 361
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    const-string/jumbo v3, " of type "

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_0
    return-object v0
.end method

.method private get0(Ljava/time/temporal/TemporalField;)I
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    .line 659
    invoke-static {}, Ljava/time/LocalDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 674
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

    .line 660
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->getValue()I

    move-result v0

    return v0

    .line 661
    :pswitch_1
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 662
    :pswitch_2
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 663
    :pswitch_3
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0

    .line 664
    :pswitch_4
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    return v0

    .line 665
    :pswitch_5
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :pswitch_6
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 667
    :pswitch_7
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 668
    :pswitch_8
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0

    .line 669
    :pswitch_9
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :pswitch_a
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Ljava/time/LocalDate;->year:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljava/time/LocalDate;->year:I

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :pswitch_b
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0

    .line 672
    :pswitch_c
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-lt v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .locals 4

    .prologue
    .line 678
    iget v0, p0, Ljava/time/LocalDate;->year:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v2, p0, Ljava/time/LocalDate;->month:S

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private monthsUntil(Ljava/time/LocalDate;)J
    .locals 10
    .param p1, "end"    # Ljava/time/LocalDate;

    .prologue
    const-wide/16 v8, 0x20

    .line 1618
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 1619
    .local v0, "packed1":J
    invoke-direct {p1}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 1620
    .local v2, "packed2":J
    sub-long v4, v2, v0

    div-long/2addr v4, v8

    return-wide v4
.end method

.method public static now()Ljava/time/LocalDate;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalDate;
    .locals 10
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 216
    const-string/jumbo v6, "clock"

    invoke-static {p0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v4

    .line 219
    .local v4, "now":Ljava/time/Instant;
    invoke-virtual {p0}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v5

    .line 220
    .local v5, "offset":Ljava/time/ZoneOffset;
    invoke-virtual {v4}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 221
    .local v2, "epochSec":J
    const-wide/32 v6, 0x15180

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    .line 222
    .local v0, "epochDay":J
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .locals 1
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 202
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/LocalDate;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 260
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 261
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 262
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 263
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(ILjava/time/Month;I)Ljava/time/LocalDate;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 240
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 241
    const-string/jumbo v0, "month"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 243
    invoke-virtual {p1}, Ljava/time/Month;->getValue()I

    move-result v0

    invoke-static {p0, v0, p2}, Ljava/time/LocalDate;->create(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofEpochDay(J)Ljava/time/LocalDate;
    .locals 22
    .param p0, "epochDay"    # J

    .prologue
    .line 308
    const-wide/32 v18, 0xafaa8

    add-long v16, p0, v18

    .line 310
    .local v16, "zeroDay":J
    const-wide/16 v18, 0x3c

    sub-long v16, v16, v18

    .line 311
    const-wide/16 v2, 0x0

    .line 312
    .local v2, "adjust":J
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-gez v13, :cond_0

    .line 314
    const-wide/16 v18, 0x1

    add-long v18, v18, v16

    const-wide/32 v20, 0x23ab1

    div-long v18, v18, v20

    const-wide/16 v20, 0x1

    sub-long v4, v18, v20

    .line 315
    .local v4, "adjustCycles":J
    const-wide/16 v18, 0x190

    mul-long v2, v4, v18

    .line 316
    neg-long v0, v4

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x23ab1

    mul-long v18, v18, v20

    add-long v16, v16, v18

    .line 318
    .end local v4    # "adjustCycles":J
    :cond_0
    const-wide/16 v18, 0x190

    mul-long v18, v18, v16

    const-wide/16 v20, 0x24f

    add-long v18, v18, v20

    const-wide/32 v20, 0x23ab1

    div-long v14, v18, v20

    .line 319
    .local v14, "yearEst":J
    const-wide/16 v18, 0x16d

    mul-long v18, v18, v14

    const-wide/16 v20, 0x4

    div-long v20, v14, v20

    add-long v18, v18, v20

    const-wide/16 v20, 0x64

    div-long v20, v14, v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x190

    div-long v20, v14, v20

    add-long v18, v18, v20

    sub-long v8, v16, v18

    .line 320
    .local v8, "doyEst":J
    const-wide/16 v18, 0x0

    cmp-long v13, v8, v18

    if-gez v13, :cond_1

    .line 322
    const-wide/16 v18, 0x1

    sub-long v14, v14, v18

    .line 323
    const-wide/16 v18, 0x16d

    mul-long v18, v18, v14

    const-wide/16 v20, 0x4

    div-long v20, v14, v20

    add-long v18, v18, v20

    const-wide/16 v20, 0x64

    div-long v20, v14, v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x190

    div-long v20, v14, v20

    add-long v18, v18, v20

    sub-long v8, v16, v18

    .line 325
    :cond_1
    add-long/2addr v14, v2

    .line 326
    long-to-int v7, v8

    .line 329
    .local v7, "marchDoy0":I
    mul-int/lit8 v13, v7, 0x5

    add-int/lit8 v13, v13, 0x2

    div-int/lit16 v10, v13, 0x99

    .line 330
    .local v10, "marchMonth0":I
    add-int/lit8 v13, v10, 0x2

    rem-int/lit8 v13, v13, 0xc

    add-int/lit8 v11, v13, 0x1

    .line 331
    .local v11, "month":I
    mul-int/lit16 v13, v10, 0x132

    add-int/lit8 v13, v13, 0x5

    div-int/lit8 v13, v13, 0xa

    sub-int v13, v7, v13

    add-int/lit8 v6, v13, 0x1

    .line 332
    .local v6, "dom":I
    div-int/lit8 v13, v10, 0xa

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 335
    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v13, v14, v15}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    .line 336
    .local v12, "year":I
    new-instance v13, Ljava/time/LocalDate;

    invoke-direct {v13, v12, v11, v6}, Ljava/time/LocalDate;-><init>(III)V

    return-object v13
.end method

.method public static ofYearDay(II)Ljava/time/LocalDate;
    .locals 8
    .param p0, "year"    # I
    .param p1, "dayOfYear"    # I

    .prologue
    .line 280
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v6, p0

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 281
    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 282
    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v6, p0

    invoke-virtual {v4, v6, v7}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    .line 283
    .local v1, "leap":Z
    const/16 v4, 0x16e

    if-ne p1, v4, :cond_0

    if-nez v1, :cond_0

    .line 284
    new-instance v4, Ljava/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' is not a leap year"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :cond_0
    add-int/lit8 v4, p1, -0x1

    div-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v3

    .line 287
    .local v3, "moy":Ljava/time/Month;
    invoke-virtual {v3, v1}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v4

    invoke-virtual {v3, v1}, Ljava/time/Month;->length(Z)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 288
    .local v2, "monthEnd":I
    if-le p1, v2, :cond_1

    .line 289
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v3

    .line 291
    :cond_1
    invoke-virtual {v3, v1}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v4

    sub-int v4, p1, v4

    add-int/lit8 v0, v4, 0x1

    .line 292
    .local v0, "dom":I
    new-instance v4, Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/Month;->getValue()I

    move-result v5

    invoke-direct {v4, p0, v5, v0}, Ljava/time/LocalDate;-><init>(III)V

    return-object v4
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 379
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {p0, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 393
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    new-instance v0, Ljava/time/-$Lambda$BOzbf-cDF7D5c6v086Gncf-Nj34;

    invoke-direct {v0}, Ljava/time/-$Lambda$BOzbf-cDF7D5c6v086Gncf-Nj34;-><init>()V

    invoke-virtual {p1, p0, v0}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2070
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 2071
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 2072
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 2073
    .local v0, "dayOfMonth":I
    invoke-static {v2, v1, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

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
    .line 2060
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static resolvePreviousValid(III)Ljava/time/LocalDate;
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 441
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_0
    :pswitch_0
    new-instance v0, Ljava/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Ljava/time/LocalDate;-><init>(III)V

    return-object v0

    .line 443
    :pswitch_1
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    :goto_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_1

    .line 449
    :pswitch_2
    const/16 v0, 0x1e

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2050
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 1544
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay()Ljava/time/LocalDateTime;
    .locals 1

    .prologue
    .line 1782
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 4
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 1806
    const-string/jumbo v3, "zone"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1809
    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p0, v3}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1810
    .local v0, "ldt":Ljava/time/LocalDateTime;
    instance-of v3, p1, Ljava/time/ZoneOffset;

    if-nez v3, :cond_0

    .line 1811
    invoke-virtual {p1}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v1

    .line 1812
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    invoke-virtual {v1, v0}, Ljava/time/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1813
    .local v2, "trans":Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1814
    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1817
    .end local v1    # "rules":Ljava/time/zone/ZoneRules;
    .end local v2    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_0
    invoke-static {v0, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    return-object v3
.end method

.method public atTime(II)Ljava/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 1718
    invoke-static {p1, p2}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(III)Ljava/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 1737
    invoke-static {p1, p2, p3}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(IIII)Ljava/time/LocalDateTime;
    .locals 1
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "nanoOfSecond"    # I

    .prologue
    .line 1756
    invoke-static {p1, p2, p3, p4}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 1
    .param p1, "time"    # Ljava/time/LocalTime;

    .prologue
    .line 1700
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public atTime(Ljava/time/OffsetTime;)Ljava/time/OffsetDateTime;
    .locals 2
    .param p1, "time"    # Ljava/time/OffsetTime;

    .prologue
    .line 1769
    invoke-virtual {p1}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p1}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 1

    .prologue
    .line 1688
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1843
    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .locals 1
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 1860
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_0

    .line 1861
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v0

    return v0

    .line 1863
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v0

    return v0
.end method

.method compareTo0(Ljava/time/LocalDate;)I
    .locals 3
    .param p1, "otherDate"    # Ljava/time/LocalDate;

    .prologue
    .line 1867
    iget v1, p0, Ljava/time/LocalDate;->year:I

    iget v2, p1, Ljava/time/LocalDate;->year:I

    sub-int v0, v1, v2

    .line 1868
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 1869
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p1, Ljava/time/LocalDate;->month:S

    sub-int v0, v1, v2

    .line 1870
    if-nez v0, :cond_0

    .line 1871
    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    iget-short v2, p1, Ljava/time/LocalDate;->day:S

    sub-int v0, v1, v2

    .line 1874
    :cond_0
    return v0
.end method

.method daysUntil(Ljava/time/LocalDate;)J
    .locals 4
    .param p1, "end"    # Ljava/time/LocalDate;

    .prologue
    .line 1614
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1979
    if-ne p0, p1, :cond_0

    .line 1980
    return v0

    .line 1982
    :cond_0
    instance-of v2, p1, Ljava/time/LocalDate;

    if-eqz v2, :cond_2

    .line 1983
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1985
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    return v1
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 1684
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1685
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 615
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 618
    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    .prologue
    .line 681
    invoke-virtual {p0}, Ljava/time/LocalDate;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/IsoChronology;
    .locals 1

    .prologue
    .line 694
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 771
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 6

    .prologue
    .line 799
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 800
    .local v0, "dow0":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v1

    return-object v1
.end method

.method public getDayOfYear()I
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEra()Ljava/time/chrono/Era;
    .locals 1

    .prologue
    .line 717
    invoke-super {p0}, Ljava/time/chrono/ChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 646
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 647
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 648
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    .line 650
    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 651
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v0

    return-wide v0

    .line 653
    :cond_1
    invoke-direct {p0, p1}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 655
    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 1

    .prologue
    .line 760
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 745
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Ljava/time/LocalDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1995
    iget v2, p0, Ljava/time/LocalDate;->year:I

    .line 1996
    .local v2, "yearValue":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    .line 1997
    .local v1, "monthValue":I
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    .line 1998
    .local v0, "dayValue":I
    and-int/lit16 v3, v2, -0x800

    shl-int/lit8 v4, v2, 0xb

    shl-int/lit8 v5, v1, 0x6

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    xor-int/2addr v3, v4

    return v3
.end method

.method public isAfter(Ljava/time/chrono/ChronoLocalDate;)Z
    .locals 2
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    const/4 v0, 0x0

    .line 1900
    instance-of v1, p1, Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    .line 1901
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1903
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Ljava/time/chrono/ChronoLocalDate;)Z
    .locals 2
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    const/4 v0, 0x0

    .line 1929
    instance-of v1, p1, Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    .line 1930
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1932
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/time/chrono/ChronoLocalDate;)Z
    .locals 2
    .param p1, "other"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    const/4 v0, 0x0

    .line 1958
    instance-of v1, p1, Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    .line 1959
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1961
    .restart local p1    # "other":Ljava/time/chrono/ChronoLocalDate;
    :cond_1
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isEqual(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 4

    .prologue
    .line 824
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    iget v1, p0, Ljava/time/LocalDate;->year:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 506
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 1
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 540
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalUnit;)Z

    move-result v0

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .prologue
    .line 837
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    packed-switch v0, :pswitch_data_0

    .line 846
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 839
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 844
    :pswitch_2
    const/16 v0, 0x1e

    return v0

    .line 837
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public lengthOfYear()I
    .locals 1

    .prologue
    .line 859
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .locals 5
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1400
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .locals 4
    .param p1, "amountToSubtract"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1371
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1372
    check-cast v0, Ljava/time/Period;

    .line 1373
    .local v0, "periodToSubtract":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->minusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1375
    .end local v0    # "periodToSubtract":Ljava/time/Period;
    :cond_0
    const-string/jumbo v1, "amountToSubtract"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    return-object v1
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 1379
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 1379
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 1487
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 1449
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public minusWeeks(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 1468
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 1425
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .locals 5
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1229
    instance-of v1, p3, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1230
    check-cast v0, Ljava/time/temporal/ChronoUnit;

    .line 1231
    .local v0, "f":Ljava/time/temporal/ChronoUnit;
    invoke-static {}, Ljava/time/LocalDate;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1241
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1232
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1233
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1234
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1235
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1236
    :pswitch_4
    const-wide/16 v2, 0xa

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1237
    :pswitch_5
    const-wide/16 v2, 0x64

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1238
    :pswitch_6
    const-wide/16 v2, 0x3e8

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1239
    :pswitch_7
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1243
    .end local v0    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    return-object v1

    .line 1231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .locals 4
    .param p1, "amountToAdd"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 1138
    instance-of v1, p1, Ljava/time/Period;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1139
    check-cast v0, Ljava/time/Period;

    .line 1140
    .local v0, "periodToAdd":Ljava/time/Period;
    invoke-virtual {v0}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1142
    .end local v0    # "periodToAdd":Ljava/time/Period;
    :cond_0
    const-string/jumbo v1, "amountToAdd"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1143
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    return-object v1
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "daysToAdd"    # J

    .prologue
    .line 1341
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1342
    return-object p0

    .line 1344
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 1345
    .local v0, "mjDay":J
    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v2

    return-object v2
.end method

.method public plusMonths(J)Ljava/time/LocalDate;
    .locals 13
    .param p1, "monthsToAdd"    # J

    .prologue
    const-wide/16 v10, 0xc

    .line 1296
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    .line 1297
    return-object p0

    .line 1299
    :cond_0
    iget v6, p0, Ljava/time/LocalDate;->year:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    iget-short v8, p0, Ljava/time/LocalDate;->month:S

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 1300
    .local v2, "monthCount":J
    add-long v0, v2, p1

    .line 1301
    .local v0, "calcMonths":J
    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    .line 1302
    .local v5, "newYear":I
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/lit8 v4, v6, 0x1

    .line 1303
    .local v4, "newMonth":I
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v5, v4, v6}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public plusWeeks(J)Ljava/time/LocalDate;
    .locals 3
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 1322
    const-wide/16 v0, 0x7

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljava/time/LocalDate;
    .locals 5
    .param p1, "yearsToAdd"    # J

    .prologue
    .line 1268
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1269
    return-object p0

    .line 1271
    :cond_0
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    iget v2, p0, Ljava/time/LocalDate;->year:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    .line 1272
    .local v0, "newYear":I
    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 1512
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1513
    return-object p0

    .line 1515
    :cond_0
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDate;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v4, 0x1

    .line 569
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 570
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 571
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    invoke-static {}, Ljava/time/LocalDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 579
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 573
    :sswitch_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 574
    :sswitch_1
    invoke-virtual {p0}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 575
    :sswitch_2
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    sget-object v2, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    .line 577
    :sswitch_3
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    if-gtz v1, :cond_1

    const-wide/32 v2, 0x3b9aca00

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    const-wide/32 v2, 0x3b9ac9ff

    invoke-static {v4, v5, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    goto :goto_1

    .line 581
    :cond_2
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

    .line 583
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_3
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public toEpochDay()J
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v8, 0x0

    .line 1823
    iget v6, p0, Ljava/time/LocalDate;->year:I

    int-to-long v4, v6

    .line 1824
    .local v4, "y":J
    iget-short v6, p0, Ljava/time/LocalDate;->month:S

    int-to-long v0, v6

    .line 1825
    .local v0, "m":J
    const-wide/16 v2, 0x0

    .line 1826
    .local v2, "total":J
    const-wide/16 v6, 0x16d

    mul-long/2addr v6, v4

    add-long v2, v8, v6

    .line 1827
    cmp-long v6, v4, v8

    if-ltz v6, :cond_1

    .line 1828
    const-wide/16 v6, 0x3

    add-long/2addr v6, v4

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v4

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v8, v4

    const-wide/16 v10, 0x190

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 1832
    :goto_0
    const-wide/16 v6, 0x16f

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x16a

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 1833
    iget-short v6, p0, Ljava/time/LocalDate;->day:S

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 1834
    const-wide/16 v6, 0x2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 1835
    sub-long/2addr v2, v12

    .line 1836
    invoke-virtual {p0}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1837
    sub-long/2addr v2, v12

    .line 1840
    :cond_0
    const-wide/32 v6, 0xafaa8

    sub-long v6, v2, v6

    return-wide v6

    .line 1830
    :cond_1
    const-wide/16 v6, -0x4

    div-long v6, v4, v6

    const-wide/16 v8, -0x64

    div-long v8, v4, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long v8, v4, v8

    add-long/2addr v6, v8

    sub-long/2addr v2, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0xa

    .line 2011
    iget v4, p0, Ljava/time/LocalDate;->year:I

    .line 2012
    .local v4, "yearValue":I
    iget-short v3, p0, Ljava/time/LocalDate;->month:S

    .line 2013
    .local v3, "monthValue":I
    iget-short v2, p0, Ljava/time/LocalDate;->day:S

    .line 2014
    .local v2, "dayValue":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2015
    .local v0, "absYear":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2016
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v5, 0x3e8

    if-ge v0, v5, :cond_1

    .line 2017
    if-gez v4, :cond_0

    .line 2018
    add-int/lit16 v5, v4, -0x2710

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 2028
    :goto_0
    if-ge v3, v7, :cond_3

    const-string/jumbo v5, "-0"

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2030
    if-ge v2, v7, :cond_4

    const-string/jumbo v5, "-0"

    .line 2028
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2020
    :cond_0
    add-int/lit16 v5, v4, 0x2710

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2023
    :cond_1
    const/16 v5, 0x270f

    if-le v4, v5, :cond_2

    .line 2024
    const/16 v5, 0x2b

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2026
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2028
    :cond_3
    const-string/jumbo v5, "-"

    goto :goto_1

    .line 2030
    :cond_4
    const-string/jumbo v5, "-"

    goto :goto_2
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 6
    .param p1, "endExclusive"    # Ljava/time/temporal/Temporal;
    .param p2, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 1596
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    .line 1597
    .local v0, "end":Ljava/time/LocalDate;
    instance-of v1, p2, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    .line 1598
    invoke-static {}, Ljava/time/LocalDate;->-getjava-time-temporal-ChronoUnitSwitchesValues()[I

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1608
    new-instance v1, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported unit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1599
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 1600
    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x7

    div-long/2addr v2, v4

    return-wide v2

    .line 1601
    :pswitch_2
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    return-wide v2

    .line 1602
    :pswitch_3
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0xc

    div-long/2addr v2, v4

    return-wide v2

    .line 1603
    :pswitch_4
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x78

    div-long/2addr v2, v4

    return-wide v2

    .line 1604
    :pswitch_5
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    div-long/2addr v2, v4

    return-wide v2

    .line 1605
    :pswitch_6
    invoke-direct {p0, v0}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    div-long/2addr v2, v4

    return-wide v2

    .line 1606
    :pswitch_7
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2

    .line 1610
    :cond_0
    invoke-interface {p2, p0, v0}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v2

    return-wide v2

    .line 1598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;
    .locals 12
    .param p1, "endDateExclusive"    # Ljava/time/chrono/ChronoLocalDate;

    .prologue
    .line 1657
    invoke-static {p1}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    .line 1658
    .local v2, "end":Ljava/time/LocalDate;
    invoke-direct {v2}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v8

    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v10

    sub-long v4, v8, v10

    .line 1659
    .local v4, "totalMonths":J
    iget-short v8, v2, Ljava/time/LocalDate;->day:S

    iget-short v9, p0, Ljava/time/LocalDate;->day:S

    sub-int v1, v8, v9

    .line 1660
    .local v1, "days":I
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    if-gez v1, :cond_1

    .line 1661
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 1662
    invoke-virtual {p0, v4, v5}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 1663
    .local v0, "calcDate":Ljava/time/LocalDate;
    invoke-virtual {v2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v1, v8

    .line 1668
    .end local v0    # "calcDate":Ljava/time/LocalDate;
    :cond_0
    :goto_0
    const-wide/16 v8, 0xc

    div-long v6, v4, v8

    .line 1669
    .local v6, "years":J
    const-wide/16 v8, 0xc

    rem-long v8, v4, v8

    long-to-int v3, v8

    .line 1670
    .local v3, "months":I
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    move-result v8

    invoke-static {v8, v3, v1}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v8

    return-object v8

    .line 1664
    .end local v3    # "months":I
    .end local v6    # "years":J
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    if-lez v1, :cond_0

    .line 1665
    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    .line 1666
    invoke-virtual {v2}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v8

    sub-int/2addr v1, v8

    goto :goto_0
.end method

.method public bridge synthetic until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 1

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;
    .locals 1
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 903
    instance-of v0, p1, Ljava/time/LocalDate;

    if-eqz v0, :cond_0

    .line 904
    check-cast p1, Ljava/time/LocalDate;

    .end local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    return-object p1

    .line 906
    .restart local p1    # "adjuster":Ljava/time/temporal/TemporalAdjuster;
    :cond_0
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    check-cast v0, Ljava/time/LocalDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;
    .locals 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 1015
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 1016
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 1017
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1018
    invoke-static {}, Ljava/time/LocalDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1033
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

    .line 1019
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->getValue()I

    move-result v1

    int-to-long v2, v1

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1020
    :pswitch_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1021
    :pswitch_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1022
    :pswitch_3
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1023
    :pswitch_4
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1024
    :pswitch_5
    invoke-static {p2, p3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1025
    :pswitch_6
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1026
    :pswitch_7
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1027
    :pswitch_8
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1028
    :pswitch_9
    invoke-direct {p0}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1029
    :pswitch_a
    iget v1, p0, Ljava/time/LocalDate;->year:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .end local p2    # "newValue":J
    :goto_0
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .restart local p2    # "newValue":J
    :cond_0
    const-wide/16 v2, 0x1

    sub-long p2, v2, p2

    goto :goto_0

    .line 1030
    :pswitch_b
    long-to-int v1, p2

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v1

    return-object v1

    .line 1031
    :pswitch_c
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_1

    .end local p0    # "this":Ljava/time/LocalDate;
    :goto_1
    return-object p0

    .restart local p0    # "this":Ljava/time/LocalDate;
    :cond_1
    iget v1, p0, Ljava/time/LocalDate;->year:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object p0

    goto :goto_1

    .line 1035
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    return-object v1

    .line 1018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/LocalDate;
    .locals 2
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 1090
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    if-ne v0, p1, :cond_0

    .line 1091
    return-object p0

    .line 1093
    :cond_0
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->month:S

    invoke-static {v0, v1, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Ljava/time/LocalDate;
    .locals 1
    .param p1, "dayOfYear"    # I

    .prologue
    .line 1109
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1110
    return-object p0

    .line 1112
    :cond_0
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-static {v0, p1}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withMonth(I)Ljava/time/LocalDate;
    .locals 4
    .param p1, "month"    # I

    .prologue
    .line 1070
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    if-ne v0, p1, :cond_0

    .line 1071
    return-object p0

    .line 1073
    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1074
    iget v0, p0, Ljava/time/LocalDate;->year:I

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {v0, p1, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Ljava/time/LocalDate;
    .locals 4
    .param p1, "year"    # I

    .prologue
    .line 1051
    iget v0, p0, Ljava/time/LocalDate;->year:I

    if-ne v0, p1, :cond_0

    .line 1052
    return-object p0

    .line 1054
    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 1055
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    iget-short v1, p0, Ljava/time/LocalDate;->day:S

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

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
    .line 2064
    iget v0, p0, Ljava/time/LocalDate;->year:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2065
    iget-short v0, p0, Ljava/time/LocalDate;->month:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2066
    iget-short v0, p0, Ljava/time/LocalDate;->day:S

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 2067
    return-void
.end method
