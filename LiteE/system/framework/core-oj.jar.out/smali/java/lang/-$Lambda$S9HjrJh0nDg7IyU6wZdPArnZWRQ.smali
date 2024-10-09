.class final synthetic Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->lambda$-java_lang_CharSequence_6032()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/-$Lambda$S9HjrJh0nDg7IyU6wZdPArnZWRQ;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
