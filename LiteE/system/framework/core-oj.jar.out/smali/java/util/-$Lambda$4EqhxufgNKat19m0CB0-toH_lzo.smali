.class final synthetic Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;
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
    iget-object v0, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    invoke-static {v0, p1, p2}, Ljava/util/Comparator;->lambda$-java_util_Comparator_20685(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
