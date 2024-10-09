.class final synthetic Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiPredicate;

    iget-object v1, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/BiPredicate;

    invoke-interface {v0, v1, p1, p2}, Ljava/util/function/BiPredicate;->lambda$-java_util_function_BiPredicate_4269(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$XT6V3FCwc0LyV9_0ISNecLl_A-U$2;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
