.class public final Ljava/util/regex/Matcher;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/regex/Matcher$OffsetBasedMatchResult;
    }
.end annotation


# static fields
.field private static final registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private address:J

.field private anchoringBounds:Z

.field private appendPos:I

.field private input:Ljava/lang/String;

.field private matchFound:Z

.field private matchOffsets:[I

.field private nativeFinalizer:Ljava/lang/Runnable;

.field private pattern:Ljava/util/regex/Pattern;

.field private regionEnd:I

.field private regionStart:I

.field private transparentBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 123
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 124
    const-class v1, Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/util/regex/Matcher;->getNativeFinalizer()J

    move-result-wide v2

    invoke-static {}, Ljava/util/regex/Matcher;->nativeSize()I

    move-result v4

    int-to-long v4, v4

    .line 123
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    .line 106
    return-void
.end method

.method constructor <init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/regex/Pattern;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 173
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 174
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 175
    return-void
.end method

.method private appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    .line 648
    const/4 v2, 0x0

    .line 649
    .local v2, "escape":Z
    const/4 v1, 0x0

    .line 650
    .local v1, "dollar":Z
    const/4 v3, 0x0

    .line 651
    .local v3, "escapeNamedGroup":Z
    const/4 v4, -0x1

    .line 653
    .local v4, "escapeNamedGroupStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 654
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 655
    .local v0, "c":C
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_1

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_1

    .line 656
    const/4 v2, 0x1

    .line 653
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 657
    :cond_1
    const/16 v7, 0x24

    if-ne v0, v7, :cond_2

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_2

    .line 658
    const/4 v1, 0x1

    goto :goto_1

    .line 659
    :cond_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_3

    const/16 v7, 0x39

    if-gt v0, v7, :cond_3

    if-eqz v1, :cond_3

    .line 660
    add-int/lit8 v7, v0, -0x30

    invoke-virtual {p0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const/4 v1, 0x0

    goto :goto_1

    .line 662
    :cond_3
    const/16 v7, 0x7b

    if-ne v0, v7, :cond_4

    if-eqz v1, :cond_4

    .line 663
    const/4 v3, 0x1

    .line 664
    move v4, v5

    goto :goto_1

    .line 665
    :cond_4
    if-ne v0, v8, :cond_5

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 667
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, "namedGroupName":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    const/4 v1, 0x0

    .line 670
    const/4 v3, 0x0

    goto :goto_1

    .line 671
    .end local v6    # "namedGroupName":Ljava/lang/String;
    :cond_5
    if-eq v0, v8, :cond_6

    if-eqz v1, :cond_6

    if-nez v3, :cond_0

    .line 674
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 675
    const/4 v1, 0x0

    .line 676
    const/4 v2, 0x0

    .line 677
    const/4 v3, 0x0

    goto :goto_1

    .line 681
    .end local v0    # "c":C
    :cond_7
    if-eqz v3, :cond_8

    .line 682
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Missing ending brace \'}\' from replacement string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 685
    :cond_8
    if-eqz v2, :cond_9

    .line 686
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v7

    .line 688
    :cond_9
    return-void
.end method

.method private ensureMatch()V
    .locals 2

    .prologue
    .line 1100
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No successful match so far"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_0
    return-void
.end method

.method private static native findImpl(JI[I)Z
.end method

.method private static native findNextImpl(J[I)Z
.end method

.method private static getMatchedGroupIndex(JLjava/lang/String;)I
    .locals 4
    .param p0, "patternAddr"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1175
    invoke-static {p0, p1, p2}, Ljava/util/regex/Matcher;->getMatchedGroupIndex0(JLjava/lang/String;)I

    move-result v0

    .line 1176
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 1177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No capturing group in the pattern with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_0
    return v0
.end method

.method private static native getMatchedGroupIndex0(JLjava/lang/String;)I
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native groupCountImpl(J)I
.end method

.method private static native hitEndImpl(J)Z
.end method

.method private static native lookingAtImpl(J[I)Z
.end method

.method private static native matchesImpl(J[I)Z
.end method

.method private static native nativeSize()I
.end method

.method private static native openImpl(J)J
.end method

.method public static quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x24

    const/4 v5, -0x1

    const/16 v4, 0x5c

    .line 540
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 541
    return-object p0

    .line 542
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 544
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 545
    .local v0, "c":C
    if-eq v0, v4, :cond_1

    if-ne v0, v6, :cond_2

    .line 546
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static native requireEndImpl(J)Z
.end method

.method private reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 1065
    if-nez p1, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 1070
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1069
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_1

    .line 1073
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    .line 1074
    iput p2, p0, Ljava/util/regex/Matcher;->regionStart:I

    .line 1075
    iput p3, p0, Ljava/util/regex/Matcher;->regionEnd:I

    .line 1076
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 1078
    iput-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 1079
    iput v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 1081
    return-object p0
.end method

.method private resetForInput()V
    .locals 5

    .prologue
    .line 1085
    monitor-enter p0

    .line 1086
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v3, p0, Ljava/util/regex/Matcher;->regionStart:I

    iget v4, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/regex/Matcher;->setInputImpl(JLjava/lang/String;II)V

    .line 1087
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V

    .line 1088
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-boolean v2, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1090
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native setInputImpl(JLjava/lang/String;II)V
.end method

.method private static native useAnchoringBoundsImpl(JZ)V
.end method

.method private static native useTransparentBoundsImpl(JZ)V
.end method


# virtual methods
.method public appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    invoke-direct {p0, p1, p2}, Ljava/util/regex/Matcher;->appendEvaluated(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    .line 636
    return-object p0
.end method

.method public appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 706
    iget v0, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v1, p0, Ljava/util/regex/Matcher;->regionEnd:I

    if-ge v0, v1, :cond_0

    .line 707
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget v1, p0, Ljava/util/regex/Matcher;->appendPos:I

    iget v2, p0, Ljava/util/regex/Matcher;->regionEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    :cond_0
    return-object p1
.end method

.method public end()I
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 280
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public end(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 306
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    iget-object v1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v2, v1, Ljava/util/regex/Pattern;->address:J

    invoke-static {v2, v3, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public find()Z
    .locals 3

    .prologue
    .line 468
    monitor-enter p0

    .line 469
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->findNextImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 471
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public find(I)Z
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 493
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_1
    monitor-enter p0

    .line 498
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/regex/Matcher;->findImpl(JI[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 500
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public group()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .locals 5
    .param p1, "group"    # I

    .prologue
    const/4 v4, -0x1

    .line 369
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 370
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    aget v0, v2, v3

    .line 371
    .local v0, "from":I
    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v1, v2, v3

    .line 372
    .local v1, "to":I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 373
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 375
    :cond_1
    iget-object v2, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public group(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 407
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 408
    iget-object v3, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v4, v3, Ljava/util/regex/Pattern;->address:J

    invoke-static {v4, v5, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    .line 409
    .local v1, "group":I
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v4, v1, 0x2

    aget v0, v3, v4

    .line 410
    .local v0, "from":I
    iget-object v3, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v2, v3, v4

    .line 411
    .local v2, "to":I
    if-eq v0, v6, :cond_0

    if-ne v2, v6, :cond_1

    .line 412
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 414
    :cond_1
    iget-object v3, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public groupCount()I
    .locals 2

    .prologue
    .line 431
    monitor-enter p0

    .line 432
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->groupCountImpl(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasAnchoringBounds()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    return v0
.end method

.method public hasTransparentBounds()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    return v0
.end method

.method public hitEnd()Z
    .locals 2

    .prologue
    .line 990
    monitor-enter p0

    .line 991
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->hitEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lookingAt()Z
    .locals 3

    .prologue
    .line 518
    monitor-enter p0

    .line 519
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->lookingAtImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 521
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public matches()Z
    .locals 3

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-static {v0, v1, v2}, Ljava/util/regex/Matcher;->matchesImpl(J[I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 449
    iget-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    return v0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public region(II)Ljava/util/regex/Matcher;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 823
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public regionEnd()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Ljava/util/regex/Matcher;->regionEnd:I

    return v0
.end method

.method public regionStart()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Ljava/util/regex/Matcher;->regionStart:I

    return v0
.end method

.method public replaceAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 748
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 749
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "replacement"    # Ljava/lang/String;

    .prologue
    .line 789
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 791
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p0, v0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 794
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public requireEnd()Z
    .locals 2

    .prologue
    .line 1011
    monitor-enter p0

    .line 1012
    :try_start_0
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->requireEndImpl(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()Ljava/util/regex/Matcher;
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 1045
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;II)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 1115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .locals 2
    .param p1, "group"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1144
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public start(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1170
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 1171
    iget-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    iget-object v1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v2, v1, Ljava/util/regex/Pattern;->address:J

    invoke-static {v2, v3, p1}, Ljava/util/regex/Matcher;->getMatchedGroupIndex(JLjava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public toMatchResult()Ljava/util/regex/MatchResult;
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/util/regex/Matcher;->ensureMatch()V

    .line 196
    new-instance v0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;

    iget-object v1, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    iget-object v2, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    invoke-direct {v0, v1, v2}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "java.util.regex.Matcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    const-string/jumbo v1, "[pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 968
    const-string/jumbo v1, " region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    const-string/jumbo v1, " lastmatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-boolean v1, p0, Ljava/util/regex/Matcher;->matchFound:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 972
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :cond_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useAnchoringBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 949
    monitor-enter p0

    .line 950
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->anchoringBounds:Z

    .line 951
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useAnchoringBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 953
    return-object p0

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    .locals 4
    .param p1, "newPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newPattern == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iput-object p1, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;

    .line 228
    :cond_1
    iget-object v0, p0, Ljava/util/regex/Matcher;->pattern:Ljava/util/regex/Pattern;

    iget-wide v0, v0, Ljava/util/regex/Pattern;->address:J

    invoke-static {v0, v1}, Ljava/util/regex/Matcher;->openImpl(J)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    .line 229
    sget-object v0, Ljava/util/regex/Matcher;->registry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Ljava/util/regex/Matcher;->address:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/regex/Matcher;->nativeFinalizer:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 232
    iget-object v0, p0, Ljava/util/regex/Matcher;->input:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 233
    invoke-direct {p0}, Ljava/util/regex/Matcher;->resetForInput()V

    .line 236
    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher;->matchOffsets:[I

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/regex/Matcher;->matchFound:Z

    .line 238
    return-object p0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public useTransparentBounds(Z)Ljava/util/regex/Matcher;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 900
    monitor-enter p0

    .line 901
    :try_start_0
    iput-boolean p1, p0, Ljava/util/regex/Matcher;->transparentBounds:Z

    .line 902
    iget-wide v0, p0, Ljava/util/regex/Matcher;->address:J

    invoke-static {v0, v1, p1}, Ljava/util/regex/Matcher;->useTransparentBoundsImpl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 904
    return-object p0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
