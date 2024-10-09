.class public Ljava/lang/invoke/Transformers$GuardWithTest;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuardWithTest"
.end annotation


# instance fields
.field private final fallback:Ljava/lang/invoke/MethodHandle;

.field private final target:Ljava/lang/invoke/MethodHandle;

.field private final test:Ljava/lang/invoke/MethodHandle;

.field private final testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .locals 3
    .param p1, "test"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "fallback"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 210
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 212
    iput-object p1, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    .line 213
    iput-object p2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->target:Ljava/lang/invoke/MethodHandle;

    .line 214
    iput-object p3, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->fallback:Ljava/lang/invoke/MethodHandle;

    .line 217
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 218
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .locals 4
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 222
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 223
    .local v0, "testFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->testArgsRange:Ldalvik/system/EmulatedStackFrame$Range;

    invoke-virtual {p1, v0, v2, v3, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 227
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->test:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v2, v0}, vtable@3970
    nop

    iget-char p6, v1, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    .line 228
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 229
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->target:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v2, p1}, vtable@3970
    nop

    sget-object p13, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    .line 233
    .line 231
    :cond_0
    iget-object v2, p0, Ljava/lang/invoke/Transformers$GuardWithTest;->fallback:Ljava/lang/invoke/MethodHandle;

    #disallowed odex opcode
    #invoke-super-quick {v2, p1}, vtable@3970
    nop

    #Field index out of bounds: 63784
    #sget-object p13, field@63784
    nop
.end method
