.class public Ljava/lang/AssertionError;
.super Ljava/lang/Error;
.source "AssertionError.java"


# static fields
.field private static final serialVersionUID:J = -0x4592d15402bec21aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "detailMessage"    # C

    .prologue
    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "detailMessage"    # D

    .prologue
    .line 148
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "detailMessage"    # F

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "detailMessage"    # I

    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "detailMessage"    # J

    .prologue
    .line 124
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 75
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "detailMessage":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "detailMessage"    # Z

    .prologue
    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method
