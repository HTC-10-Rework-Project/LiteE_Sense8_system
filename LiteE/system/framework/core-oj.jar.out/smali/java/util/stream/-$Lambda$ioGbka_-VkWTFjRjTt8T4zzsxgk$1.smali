.class final synthetic Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/OptionalInt;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/util/stream/FindOps;->-java_util_stream_FindOps-mthref-2(Ljava/util/OptionalInt;)Z

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
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/util/stream/-$Lambda$ioGbka_-VkWTFjRjTt8T4zzsxgk$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
