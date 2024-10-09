.class Ljava/lang/invoke/Transformers$Spreader;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spreader"
.end annotation


# instance fields
.field private final arrayOffset:I

.field private final arrayTypeChar:C

.field private final copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final numArrayArgs:I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V
    .locals 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "spreaderType"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArrayArgs"    # I

    .prologue
    .line 1066
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1067
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    .line 1070
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    .line 1073
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1074
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1075
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Trailing argument must be an array."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1077
    :cond_0
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    iput-char v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    .line 1079
    iput p3, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    .line 1081
    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1082
    return-void
.end method

.method public static spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [B
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1200
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1201
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1202
    add-int v4, v2, p4

    aget-object v0, v3, v4

    .line 1203
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-byte v1, p0, v2

    .line 1204
    .local v1, "b":B
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1212
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1205
    :sswitch_0
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1201
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1206
    :sswitch_1
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    .line 1207
    :sswitch_2
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1208
    :sswitch_3
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1

    .line 1209
    :sswitch_4
    int-to-short v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    .line 1210
    :sswitch_5
    int-to-float v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1211
    :sswitch_6
    int-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1215
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "b":B
    :cond_0
    return-void

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_4
    .end sparse-switch
.end method

.method public static spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [C
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1239
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1240
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1241
    add-int v4, v2, p4

    aget-object v0, v3, v4

    .line 1242
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-char v1, p0, v2

    .line 1243
    .local v1, "c":C
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1250
    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1244
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1240
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    :pswitch_2
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    .line 1246
    :pswitch_3
    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1247
    :pswitch_4
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    .line 1248
    :pswitch_5
    int-to-float v4, v1

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1249
    :pswitch_6
    int-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1253
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "c":C
    :cond_0
    return-void

    .line 1243
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1273
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1274
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1275
    add-int v5, v1, p4

    aget-object v0, v4, v5

    .line 1276
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-wide v2, p0, v1

    .line 1277
    .local v2, "d":D
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1280
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1278
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1, v5, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1274
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1279
    :sswitch_1
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1283
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "d":D
    :cond_0
    return-void

    .line 1277
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [F
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1287
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1288
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1289
    add-int v4, v2, p4

    aget-object v0, v3, v4

    .line 1290
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget v1, p0, v2

    .line 1291
    .local v1, "f":F
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1295
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1292
    :sswitch_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1288
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1293
    :sswitch_1
    float-to-double v4, v1

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1294
    :sswitch_2
    invoke-virtual {p1, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1298
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "f":F
    :cond_0
    return-void

    .line 1291
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x46 -> :sswitch_2
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public static spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [I
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1166
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1167
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1168
    add-int v4, v1, p4

    aget-object v0, v3, v4

    .line 1169
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget v2, p0, v1

    .line 1170
    .local v2, "j":I
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1176
    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1171
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1167
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    :pswitch_2
    invoke-virtual {p1, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    .line 1173
    :pswitch_3
    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1174
    :pswitch_4
    int-to-float v4, v2

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1175
    :pswitch_5
    int-to-double v4, v2

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1179
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "j":I
    :cond_0
    return-void

    .line 1170
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 8
    .param p0, "array"    # [J
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1183
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1184
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1185
    add-int v5, v1, p4

    aget-object v0, v4, v5

    .line 1186
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-wide v2, p0, v1

    .line 1187
    .local v2, "l":J
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1192
    :pswitch_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1188
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1184
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    :pswitch_2
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1190
    :pswitch_3
    long-to-float v5, v2

    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1191
    :pswitch_4
    long-to-double v6, v2

    invoke-virtual {p1, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1195
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "l":J
    :cond_0
    return-void

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1146
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1147
    .local v3, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1148
    add-int v4, v1, p4

    aget-object v0, v3, v4

    .line 1149
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v2, p0, v1

    .line 1150
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1147
    .end local v2    # "o":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_0
    invoke-virtual {p1, v2, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 1152
    :sswitch_1
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    .line 1153
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_2
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1154
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_3
    check-cast v2, Ljava/lang/Byte;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_1

    .line 1155
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_4
    check-cast v2, Ljava/lang/Short;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    .line 1156
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_5
    check-cast v2, Ljava/lang/Character;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_1

    .line 1157
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_6
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_1

    .line 1158
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_7
    check-cast v2, Ljava/lang/Float;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1159
    .restart local v2    # "o":Ljava/lang/Object;
    :sswitch_8
    check-cast v2, Ljava/lang/Double;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1162
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void

    .line 1150
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

.method public static spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 6
    .param p0, "array"    # [S
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1220
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1221
    .local v2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1222
    add-int v4, v1, p4

    aget-object v0, v2, v4

    .line 1223
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-short v3, p0, v1

    .line 1224
    .local v3, "s":S
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1231
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1225
    :sswitch_0
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1221
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    :sswitch_1
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_1

    .line 1227
    :sswitch_2
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_1

    .line 1228
    :sswitch_3
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_1

    .line 1229
    :sswitch_4
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_1

    .line 1230
    :sswitch_5
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_1

    .line 1234
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "s":S
    :cond_0
    return-void

    .line 1224
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_3
    .end sparse-switch
.end method

.method public static spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .locals 5
    .param p0, "array"    # [Z
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1258
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1259
    .local v2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1260
    add-int v4, v1, p4

    aget-object v0, v2, v4

    .line 1261
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-boolean v3, p0, v1

    .line 1262
    .local v3, "z":Z
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1265
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1263
    :sswitch_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    :sswitch_1
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_1

    .line 1268
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "z":Z
    :cond_0
    return-void

    .line 1262
    nop

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 8
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1087
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 1090
    .local v2, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v2, v5, v6, v6}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1094
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1096
    .local v4, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    .line 1097
    iget-object v6, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v6, v6, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    .line 1098
    iget-object v7, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v7, v7, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    .line 1095
    invoke-virtual {v4, v2, v5, v6, v7}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1102
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v5, v5, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Spreader;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v6, v6, v7

    .line 1101
    invoke-virtual {p1, v5, v6}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1103
    .local v1, "arrayObj":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1104
    .local v0, "arrayLength":I
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    if-eq v0, v5, :cond_0

    .line 1105
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid array length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1108
    :cond_0
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 1109
    .local v3, "type":Ljava/lang/invoke/MethodType;
    iget-char v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    sparse-switch v5, :sswitch_data_0

    .line 1140
    .end local v1    # "arrayObj":Ljava/lang/Object;
    :goto_0
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v5, v2}, vtable@3970
    nop

    sget-object p9, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 1141
    if-ne v1, v0, :cond_1

    .line 1142
    return-void

    .line 1111
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_0
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1114
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_1
    check-cast v1, [I

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1117
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_2
    check-cast v1, [J

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1120
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_3
    check-cast v1, [B

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1123
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_4
    check-cast v1, [S

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1126
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_5
    check-cast v1, [C

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1129
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_6
    check-cast v1, [Z

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1132
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_7
    check-cast v1, [F

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1135
    .restart local v1    # "arrayObj":Ljava/lang/Object;
    :sswitch_8
    check-cast v1, [D

    .end local v1    # "arrayObj":Ljava/lang/Object;
    iget v5, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_0

    .line 1109
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
    :cond_1
.end method
