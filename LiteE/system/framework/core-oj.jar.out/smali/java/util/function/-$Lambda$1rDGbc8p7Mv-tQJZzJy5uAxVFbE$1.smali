.class final synthetic Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;->-$f0:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/function/Predicate;->lambda$-java_util_function_Predicate_4628(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
