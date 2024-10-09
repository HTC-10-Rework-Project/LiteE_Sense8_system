.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PAIR:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicStampedReference;->U:Lsun/misc/Unsafe;

    .line 197
    :try_start_0
    sget-object v1, Ljava/util/concurrent/atomic/AtomicStampedReference;->U:Lsun/misc/Unsafe;

    .line 198
    const-class v2, Ljava/util/concurrent/atomic/AtomicStampedReference;

    const-string/jumbo v3, "pair"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicStampedReference;->PAIR:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "initialStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "initialRef":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 75
    return-void
.end method

.method private casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;",
            "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "cmp":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    .local p2, "val":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicStampedReference;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicStampedReference;->PAIR:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 186
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 187
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_0

    .line 188
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 187
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 2
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 151
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 152
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-ne p3, v1, :cond_1

    .line 153
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    .line 154
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-ne p4, v1, :cond_0

    .line 153
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    .line 155
    :cond_0
    invoke-static {p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->casPair(Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;)Z

    move-result v1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 3
    .param p1, "stampHolder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 105
    .local v0, "pair":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 106
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget-object v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public getStamp()I
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    iget v0, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "newReference":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 166
    .local v0, "current":Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;, "Ljava/util/concurrent/atomic/AtomicStampedReference$Pair<TV;>;"
    iget-object v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->reference:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget v1, v0, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->stamp:I

    if-eq p2, v1, :cond_1

    .line 167
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;->of(Ljava/lang/Object;I)Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->pair:Ljava/util/concurrent/atomic/AtomicStampedReference$Pair;

    .line 168
    :cond_1
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .locals 1
    .param p3, "expectedStamp"    # I
    .param p4, "newStamp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicStampedReference;, "Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, "expectedReference":Ljava/lang/Object;, "TV;"
    .local p2, "newReference":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
