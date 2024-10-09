.class public Lsun/security/util/AlgorithmDecomposer;
.super Ljava/lang/Object;
.source "AlgorithmDecomposer.java"


# static fields
.field private static final pattern:Ljava/util/regex/Pattern;

.field private static final transPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/AlgorithmDecomposer;->transPattern:Ljava/util/regex/Pattern;

    .line 39
    const-string/jumbo v0, "with|and"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 38
    sput-object v0, Lsun/security/util/AlgorithmDecomposer;->pattern:Ljava/util/regex/Pattern;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decomposeImpl(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 44
    sget-object v5, Lsun/security/util/AlgorithmDecomposer;->transPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "transTockens":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v3, v4, v7

    .line 48
    .local v3, "transTocken":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 47
    :cond_0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 57
    :cond_1
    sget-object v5, Lsun/security/util/AlgorithmDecomposer;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "tokens":[Ljava/lang/String;
    array-length v9, v2

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_0

    aget-object v1, v2, v5

    .line 60
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 59
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    .end local v3    # "transTocken":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 154
    :cond_1
    invoke-static {p0}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 156
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "SHA-1"

    const-string/jumbo v2, "SHA1"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "SHA-224"

    const-string/jumbo v2, "SHA224"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "SHA256"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "SHA-384"

    const-string/jumbo v2, "SHA384"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "SHA512"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method private static hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    return-void
.end method

.method public static hashName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v0, "-"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public decompose(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 84
    :cond_1
    invoke-static {p1}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 94
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 95
    const-string/jumbo v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_2
    const-string/jumbo v1, "SHA-1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 98
    const-string/jumbo v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    const-string/jumbo v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SHA-224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 103
    const-string/jumbo v1, "SHA-224"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    const-string/jumbo v1, "SHA-224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 106
    const-string/jumbo v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    const-string/jumbo v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 111
    const-string/jumbo v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_6
    const-string/jumbo v1, "SHA-256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 114
    const-string/jumbo v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_7
    const-string/jumbo v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 119
    const-string/jumbo v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_8
    const-string/jumbo v1, "SHA-384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 122
    const-string/jumbo v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_9
    const-string/jumbo v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "SHA-512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 127
    const-string/jumbo v1, "SHA-512"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_a
    const-string/jumbo v1, "SHA-512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 130
    const-string/jumbo v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_b
    return-object v0
.end method
