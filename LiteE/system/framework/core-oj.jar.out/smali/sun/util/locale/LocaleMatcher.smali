.class public final Lsun/util/locale/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .locals 8
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 52
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    return-object v7

    .line 56
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v6, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "locale$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 58
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-static {p0, v6, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "filteredTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v0, "filteredLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    .end local v4    # "tag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "lr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale$LanguageRange;

    .line 116
    .local v2, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v2}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "range":Ljava/lang/String;
    const-string/jumbo v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v7

    .line 120
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tag$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 121
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, "len":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v7, v0, :cond_3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2

    .line 125
    :cond_3
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 124
    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v0    # "len":I
    .end local v2    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v4    # "range":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "tag$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v1
.end method

.method private static filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "lr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .line 140
    .local v1, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v1}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "range":Ljava/lang/String;
    const-string/jumbo v10, "*"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v10

    .line 144
    :cond_1
    const-string/jumbo v10, "-"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "rangeSubtags":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "tag$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 146
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 147
    const-string/jumbo v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "tagSubtags":[Ljava/lang/String;
    aget-object v10, v5, v12

    aget-object v11, v9, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 149
    aget-object v10, v5, v12

    const-string/jumbo v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 148
    if-nez v10, :cond_2

    .line 153
    :cond_3
    const/4 v4, 0x1

    .line 154
    .local v4, "rangeIndex":I
    const/4 v8, 0x1

    .line 156
    .local v8, "tagIndex":I
    :goto_1
    array-length v10, v5

    if-ge v4, v10, :cond_6

    .line 157
    array-length v10, v9

    if-ge v8, v10, :cond_6

    .line 158
    aget-object v10, v5, v4

    const-string/jumbo v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    :cond_4
    aget-object v10, v5, v4

    aget-object v11, v9, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 163
    :cond_5
    aget-object v10, v9, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 164
    aget-object v10, v9, v8

    const-string/jumbo v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    .line 163
    if-eqz v10, :cond_7

    .line 171
    :cond_6
    array-length v10, v5

    if-ne v10, v4, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 172
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 177
    .end local v1    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    .end local v4    # "rangeIndex":I
    .end local v5    # "rangeSubtags":[Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "tag$iterator":Ljava/util/Iterator;
    .end local v8    # "tagIndex":I
    .end local v9    # "tagSubtags":[Ljava/lang/String;
    :cond_8
    return-object v0
.end method

.method public static filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .locals 8
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4

    .line 81
    :cond_1
    sget-object v4, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_2

    .line 82
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "lr$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .line 86
    .local v1, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v1}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "range":Ljava/lang/String;
    const-string/jumbo v4, "*-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 88
    const-string/jumbo v4, "-*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 89
    :cond_4
    sget-object v4, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_5

    .line 90
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->filterExtended(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 91
    :cond_5
    sget-object v4, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_7

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_6

    .line 93
    const-string/jumbo v3, "*"

    .line 97
    :goto_1
    new-instance v4, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v1}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v6

    invoke-direct {v4, v3, v6, v7}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_6
    const-string/jumbo v4, "-[*]"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 98
    :cond_7
    sget-object v4, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    if-ne p2, v4, :cond_3

    .line 99
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "An extended range \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 101
    const-string/jumbo v6, "\" found in REJECT_EXTENDED_RANGES mode."

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v1    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    :cond_9
    invoke-static {v0, p1}, Lsun/util/locale/LocaleMatcher;->filterBasic(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "range"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {p0}, Lsun/util/locale/LocaleMatcher;->getExtentionKeyIndex(Ljava/lang/String;)I

    move-result v0

    .line 383
    .local v0, "extensionKeyIndex":I
    sget-object v5, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subtag$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    .local v3, "subtag":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 387
    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_1

    .line 388
    if-gt v1, v0, :cond_0

    .line 392
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v1, v5

    .line 393
    .local v2, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 395
    :cond_2
    sget-object v5, Lsun/util/locale/LocaleEquivalentMaps;->regionVariantEquivMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 394
    invoke-static {p0, v3, v5}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 401
    .end local v1    # "index":I
    .end local v2    # "len":I
    .end local v3    # "subtag":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private static getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "range"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 350
    move-object v4, p0

    .line 352
    .local v4, "r":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 353
    sget-object v6, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 354
    sget-object v6, Lsun/util/locale/LocaleEquivalentMaps;->singleEquivMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    .local v0, "equiv":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    return-object v6

    .line 359
    .end local v0    # "equiv":Ljava/lang/String;
    :cond_0
    sget-object v6, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 360
    sget-object v6, Lsun/util/locale/LocaleEquivalentMaps;->multiEquivsMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 361
    .local v1, "equivs":[Ljava/lang/String;
    array-length v6, v1

    new-array v5, v6, [Ljava/lang/String;

    .line 362
    .local v5, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_1

    .line 364
    aget-object v6, v1, v2

    .line 363
    invoke-static {p0, v4, v6}, Lsun/util/locale/LocaleMatcher;->replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    :cond_1
    return-object v5

    .line 370
    .end local v1    # "equivs":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "result":[Ljava/lang/String;
    :cond_2
    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 371
    .local v3, "index":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 377
    .end local v3    # "index":I
    :cond_3
    const/4 v6, 0x0

    return-object v6

    .line 374
    .restart local v3    # "index":I
    :cond_4
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getExtentionKeyIndex(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 406
    .local v0, "c":[C
    const/high16 v2, -0x80000000

    .line 407
    .local v2, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 408
    aget-char v3, v0, v1

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 409
    sub-int v3, v1, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 410
    return v2

    .line 412
    :cond_0
    move v2, v1

    .line 407
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_2
    const/high16 v3, -0x80000000

    return v3
.end method

.method public static lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    const/4 v5, 0x0

    .line 182
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    return-object v5

    .line 187
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "locale$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 189
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_2
    invoke-static {p0, v3}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "lookedUpTag":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 196
    return-object v5

    .line 198
    :cond_3
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method public static lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/16 v10, 0x2d

    const/4 v9, 0x0

    .line 204
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    :cond_0
    return-object v11

    .line 208
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "lr$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale$LanguageRange;

    .line 209
    .local v1, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v1}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "range":Ljava/lang/String;
    const-string/jumbo v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 216
    const-string/jumbo v7, "*"

    const-string/jumbo v8, "\\p{Alnum}*"

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "rangeForRegex":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 218
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "tag$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 221
    return-object v5

    .line 226
    .end local v5    # "tag":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 227
    .local v0, "index":I
    if-ltz v0, :cond_6

    .line 228
    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v7, v8, :cond_3

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 236
    :cond_6
    const-string/jumbo v4, ""

    goto :goto_0

    .line 241
    .end local v0    # "index":I
    .end local v1    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v3    # "range":Ljava/lang/String;
    .end local v4    # "rangeForRegex":Ljava/lang/String;
    .end local v6    # "tag$iterator":Ljava/util/Iterator;
    :cond_7
    return-object v11
.end method

.method public static mapEquivalents(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 423
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    return-object v16

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 426
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v16

    .line 430
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v9, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 432
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .end local v7    # "key":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "lr$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Locale$LanguageRange;

    .line 437
    .local v12, "lr":Ljava/util/Locale$LanguageRange;
    invoke-virtual {v12}, Ljava/util/Locale$LanguageRange;->getRange()Ljava/lang/String;

    move-result-object v15

    .line 438
    .local v15, "range":Ljava/lang/String;
    move-object v14, v15

    .line 439
    .local v14, "r":Ljava/lang/String;
    const/4 v5, 0x0

    .line 441
    .local v5, "hasEquivalent":Z
    :goto_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_6

    .line 442
    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 443
    const/4 v5, 0x1

    .line 444
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 445
    .local v4, "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_6

    .line 446
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    .line 447
    .local v10, "len":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "equivalent$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, "equivalent":Ljava/lang/String;
    new-instance v16, Ljava/util/Locale$LanguageRange;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 449
    invoke-virtual {v15, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 448
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 450
    invoke-virtual {v12}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v18

    .line 448
    invoke-direct/range {v16 .. v19}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 458
    .end local v2    # "equivalent":Ljava/lang/String;
    .end local v3    # "equivalent$iterator":Ljava/util/Iterator;
    .end local v4    # "equivalents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "len":I
    :cond_5
    const/16 v16, 0x2d

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 459
    .local v6, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v6, v0, :cond_7

    .line 465
    .end local v6    # "index":I
    :cond_6
    if-nez v5, :cond_4

    .line 466
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 462
    .restart local v6    # "index":I
    :cond_7
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 470
    .end local v5    # "hasEquivalent":Z
    .end local v6    # "index":I
    .end local v12    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v14    # "r":Ljava/lang/String;
    .end local v15    # "range":Ljava/lang/String;
    :cond_8
    return-object v11
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .param p0, "ranges"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const-string/jumbo v17, " "

    const-string/jumbo v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 246
    const-string/jumbo v17, "accept-language:"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 247
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 250
    :cond_0
    const-string/jumbo v17, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "langRanges":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v16, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 255
    .local v13, "numOfRanges":I
    const/16 v17, 0x0

    array-length v0, v10

    move/from16 v21, v0

    move/from16 v20, v17

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    aget-object v15, v10, v20

    .line 260
    .local v15, "range":Ljava/lang/String;
    const-string/jumbo v17, ";q="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .local v8, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 261
    move-object v14, v15

    .line 262
    .local v14, "r":Ljava/lang/String;
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 283
    .local v18, "w":D
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 284
    new-instance v12, Ljava/util/Locale$LanguageRange;

    move-wide/from16 v0, v18

    invoke-direct {v12, v14, v0, v1}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    .line 285
    .local v12, "lr":Ljava/util/Locale$LanguageRange;
    move v8, v13

    .line 286
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v13, :cond_2

    .line 287
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Locale$LanguageRange;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale$LanguageRange;->getWeight()D

    move-result-wide v22

    cmpg-double v17, v22, v18

    if-gez v17, :cond_8

    .line 288
    move v8, v9

    .line 292
    :cond_2
    invoke-interface {v11, v8, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 293
    add-int/lit8 v13, v13, 0x1

    .line 294
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {v14}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "equivalent":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 302
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 301
    if-eqz v17, :cond_3

    .line 303
    add-int/lit8 v17, v8, 0x1

    new-instance v22, Ljava/util/Locale$LanguageRange;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-direct {v0, v6, v1, v2}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 304
    add-int/lit8 v13, v13, 0x1

    .line 305
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3
    invoke-static {v14}, Lsun/util/locale/LocaleMatcher;->getEquivalentsForLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "equivalents":[Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 310
    const/16 v17, 0x0

    array-length v0, v7

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    aget-object v5, v7, v17

    .line 312
    .local v5, "equiv":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 313
    add-int/lit8 v23, v8, 0x1

    new-instance v24, Ljava/util/Locale$LanguageRange;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v1, v2}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v11, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v13, v13, 0x1

    .line 315
    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_4
    invoke-static {v5}, Lsun/util/locale/LocaleMatcher;->getEquivalentForRegionAndVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    if-eqz v6, :cond_5

    .line 321
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    .line 320
    if-eqz v23, :cond_5

    .line 322
    add-int/lit8 v23, v8, 0x1

    new-instance v24, Ljava/util/Locale$LanguageRange;

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-direct {v0, v6, v1, v2}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;D)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v11, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 323
    add-int/lit8 v13, v13, 0x1

    .line 324
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 264
    .end local v5    # "equiv":Ljava/lang/String;
    .end local v6    # "equivalent":Ljava/lang/String;
    .end local v7    # "equivalents":[Ljava/lang/String;
    .end local v9    # "j":I
    .end local v12    # "lr":Ljava/util/Locale$LanguageRange;
    .end local v14    # "r":Ljava/lang/String;
    .end local v18    # "w":D
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 265
    .restart local v14    # "r":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x3

    .line 267
    :try_start_0
    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    .line 275
    .restart local v18    # "w":D
    const-wide/16 v22, 0x0

    cmpg-double v17, v18, v22

    if-ltz v17, :cond_7

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v18, v22

    if-lez v17, :cond_1

    .line 276
    :cond_7
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "weight="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 277
    const-string/jumbo v21, " for language range \""

    .line 276
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 278
    const-string/jumbo v21, "\". It must be between "

    .line 276
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 278
    const-wide/16 v22, 0x0

    .line 276
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 279
    const-string/jumbo v21, " and "

    .line 276
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 279
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    .line 276
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 279
    const-string/jumbo v21, "."

    .line 276
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 269
    .end local v18    # "w":D
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "weight=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 271
    invoke-virtual {v15, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 270
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 272
    const-string/jumbo v21, "\" for language range \""

    .line 270
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 272
    const-string/jumbo v21, "\""

    .line 270
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 286
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "j":I
    .restart local v12    # "lr":Ljava/util/Locale$LanguageRange;
    .restart local v18    # "w":D
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 255
    .end local v9    # "j":I
    .end local v12    # "lr":Ljava/util/Locale$LanguageRange;
    :cond_9
    add-int/lit8 v17, v20, 0x1

    move/from16 v20, v17

    goto/16 :goto_0

    .line 331
    .end local v8    # "index":I
    .end local v14    # "r":Ljava/lang/String;
    .end local v15    # "range":Ljava/lang/String;
    .end local v18    # "w":D
    :cond_a
    return-object v11
.end method

.method private static replaceFirstSubStringMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "range"    # Ljava/lang/String;
    .param p1, "substr"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 342
    return-object p0

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
