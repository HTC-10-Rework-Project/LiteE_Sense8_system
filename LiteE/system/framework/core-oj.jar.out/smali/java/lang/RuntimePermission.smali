.class public final Ljava/lang/RuntimePermission;
.super Ljava/security/BasicPermission;
.source "RuntimePermission.java"


# static fields
.field private static final serialVersionUID:J = 0x66af2f85d3b9d84fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
