.class public final Ljava/time/chrono/HijrahChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic -java-time-temporal-ChronoFieldSwitchesValues:[I = null

.field public static final INSTANCE:Ljava/time/chrono/HijrahChronology;

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_ISO_START:Ljava/lang/String; = "iso-start"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final PROP_PREFIX:Ljava/lang/String; = "calendar.hijrah."

.field private static final PROP_TYPE_SUFFIX:Ljava/lang/String; = ".type"

.field private static final transient calendarProperties:Ljava/util/Properties;

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# instance fields
.field private final transient calendarType:Ljava/lang/String;

.field private transient hijrahEpochMonthStartDays:[I

.field private transient hijrahStartEpochMonth:I

.field private volatile transient initComplete:Z

.field private transient maxEpochDay:I

.field private transient maxMonthLength:I

.field private transient maxYearLength:I

.field private transient minEpochDay:I

.field private transient minMonthLength:I

.field private transient minYearLength:I

.field private final transient typeId:Ljava/lang/String;


# direct methods
.method private static synthetic -getjava-time-temporal-ChronoFieldSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/chrono/HijrahChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/chrono/HijrahChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1d

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/16 v2, 0x8

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

    const/16 v2, 0x9

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

    const/4 v2, 0x2

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

    const/4 v2, 0x3

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

    const/4 v2, 0x4

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1

    :goto_1c
    :try_start_1d
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_0

    :goto_1d
    sput-object v0, Ljava/time/chrono/HijrahChronology;->-java-time-temporal-ChronoFieldSwitchesValues:[I

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
    .locals 6

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Lsun/util/calendar/BaseCalendar;->getCalendarProperties()Ljava/util/Properties;

    move-result-object v3

    sput-object v3, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :try_start_1
    new-instance v3, Ljava/time/chrono/HijrahChronology;

    const-string/jumbo v4, "Hijrah-umalqura"

    invoke-direct {v3, v4}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;)V

    sput-object v3, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    .line 311
    sget-object v3, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    const-string/jumbo v4, "Hijrah"

    invoke-static {v3, v4}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    .line 312
    sget-object v3, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    const-string/jumbo v4, "islamic"

    invoke-static {v3, v4}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    invoke-static {}, Ljava/time/chrono/HijrahChronology;->registerVariants()V

    .line 217
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/InternalError;

    const-string/jumbo v4, "Can\'t initialize lib/calendars.properties"

    invoke-direct {v3, v4, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 313
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/time/DateTimeException;
    const-string/jumbo v3, "java.time.chrono"

    invoke-static {v3}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    .line 316
    .local v2, "logger":Lsun/util/logging/PlatformLogger;
    const-string/jumbo v3, "Unable to initialize Hijrah calendar: Hijrah-umalqura"

    invoke-virtual {v2, v3, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Unable to initialize Hijrah-umalqura calendar"

    invoke-virtual {v0}, Ljava/time/DateTimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/DateTimeException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "calendar id is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calendar.hijrah."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "propName":Ljava/lang/String;
    sget-object v2, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "calType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    :cond_1
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calendarType is missing or empty for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_2
    iput-object p1, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    .line 370
    return-void
.end method

.method private checkCalendarInit()V
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    if-nez v0, :cond_0

    .line 387
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->loadCalendarData()V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    .line 390
    :cond_0
    return-void
.end method

.method private createEpochMonths(IIILjava/util/Map;)[I
    .locals 11
    .param p1, "epochDay"    # I
    .param p2, "minYear"    # I
    .param p3, "maxYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .prologue
    .line 987
    .local p4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    sub-int v8, p3, p2

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0xc

    add-int/lit8 v6, v8, 0x1

    .line 990
    .local v6, "numMonths":I
    const/4 v0, 0x0

    .line 991
    .local v0, "epochMonth":I
    new-array v2, v6, [I

    .line 992
    .local v2, "epochMonths":[I
    const v8, 0x7fffffff

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 993
    const/high16 v8, -0x80000000

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 996
    move v7, p2

    .local v7, "year":I
    move v1, v0

    .end local v0    # "epochMonth":I
    .local v1, "epochMonth":I
    :goto_0
    if-gt v7, p3, :cond_3

    .line 997
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 998
    .local v5, "months":[I
    const/4 v4, 0x0

    .local v4, "month":I
    :goto_1
    const/16 v8, 0xc

    if-ge v4, v8, :cond_2

    .line 999
    aget v3, v5, v4

    .line 1000
    .local v3, "length":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "epochMonth":I
    .restart local v0    # "epochMonth":I
    aput p1, v2, v1

    .line 1002
    const/16 v8, 0x1d

    if-lt v3, v8, :cond_0

    const/16 v8, 0x20

    if-le v3, v8, :cond_1

    .line 1003
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid month length in year: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1005
    :cond_1
    add-int/2addr p1, v3

    .line 1006
    iget v8, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 1007
    iget v8, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 998
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "epochMonth":I
    .restart local v1    # "epochMonth":I
    goto :goto_1

    .line 996
    .end local v3    # "length":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1012
    .end local v4    # "month":I
    .end local v5    # "months":[I
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "epochMonth":I
    .restart local v0    # "epochMonth":I
    aput p1, v2, v1

    .line 1014
    array-length v8, v2

    if-eq v0, v8, :cond_4

    .line 1015
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Did not fill epochMonths exactly: ndx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1016
    const-string/jumbo v10, " should be "

    .line 1015
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1016
    array-length v10, v2

    .line 1015
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1019
    :cond_4
    return-object v2
.end method

.method private epochDayToEpochMonth(I)I
    .locals 2
    .param p1, "epochDay"    # I

    .prologue
    .line 785
    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 786
    .local v0, "ndx":I
    if-gez v0, :cond_0

    .line 787
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 789
    :cond_0
    return v0
.end method

.method private epochMonthLength(I)I
    .locals 2
    .param p1, "epochMonth"    # I

    .prologue
    .line 855
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    .line 856
    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v1, v1, p1

    .line 855
    sub-int/2addr v0, v1

    return v0
.end method

.method private epochMonthToEpochDay(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .prologue
    .line 829
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v0, v0, p1

    return v0
.end method

.method private epochMonthToMonth(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .prologue
    .line 819
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private epochMonthToYear(I)I
    .locals 1
    .param p1, "epochMonth"    # I

    .prologue
    .line 799
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private loadCalendarData()V
    .locals 26

    .prologue
    .line 899
    :try_start_0
    sget-object v23, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "calendar.hijrah."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 900
    .local v17, "resourceName":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Resource missing for calendar: calendar.hijrah."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 901
    invoke-static/range {v17 .. v17}, Ljava/time/chrono/HijrahChronology;->readConfigProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v16

    .line 903
    .local v16, "props":Ljava/util/Properties;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 904
    .local v21, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const v13, 0x7fffffff

    .line 905
    .local v13, "minYear":I
    const/high16 v12, -0x80000000

    .line 906
    .local v12, "maxYear":I
    const/4 v7, 0x0

    .line 907
    .local v7, "id":Ljava/lang/String;
    const/16 v18, 0x0

    .line 908
    .local v18, "type":Ljava/lang/String;
    const/16 v19, 0x0

    .line 909
    .local v19, "version":Ljava/lang/String;
    const/4 v8, 0x0

    .line 910
    .local v8, "isoStart":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v7    # "id":Ljava/lang/String;
    .end local v18    # "type":Ljava/lang/String;
    .end local v19    # "version":Ljava/lang/String;
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 911
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 912
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 914
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "id":Ljava/lang/String;
    goto :goto_0

    .line 912
    .end local v7    # "id":Ljava/lang/String;
    :cond_0
    const-string/jumbo v23, "type"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 917
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .local v18, "type":Ljava/lang/String;
    goto :goto_0

    .line 912
    .end local v18    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v23, "version"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 920
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, "version":Ljava/lang/String;
    goto :goto_0

    .line 912
    .end local v19    # "version":Ljava/lang/String;
    :cond_2
    const-string/jumbo v23, "iso-start"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 923
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/time/chrono/HijrahChronology;->parseYMD(Ljava/lang/String;)[I

    move-result-object v22

    .line 924
    .local v22, "ymd":[I
    const/16 v23, 0x0

    aget v23, v22, v23

    const/16 v24, 0x1

    aget v24, v22, v24

    const/16 v25, 0x2

    aget v25, v22, v25

    invoke-static/range {v23 .. v25}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/time/LocalDate;->toEpochDay()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 925
    goto :goto_0

    .line 930
    .end local v22    # "ymd":[I
    :cond_3
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 931
    .local v20, "year":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/time/chrono/HijrahChronology;->parseMonths(Ljava/lang/String;)[I

    move-result-object v14

    .line 932
    .local v14, "months":[I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    move/from16 v0, v20

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 934
    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_0

    .line 935
    .end local v14    # "months":[I
    .end local v20    # "year":I
    :catch_0
    move-exception v15

    .line 936
    .local v15, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "bad key: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 966
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "isoStart":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "maxYear":I
    .end local v13    # "minYear":I
    .end local v15    # "nfe":Ljava/lang/NumberFormatException;
    .end local v16    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .end local v21    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :catch_1
    move-exception v6

    .line 968
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v23, "java.time.chrono"

    invoke-static/range {v23 .. v23}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v11

    .line 969
    .local v11, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unable to initialize Hijrah calendar proxy: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v6}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    new-instance v23, Ljava/time/DateTimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unable to initialize HijrahCalendar: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 941
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v11    # "logger":Lsun/util/logging/PlatformLogger;
    .restart local v5    # "entry$iterator":Ljava/util/Iterator;
    .restart local v8    # "isoStart":I
    .restart local v12    # "maxYear":I
    .restart local v13    # "minYear":I
    .restart local v16    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    .restart local v21    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :cond_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 942
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Configuration is for a different calendar: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 944
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/time/chrono/HijrahChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 945
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Configuration is for a different calendar type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 947
    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 948
    :cond_7
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v24, "Configuration does not contain a version"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 950
    :cond_8
    if-nez v8, :cond_9

    .line 951
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v24, "Configuration does not contain a ISO start date"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 955
    :cond_9
    mul-int/lit8 v23, v13, 0xc

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    .line 956
    move-object/from16 v0, p0

    iput v8, v0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    .line 957
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v13, v12, v2}, Ljava/time/chrono/HijrahChronology;->createEpochMonths(IIILjava/util/Map;)[I

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    .line 961
    move/from16 v20, v13

    .restart local v20    # "year":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_a

    .line 962
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v10

    .line 963
    .local v10, "length":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->maxYearLength:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 961
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 972
    .end local v10    # "length":I
    :cond_a
    return-void
.end method

.method private parseMonths(Ljava/lang/String;)[I
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    .line 1031
    new-array v1, v5, [I

    .line 1032
    .local v1, "months":[I
    const-string/jumbo v4, "\\s"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, "numbers":[Ljava/lang/String;
    array-length v4, v3

    if-eq v4, v5, :cond_0

    .line 1034
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wrong number of months on line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1036
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 1038
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :catch_0
    move-exception v2

    .line 1040
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1043
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    return-object v1
.end method

.method private parseYMD(Ljava/lang/String;)[I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2d

    .line 1054
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1056
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1

    .line 1057
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "date must be yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "date must be yyyy-MM-dd"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1059
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v2, 0x3

    :try_start_1
    new-array v1, v2, [I

    .line 1060
    .local v1, "ymd":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1061
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 1062
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1063
    return-object v1
.end method

.method private static readConfigProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 6
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 879
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 880
    .local v1, "props":Ljava/util/Properties;
    const/4 v0, 0x0

    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 881
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 882
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    throw v3

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    if-eqz v3, :cond_3

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    if-eq v3, v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    throw v2

    .line 883
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_4
    return-object v1

    .line 882
    .end local v0    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    goto :goto_1
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
    .line 1093
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static registerVariants()V
    .locals 8

    .prologue
    .line 327
    sget-object v6, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    invoke-virtual {v6}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v6, "calendar.hijrah."

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    const-string/jumbo v6, "calendar.hijrah."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "id":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    .line 333
    sget-object v6, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v6}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 338
    :try_start_0
    new-instance v0, Ljava/time/chrono/HijrahChronology;

    invoke-direct {v0, v2}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "chrono":Ljava/time/chrono/HijrahChronology;
    invoke-static {v0}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v0    # "chrono":Ljava/time/chrono/HijrahChronology;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Ljava/time/DateTimeException;
    const-string/jumbo v6, "java.time.chrono"

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v3

    .line 343
    .local v3, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to initialize Hijrah calendar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 347
    .end local v1    # "ex":Ljava/time/DateTimeException;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "logger":Lsun/util/logging/PlatformLogger;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private yearMonthToDayOfYear(II)I
    .locals 3
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .prologue
    .line 841
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    .line 842
    .local v0, "epochMonthFirst":I
    add-int v1, v0, p2

    invoke-direct {p0, v1}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    .line 843
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    .line 842
    sub-int/2addr v1, v2

    return v1
.end method

.method private yearToEpochMonth(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 809
    mul-int/lit8 v0, p1, 0xc

    iget v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method checkValidDayOfYear(I)V
    .locals 3
    .param p1, "dayOfYear"    # I

    .prologue
    .line 623
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 624
    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Hijrah day of year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_1
    return-void
.end method

.method checkValidMonth(I)V
    .locals 3
    .param p1, "month"    # I

    .prologue
    .line 629
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 630
    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Hijrah month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_1
    return-void
.end method

.method checkValidYear(J)I
    .locals 3
    .param p1, "prolepticYear"    # J

    .prologue
    .line 616
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 617
    :cond_0
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid Hijrah year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_1
    long-to-int v0, p1

    return v0
.end method

.method public bridge synthetic date(III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(III)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 453
    invoke-static {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 438
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .locals 2
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 520
    instance-of v0, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v0, :cond_0

    .line 521
    check-cast p1, Ljava/time/chrono/HijrahDate;

    .end local p1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object p1

    .line 523
    .restart local p1    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "epochDay"    # J

    .prologue
    .line 500
    invoke-static {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 503
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->dateNow()Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow()Ljava/time/chrono/HijrahDate;
    .locals 1

    .prologue
    .line 505
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "clock"    # Ljava/time/Clock;

    .prologue
    .line 515
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "zone"    # Ljava/time/ZoneId;

    .prologue
    .line 510
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/chrono/HijrahDate;
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    const/4 v1, 0x1

    .line 484
    invoke-static {p0, p1, v1, v1}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    .line 485
    .local v0, "date":Ljava/time/chrono/HijrahDate;
    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    if-le p2, v1, :cond_0

    .line 486
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid dayOfYear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_0
    add-int/lit8 v1, p2, -0x1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;
    .locals 1
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .prologue
    .line 469
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->eraOf(I)Ljava/time/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/HijrahEra;
    .locals 2
    .param p1, "eraValue"    # I

    .prologue
    .line 565
    packed-switch p1, :pswitch_data_0

    .line 569
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_0
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 575
    invoke-static {}, Ljava/time/chrono/HijrahEra;->values()[Ljava/time/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-object v0
.end method

.method getDayOfYear(II)I
    .locals 1
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .prologue
    .line 691
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method getEpochDay(III)J
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 671
    invoke-virtual {p0, p2}, Ljava/time/chrono/HijrahChronology;->checkValidMonth(I)V

    .line 672
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    add-int v0, v1, v2

    .line 673
    .local v0, "epochMonth":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 674
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 675
    const-string/jumbo v3, ", month: "

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_1
    const/4 v1, 0x1

    if-lt p3, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v1

    if-le p3, v1, :cond_3

    .line 678
    :cond_2
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Hijrah day of month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_3
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    add-int/2addr v1, v2

    int-to-long v2, v1

    return-wide v2
.end method

.method getHijrahDateInfo(I)[I
    .locals 8
    .param p1, "epochDay"    # I

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 644
    iget v6, p0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    if-lt p1, v6, :cond_0

    iget v6, p0, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    if-lt p1, v6, :cond_1

    .line 645
    :cond_0
    new-instance v6, Ljava/time/DateTimeException;

    const-string/jumbo v7, "Hijrah date out of range"

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 648
    :cond_1
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->epochDayToEpochMonth(I)I

    move-result v3

    .line 649
    .local v3, "epochMonth":I
    invoke-direct {p0, v3}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v5

    .line 650
    .local v5, "year":I
    invoke-direct {p0, v3}, Ljava/time/chrono/HijrahChronology;->epochMonthToMonth(I)I

    move-result v4

    .line 651
    .local v4, "month":I
    invoke-direct {p0, v3}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    .line 652
    .local v2, "day1":I
    sub-int v0, p1, v2

    .line 654
    .local v0, "date":I
    const/4 v6, 0x3

    new-array v1, v6, [I

    .line 655
    .local v1, "dateInfo":[I
    const/4 v6, 0x0

    aput v5, v1, v6

    .line 656
    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    aput v6, v1, v7

    .line 657
    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x2

    aput v6, v1, v7

    .line 658
    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method getMaximumDayOfYear()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    return v0
.end method

.method getMaximumMonthLength()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    return v0
.end method

.method getMaximumYear()I
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getMinimumMonthLength()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    return v0
.end method

.method getMinimumYear()I
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    return v0
.end method

.method getMonthLength(II)I
    .locals 4
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I

    .prologue
    .line 702
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    add-int v0, v1, v2

    .line 703
    .local v0, "epochMonth":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 704
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 705
    const-string/jumbo v3, ", month: "

    .line 704
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_1
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthLength(I)I

    move-result v1

    return v1
.end method

.method getSmallestMaximumDayOfYear()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    return v0
.end method

.method getYearLength(I)I
    .locals 1
    .param p1, "prolepticYear"    # I

    .prologue
    .line 718
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method public isLeapYear(J)Z
    .locals 5
    .param p1, "prolepticYear"    # J

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 548
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 549
    :cond_0
    return v1

    .line 551
    :cond_1
    long-to-int v2, p1

    invoke-virtual {p0, v2}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    .line 552
    .local v0, "len":I
    const/16 v2, 0x162

    if-le v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
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
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 2
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 557
    instance-of v0, p1, Ljava/time/chrono/HijrahEra;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    return p2
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 9
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .prologue
    const-wide/16 v0, 0x1

    .line 581
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 582
    instance-of v2, p1, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 583
    move-object v8, p1

    .line 584
    .local v8, "f":Ljava/time/temporal/ChronoField;
    invoke-static {}, Ljava/time/chrono/HijrahChronology;->-getjava-time-temporal-ChronoFieldSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 597
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 586
    :pswitch_0
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumMonthLength()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumMonthLength()I

    move-result v2

    int-to-long v6, v2

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 588
    :pswitch_1
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 590
    :pswitch_2
    const-wide/16 v2, 0x5

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 593
    :pswitch_3
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 595
    :pswitch_4
    invoke-static {v0, v1, v0, v1}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 600
    .end local v8    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;
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
            "Ljava/time/chrono/HijrahDate;"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
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
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
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
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
