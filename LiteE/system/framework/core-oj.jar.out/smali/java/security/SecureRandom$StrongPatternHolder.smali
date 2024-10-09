.class final Ljava/security/SecureRandom$StrongPatternHolder;
.super Ljava/lang/Object;
.source "SecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/SecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StrongPatternHolder"
.end annotation


# static fields
.field private static pattern:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -get0()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Ljava/security/SecureRandom$StrongPatternHolder;->pattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 669
    const-string/jumbo v0, "\\s*([\\S&&[^:,]]*)(\\:([\\S&&[^,]]*))?\\s*(\\,(.*))?"

    .line 668
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 667
    sput-object v0, Ljava/security/SecureRandom$StrongPatternHolder;->pattern:Ljava/util/regex/Pattern;

    .line 655
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
