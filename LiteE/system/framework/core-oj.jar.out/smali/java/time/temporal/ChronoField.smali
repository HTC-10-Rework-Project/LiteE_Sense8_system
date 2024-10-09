.class public final enum Ljava/time/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Ljava/time/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/temporal/ChronoField;",
        ">;",
        "Ljava/time/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/temporal/ChronoField;

.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

.field public static final enum DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum EPOCH_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum ERA:Ljava/time/temporal/ChronoField;

.field public static final enum HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

.field public static final enum HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

.field public static final enum MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum NANO_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

.field public static final enum OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

.field public static final enum PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

.field public static final enum SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

.field public static final enum SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

.field public static final enum YEAR:Ljava/time/temporal/ChronoField;

.field public static final enum YEAR_OF_ERA:Ljava/time/temporal/ChronoField;


# instance fields
.field private final baseUnit:Ljava/time/temporal/TemporalUnit;

.field private final displayNameKey:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final range:Ljava/time/temporal/ValueRange;

.field private final rangeUnit:Ljava/time/temporal/TemporalUnit;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/temporal/ChronoField;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

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

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_13

    :goto_a
    :try_start_b
    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_12

    :goto_b
    :try_start_c
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_2

    :goto_1b
    :try_start_1c
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

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
    sput-object v0, Ljava/time/temporal/ChronoField;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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
    .locals 13

    .prologue
    .line 102
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "NANO_OF_SECOND"

    .line 122
    const-string/jumbo v3, "NanoOfSecond"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 102
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 122
    sput-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 123
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "NANO_OF_DAY"

    .line 138
    const-string/jumbo v3, "NanoOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide v8, 0x4e94914effffL

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 123
    const/4 v2, 0x1

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 138
    sput-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 139
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MICRO_OF_SECOND"

    .line 158
    const-string/jumbo v3, "MicroOfSecond"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0xf423f

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 139
    const/4 v2, 0x2

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 158
    sput-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 159
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MICRO_OF_DAY"

    .line 177
    const-string/jumbo v3, "MicroOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide v8, 0x141dd75fffL

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 159
    const/4 v2, 0x3

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 177
    sput-object v0, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 178
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MILLI_OF_SECOND"

    .line 197
    const-string/jumbo v3, "MilliOfSecond"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e7

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 178
    const/4 v2, 0x4

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 197
    sput-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 198
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MILLI_OF_DAY"

    .line 216
    const-string/jumbo v3, "MilliOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x5265bff

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 198
    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 216
    sput-object v0, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 217
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "SECOND_OF_MINUTE"

    .line 226
    const-string/jumbo v3, "SecondOfMinute"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "second"

    .line 217
    const/4 v2, 0x6

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 226
    sput-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 227
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "SECOND_OF_DAY"

    .line 238
    const-string/jumbo v3, "SecondOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0x1517f

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 227
    const/4 v2, 0x7

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 238
    sput-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 239
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MINUTE_OF_HOUR"

    .line 248
    const-string/jumbo v3, "MinuteOfHour"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3b

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "minute"

    .line 239
    const/16 v2, 0x8

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 248
    sput-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 249
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MINUTE_OF_DAY"

    .line 259
    const-string/jumbo v3, "MinuteOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x59f

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 249
    const/16 v2, 0x9

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 259
    sput-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 260
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "HOUR_OF_AMPM"

    .line 273
    const-string/jumbo v3, "HourOfAmPm"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xb

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 260
    const/16 v2, 0xa

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 273
    sput-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 274
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "CLOCK_HOUR_OF_AMPM"

    .line 287
    const-string/jumbo v3, "ClockHourOfAmPm"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 274
    const/16 v2, 0xb

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 287
    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    .line 288
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "HOUR_OF_DAY"

    .line 302
    const-string/jumbo v3, "HourOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x17

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "hour"

    .line 288
    const/16 v2, 0xc

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 302
    sput-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 303
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "CLOCK_HOUR_OF_DAY"

    .line 316
    const-string/jumbo v3, "ClockHourOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x18

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 303
    const/16 v2, 0xd

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 316
    sput-object v0, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 317
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "AMPM_OF_DAY"

    .line 329
    const-string/jumbo v3, "AmPmOfDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->HALF_DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "dayperiod"

    .line 317
    const/16 v2, 0xe

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 329
    sput-object v0, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 330
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "DAY_OF_WEEK"

    .line 345
    const-string/jumbo v3, "DayOfWeek"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "weekday"

    .line 330
    const/16 v2, 0xf

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 345
    sput-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 346
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    .line 363
    const-string/jumbo v3, "AlignedDayOfWeekInMonth"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 346
    const/16 v2, 0x10

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 363
    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    .line 364
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    .line 381
    const-string/jumbo v3, "AlignedDayOfWeekInYear"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x7

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 364
    const/16 v2, 0x11

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 381
    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    .line 382
    new-instance v8, Ljava/time/temporal/ChronoField;

    const-string/jumbo v9, "DAY_OF_MONTH"

    .line 394
    const-string/jumbo v10, "DayOfMonth"

    sget-object v11, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v12, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x1c

    const-wide/16 v4, 0x1f

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "day"

    .line 382
    const/16 v2, 0x12

    move-object v0, v8

    move-object v1, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 394
    sput-object v8, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 395
    new-instance v7, Ljava/time/temporal/ChronoField;

    const-string/jumbo v8, "DAY_OF_YEAR"

    .line 412
    const-string/jumbo v9, "DayOfYear"

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v11, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x16d

    const-wide/16 v4, 0x16e

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 395
    const/16 v2, 0x13

    move-object v0, v7

    move-object v1, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 412
    sput-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 413
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "EPOCH_DAY"

    .line 422
    const-string/jumbo v3, "EpochDay"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v6, -0x550a98b312L

    const-wide v8, 0x550a98b312L

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 413
    const/16 v2, 0x14

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 422
    sput-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    .line 423
    new-instance v7, Ljava/time/temporal/ChronoField;

    const-string/jumbo v8, "ALIGNED_WEEK_OF_MONTH"

    .line 438
    const-string/jumbo v9, "AlignedWeekOfMonth"

    sget-object v10, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v11, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    const-wide/16 v4, 0x5

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 423
    const/16 v2, 0x15

    move-object v0, v7

    move-object v1, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 438
    sput-object v7, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 439
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "ALIGNED_WEEK_OF_YEAR"

    .line 454
    const-string/jumbo v3, "AlignedWeekOfYear"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->WEEKS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x35

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 439
    const/16 v2, 0x16

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 454
    sput-object v0, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 455
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "MONTH_OF_YEAR"

    .line 465
    const-string/jumbo v3, "MonthOfYear"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0xc

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "month"

    .line 455
    const/16 v2, 0x17

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 465
    sput-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 466
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "PROLEPTIC_MONTH"

    .line 485
    const-string/jumbo v3, "ProlepticMonth"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide v6, -0x2cb4177f4L

    const-wide v8, 0x2cb4177ffL

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 466
    const/16 v2, 0x18

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 485
    sput-object v0, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    .line 486
    new-instance v7, Ljava/time/temporal/ChronoField;

    const-string/jumbo v8, "YEAR_OF_ERA"

    .line 520
    const-string/jumbo v9, "YearOfEra"

    sget-object v10, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v11, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x1

    const-wide/32 v2, 0x3b9ac9ff

    const-wide/32 v4, 0x3b9aca00

    invoke-static/range {v0 .. v5}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 486
    const/16 v2, 0x19

    move-object v0, v7

    move-object v1, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 520
    sput-object v7, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    .line 521
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "YEAR"

    .line 544
    const-string/jumbo v3, "Year"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v6, -0x3b9ac9ff

    const-wide/32 v8, 0x3b9ac9ff

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "year"

    .line 521
    const/16 v2, 0x1a

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 544
    sput-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 545
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "ERA"

    .line 561
    const-string/jumbo v3, "Era"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    const-string/jumbo v7, "era"

    .line 545
    const/16 v2, 0x1b

    invoke-direct/range {v0 .. v7}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V

    .line 561
    sput-object v0, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    .line 562
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "INSTANT_SECONDS"

    .line 576
    const-string/jumbo v3, "InstantSeconds"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 562
    const/16 v2, 0x1c

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 576
    sput-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    .line 577
    new-instance v0, Ljava/time/temporal/ChronoField;

    const-string/jumbo v1, "OFFSET_SECONDS"

    .line 590
    const-string/jumbo v3, "OffsetSeconds"

    sget-object v4, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    sget-object v5, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    const-wide/32 v6, -0xfd20

    const-wide/32 v8, 0xfd20

    invoke-static {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    .line 577
    const/16 v2, 0x1d

    invoke-direct/range {v0 .. v6}, Ljava/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V

    .line 590
    sput-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    .line 100
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/time/temporal/ChronoField;

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;

    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 599
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 600
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 601
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 602
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 604
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/TemporalUnit;Ljava/time/temporal/ValueRange;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "baseUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p5, "rangeUnit"    # Ljava/time/temporal/TemporalUnit;
    .param p6, "range"    # Ljava/time/temporal/ValueRange;
    .param p7, "displayNameKey"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 608
    iput-object p3, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    .line 609
    iput-object p4, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    .line 610
    iput-object p5, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    .line 611
    iput-object p6, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    .line 612
    iput-object p7, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private static getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I
    .locals 3
    .param p0, "field"    # Ljava/time/temporal/ChronoField;

    .prologue
    .line 633
    invoke-static {}, Ljava/time/temporal/ChronoField;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected ChronoField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :pswitch_0
    const/16 v0, 0xd

    return v0

    .line 637
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 639
    :pswitch_2
    const/16 v0, 0xb

    return v0

    .line 641
    :pswitch_3
    const/16 v0, 0xa

    return v0

    .line 643
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 645
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 647
    :pswitch_6
    const/4 v0, 0x3

    return v0

    .line 649
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 651
    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/temporal/ChronoField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Ljava/time/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/ChronoField;

    return-object v0
.end method

.method public static values()[Ljava/time/temporal/ChronoField;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Ljava/time/temporal/ChronoField;->$VALUES:[Ljava/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;
    .locals 2
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/time/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "temporal":Ljava/time/temporal/Temporal;, "TR;"
    invoke-interface {p1, p0, p2, p3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public checkValidIntValue(J)I
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 749
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public checkValidValue(J)J
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 730
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBaseUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->baseUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 617
    const-string/jumbo v2, "locale"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 618
    iget-object v2, p0, Ljava/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 619
    iget-object v2, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v2

    .line 624
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    .line 623
    invoke-static {v2}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    .line 625
    .local v0, "generator":Landroid/icu/text/DateTimePatternGenerator;
    invoke-static {p0}, Ljava/time/temporal/ChronoField;->getIcuFieldNumber(Ljava/time/temporal/ChronoField;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "icuName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .end local v1    # "icuName":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "icuName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFrom(Ljava/time/temporal/TemporalAccessor;)J
    .locals 2
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 765
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeUnit()Ljava/time/temporal/TemporalUnit;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->rangeUnit:Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 699
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 755
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public range()Ljava/time/temporal/ValueRange;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->range:Ljava/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 760
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Ljava/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method
