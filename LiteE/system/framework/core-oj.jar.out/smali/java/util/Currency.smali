.class public final Ljava/util/Currency;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static available:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2326cb5a6ee56e1L


# instance fields
.field private final currencyCode:Ljava/lang/String;

.field private final transient icuCurrency:Landroid/icu/util/Currency;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/Currency;)V
    .locals 1
    .param p1, "icuCurrency"    # Landroid/icu/util/Currency;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    .line 77
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const-class v6, Ljava/util/Currency;

    monitor-enter v6

    .line 160
    :try_start_0
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    if-nez v5, :cond_1

    .line 163
    invoke-static {}, Landroid/icu/util/Currency;->getAvailableCurrencies()Ljava/util/Set;

    move-result-object v1

    .line 164
    .local v1, "icuAvailableCurrencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Currency;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    .line 165
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "icuCurrency$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Currency;

    .line 166
    .local v2, "icuCurrency":Landroid/icu/util/Currency;
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 167
    .local v0, "currency":Ljava/util/Currency;
    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/Currency;

    .end local v0    # "currency":Ljava/util/Currency;
    invoke-direct {v0, v2}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 169
    .restart local v0    # "currency":Ljava/util/Currency;
    sget-object v5, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, v0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-interface {v5, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "currency":Ljava/util/Currency;
    .end local v2    # "icuCurrency":Landroid/icu/util/Currency;
    .end local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "icuCurrency$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v6

    .line 178
    sget-object v5, Ljava/util/Currency;->available:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 179
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Currency;>;"
    return-object v4
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/util/Currency;
    .locals 5
    .param p0, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 91
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Currency;

    .line 92
    .local v2, "instance":Ljava/util/Currency;
    if-eqz v2, :cond_0

    .line 93
    return-object v2

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v1

    .line 97
    .local v1, "icuInstance":Landroid/icu/util/Currency;
    if-nez v1, :cond_1

    .line 98
    return-object v4

    .line 100
    :cond_1
    new-instance v0, Ljava/util/Currency;

    invoke-direct {v0, v1}, Ljava/util/Currency;-><init>(Landroid/icu/util/Currency;)V

    .line 102
    .local v0, "currencyVal":Ljava/util/Currency;
    sget-object v3, Ljava/util/Currency;->instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "instance":Ljava/util/Currency;
    check-cast v2, Ljava/util/Currency;

    .line 103
    .restart local v2    # "instance":Ljava/util/Currency;
    if-eqz v2, :cond_2

    .end local v2    # "instance":Ljava/util/Currency;
    :goto_0
    return-object v2

    .restart local v2    # "instance":Ljava/util/Currency;
    :cond_2
    move-object v2, v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Currency;
    .locals 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;

    move-result-object v2

    .line 131
    .local v2, "icuInstance":Landroid/icu/util/Currency;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "variant":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "EURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "HK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const-string/jumbo v4, "PREEURO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 133
    if-eqz v4, :cond_1

    .line 135
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getCurrencyCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "currencyCode":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 139
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported ISO 3166 country: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "XXX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    :cond_3
    return-object v6

    .line 144
    :cond_4
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    return-object v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Ljava/util/Currency;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFractionDigits()I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 290
    iget-object v1, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {v1, v0}, Landroid/icu/util/Currency;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->getNumericCode()I

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0, p1}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ljava/util/Currency;->icuCurrency:Landroid/icu/util/Currency;

    invoke-virtual {v0}, Landroid/icu/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
