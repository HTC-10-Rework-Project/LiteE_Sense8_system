.class public Ljava/nio/file/ProviderMismatchException;
.super Ljava/lang/IllegalArgumentException;
.source "ProviderMismatchException.java"


# static fields
.field static final serialVersionUID:J = 0x45430d587bc7bdf2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
