.class public Ljava/util/jar/JarException;
.super Ljava/util/zip/ZipException;
.source "JarException.java"


# static fields
.field private static final serialVersionUID:J = 0x635ca48583f88729L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/zip/ZipException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
