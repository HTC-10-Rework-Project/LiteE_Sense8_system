.class final synthetic Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    iget-object v1, p0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    invoke-interface {v0, v1, p1}, Ljava/util/function/Function;->lambda$-java_util_function_Function_2660(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4$2;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
