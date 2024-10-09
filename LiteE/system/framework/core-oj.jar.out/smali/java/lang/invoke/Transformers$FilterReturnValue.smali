.class public Ljava/lang/invoke/Transformers$FilterReturnValue;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterReturnValue"
.end annotation


# instance fields
.field private final allArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final filter:Ljava/lang/invoke/MethodHandle;

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 489
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 491
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    .line 492
    iput-object p2, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    .line 494
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FilterReturnValue;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 495
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 8
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 502
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v4

    .line 503
    .local v4, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v4, v5, v6, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 504
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v5, v4}, vtable@3970
    nop

    sget-object p9, Ljava/lang/BootClassLoader;->instance:Ljava/lang/BootClassLoader;

    .line 507
    aget-byte v0, p104, p8

    const-wide v1, 0x430119206e0003L

    .line 508
    .local v3, "returnValueReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .line 509
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 512
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 513
    .local v0, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 514
    .local v1, "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 516
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 517
    .local v2, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_1

    .line 518
    invoke-virtual {v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 539
    :cond_0
    :goto_0
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v5, v0}, vtable@3970
    nop

    sget-object p9, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 540
    if-ne v1, v0, :cond_9

    .line 541
    return-void

    .line 520
    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_2

    .line 521
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_0

    .line 522
    :cond_2
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_3

    .line 523
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_0

    .line 524
    :cond_3
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_4

    .line 525
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    .line 526
    :cond_4
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_5

    .line 527
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    .line 528
    :cond_5
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_6

    .line 529
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    .line 530
    :cond_6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_7

    .line 531
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    .line 532
    :cond_7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_8

    .line 533
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v5

    invoke-virtual {v1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    .line 534
    :cond_8
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_0

    .line 535
    invoke-virtual {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_0
    :cond_9
.end method
