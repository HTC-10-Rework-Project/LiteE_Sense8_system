.class public Ljava/lang/reflect/GenericSignatureFormatError;
.super Ljava/lang/ClassFormatError;
.source "GenericSignatureFormatError.java"


# static fields
.field private static final serialVersionUID:J = 0x5d1e6be9e4bf48faL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/ClassFormatError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
