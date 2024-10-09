.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 477
    new-instance v0, Lsun/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    .line 475
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 487
    check-cast p1, Lsun/security/x509/AVA;

    check-cast p2, Lsun/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    move-result v0

    return v0
.end method

.method public compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .locals 8
    .param p1, "a1"    # Lsun/security/x509/AVA;
    .param p2, "a2"    # Lsun/security/x509/AVA;

    .prologue
    .line 493
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    .line 494
    .local v0, "a1Has2253":Z
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v2

    .line 496
    .local v2, "a2Has2253":Z
    if-eqz v0, :cond_1

    .line 497
    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6

    .line 501
    :cond_0
    const/4 v6, -0x1

    return v6

    .line 504
    :cond_1
    if-eqz v2, :cond_2

    .line 505
    const/4 v6, 0x1

    return v6

    .line 507
    :cond_2
    invoke-virtual {p1}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v1

    .line 508
    .local v1, "a1Oid":[I
    invoke-virtual {p2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v3

    .line 509
    .local v3, "a2Oid":[I
    const/4 v5, 0x0

    .line 510
    .local v5, "pos":I
    array-length v6, v1

    array-length v7, v3

    if-le v6, v7, :cond_3

    array-length v4, v3

    .line 512
    .local v4, "len":I
    :goto_0
    if-ge v5, v4, :cond_4

    aget v6, v1, v5

    aget v7, v3, v5

    if-ne v6, v7, :cond_4

    .line 513
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 511
    .end local v4    # "len":I
    :cond_3
    array-length v4, v1

    .restart local v4    # "len":I
    goto :goto_0

    .line 515
    :cond_4
    if-ne v5, v4, :cond_5

    array-length v6, v1

    array-length v7, v3

    sub-int/2addr v6, v7

    :goto_1
    return v6

    .line 516
    :cond_5
    aget v6, v1, v5

    aget v7, v3, v5

    sub-int/2addr v6, v7

    goto :goto_1
.end method
