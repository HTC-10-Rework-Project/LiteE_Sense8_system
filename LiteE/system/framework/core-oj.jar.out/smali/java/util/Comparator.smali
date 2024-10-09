.class public interface abstract Ljava/util/Comparator;
.super Ljava/lang/Object;
.source "Comparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static comparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable",
            "<-TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;

    invoke-direct {v0, p0}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo;-><init>(Ljava/lang/Object;)V

    .line 468
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;

    invoke-direct {v0, p1, p0}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "keyExtractor":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$1;

    invoke-direct {v0, p0}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$1;-><init>(Ljava/lang/Object;)V

    .line 531
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "keyExtractor":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$2;

    invoke-direct {v0, p0}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$2;-><init>(Ljava/lang/Object;)V

    .line 489
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "keyExtractor":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$3;

    invoke-direct {v0, p0}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$3;-><init>(Ljava/lang/Object;)V

    .line 510
    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static synthetic lambda$-java_util_Comparator_19343(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 436
    .local p0, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    .local p1, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "c1":Ljava/lang/Object;, "TT;"
    .local p3, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 436
    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$-java_util_Comparator_20685(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 469
    .local p0, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "c1":Ljava/lang/Object;, "TT;"
    .local p2, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$-java_util_Comparator_21565(Ljava/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 490
    .local p0, "keyExtractor":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p1, "c1":Ljava/lang/Object;, "TT;"
    .local p2, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$-java_util_Comparator_22461(Ljava/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 511
    .local p0, "keyExtractor":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    .local p1, "c1":Ljava/lang/Object;, "TT;"
    .local p2, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$-java_util_Comparator_23363(Ljava/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 532
    .local p0, "keyExtractor":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    .local p1, "c1":Ljava/lang/Object;, "TT;"
    .local p2, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 357
    sget-object v0, Ljava/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method

.method public static nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/Comparators$NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava/util/Comparators$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public synthetic lambda$-java_util_Comparator_10127(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p2, "c1":Ljava/lang/Object;, "TT;"
    .local p3, "c2":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "res":I
    if-eqz v0, :cond_0

    .end local v0    # "res":I
    :goto_0
    return v0

    .restart local v0    # "res":I
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$5;

    invoke-direct {v0, p0, p1}, Ljava/util/-$Lambda$4EqhxufgNKat19m0CB0-toH_lzo$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/lang/Comparable",
            "<-TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p1, p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p1, "keyExtractor":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    invoke-static {p1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Comparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
