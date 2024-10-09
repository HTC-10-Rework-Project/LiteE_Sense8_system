.class final Ljava/text/AttributedString$AttributedStringIterator;
.super Ljava/lang/Object;
.source "AttributedString.java"

# interfaces
.implements Ljava/text/AttributedCharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/AttributedString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributedStringIterator"
.end annotation


# instance fields
.field private beginIndex:I

.field private currentIndex:I

.field private currentRunIndex:I

.field private currentRunLimit:I

.field private currentRunStart:I

.field private endIndex:I

.field private relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

.field final synthetic this$0:Ljava/text/AttributedString;


# direct methods
.method constructor <init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V
    .locals 2
    .param p1, "this$0"    # Ljava/text/AttributedString;
    .param p2, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p3, "beginIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 764
    iput-object p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    if-ltz p3, :cond_0

    if-le p3, p4, :cond_1

    .line 768
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_1
    invoke-virtual {p1}, Ljava/text/AttributedString;->length()I

    move-result v0

    if-gt p4, v0, :cond_0

    .line 771
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 772
    iput p4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 773
    iput p3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 774
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 775
    if-eqz p2, :cond_2

    .line 776
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/AttributedCharacterIterator$Attribute;

    iput-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->relevantAttributes:[Ljava/text/AttributedCharacterIterator$Attribute;

    .line 778
    :cond_2
    return-void
.end method

.method private getString()Ljava/text/AttributedString;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    return-object v0
.end method

.method private internalSetIndex(I)C
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1009
    iput p1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    .line 1010
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    if-lt p1, v0, :cond_1

    .line 1011
    :cond_0
    invoke-direct {p0}, Ljava/text/AttributedString$AttributedStringIterator;->updateRunInfo()V

    .line 1013
    :cond_1
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_2

    .line 1014
    const v0, 0xffff

    return v0

    .line 1016
    :cond_2
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-static {v0, p1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method private updateRunInfo()V
    .locals 4

    .prologue
    .line 1022
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v1, v2, :cond_0

    .line 1023
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1024
    const/4 v1, -0x1

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1049
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v2

    .line 1027
    const/4 v0, -0x1

    .line 1028
    .local v0, "runIndex":I
    :goto_1
    :try_start_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-gt v1, v3, :cond_1

    .line 1029
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1030
    :cond_1
    iput v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 1031
    if-ltz v0, :cond_4

    .line 1032
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v1, v0

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1033
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_2

    .line 1034
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 1039
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, v1, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 1040
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v1, v1, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 1041
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_3

    .line 1042
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_3
    monitor-exit v2

    goto :goto_0

    .line 1037
    :cond_4
    :try_start_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1026
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1045
    :cond_5
    :try_start_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iput v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 805
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedString$AttributedStringIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .local v1, "other":Ljava/text/AttributedString$AttributedStringIterator;
    return-object v1

    .line 808
    .end local v1    # "other":Ljava/text/AttributedString$AttributedStringIterator;
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public current()C
    .locals 2

    .prologue
    .line 828
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 829
    const v0, 0xffff

    return v0

    .line 831
    :cond_0
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    invoke-static {v0, v1}, Ljava/text/AttributedString;->-wrap2(Ljava/text/AttributedString;I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 783
    if-ne p0, p1, :cond_0

    .line 784
    return v4

    .line 786
    :cond_0
    instance-of v1, p1, Ljava/text/AttributedString$AttributedStringIterator;

    if-nez v1, :cond_1

    .line 787
    return v3

    :cond_1
    move-object v0, p1

    .line 790
    check-cast v0, Ljava/text/AttributedString$AttributedStringIterator;

    .line 792
    .local v0, "that":Ljava/text/AttributedString$AttributedStringIterator;
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    invoke-direct {v0}, Ljava/text/AttributedString$AttributedStringIterator;->getString()Ljava/text/AttributedString;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 793
    return v3

    .line 794
    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v1, v2, :cond_4

    .line 795
    :cond_3
    return v3

    .line 794
    :cond_4
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v2, v0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ne v1, v2, :cond_3

    .line 796
    return v4
.end method

.method public first()C
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public getAllAttributeKeys()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-nez v5, :cond_0

    .line 969
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    return-object v5

    .line 971
    :cond_0
    iget-object v6, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    monitor-enter v6

    .line 974
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 975
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    const/4 v1, 0x0

    .line 976
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    if-ge v1, v5, :cond_3

    .line 977
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    aget v5, v5, v1

    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v5, v7, :cond_2

    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v5, v5, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_1

    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v7, v1, 0x1

    aget v5, v5, v7

    iget v7, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v5, v7, :cond_2

    .line 978
    :cond_1
    iget-object v5, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v5, v5, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    aget-object v0, v5, v1

    .line 979
    .local v0, "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-eqz v0, :cond_2

    .line 980
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .local v2, "j":I
    move v3, v2

    .line 981
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    if-lez v3, :cond_2

    .line 982
    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 986
    .end local v0    # "currentRunAttributes":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v6

    .line 988
    return-object v4

    .line 971
    .end local v1    # "i":I
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 993
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 994
    .local v0, "runIndex":I
    if-gez v0, :cond_0

    .line 995
    const/4 v1, 0x0

    return-object v1

    .line 997
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-static {v1, p1, v0, v2, v3}, Ljava/text/AttributedString;->-wrap3(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;III)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 959
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-object v0

    .line 956
    :cond_1
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->runAttributes:[Ljava/util/Vector;

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Ljava/text/AttributedString$AttributeMap;

    iget-object v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/AttributedString$AttributeMap;-><init>(Ljava/text/AttributedString;III)V

    return-object v0
.end method

.method public getBeginIndex()I
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    return v0
.end method

.method public getRunLimit()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v0
.end method

.method public getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 919
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 920
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v3

    .line 922
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    .line 923
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 924
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 925
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v3, :cond_3

    .line 926
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 925
    if-eqz v3, :cond_3

    .line 927
    add-int/lit8 v0, v0, 0x1

    .line 928
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, v3, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v4, v0, 0x1

    aget v1, v3, v4

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 930
    :cond_3
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v3, :cond_4

    .line 931
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 933
    :cond_4
    return v1
.end method

.method public getRunLimit(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 938
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 939
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    return v2

    .line 941
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunLimit:I

    .line 942
    .local v1, "runLimit":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 943
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v1, v2, :cond_3

    .line 944
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    .line 943
    if-eqz v2, :cond_3

    .line 945
    add-int/lit8 v0, v0, 0x1

    .line 946
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v2, v2, Ljava/text/AttributedString;->runCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    add-int/lit8 v3, v0, 0x1

    aget v1, v2, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    goto :goto_0

    .line 948
    :cond_3
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le v1, v2, :cond_4

    .line 949
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    .line 951
    :cond_4
    return v1
.end method

.method public getRunStart()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v0
.end method

.method public getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I
    .locals 5
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;

    .prologue
    .line 878
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v4, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 879
    :cond_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v3

    .line 881
    :cond_1
    invoke-virtual {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v2

    .line 882
    .local v2, "value":Ljava/lang/Object;
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 883
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 884
    .local v0, "runIndex":I
    :goto_0
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v3, :cond_2

    .line 885
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, p1, v4}, Ljava/text/AttributedString;->-wrap4(Ljava/text/AttributedString;Ljava/text/AttributedCharacterIterator$Attribute;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/text/AttributedString;->-wrap1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 884
    if-eqz v3, :cond_2

    .line 886
    add-int/lit8 v0, v0, -0x1

    .line 887
    iget-object v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v3, v3, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v3, v0

    goto :goto_0

    .line 889
    :cond_2
    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v3, :cond_3

    .line 890
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 892
    :cond_3
    return v1
.end method

.method public getRunStart(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 897
    .local p1, "attributes":Ljava/util/Set;, "Ljava/util/Set<+Ljava/text/AttributedCharacterIterator$Attribute;>;"
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 898
    :cond_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    return v2

    .line 900
    :cond_1
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunStart:I

    .line 901
    .local v1, "runStart":I
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    .line 902
    .local v0, "runIndex":I
    :goto_0
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v1, v2, :cond_2

    .line 903
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget v3, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentRunIndex:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v2, p1, v3, v4}, Ljava/text/AttributedString;->-wrap0(Ljava/text/AttributedString;Ljava/util/Set;II)Z

    move-result v2

    .line 902
    if-eqz v2, :cond_2

    .line 904
    add-int/lit8 v0, v0, -0x1

    .line 905
    iget-object v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v2, v2, Ljava/text/AttributedString;->runStarts:[I

    aget v1, v2, v0

    goto :goto_0

    .line 907
    :cond_2
    iget v2, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ge v1, v2, :cond_3

    .line 908
    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    .line 910
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->this$0:Ljava/text/AttributedString;

    iget-object v0, v0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public last()C
    .locals 2

    .prologue
    .line 820
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-ne v0, v1, :cond_0

    .line 821
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 823
    :cond_0
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-ge v0, v1, :cond_0

    .line 837
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 840
    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public previous()C
    .locals 2

    .prologue
    .line 845
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    iget v1, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-le v0, v1, :cond_0

    .line 846
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0

    .line 849
    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 854
    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->beginIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/text/AttributedString$AttributedStringIterator;->endIndex:I

    if-le p1, v0, :cond_1

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1
    invoke-direct {p0, p1}, Ljava/text/AttributedString$AttributedStringIterator;->internalSetIndex(I)C

    move-result v0

    return v0
.end method
