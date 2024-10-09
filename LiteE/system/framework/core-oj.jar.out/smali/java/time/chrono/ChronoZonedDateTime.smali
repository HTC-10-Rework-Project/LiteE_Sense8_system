.class public interface abstract Ljava/time/chrono/ChronoZonedDateTime;
.super Ljava/lang/Object;
.source "ChronoZonedDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/chrono/ChronoZonedDateTime",
        "<*>;>;"
    }
.end annotation


# static fields
.field public static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/ChronoZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1c

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1b

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1a

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_19

    :goto_4
    :try_start_5
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_18

    :goto_5
    :try_start_6
    sget-object v1, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_17

    :goto_6
    :try_start_7
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_16

    :goto_7
    :try_start_8
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0xb

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

    const/16 v2, 0xe

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

    const/4 v2, 0x1

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

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_8

    :goto_15
    :try_start_16
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_7

    :goto_16
    :try_start_17
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_6

    :goto_17
    :try_start_18
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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
    sput-object v0, Ljava/time/chrono/ChronoZonedDateTime;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 166
    instance-of v1, p0, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v1, :cond_0

    .line 167
    check-cast p0, Ljava/time/chrono/ChronoZonedDateTime;

    .end local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p0

    .line 169
    .restart local p0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 171
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_1

    .line 172
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ChronoZonedDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1
    invoke-interface {v0, p0}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v1

    return-object v1
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Ljava/time/chrono/AbstractChronology;->INSTANT_ORDER:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 552
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoZonedDateTime;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 571
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 572
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    sub-int v0, v1, v2

    .line 573
    if-nez v0, :cond_0

    .line 574
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v0

    .line 575
    if-nez v0, :cond_0

    .line 576
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 577
    if-nez v0, :cond_0

    .line 578
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v0

    .line 583
    :cond_0
    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 515
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    const-string/jumbo v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 191
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Ljava/time/chrono/ChronoZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 198
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 194
    :pswitch_0
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    const-string/jumbo v1, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_1
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    return v0

    .line 200
    :cond_0
    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    return v0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 205
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Ljava/time/chrono/ChronoZonedDateTime;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v1

    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 210
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 207
    :pswitch_0
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 208
    :pswitch_1
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 212
    :cond_0
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract getOffset()Ljava/time/ZoneOffset;
.end method

.method public abstract getZone()Ljava/time/ZoneId;
.end method

.method public abstract hashCode()I
.end method

.method public isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 620
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 621
    .local v2, "thisEpochSec":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 622
    .local v0, "otherEpochSec":J
    cmp-long v6, v2, v0

    if-gtz v6, :cond_0

    .line 623
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->getNano()I

    move-result v6

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalTime;->getNano()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 622
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 623
    goto :goto_0
.end method

.method public isBefore(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 600
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    .line 601
    .local v2, "thisEpochSec":J
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 602
    .local v0, "otherEpochSec":J
    cmp-long v6, v2, v0

    if-ltz v6, :cond_0

    .line 603
    cmp-long v6, v2, v0

    if-nez v6, :cond_1

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->getNano()I

    move-result v6

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/LocalTime;->getNano()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 603
    goto :goto_0
.end method

.method public isEqual(Ljava/time/chrono/ChronoZonedDateTime;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "other":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const/4 v0, 0x0

    .line 640
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 641
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->getNano()I

    move-result v1

    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 640
    :cond_0
    return v0
.end method

.method public abstract isSupported(Ljava/time/temporal/TemporalField;)Z
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 2
    .param p1, "unit"    # Ljava/time/temporal/TemporalUnit;

    .prologue
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    const/4 v0, 0x0

    .line 398
    instance-of v1, p1, Ljava/time/temporal/ChronoUnit;

    if-eqz v1, :cond_1

    .line 399
    sget-object v1, Ljava/time/temporal/ChronoUnit;->FOREVER:Ljava/time/temporal/ChronoUnit;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 401
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 3
    .param p1, "amountToSubtract"    # J
    .param p3, "unit"    # Ljava/time/temporal/TemporalUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 452
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 442
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "amount"    # Ljava/time/temporal/TemporalAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 434
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 424
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
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
    .line 484
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 485
    :cond_0
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0

    .line 486
    :cond_1
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 487
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 488
    :cond_2
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 489
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 490
    :cond_3
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 491
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 492
    :cond_4
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 493
    sget-object v0, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    return-object v0

    .line 497
    :cond_5
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 180
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    .line 181
    sget-object v0, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 182
    :cond_0
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDateTime;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 186
    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toEpochSecond()J
    .locals 8

    .prologue
    .line 546
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v4

    invoke-interface {v4}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v0

    .line 547
    .local v0, "epochDay":J
    const-wide/32 v4, 0x15180

    mul-long/2addr v4, v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 548
    .local v2, "secs":J
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 549
    return-wide v2
.end method

.method public toInstant()Ljava/time/Instant;
    .locals 4

    .prologue
    .line 531
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Ljava/time/chrono/ChronoLocalDate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public abstract toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public toLocalTime()Ljava/time/LocalTime;
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    invoke-interface {v0}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 2
    .param p1, "adjuster"    # Ljava/time/temporal/TemporalAdjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0}, Ljava/time/chrono/ChronoZonedDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    invoke-super {p0, p1}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->ensureValid(Ljava/time/chrono/Chronology;Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoZonedDateTimeImpl;

    move-result-object v0

    return-object v0
.end method

.method public abstract with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    .line 404
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 2

    .prologue
    .line 416
    .local p0, "this":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<TD;>;"
    invoke-interface {p0, p1, p2, p3}, Ljava/time/chrono/ChronoZonedDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public abstract withEarlierOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract withLaterOffsetAtOverlap()Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract withZoneSameInstant(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract withZoneSameLocal(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method
