.class Lsun/nio/ch/MembershipKeyImpl$Type4;
.super Lsun/nio/ch/MembershipKeyImpl;
.source "MembershipKeyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/MembershipKeyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type4"
.end annotation


# instance fields
.field private final groupAddress:I

.field private final interfAddress:I

.field private final sourceAddress:I


# direct methods
.method constructor <init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;III)V
    .locals 6
    .param p1, "ch"    # Ljava/nio/channels/MulticastChannel;
    .param p2, "group"    # Ljava/net/InetAddress;
    .param p3, "interf"    # Ljava/net/NetworkInterface;
    .param p4, "source"    # Ljava/net/InetAddress;
    .param p5, "groupAddress"    # I
    .param p6, "interfAddress"    # I
    .param p7, "sourceAddress"    # I

    .prologue
    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/MembershipKeyImpl;-><init>(Ljava/nio/channels/MulticastChannel;Ljava/net/InetAddress;Ljava/net/NetworkInterface;Ljava/net/InetAddress;Lsun/nio/ch/MembershipKeyImpl;)V

    .line 83
    iput p5, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress:I

    .line 84
    iput p6, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfAddress:I

    .line 85
    iput p7, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->sourceAddress:I

    .line 86
    return-void
.end method


# virtual methods
.method groupAddress()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->groupAddress:I

    return v0
.end method

.method interfaceAddress()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->interfAddress:I

    return v0
.end method

.method source()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lsun/nio/ch/MembershipKeyImpl$Type4;->sourceAddress:I

    return v0
.end method
