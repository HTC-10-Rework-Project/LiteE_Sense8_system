.class final synthetic Ljava/time/-$Lambda$Nb-ibgdTlWIhgjCJWHfrfU1wggY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/LocalTime;->-java_time_LocalTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

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
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$Nb-ibgdTlWIhgjCJWHfrfU1wggY;->$m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
