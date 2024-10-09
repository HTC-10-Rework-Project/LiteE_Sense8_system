.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Throwable$PrintStreamOrWriter;,
        Ljava/lang/Throwable$SentinelHolder;,
        Ljava/lang/Throwable$WrappedPrintStream;,
        Ljava/lang/Throwable$WrappedPrintWriter;
    }
.end annotation


# static fields
.field private static final CAUSE_CAPTION:Ljava/lang/String; = "Caused by: "

.field private static EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable; = null

.field private static final NULL_CAUSE_MESSAGE:Ljava/lang/String; = "Cannot suppress a null exception."

.field private static final SELF_SUPPRESSION_MESSAGE:Ljava/lang/String; = "Self-suppression not permitted"

.field private static final SUPPRESSED_CAPTION:Ljava/lang/String; = "Suppressed: "

.field private static final serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private volatile transient backtrace:Ljava/lang/Object;

.field private cause:Ljava/lang/Throwable;

.field private detailMessage:Ljava/lang/String;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 243
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 258
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 259
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 280
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 281
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 283
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 352
    if-eqz p4, :cond_1

    .line 353
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 357
    :goto_0
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 359
    if-nez p3, :cond_0

    .line 360
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 361
    :cond_0
    return-void

    .line 355
    :cond_1
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 208
    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 303
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 304
    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 305
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 306
    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized getOurStackTrace()[Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    if-eq v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 820
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 826
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_2

    .line 827
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 830
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native nativeFillInStackTrace()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;
    .param p2, "enclosingTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable$PrintStreamOrWriter;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    move-object/from16 v0, p5

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 679
    .local v3, "trace":[Ljava/lang/StackTraceElement;
    array-length v2, v3

    add-int/lit8 v12, v2, -0x1

    .line 680
    .local v12, "m":I
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v13, v2, -0x1

    .line 681
    .local v13, "n":I
    :goto_1
    if-ltz v12, :cond_2

    if-ltz v13, :cond_2

    aget-object v2, v3, v12

    aget-object v5, p2, v13

    invoke-virtual {v2, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 684
    :cond_2
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    sub-int v10, v2, v12

    .line 687
    .local v10, "framesInCommon":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 688
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-gt v11, v12, :cond_3

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\tat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v3, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 690
    :cond_3
    if-eqz v10, :cond_4

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\t... "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " more"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 694
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    const/4 v2, 0x0

    array-length v9, v8

    move v7, v2

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v1, v8, v7

    .line 695
    .local v1, "se":Ljava/lang/Throwable;
    const-string/jumbo v4, "Suppressed: "

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object/from16 v6, p5

    .line 695
    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 694
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    .line 699
    .end local v1    # "se":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 700
    .local v4, "ourCause":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    .line 701
    const-string/jumbo v7, "Caused by: "

    move-object v5, p1

    move-object v6, v3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method private printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .locals 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;

    .prologue
    const/4 v1, 0x0

    .line 643
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    .line 644
    .local v5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v5, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {p1}, Ljava/lang/Throwable$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 648
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 649
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 650
    .local v2, "trace":[Ljava/lang/StackTraceElement;
    array-length v4, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v12, v2, v3

    .line 651
    .local v12, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\tat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    .end local v12    # "traceElement":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    array-length v9, v8

    move v7, v1

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 655
    .local v0, "se":Ljava/lang/Throwable;
    const-string/jumbo v3, "Suppressed: "

    const-string/jumbo v4, "\t"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 654
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    .line 658
    .end local v0    # "se":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 659
    .local v6, "ourCause":Ljava/lang/Throwable;
    if-eqz v6, :cond_2

    .line 660
    const-string/jumbo v9, "Caused by: "

    const-string/jumbo v10, ""

    move-object v7, p1

    move-object v8, v2

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v13

    .line 662
    return-void

    .line 646
    .end local v2    # "trace":[Ljava/lang/StackTraceElement;
    .end local v6    # "ourCause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 907
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 908
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 912
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 925
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    iput-object v1, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 937
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-eqz v5, :cond_9

    .line 938
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-nez v5, :cond_6

    .line 956
    :cond_2
    :goto_0
    return-void

    .line 914
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 915
    .local v1, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v5, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 918
    .local v2, "t":Ljava/lang/Throwable;
    if-nez v2, :cond_4

    .line 919
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Cannot suppress a null exception."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 920
    :cond_4
    if-ne v2, p0, :cond_5

    .line 921
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Self-suppression not permitted"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 922
    :cond_5
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    .end local v1    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "t$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v5, v5

    if-ne v5, v6, :cond_7

    .line 941
    sget-object v5, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    iget-object v6, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 939
    if-eqz v5, :cond_7

    .line 942
    iput-object v7, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0

    .line 944
    :cond_7
    iget-object v5, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v6, v5

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 945
    .local v0, "ste":Ljava/lang/StackTraceElement;
    if-nez v0, :cond_8

    .line 946
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null StackTraceElement in serial stream. "

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 944
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 954
    .end local v0    # "ste":Ljava/lang/StackTraceElement;
    :cond_9
    new-array v4, v4, [Ljava/lang/StackTraceElement;

    iput-object v4, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 971
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    .line 973
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 975
    .local v0, "oldStackTrace":[Ljava/lang/StackTraceElement;
    :try_start_1
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v1, :cond_0

    .line 976
    sget-object v1, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 977
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    :try_start_2
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 981
    return-void

    .line 978
    :catchall_0
    move-exception v1

    .line 979
    :try_start_3
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 978
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "oldStackTrace":[Ljava/lang/StackTraceElement;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized addSuppressed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    .line 1034
    if-ne p1, p0, :cond_0

    .line 1035
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Self-suppression not permitted"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1037
    :cond_0
    if-nez p1, :cond_1

    .line 1038
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot suppress a null exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    .line 1041
    return-void

    .line 1043
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 1046
    :cond_3
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1047
    return-void
.end method

.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 776
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 778
    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final declared-synchronized getSuppressed()[Ljava/lang/Throwable;
    .locals 2

    .prologue
    monitor-enter p0

    .line 1067
    :try_start_0
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sput-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 1071
    :cond_0
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    :cond_1
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1074
    :cond_2
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    sget-object v1, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-eq v0, p0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t overwrite cause with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "a null"

    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 451
    :cond_0
    if-ne p1, p0, :cond_1

    .line 452
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Self-causation not permitted"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 453
    :cond_1
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 454
    return-object p0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 627
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 628
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/Throwable$WrappedPrintStream;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 637
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    .prologue
    .line 713
    new-instance v0, Ljava/lang/Throwable$WrappedPrintWriter;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 714
    return-void
.end method

.method public setStackTrace([Ljava/lang/StackTraceElement;)V
    .locals 5
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 864
    .local v0, "defensiveCopy":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 865
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 866
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stackTrace["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_1
    monitor-enter p0

    .line 870
    :try_start_0
    iget-object v2, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v2, :cond_2

    .line 871
    iget-object v2, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    .line 872
    return-void

    .line 873
    :cond_2
    :try_start_1
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 875
    return-void

    .line 869
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
