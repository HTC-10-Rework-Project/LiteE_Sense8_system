.class public interface abstract Ljava/lang/invoke/MethodHandleInfo;
.super Ljava/lang/Object;
.source "MethodHandleInfo.java"


# static fields
.field public static final REF_getField:I = 0x1

.field public static final REF_getStatic:I = 0x2

.field public static final REF_invokeInterface:I = 0x9

.field public static final REF_invokeSpecial:I = 0x7

.field public static final REF_invokeStatic:I = 0x6

.field public static final REF_invokeVirtual:I = 0x5

.field public static final REF_newInvokeSpecial:I = 0x8

.field public static final REF_putField:I = 0x3

.field public static final REF_putStatic:I = 0x4


# direct methods
.method public static refKindIsField(I)Z
    .locals 1
    .param p0, "refKind"    # I

    .prologue
    .line 295
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refKindIsValid(I)Z
    .locals 3
    .param p0, "refKind"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    if-lt p0, v0, :cond_0

    const/16 v2, 0x9

    if-gt p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static refKindName(I)Ljava/lang/String;
    .locals 1
    .param p0, "refKind"    # I

    .prologue
    .line 301
    packed-switch p0, :pswitch_data_0

    .line 311
    const-string/jumbo v0, "REF_???"

    return-object v0

    .line 302
    :pswitch_0
    const-string/jumbo v0, "getField"

    return-object v0

    .line 303
    :pswitch_1
    const-string/jumbo v0, "getStatic"

    return-object v0

    .line 304
    :pswitch_2
    const-string/jumbo v0, "putField"

    return-object v0

    .line 305
    :pswitch_3
    const-string/jumbo v0, "putStatic"

    return-object v0

    .line 306
    :pswitch_4
    const-string/jumbo v0, "invokeVirtual"

    return-object v0

    .line 307
    :pswitch_5
    const-string/jumbo v0, "invokeStatic"

    return-object v0

    .line 308
    :pswitch_6
    const-string/jumbo v0, "invokeSpecial"

    return-object v0

    .line 309
    :pswitch_7
    const-string/jumbo v0, "newInvokeSpecial"

    return-object v0

    .line 310
    :pswitch_8
    const-string/jumbo v0, "invokeInterface"

    return-object v0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static referenceKindToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "referenceKind"    # I

    .prologue
    .line 247
    invoke-static {p0}, Ljava/lang/invoke/MethodHandleInfo;->refKindIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const-string/jumbo v0, "invalid reference kind"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 249
    :cond_0
    invoke-static {p0}, Ljava/lang/invoke/MethodHandleInfo;->refKindName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/String;
    .locals 4
    .param p0, "kind"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v0, "%s %s.%s:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/invoke/MethodHandleInfo;->referenceKindToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getMethodType()Ljava/lang/invoke/MethodType;
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReferenceKind()I
.end method

.method public isVarArgs()Z
    .locals 2

    .prologue
    .line 227
    invoke-interface {p0}, Ljava/lang/invoke/MethodHandleInfo;->getReferenceKind()I

    move-result v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleInfo;->refKindIsField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    return v1

    .line 230
    :cond_0
    const/16 v0, 0x80

    .line 234
    .local v0, "ACC_VARARGS":I
    invoke-interface {p0}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    return v1
.end method

.method public abstract reflectAs(Ljava/lang/Class;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/Member;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TT;"
        }
    .end annotation
.end method
