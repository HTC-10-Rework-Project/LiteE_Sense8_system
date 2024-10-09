.class final synthetic Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoublePredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)Z
    .locals 3
    .param p1, "arg0"    # D

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoublePredicate;

    iget-object v1, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/DoublePredicate;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/DoublePredicate;->lambda$-java_util_function_DoublePredicate_2852(Ljava/util/function/DoublePredicate;D)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(D)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$Y5kXEBZc5fDOtRicvFfczerD_ZI$1;->$m$0(D)Z

    move-result v0

    return v0
.end method
