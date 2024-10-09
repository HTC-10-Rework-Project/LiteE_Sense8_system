.class public final Ljava/time/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "TemporalQueries.java"


# static fields
.field static final CHRONO:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_DATE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field static final LOCAL_TIME:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field static final OFFSET:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field static final PRECISION:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field

.field static final ZONE_ID:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    .line 350
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$1;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$1;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    .line 356
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$2;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$2;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    .line 363
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$3;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$3;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    .line 373
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$4;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$4;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    .line 381
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$5;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$5;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    .line 391
    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$6;

    invoke-direct {v0}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE$6;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static chronology()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_16312(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 345
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_16487(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 351
    sget-object v0, Ljava/time/temporal/TemporalQueries;->CHRONO:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_16671(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalUnit;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 357
    sget-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/temporal/TemporalUnit;

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_16950(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .locals 1
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 364
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_17282(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .locals 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 374
    sget-object v1, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 375
    .local v0, "zone":Ljava/time/ZoneId;
    if-eqz v0, :cond_0

    .end local v0    # "zone":Ljava/time/ZoneId;
    :goto_0
    return-object v0

    .restart local v0    # "zone":Ljava/time/ZoneId;
    :cond_0
    sget-object v1, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_17553(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 382
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$-java_time_temporal_TemporalQueries_17862(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;
    .locals 2
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 392
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static localDate()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_DATE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static localTime()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Ljava/time/temporal/TemporalQueries;->LOCAL_TIME:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static offset()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Ljava/time/temporal/TemporalQueries;->OFFSET:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static precision()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Ljava/time/temporal/TemporalQueries;->PRECISION:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static zone()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static zoneId()Ljava/time/temporal/TemporalQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Ljava/time/temporal/TemporalQueries;->ZONE_ID:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method
