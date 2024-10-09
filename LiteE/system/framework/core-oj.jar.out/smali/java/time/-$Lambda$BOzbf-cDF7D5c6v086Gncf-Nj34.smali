.class final synthetic Ljava/time/-$Lambda$BOzbf-cDF7D5c6v086Gncf-Nj34;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/LocalDate;->-java_time_LocalDate-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$BOzbf-cDF7D5c6v086Gncf-Nj34;->$m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
