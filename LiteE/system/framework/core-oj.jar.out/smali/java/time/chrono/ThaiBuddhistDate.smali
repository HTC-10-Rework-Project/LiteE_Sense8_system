.class public final Ljava/time/chrono/ThaiBuddhistDate;
.super Ljava/time/chrono/ChronoLocalDateImpl;
.source "ThaiBuddhistDate.java"

# interfaces
.implements Ljava/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoLocalDateImpl",
        "<",
        "Ljava/time/chrono/ThaiBuddhistDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field private static final serialVersionUID:J = -0x790bcfffa3423007L


# instance fields
.field private final transient isoDate:Ljava/time/LocalDate;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xd

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

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_15

    :goto_8
    :try_start_9
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_14

    :goto_9
    :try_start_a
    sget-object v1, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xf

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

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_11

    :goto_c
    :try_start_d
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_10

    :goto_d
    :try_start_e
    sget-object v1, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_f

    :goto_e
    :try_start_f
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_e

    :goto_f
    :try_start_10
    sget-object v1, Ljava/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_d

    :goto_10
    :try_start_11
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_c

    :goto_11
    :try_start_12
    sget-object v1, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_b

    :goto_12
    :try_start_13
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_a

    :goto_13
    :try_start_14
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_9

    :goto_14
    :try_start_15
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_5

    :goto_18
    :try_start_19
    sget-object v1, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/chrono/ThaiBuddhistDate;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method constructor <init>(Ljava/time/LocalDate;)V
    .locals 1
    .param p1, "isoDate"    # Ljava/time/LocalDate;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/time/chrono/ChronoLocalDateImpl;-><init>()V

    .line 207
    const-string/jumbo v0, "isoDate"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    iput-object p1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    .line 209
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 197
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, p0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method private getProlepticMonth()J
    .locals 4

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getProlepticYear()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public static now()Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p0, "clock"    # Ljava/time/Clock;

    .prologue
    .line 158
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-static {p0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p0, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 143
    invoke-static {p0}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/ThaiBuddhistDate;->now(Ljava/time/Clock;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 176
    new-instance v0, Ljava/time/chrono/ThaiBuddhistDate;

    add-int/lit16 v1, p0, -0x21f

    invoke-static {v1, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 508
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 509
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 510
    .local v0, "dayOfMonth":I
    sget-object v3, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v3, v2, v1, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->date(III)Ljava/time/chrono/ThaiBuddhistDate;

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
    .line 479
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "newDate"    # Ljava/time/LocalDate;

    .prologue
    .line 416
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :goto_0
    return-object p0

    .restart local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_0
    new-instance p0, Ljava/time/chrono/ThaiBuddhistDate;

    .end local p0    # "this":Ljava/time/chrono/ThaiBuddhistDate;
    invoke-direct {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/time/chrono/Ser;

    const/16 v1, 0x8

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
            "Ljava/time/chrono/ThaiBuddhistDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
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
    .line 451
    if-ne p0, p1, :cond_0

    .line 452
    const/4 v1, 0x1

    return v1

    .line 454
    :cond_0
    instance-of v1, p1, Ljava/time/chrono/ThaiBuddhistDate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 455
    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    .line 456
    .local v0, "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    iget-object v2, v0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, v2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 458
    .end local v0    # "otherDate":Ljava/time/chrono/ThaiBuddhistDate;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/ThaiBuddhistChronology;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Ljava/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljava/time/chrono/ThaiBuddhistChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getEra()Ljava/time/chrono/ThaiBuddhistEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljava/time/chrono/ThaiBuddhistEra;
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BE:Ljava/time/chrono/ThaiBuddhistEra;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljava/time/chrono/ThaiBuddhistEra;

    goto :goto_0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v2, 0x1

    .line 277
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_2

    .line 278
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v3

    move-object v1, p1

    check-cast v1, Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 290
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    return-wide v2

    .line 280
    :pswitch_0
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    return-wide v2

    .line 282
    :pswitch_1
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v0

    .line 283
    .local v0, "prolepticYear":I
    if-lt v0, v2, :cond_0

    .end local v0    # "prolepticYear":I
    :goto_0
    int-to-long v2, v0

    return-wide v2

    .restart local v0    # "prolepticYear":I
    :cond_0
    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "prolepticYear":I
    :pswitch_2
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 288
    :pswitch_3
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v1

    if-lt v1, v2, :cond_1

    move v1, v2

    :goto_1
    int-to-long v2, v1

    return-wide v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 292
    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    return-wide v2

    .line 278
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/chrono/ThaiBuddhistChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public lengthOfMonth()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 392
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 361
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic minusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "daysToSubtract"    # J

    .prologue
    .line 412
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "monthsToSubtract"    # J

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "weeksToSubtract"    # J

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method minusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "yearsToSubtract"    # J

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .line 387
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;

    .prologue
    .line 351
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "days"    # J

    .prologue
    .line 382
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "months"    # J

    .prologue
    .line 372
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusWeeks(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "weeksToAdd"    # J

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Ljava/time/chrono/ChronoLocalDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "years"    # J

    .prologue
    .line 367
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 10
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const-wide/16 v8, 0x21f

    const-wide/16 v6, 0x1

    .line 254
    instance-of v4, p1, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_2

    .line 255
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 256
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 257
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 268
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 261
    :pswitch_1
    iget-object v4, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4, p1}, Ljava/time/LocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 263
    :pswitch_2
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 264
    .local v1, "range":Ljava/time/temporal/ValueRange;
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    add-long/2addr v4, v8

    neg-long v4, v4

    add-long v2, v4, v6

    .line 265
    .local v2, "max":J
    :goto_0
    invoke-static {v6, v7, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 264
    .end local v2    # "max":J
    :cond_0
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    add-long v2, v4, v8

    .restart local v2    # "max":J
    goto :goto_0

    .line 270
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "range":Ljava/time/temporal/ValueRange;
    .end local v2    # "max":J
    :cond_1
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    return-object v4

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

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
    .line 427
    iget-object v1, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1, p1}, Ljava/time/LocalDate;->until(Ljava/time/chrono/ChronoLocalDate;)Ljava/time/Period;

    move-result-object v0

    .line 428
    .local v0, "period":Ljava/time/Period;
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljava/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/chrono/ThaiBuddhistChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 1
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;

    .prologue
    .line 341
    invoke-super {p0, p1}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;
    .locals 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 306
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 307
    check-cast v0, Ljava/time/temporal/ChronoField;

    .line 308
    .local v0, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 309
    return-object p0

    .line 311
    :cond_0
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 329
    :goto_0
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 313
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 314
    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticMonth()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Ljava/time/chrono/ThaiBuddhistDate;->plusMonths(J)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 318
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getChronology()Ljava/time/chrono/ThaiBuddhistChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/chrono/ThaiBuddhistChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v1

    .line 319
    .local v1, "nvalue":I
    invoke-static {}, Ljava/time/chrono/ThaiBuddhistDate;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 325
    :pswitch_3
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    add-int/lit16 v3, v3, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 321
    :pswitch_4
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    invoke-direct {p0}, Ljava/time/chrono/ThaiBuddhistDate;->getProlepticYear()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .end local v1    # "nvalue":I
    :goto_1
    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .restart local v1    # "nvalue":I
    :cond_1
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :pswitch_5
    iget-object v2, p0, Ljava/time/chrono/ThaiBuddhistDate;->isoDate:Ljava/time/LocalDate;

    add-int/lit16 v3, v1, -0x21f

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v2

    return-object v2

    .line 331
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/time/chrono/ChronoLocalDateImpl;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/ThaiBuddhistDate;

    return-object v2

    .line 311
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 319
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/ThaiBuddhistDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ThaiBuddhistDate;

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
    .line 501
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 502
    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 503
    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljava/time/chrono/ThaiBuddhistDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 504
    return-void
.end method
