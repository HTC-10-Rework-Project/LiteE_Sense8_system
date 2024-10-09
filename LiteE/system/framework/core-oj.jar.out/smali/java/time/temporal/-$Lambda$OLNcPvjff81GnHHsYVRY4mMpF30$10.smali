.class final synthetic Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 1
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;->-$f0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_21123(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;->-$f0:I

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$10;->$m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method
