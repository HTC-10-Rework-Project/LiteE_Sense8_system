.class final synthetic Ljava/util/-$Lambda$NtA29M7WT1vsHnlynQ2fPZ1s5yA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/-$Lambda$NtA29M7WT1vsHnlynQ2fPZ1s5yA$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/util/Map$Entry;->lambda$-java_util_Map$Entry_24570(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$NtA29M7WT1vsHnlynQ2fPZ1s5yA$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$NtA29M7WT1vsHnlynQ2fPZ1s5yA$2;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
