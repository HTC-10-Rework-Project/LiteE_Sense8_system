.class final Ljava/time/format/DateTimePrintContext;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private formatter:Ljava/time/format/DateTimeFormatter;

.field private optional:I

.field private temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V
    .locals 1
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    iput-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    .line 120
    iput-object p2, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    .line 121
    return-void
.end method

.method private static adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
    .locals 13
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v5

    .line 126
    .local v5, "overrideChrono":Ljava/time/chrono/Chronology;
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v6

    .line 127
    .local v6, "overrideZone":Ljava/time/ZoneId;
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 128
    return-object p0

    .line 132
    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/chrono/Chronology;

    .line 133
    .local v7, "temporalChrono":Ljava/time/chrono/Chronology;
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v9

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/ZoneId;

    .line 134
    .local v8, "temporalZone":Ljava/time/ZoneId;
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 135
    const/4 v5, 0x0

    .line 137
    .end local v5    # "overrideChrono":Ljava/time/chrono/Chronology;
    :cond_1
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 138
    const/4 v6, 0x0

    .line 140
    .end local v6    # "overrideZone":Ljava/time/ZoneId;
    :cond_2
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    .line 141
    return-object p0

    .line 145
    :cond_3
    if-eqz v5, :cond_4

    move-object v1, v5

    .line 146
    .local v1, "effectiveChrono":Ljava/time/chrono/Chronology;
    :goto_0
    if-eqz v6, :cond_7

    .line 148
    sget-object v9, Ljava/time/temporal/ChronoField;->INSTANT_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 149
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 150
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    :goto_1
    invoke-static {p0}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v9

    invoke-interface {v0, v9, v6}, Ljava/time/chrono/Chronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v9

    return-object v9

    .line 145
    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    .end local v1    # "effectiveChrono":Ljava/time/chrono/Chronology;
    :cond_4
    move-object v1, v7

    .restart local v1    # "effectiveChrono":Ljava/time/chrono/Chronology;
    goto :goto_0

    .line 149
    :cond_5
    sget-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .restart local v0    # "chrono":Ljava/time/chrono/Chronology;
    goto :goto_1

    .line 153
    .end local v0    # "chrono":Ljava/time/chrono/Chronology;
    :cond_6
    invoke-virtual {v6}, Ljava/time/ZoneId;->normalized()Ljava/time/ZoneId;

    move-result-object v9

    instance-of v9, v9, Ljava/time/ZoneOffset;

    if-eqz v9, :cond_7

    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 154
    sget-object v9, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v9

    invoke-virtual {v6}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v10

    sget-object v11, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-virtual {v10, v11}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 155
    new-instance v9, Ljava/time/DateTimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to apply override zone \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 156
    const-string/jumbo v11, "\' because the temporal object being formatted has a different offset but"

    .line 155
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 157
    const-string/jumbo v11, " does not represent an instant: "

    .line 155
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 160
    :cond_7
    if-eqz v6, :cond_8

    move-object v3, v6

    .line 162
    .local v3, "effectiveZone":Ljava/time/ZoneId;
    :goto_2
    if-eqz v5, :cond_d

    .line 163
    sget-object v9, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p0, v9}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 164
    invoke-interface {v1, p0}, Ljava/time/chrono/Chronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 185
    :goto_3
    new-instance v9, Ljava/time/format/DateTimePrintContext$1;

    invoke-direct {v9, v2, p0, v1, v3}, Ljava/time/format/DateTimePrintContext$1;-><init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v9

    .line 160
    .end local v3    # "effectiveZone":Ljava/time/ZoneId;
    :cond_8
    move-object v3, v8

    .restart local v3    # "effectiveZone":Ljava/time/ZoneId;
    goto :goto_2

    .line 167
    :cond_9
    sget-object v9, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    if-ne v5, v9, :cond_a

    if-eqz v7, :cond_c

    .line 168
    :cond_a
    invoke-static {}, Ljava/time/temporal/ChronoField;->values()[Ljava/time/temporal/ChronoField;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_4
    if-ge v9, v11, :cond_c

    aget-object v4, v10, v9

    .line 169
    .local v4, "f":Ljava/time/temporal/ChronoField;
    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {p0, v4}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 170
    new-instance v9, Ljava/time/DateTimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to apply override chronology \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 171
    const-string/jumbo v11, "\' because the temporal object being formatted contains date fields but"

    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 172
    const-string/jumbo v11, " does not represent a whole date: "

    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 168
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 176
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_c
    const/4 v2, 0x0

    .local v2, "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_3

    .line 179
    .end local v2    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "effectiveDate":Ljava/time/chrono/ChronoLocalDate;
    goto :goto_3
.end method


# virtual methods
.method endOptional()V
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 270
    return-void
.end method

.method getDecimalStyle()Ljava/time/format/DecimalStyle;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->formatter:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getTemporal()Ljava/time/temporal/TemporalAccessor;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    return-object v0
.end method

.method getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;
    .locals 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/time/DateTimeException;
    iget v1, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-lez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    return-object v1

    .line 303
    :cond_0
    throw v0
.end method

.method getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
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
    .line 280
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    iget-object v1, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v1, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "result":Ljava/lang/Object;, "TR;"
    if-nez v0, :cond_0

    iget v1, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to extract value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_0
    return-object v0
.end method

.method startOptional()V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/time/format/DateTimePrintContext;->optional:I

    .line 263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext;->temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
