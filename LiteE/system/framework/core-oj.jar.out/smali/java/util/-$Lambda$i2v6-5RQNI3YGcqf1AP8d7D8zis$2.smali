.class final synthetic Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collections$CopiesList;

    invoke-virtual {v0, p1}, Ljava/util/Collections$CopiesList;->lambda$-java_util_Collections$CopiesList_199111(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/-$Lambda$i2v6-5RQNI3YGcqf1AP8d7D8zis$2;->$m$0(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
