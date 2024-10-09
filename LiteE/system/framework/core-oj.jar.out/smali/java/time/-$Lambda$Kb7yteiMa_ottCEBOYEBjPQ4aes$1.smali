.class final synthetic Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/time/OffsetDateTime;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/time/OffsetDateTime;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->-java_time_OffsetDateTime-mthref-0(Ljava/time/OffsetDateTime;Ljava/time/OffsetDateTime;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/time/-$Lambda$Kb7yteiMa_ottCEBOYEBjPQ4aes$1;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
