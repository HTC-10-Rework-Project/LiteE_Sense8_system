.class final Ljava/nio/charset/CoderResult$1;
.super Ljava/nio/charset/CoderResult$Cache;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/nio/charset/CoderResult$Cache;-><init>(Ljava/nio/charset/CoderResult$Cache;)V

    .line 1
    return-void
.end method


# virtual methods
.method public create(I)Ljava/nio/charset/CoderResult;
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 223
    new-instance v0, Ljava/nio/charset/CoderResult;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljava/nio/charset/CoderResult;-><init>(IILjava/nio/charset/CoderResult;)V

    return-object v0
.end method
