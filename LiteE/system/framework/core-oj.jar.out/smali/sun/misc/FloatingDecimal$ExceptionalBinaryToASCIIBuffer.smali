.class Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionalBinaryToASCIIBuffer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final image:Ljava/lang/String;

.field private isNegative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->-assertionsDisabled:Z

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "isNegative"    # Z

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    .line 195
    iput-boolean p2, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->isNegative:Z

    .line 196
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/Appendable;

    .prologue
    .line 205
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 206
    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "buf":Ljava/lang/Appendable;
    iget-object v0, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    .restart local p1    # "buf":Ljava/lang/Appendable;
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 208
    check-cast p1, Ljava/lang/StringBuffer;

    .end local p1    # "buf":Ljava/lang/Appendable;
    iget-object v0, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 210
    .restart local p1    # "buf":Ljava/lang/Appendable;
    :cond_2
    sget-boolean v0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public decimalDigitsExact()Z
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exceptional value is not exact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public digitsRoundedUp()Z
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exceptional value is not rounded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDecimalExponent()I
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exceptional value does not have an exponent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigits([C)I
    .locals 2
    .param p1, "digits"    # [C

    .prologue
    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exceptional value does not have digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isExceptional()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public isNegative()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->isNegative:Z

    return v0
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lsun/misc/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    return-object v0
.end method
