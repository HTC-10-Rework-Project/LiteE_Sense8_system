.class public final enum Ljava/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/time/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/time/format/ResolverStyle;

.field public static final enum LENIENT:Ljava/time/format/ResolverStyle;

.field public static final enum SMART:Ljava/time/format/ResolverStyle;

.field public static final enum STRICT:Ljava/time/format/ResolverStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string/jumbo v1, "STRICT"

    invoke-direct {v0, v1, v2}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v0, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 91
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string/jumbo v1, "SMART"

    invoke-direct {v0, v1, v3}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    .line 103
    sput-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    .line 104
    new-instance v0, Ljava/time/format/ResolverStyle;

    const-string/jumbo v1, "LENIENT"

    invoke-direct {v0, v1, v4}, Ljava/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    .line 114
    sput-object v0, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/time/format/ResolverStyle;

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    aput-object v1, v0, v4

    sput-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/time/format/ResolverStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Ljava/time/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public static values()[Ljava/time/format/ResolverStyle;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ljava/time/format/ResolverStyle;->$VALUES:[Ljava/time/format/ResolverStyle;

    return-object v0
.end method
