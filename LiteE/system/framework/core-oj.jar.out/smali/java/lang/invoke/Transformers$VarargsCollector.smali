.class Ljava/lang/invoke/Transformers$VarargsCollector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VarargsCollector"
.end annotation


# instance fields
.field final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 644
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;I)V

    .line 645
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->lastParameterTypeIsAnArray([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target does not have array as last parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iput-object p1, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    .line 649
    return-void
.end method

.method private static arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z
    .locals 3
    .param p1, "arityStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 712
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    .line 713
    aget-object v1, p0, p1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    aget-object v1, p0, p1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 717
    return v2

    .line 721
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 722
    aget-object v1, p0, v0

    invoke-static {v1, p2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 723
    const/4 v1, 0x0

    return v1

    .line 721
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_2
    return v2
.end method

.method private static booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [Z

    .line 831
    .local v1, "arityArray":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 832
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 833
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 836
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 831
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    :pswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v3

    aput-boolean v3, v1, v2

    goto :goto_1

    .line 840
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method private static byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [B

    .line 788
    .local v1, "arityArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 789
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 790
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 792
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 788
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    :pswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput-byte v3, v1, v2

    goto :goto_1

    .line 795
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method private static charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [C

    .line 815
    .local v1, "arityArray":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 816
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 817
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 820
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v1, v2

    .line 815
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :pswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v3

    aput-char v3, v1, v2

    goto :goto_1

    .line 825
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public static collectArguments(CLjava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 3
    .param p0, "basicComponentType"    # C
    .param p2, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p4, "startIdx"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class",
            "<*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 919
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sparse-switch p0, :sswitch_data_0

    .line 930
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :sswitch_0
    invoke-static {p2, p3, p1, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 921
    :sswitch_1
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 922
    :sswitch_2
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 923
    :sswitch_3
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 924
    :sswitch_4
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 925
    :sswitch_5
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 926
    :sswitch_6
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 927
    :sswitch_7
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 928
    :sswitch_8
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 919
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method private static copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .locals 3
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p2, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 945
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :sswitch_0
    invoke-virtual {p0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 947
    :goto_0
    return-void

    .line 937
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_0

    .line 938
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_0

    .line 939
    :sswitch_3
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_0

    .line 940
    :sswitch_4
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_0

    .line 941
    :sswitch_5
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_0

    .line 942
    :sswitch_6
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_0

    .line 943
    :sswitch_7
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_0

    .line 944
    :sswitch_8
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_0

    .line 935
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method private static doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [D

    .line 866
    .local v1, "arityArray":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 867
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 868
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 876
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 866
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :sswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v4

    aput-wide v4, v1, v2

    goto :goto_1

    .line 870
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    float-to-double v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 871
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, v1, v2

    goto :goto_1

    .line 872
    :sswitch_3
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-double v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 873
    :sswitch_4
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-double v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 874
    :sswitch_5
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-double v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 881
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 868
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_5
        0x44 -> :sswitch_0
        0x46 -> :sswitch_1
        0x49 -> :sswitch_3
        0x4a -> :sswitch_2
        0x53 -> :sswitch_4
    .end sparse-switch
.end method

.method private static floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [F

    .line 846
    .local v1, "arityArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 847
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 848
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 855
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 846
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 849
    :sswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 850
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    long-to-float v3, v4

    aput v3, v1, v2

    goto :goto_1

    .line 851
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    goto :goto_1

    .line 852
    :sswitch_3
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    goto :goto_1

    .line 853
    :sswitch_4
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    goto :goto_1

    .line 860
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x46 -> :sswitch_0
        0x49 -> :sswitch_2
        0x4a -> :sswitch_1
        0x53 -> :sswitch_3
    .end sparse-switch
.end method

.method private static intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [I

    .line 754
    .local v1, "arityArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 755
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 756
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 761
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 754
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 757
    :sswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 758
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 759
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput v3, v1, v2

    goto :goto_1

    .line 766
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x49 -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method private static lastParameterTypeIsAnArray([Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 652
    array-length v0, p0

    if-nez v0, :cond_0

    return v1

    .line 653
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method private static longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [J

    .line 772
    .local v1, "arityArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 773
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 774
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 779
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 772
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 775
    :sswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    aput-wide v4, v1, v2

    goto :goto_1

    .line 776
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 777
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 778
    :sswitch_3
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v1, v2

    goto :goto_1

    .line 782
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x49 -> :sswitch_1
        0x4a -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method private static makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "callerFrameType"    # Ljava/lang/invoke/MethodType;
    .param p1, "callerFrameReader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "indexOfArityArray"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "I",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 888
    .local p3, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    sub-int v0, v4, p2

    .line 889
    .local v0, "arityArrayLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 890
    .local v3, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 892
    .local v1, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v3}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v2

    .line 893
    .local v2, "elementBasicType":C
    sparse-switch v2, :sswitch_data_0

    .line 913
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 894
    :sswitch_0
    invoke-static {p1, v1, v3, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 896
    :sswitch_1
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 898
    :sswitch_2
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 900
    :sswitch_3
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 902
    :sswitch_4
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 904
    :sswitch_5
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 906
    :sswitch_6
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 908
    :sswitch_7
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 910
    :sswitch_8
    invoke-static {p1, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 893
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method private static makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .locals 5
    .param p0, "callerType"    # Ljava/lang/invoke/MethodType;
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v4, 0x0

    .line 982
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v1, v2

    .line 983
    .local v1, "ptypesLength":I
    new-array v0, v1, [Ljava/lang/Class;

    .line 985
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    .line 989
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method private static prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .locals 9
    .param p0, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p1, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .prologue
    .line 951
    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 952
    .local v7, "targetWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v7, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 953
    new-instance v2, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 954
    .local v2, "callerReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v2, p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 957
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 958
    .local v6, "targetMethodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v4, v8, -0x1

    .line 959
    .local v4, "indexOfArityArray":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 960
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v5, v8, v3

    .line 961
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, v7, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 959
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v1, v8, v4

    .line 966
    .local v1, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v8

    invoke-static {v8, v2, v4, v1}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 968
    .local v0, "arityArray":Ljava/lang/Object;
    invoke-virtual {v7, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 969
    return-void
.end method

.method private static referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 732
    .local v1, "arityArray":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 733
    add-int v4, v2, p3

    aget-object v0, p1, v4

    .line 734
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 735
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 746
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 736
    .restart local v3    # "o":Ljava/lang/Object;
    :sswitch_0
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 737
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 738
    :sswitch_2
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    .line 739
    :sswitch_3
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    goto :goto_1

    .line 740
    :sswitch_4
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_1

    .line 741
    :sswitch_5
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_1

    .line 742
    :sswitch_6
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 743
    :sswitch_7
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    .line 744
    :sswitch_8
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1

    .line 748
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 735
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method private static shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class",
            "<*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v1, p3, [S

    .line 801
    .local v1, "arityArray":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 802
    add-int v3, v2, p2

    aget-object v0, p1, v3

    .line 803
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 806
    invoke-virtual {p0, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v1, v2

    .line 801
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 804
    :sswitch_0
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput-short v3, v1, v2

    goto :goto_1

    .line 805
    :sswitch_1
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    goto :goto_1

    .line 809
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1

    .line 803
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method private static throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .locals 3
    .param p0, "from"    # Ljava/lang/invoke/MethodType;
    .param p1, "to"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 707
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asFixedArity()Ljava/lang/invoke/MethodHandle;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public isVarargsCollector()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x1

    return v0
.end method

.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 9
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 665
    .local v0, "callerFrameType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 666
    .local v1, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    .line 668
    .local v6, "targetPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v6

    add-int/lit8 v3, v7, -0x1

    .line 669
    .local v3, "lastTargetIndex":I
    array-length v7, v1

    array-length v8, v6

    if-ne v7, v8, :cond_0

    .line 670
    aget-object v7, v6, v3

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    .line 669
    if-eqz v7, :cond_0

    .line 674
    iget-object v7, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v7, p1}, vtable@3970
    nop

    sget-object p8, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 675
    .line 678
    :cond_0
    array-length v7, v1

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_1

    .line 680
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 683
    :cond_1
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 685
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 688
    :cond_2
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 689
    .local v2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v3, v2}, Ljava/lang/invoke/Transformers$VarargsCollector;->arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 691
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 695
    :cond_3
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 696
    .local v5, "targetFrameType":Ljava/lang/invoke/MethodType;
    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v4

    .line 697
    .local v4, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-static {p1, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 700
    iget-object v7, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v7, v4}, vtable@3970
    nop

    sget-object p8, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 703
    if-ne v1, v0, :cond_4

    .line 704
    return-void
    :cond_4
.end method
