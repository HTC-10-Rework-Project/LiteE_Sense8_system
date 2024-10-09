.class Ljava/util/ResourceBundle$CacheKey;
.super Ljava/lang/Object;
.source "ResourceBundle.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;

.field private volatile expirationTime:J

.field private format:Ljava/lang/String;

.field private hashCodeCache:I

.field private volatile loadTime:J

.field private loaderRef:Ljava/util/ResourceBundle$LoaderReference;

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide v0
.end method

.method static synthetic -get1(Ljava/util/ResourceBundle$CacheKey;)J
    .locals 2
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide p1
.end method

.method static synthetic -set1(Ljava/util/ResourceBundle$CacheKey;J)J
    .locals 1
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;

    .prologue
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "-this"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 566
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 567
    if-nez p3, :cond_0

    .line 568
    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 572
    :goto_0
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 573
    return-void

    .line 570
    :cond_0
    new-instance v0, Ljava/util/ResourceBundle$LoaderReference;

    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    goto :goto_0
.end method

.method private calculateHashCode()V
    .locals 3

    .prologue
    .line 642
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 643
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 644
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 645
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    .line 646
    iget v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iput v1, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    .line 648
    :cond_0
    return-void
.end method

.method private getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private setCause(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 675
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 676
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_0

    .line 681
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 652
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 653
    .local v0, "clone":Ljava/util/ResourceBundle$CacheKey;
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v2, :cond_0

    .line 654
    new-instance v3, Ljava/util/ResourceBundle$LoaderReference;

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v2}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 655
    invoke-static {}, Ljava/util/ResourceBundle;->-get0()Ljava/lang/ref/ReferenceQueue;

    move-result-object v4

    .line 654
    invoke-direct {v3, v2, v4, v0}, Ljava/util/ResourceBundle$LoaderReference;-><init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v3, v0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    .line 658
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    return-object v0

    .line 660
    .end local v0    # "clone":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 604
    if-ne p0, p1, :cond_0

    .line 605
    return v4

    .line 608
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    move-object v3, v0

    .line 610
    .local v3, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget v6, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    iget v7, v3, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    if-eq v6, v7, :cond_1

    .line 611
    return v5

    .line 614
    :cond_1
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iget-object v7, v3, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 615
    return v5

    .line 618
    :cond_2
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iget-object v7, v3, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 619
    return v5

    .line 622
    :cond_3
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v6, :cond_5

    .line 623
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-nez v6, :cond_4

    :goto_0
    return v4

    :cond_4
    move v4, v5

    goto :goto_0

    .line 625
    :cond_5
    iget-object v6, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v6}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 626
    .local v2, "loader":Ljava/lang/ClassLoader;
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v6, :cond_7

    .line 630
    if-eqz v2, :cond_7

    .line 631
    iget-object v6, v3, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v6}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-ne v2, v6, :cond_6

    .line 626
    :goto_1
    return v4

    :cond_6
    move v4, v5

    .line 631
    goto :goto_1

    :cond_7
    move v4, v5

    .line 626
    goto :goto_1

    .line 632
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    :catch_0
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/RuntimeException;
    return v5
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    return-object v0
.end method

.method getLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 600
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$LoaderReference;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$LoaderReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_0
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Ljava/util/ResourceBundle$CacheKey;->hashCodeCache:I

    return v0
.end method

.method setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 672
    return-void
.end method

.method setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 592
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 594
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 596
    :cond_0
    return-object p0
.end method

.method setName(Ljava/lang/String;)Ljava/util/ResourceBundle$CacheKey;
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 580
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 582
    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->calculateHashCode()V

    .line 584
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 691
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 693
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 699
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CacheKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ldr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    const-string/jumbo v2, "(format="

    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    const-string/jumbo v2, ")]"

    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 696
    :cond_1
    const-string/jumbo v0, "\"\""

    goto :goto_0
.end method
