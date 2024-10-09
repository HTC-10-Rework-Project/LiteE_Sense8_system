.class public Ljava/lang/invoke/Transformers$CatchException;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatchException"
.end annotation


# instance fields
.field private final exType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final handler:Ljava/lang/invoke/MethodHandle;

.field private final handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/Class;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "handler"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/invoke/MethodHandle;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "exType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 158
    iput-object p1, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    .line 159
    iput-object p2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    .line 160
    iput-object p3, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    .line 165
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 165
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 167
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 5
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 172
    :try_start_0
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v2, p1}, vtable@3970
    nop

    sget-object p12, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljava/lang/invoke/Transformers$CatchException;->exType:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 177
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 180
    .local v0, "fallback":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {v0, v4, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 185
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handlerArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 186
    const/4 v3, 0x1

    .line 185
    invoke-virtual {p1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 189
    iget-object v2, p0, Ljava/lang/invoke/Transformers$CatchException;->handler:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v2, v0}, vtable@3970
    nop

    sget-object p12, Ljava/util/stream/AbstractShortCircuitTask;->leftChild:Ljava/util/stream/AbstractTask;

    .line 190
    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 193
    .end local v0    # "fallback":Ldalvik/system/EmulatedStackFrame;
    :cond_0
    throw v1
    :cond_1
.end method
