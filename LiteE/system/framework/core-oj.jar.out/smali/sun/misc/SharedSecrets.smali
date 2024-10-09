.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V
    .locals 0
    .param p0, "jiofda"    # Lsun/misc/JavaIOFileDescriptorAccess;

    .prologue
    .line 41
    sput-object p0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 42
    return-void
.end method
