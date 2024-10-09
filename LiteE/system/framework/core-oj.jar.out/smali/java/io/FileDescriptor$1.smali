.class final Ljava/io/FileDescriptor$1;
.super Ljava/lang/Object;
.source "FileDescriptor.java"

# interfaces
.implements Lsun/misc/JavaIOFileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Ljava/io/FileDescriptor;)I
    .locals 1
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 181
    invoke-static {p1}, Ljava/io/FileDescriptor;->-get0(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getHandle(Ljava/io/FileDescriptor;)J
    .locals 1
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/io/FileDescriptor;I)V
    .locals 0
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "fd"    # I

    .prologue
    .line 177
    invoke-static {p1, p2}, Ljava/io/FileDescriptor;->-set0(Ljava/io/FileDescriptor;I)I

    .line 178
    return-void
.end method

.method public setHandle(Ljava/io/FileDescriptor;J)V
    .locals 1
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "handle"    # J

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
