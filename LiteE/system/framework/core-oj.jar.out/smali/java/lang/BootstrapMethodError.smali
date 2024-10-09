.class public Ljava/lang/BootstrapMethodError;
.super Ljava/lang/LinkageError;
.source "BootstrapMethodError.java"


# static fields
.field private static final serialVersionUID:J = 0x124L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/LinkageError;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/BootstrapMethodError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
