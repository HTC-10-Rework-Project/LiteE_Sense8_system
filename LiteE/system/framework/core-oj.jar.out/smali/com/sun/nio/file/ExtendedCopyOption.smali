.class public final enum Lcom/sun/nio/file/ExtendedCopyOption;
.super Ljava/lang/Enum;
.source "ExtendedCopyOption.java"

# interfaces
.implements Ljava/nio/file/CopyOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/nio/file/ExtendedCopyOption;",
        ">;",
        "Ljava/nio/file/CopyOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/nio/file/ExtendedCopyOption;

.field public static final enum INTERRUPTIBLE:Lcom/sun/nio/file/ExtendedCopyOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/sun/nio/file/ExtendedCopyOption;

    const-string/jumbo v1, "INTERRUPTIBLE"

    invoke-direct {v0, v1, v2}, Lcom/sun/nio/file/ExtendedCopyOption;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/sun/nio/file/ExtendedCopyOption;->INTERRUPTIBLE:Lcom/sun/nio/file/ExtendedCopyOption;

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/nio/file/ExtendedCopyOption;

    sget-object v1, Lcom/sun/nio/file/ExtendedCopyOption;->INTERRUPTIBLE:Lcom/sun/nio/file/ExtendedCopyOption;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/nio/file/ExtendedCopyOption;->$VALUES:[Lcom/sun/nio/file/ExtendedCopyOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/nio/file/ExtendedCopyOption;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/sun/nio/file/ExtendedCopyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/nio/file/ExtendedCopyOption;

    return-object v0
.end method

.method public static values()[Lcom/sun/nio/file/ExtendedCopyOption;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sun/nio/file/ExtendedCopyOption;->$VALUES:[Lcom/sun/nio/file/ExtendedCopyOption;

    return-object v0
.end method
