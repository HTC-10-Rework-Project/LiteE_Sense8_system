.class final Ljava/time/format/DateTimePrintContext$1;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/time/format/DateTimePrintContext;->adjust(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/time/temporal/TemporalAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$effectiveChrono:Ljava/time/chrono/Chronology;

.field final synthetic val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

.field final synthetic val$effectiveZone:Ljava/time/ZoneId;

.field final synthetic val$temporal:Ljava/time/temporal/TemporalAccessor;


# direct methods
.method constructor <init>(Ljava/time/chrono/ChronoLocalDate;Ljava/time/temporal/TemporalAccessor;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    iput-object p2, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    iput-object p3, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    iput-object p4, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 2
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 202
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 188
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    return v0
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
    .line 210
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveChrono:Ljava/time/chrono/Chronology;

    return-object v0

    .line 213
    :cond_0
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 214
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveZone:Ljava/time/ZoneId;

    return-object v0

    .line 216
    :cond_1
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 217
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_2
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalQuery;->queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 195
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$effectiveDate:Ljava/time/chrono/ChronoLocalDate;

    invoke-interface {v0, p1}, Ljava/time/chrono/ChronoLocalDate;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Ljava/time/format/DateTimePrintContext$1;->val$temporal:Ljava/time/temporal/TemporalAccessor;

    invoke-interface {v0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
