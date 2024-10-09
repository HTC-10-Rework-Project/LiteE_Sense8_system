.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final H_ALPHA:J

.field private static final H_ALPHANUM:J

.field private static final H_DASH:J

.field private static final H_DIGIT:J = 0x0L

.field private static final H_DOT:J

.field private static final H_ESCAPED:J = 0x0L

.field private static final H_HEX:J

.field private static final H_LEFT_BRACKET:J

.field private static final H_LOWALPHA:J

.field private static final H_MARK:J

.field private static final H_PATH:J

.field private static final H_PCHAR:J

.field private static final H_REG_NAME:J

.field private static final H_RESERVED:J

.field private static final H_SCHEME:J

.field private static final H_SERVER:J

.field private static final H_SERVER_PERCENT:J

.field private static final H_UNDERSCORE:J

.field private static final H_UNRESERVED:J

.field private static final H_UPALPHA:J

.field private static final H_URIC:J

.field private static final H_URIC_NO_SLASH:J

.field private static final H_USERINFO:J

.field private static final L_ALPHA:J = 0x0L

.field private static final L_ALPHANUM:J

.field private static final L_DASH:J

.field private static final L_DIGIT:J

.field private static final L_DOT:J

.field private static final L_ESCAPED:J = 0x1L

.field private static final L_HEX:J

.field private static final L_LEFT_BRACKET:J

.field private static final L_LOWALPHA:J = 0x0L

.field private static final L_MARK:J

.field private static final L_PATH:J

.field private static final L_PCHAR:J

.field private static final L_REG_NAME:J

.field private static final L_RESERVED:J

.field private static final L_SCHEME:J

.field private static final L_SERVER:J

.field private static final L_SERVER_PERCENT:J

.field private static final L_UNDERSCORE:J

.field private static final L_UNRESERVED:J

.field private static final L_UPALPHA:J = 0x0L

.field private static final L_URIC:J

.field private static final L_URIC_NO_SLASH:J

.field private static final L_USERINFO:J

.field private static final hexDigits:[C

.field static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient authority:Ljava/lang/String;

.field private volatile transient decodedAuthority:Ljava/lang/String;

.field private volatile transient decodedFragment:Ljava/lang/String;

.field private volatile transient decodedPath:Ljava/lang/String;

.field private volatile transient decodedQuery:Ljava/lang/String;

.field private volatile transient decodedSchemeSpecificPart:Ljava/lang/String;

.field private volatile transient decodedUserInfo:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private volatile transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private volatile transient schemeSpecificPart:Ljava/lang/String;

.field private volatile string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    return-wide v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get10()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get11()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_URIC:J

    return-wide v0
.end method

.method static synthetic -get12()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get13()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    return-wide v0
.end method

.method static synthetic -get14()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DASH:J

    return-wide v0
.end method

.method static synthetic -get15()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    return-wide v0
.end method

.method static synthetic -get16()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_DOT:J

    return-wide v0
.end method

.method static synthetic -get17()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_HEX:J

    return-wide v0
.end method

.method static synthetic -get18()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_PATH:J

    return-wide v0
.end method

.method static synthetic -get19()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get2()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_DASH:J

    return-wide v0
.end method

.method static synthetic -get20()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get21()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    return-wide v0
.end method

.method static synthetic -get22()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -get23()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    return-wide v0
.end method

.method static synthetic -get24()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_URIC:J

    return-wide v0
.end method

.method static synthetic -get25()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    return-wide v0
.end method

.method static synthetic -get3()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_DOT:J

    return-wide v0
.end method

.method static synthetic -get4()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_HEX:J

    return-wide v0
.end method

.method static synthetic -get5()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_PATH:J

    return-wide v0
.end method

.method static synthetic -get6()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_REG_NAME:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SCHEME:J

    return-wide v0
.end method

.method static synthetic -get8()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    return-wide v0
.end method

.method static synthetic -get9()J
    .locals 2

    sget-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    return-wide v0
.end method

.method static synthetic -set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Ljava/net/URI;I)I
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/net/URI;->port:I

    return p1
.end method

.method static synthetic -set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Ljava/net/URI;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(CJJ)Z
    .locals 1
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x41

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const-class v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    .line 2553
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ljava/net/URI;->lowMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DIGIT:J

    .line 2560
    const/16 v0, 0x5a

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UPALPHA:J

    .line 2566
    const/16 v0, 0x7a

    invoke-static {v9, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    .line 2570
    sget-wide v0, Ljava/net/URI;->H_LOWALPHA:J

    sget-wide v2, Ljava/net/URI;->H_UPALPHA:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_ALPHA:J

    .line 2573
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    .line 2574
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    .line 2578
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    sput-wide v0, Ljava/net/URI;->L_HEX:J

    .line 2579
    const/16 v0, 0x46

    invoke-static {v8, v0}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v0

    const/16 v2, 0x66

    invoke-static {v9, v2}, Ljava/net/URI;->highMask(CC)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_HEX:J

    .line 2583
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_MARK:J

    .line 2584
    const-string/jumbo v0, "-_.!~*\'()"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_MARK:J

    .line 2587
    sget-wide v0, Ljava/net/URI;->L_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->L_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    .line 2588
    sget-wide v0, Ljava/net/URI;->H_ALPHANUM:J

    sget-wide v2, Ljava/net/URI;->H_MARK:J

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    .line 2593
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_RESERVED:J

    .line 2594
    const-string/jumbo v0, ";/?:@&=+$,[]"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_RESERVED:J

    .line 2602
    sget-wide v0, Ljava/net/URI;->L_RESERVED:J

    sget-wide v2, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    sput-wide v0, Ljava/net/URI;->L_URIC:J

    .line 2603
    sget-wide v0, Ljava/net/URI;->H_RESERVED:J

    sget-wide v2, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v2

    or-long/2addr v0, v4

    sput-wide v0, Ljava/net/URI;->H_URIC:J

    .line 2608
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2607
    sput-wide v0, Ljava/net/URI;->L_PCHAR:J

    .line 2610
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ":@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2609
    sput-wide v0, Ljava/net/URI;->H_PCHAR:J

    .line 2613
    sget-wide v0, Ljava/net/URI;->L_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_PATH:J

    .line 2614
    sget-wide v0, Ljava/net/URI;->H_PCHAR:J

    const-string/jumbo v2, ";/"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_PATH:J

    .line 2617
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DASH:J

    .line 2618
    const-string/jumbo v0, "-"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DASH:J

    .line 2621
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_UNDERSCORE:J

    .line 2622
    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_UNDERSCORE:J

    .line 2625
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_DOT:J

    .line 2626
    const-string/jumbo v0, "."

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_DOT:J

    .line 2631
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2630
    sput-wide v0, Ljava/net/URI;->L_USERINFO:J

    .line 2633
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";:&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2632
    sput-wide v0, Ljava/net/URI;->H_USERINFO:J

    .line 2638
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2637
    sput-wide v0, Ljava/net/URI;->L_REG_NAME:J

    .line 2640
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "$,;:@&=+"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2639
    sput-wide v0, Ljava/net/URI;->H_REG_NAME:J

    .line 2644
    sget-wide v0, Ljava/net/URI;->L_USERINFO:J

    sget-wide v2, Ljava/net/URI;->L_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->L_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2643
    sput-wide v0, Ljava/net/URI;->L_SERVER:J

    .line 2646
    sget-wide v0, Ljava/net/URI;->H_USERINFO:J

    sget-wide v2, Ljava/net/URI;->H_ALPHANUM:J

    or-long/2addr v0, v2

    sget-wide v2, Ljava/net/URI;->H_DASH:J

    or-long/2addr v0, v2

    const-string/jumbo v2, ".:@[]"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2645
    sput-wide v0, Ljava/net/URI;->H_SERVER:J

    .line 2651
    sget-wide v0, Ljava/net/URI;->L_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2650
    sput-wide v0, Ljava/net/URI;->L_SERVER_PERCENT:J

    .line 2653
    sget-wide v0, Ljava/net/URI;->H_SERVER:J

    const-string/jumbo v2, "%"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2652
    sput-wide v0, Ljava/net/URI;->H_SERVER_PERCENT:J

    .line 2654
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->L_LEFT_BRACKET:J

    .line 2655
    const-string/jumbo v0, "["

    invoke-static {v0}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/net/URI;->H_LEFT_BRACKET:J

    .line 2658
    sget-wide v0, Ljava/net/URI;->L_DIGIT:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->L_SCHEME:J

    .line 2659
    sget-wide v0, Ljava/net/URI;->H_ALPHA:J

    or-long/2addr v0, v4

    const-string/jumbo v2, "+-."

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    sput-wide v0, Ljava/net/URI;->H_SCHEME:J

    .line 2664
    sget-wide v0, Ljava/net/URI;->L_UNRESERVED:J

    or-long/2addr v0, v6

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->lowMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2663
    sput-wide v0, Ljava/net/URI;->L_URIC_NO_SLASH:J

    .line 2666
    sget-wide v0, Ljava/net/URI;->H_UNRESERVED:J

    or-long/2addr v0, v4

    const-string/jumbo v2, ";?:@&=+$,"

    invoke-static {v2}, Ljava/net/URI;->highMask(Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 2665
    sput-wide v0, Ljava/net/URI;->H_URIC_NO_SLASH:J

    .line 2671
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/net/URI;->hexDigits:[C

    .line 459
    return-void

    .line 2671
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-static {v1, v0}, Ljava/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 584
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, p1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 585
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "ssp"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput v6, p0, Ljava/net/URI;->port:I

    .line 493
    iput-object v3, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    iput-object v3, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    iput-object v3, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    iput-object v3, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    iput-object v3, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    iput-object v3, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 813
    new-instance v10, Ljava/net/URI$Parser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, p0, v0}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    .line 816
    const/4 v0, 0x0

    .line 813
    invoke-virtual {v10, v0}, Ljava/net/URI$Parser;->parse(Z)V

    .line 817
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "userInfo"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URI;->port:I

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 665
    const/4 v3, 0x0

    .line 666
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 665
    invoke-direct/range {v1 .. v10}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, "s":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v11, p1, v0}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    new-instance v1, Ljava/net/URI$Parser;

    invoke-direct {v1, p0, v11}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URI$Parser;->parse(Z)V

    .line 670
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 770
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URI;->port:I

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 738
    const/4 v2, 0x0

    .line 739
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 738
    invoke-direct/range {v0 .. v9}, Ljava/net/URI;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 741
    .local v10, "s":Ljava/lang/String;
    invoke-static {v10, p1, p3}, Ljava/net/URI;->checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/net/URI$Parser;

    invoke-direct {v0, p0, v10}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 743
    return-void
.end method

.method private appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userInfo"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    const/16 v9, 0x3a

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 1830
    if-eqz p4, :cond_5

    .line 1831
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1832
    if-eqz p3, :cond_0

    .line 1833
    sget-wide v4, Ljava/net/URI;->L_USERINFO:J

    sget-wide v6, Ljava/net/URI;->H_USERINFO:J

    invoke-static {p3, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1834
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1836
    :cond_0
    invoke-virtual {p4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 1837
    const-string/jumbo v4, "["

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1836
    if-eqz v4, :cond_4

    .line 1838
    const-string/jumbo v4, "]"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    .line 1839
    :goto_0
    if-eqz v3, :cond_1

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1840
    :cond_1
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1841
    if-eqz v3, :cond_2

    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1842
    :cond_2
    if-eq p5, v8, :cond_3

    .line 1843
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1844
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1872
    :cond_3
    :goto_1
    return-void

    .line 1836
    :cond_4
    const/4 v3, 0x0

    .local v3, "needBrackets":Z
    goto :goto_0

    .line 1846
    .end local v3    # "needBrackets":Z
    :cond_5
    if-eqz p2, :cond_3

    .line 1847
    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1848
    const-string/jumbo v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1850
    const-string/jumbo v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1851
    .local v2, "end":I
    move-object v1, p2

    .local v1, "doquote":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 1852
    .local v0, "dontquote":Ljava/lang/String;
    if-eq v2, v8, :cond_6

    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_6

    .line 1854
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 1855
    move-object v0, p2

    .line 1856
    const-string/jumbo v1, ""

    .line 1862
    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1864
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1865
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1863
    invoke-static {v1, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1858
    :cond_7
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1859
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1868
    .end local v0    # "dontquote":Ljava/lang/String;
    .end local v1    # "doquote":Ljava/lang/String;
    .end local v2    # "end":I
    :cond_8
    sget-wide v4, Ljava/net/URI;->L_REG_NAME:J

    sget-wide v6, Ljava/net/URI;->L_SERVER:J

    or-long/2addr v4, v6

    .line 1869
    sget-wide v6, Ljava/net/URI;->H_REG_NAME:J

    sget-wide v8, Ljava/net/URI;->H_SERVER:J

    or-long/2addr v6, v8

    .line 1867
    invoke-static {p2, v4, v5, v6, v7}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static appendEncoded(Ljava/lang/StringBuffer;C)V
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "c"    # C

    .prologue
    .line 2683
    const/4 v1, 0x0

    .line 2685
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 2686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 2685
    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2690
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2691
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 2692
    .local v0, "b":I
    const/16 v3, 0x80

    if-lt v0, v3, :cond_1

    .line 2693
    int-to-byte v3, v0

    invoke-static {p0, v3}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    .line 2687
    .end local v0    # "b":I
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 2688
    .local v2, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v3, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2695
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    :cond_1
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2697
    .end local v0    # "b":I
    :cond_2
    return-void
.end method

.method private static appendEscape(Ljava/lang/StringBuffer;B)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 2677
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2678
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2679
    sget-object v0, Ljava/net/URI;->hexDigits:[C

    shr-int/lit8 v1, p1, 0x0

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2680
    return-void
.end method

.method private appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1916
    if-eqz p2, :cond_0

    .line 1917
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1918
    sget-wide v0, Ljava/net/URI;->L_URIC:J

    sget-wide v2, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v0, v1, v2, v3}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1920
    :cond_0
    return-void
.end method

.method private appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;

    .prologue
    .line 1883
    if-eqz p2, :cond_3

    .line 1887
    const-string/jumbo v2, "//["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1888
    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1889
    .local v10, "end":I
    const/4 v2, -0x1

    if-eq v10, v2, :cond_0

    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1891
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v10, v2, :cond_1

    .line 1892
    move-object v8, p2

    .line 1893
    .local v8, "dontquote":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 1898
    .local v9, "doquote":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1899
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {v9, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_0
    :goto_1
    return-void

    .line 1895
    .restart local v10    # "end":I
    :cond_1
    add-int/lit8 v2, v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1896
    .restart local v8    # "dontquote":Ljava/lang/String;
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "doquote":Ljava/lang/String;
    goto :goto_0

    .line 1902
    .end local v8    # "dontquote":Ljava/lang/String;
    .end local v9    # "doquote":Ljava/lang/String;
    .end local v10    # "end":I
    :cond_2
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    invoke-static {p2, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 1905
    invoke-direct/range {v2 .. v7}, Ljava/net/URI;->appendAuthority(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1906
    if-eqz p7, :cond_4

    .line 1907
    sget-wide v2, Ljava/net/URI;->L_PATH:J

    sget-wide v4, Ljava/net/URI;->H_PATH:J

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1908
    :cond_4
    if-eqz p8, :cond_0

    .line 1909
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1910
    sget-wide v2, Ljava/net/URI;->L_URIC:J

    sget-wide v4, Ljava/net/URI;->H_URIC:J

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3, v4, v5}, Ljava/net/URI;->quote(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static checkPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1816
    if-eqz p1, :cond_0

    .line 1817
    if-eqz p2, :cond_0

    .line 1818
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 1819
    new-instance v0, Ljava/net/URISyntaxException;

    .line 1820
    const-string/jumbo v1, "Relative path in absolute URI"

    .line 1819
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_0
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1776
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1777
    :cond_0
    if-eqz p0, :cond_2

    .line 1778
    if-eqz p1, :cond_1

    .line 1779
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1781
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1783
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private static compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1789
    if-ne p0, p1, :cond_0

    return v5

    .line 1790
    :cond_0
    if-eqz p0, :cond_5

    .line 1791
    if-eqz p1, :cond_4

    .line 1792
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1793
    .local v3, "sn":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1794
    .local v4, "tn":I
    if-ge v3, v4, :cond_1

    move v2, v3

    .line 1795
    .local v2, "n":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1796
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/net/URI;->toLower(C)I

    move-result v6

    sub-int v0, v5, v6

    .line 1797
    .local v0, "c":I
    if-eqz v0, :cond_2

    .line 1798
    return v0

    .line 1794
    .end local v0    # "c":I
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    move v2, v4

    .restart local v2    # "n":I
    goto :goto_0

    .line 1795
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    .end local v0    # "c":I
    :cond_3
    sub-int v5, v3, v4

    return v5

    .line 1802
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "sn":I
    .end local v4    # "tn":I
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 1804
    :cond_5
    const/4 v5, -0x1

    return v5
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 846
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decode(CC)B
    .locals 2
    .param p0, "c1"    # C
    .param p1, "c2"    # C

    .prologue
    .line 2783
    invoke-static {p0}, Ljava/net/URI;->decode(C)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    .line 2784
    invoke-static {p1}, Ljava/net/URI;->decode(C)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x0

    .line 2783
    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static decode(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2772
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2773
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 2774
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 2775
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2776
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 2777
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 2778
    :cond_2
    sget-boolean v0, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2779
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x25

    const/4 v12, 0x0

    .line 2795
    if-nez p0, :cond_0

    .line 2796
    return-object p0

    .line 2797
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 2798
    .local v7, "n":I
    if-nez v7, :cond_1

    .line 2799
    return-object p0

    .line 2800
    :cond_1
    invoke-virtual {p0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_2

    .line 2801
    return-object p0

    .line 2803
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2804
    .local v8, "sb":Ljava/lang/StringBuffer;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2805
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 2806
    .local v3, "cb":Ljava/nio/CharBuffer;
    const-string/jumbo v10, "UTF-8"

    invoke-static {v10}, Lsun/nio/cs/ThreadLocalCoders;->decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2807
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2806
    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v10

    .line 2808
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 2806
    invoke-virtual {v10, v11}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v5

    .line 2811
    .local v5, "dec":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2812
    .local v2, "c":C
    const/4 v1, 0x0

    .line 2814
    .local v1, "betweenBrackets":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_6

    .line 2815
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v2, v10, :cond_3

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2816
    :cond_3
    const/16 v10, 0x5b

    if-ne v2, v10, :cond_7

    .line 2817
    const/4 v1, 0x1

    .line 2821
    :cond_4
    :goto_1
    if-ne v2, v13, :cond_5

    if-eqz v1, :cond_9

    .line 2822
    :cond_5
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2823
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_8

    .line 2849
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 2818
    :cond_7
    if-eqz v1, :cond_4

    const/16 v10, 0x5d

    if-ne v2, v10, :cond_4

    .line 2819
    const/4 v1, 0x0

    goto :goto_1

    .line 2825
    :cond_8
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 2828
    :cond_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 2829
    move v9, v6

    .line 2831
    .local v9, "ui":I
    :cond_a
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_b

    sub-int v10, v7, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_b

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2832
    :cond_b
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v10, v11}, Ljava/net/URI;->decode(CC)B

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2833
    add-int/lit8 v6, v6, 0x1

    if-lt v6, v7, :cond_c

    .line 2839
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2840
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 2841
    invoke-virtual {v5}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 2842
    const/4 v10, 0x1

    invoke-virtual {v5, v0, v3, v10}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2843
    .local v4, "cr":Ljava/nio/charset/CoderResult;
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_d

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_d

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2835
    .end local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_c
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2836
    if-eq v2, v13, :cond_a

    goto :goto_2

    .line 2844
    .restart local v4    # "cr":Ljava/nio/charset/CoderResult;
    :cond_d
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 2845
    sget-boolean v10, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v10, :cond_e

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v10

    if-nez v10, :cond_e

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 2846
    :cond_e
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private defineSchemeSpecificPart()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1945
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 1946
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1947
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 1948
    iget-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget v6, p0, Ljava/net/URI;->port:I

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    .line 1947
    invoke-direct/range {v0 .. v8}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1950
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1951
    return-void
.end method

.method private defineString()V
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 1954
    iget-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v2, :cond_0

    return-void

    .line 1956
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1957
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1958
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1959
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1961
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1962
    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1991
    :cond_2
    :goto_0
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1992
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1993
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1995
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1996
    return-void

    .line 1964
    :cond_4
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1965
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1966
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1967
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1968
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1970
    :cond_5
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a

    .line 1971
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1970
    if-eqz v2, :cond_a

    .line 1972
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    .line 1973
    :goto_1
    if-eqz v0, :cond_6

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1974
    :cond_6
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1975
    if-eqz v0, :cond_7

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1976
    :cond_7
    iget v2, p0, Ljava/net/URI;->port:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 1977
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1978
    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1984
    :cond_8
    :goto_2
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1985
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1986
    :cond_9
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1987
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1988
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1970
    :cond_a
    const/4 v0, 0x0

    .local v0, "needBrackets":Z
    goto :goto_1

    .line 1980
    .end local v0    # "needBrackets":Z
    :cond_b
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1981
    const-string/jumbo v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1982
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x80

    .line 2739
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2740
    .local v3, "n":I
    if-nez v3, :cond_0

    .line 2741
    return-object p0

    .line 2744
    :cond_0
    const/4 v2, 0x0

    .line 2745
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v9, :cond_3

    .line 2751
    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 2752
    .local v4, "ns":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2754
    .local v1, "bb":Ljava/nio/ByteBuffer;
    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {v7}, Lsun/nio/cs/ThreadLocalCoders;->encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    .line 2755
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v8

    .line 2754
    invoke-virtual {v7, v8}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2760
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2761
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2762
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 2763
    .local v0, "b":I
    if-lt v0, v9, :cond_4

    .line 2764
    int-to-byte v7, v0

    invoke-static {v5, v7}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    goto :goto_0

    .line 2747
    .end local v0    # "b":I
    .end local v4    # "ns":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_1

    .line 2748
    return-object p0

    .line 2756
    .restart local v1    # "bb":Ljava/nio/ByteBuffer;
    .restart local v4    # "ns":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2757
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    sget-boolean v7, Ljava/net/URI;->-assertionsDisabled:Z

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 2766
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v6    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "b":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2768
    .end local v0    # "b":I
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x25

    const/4 v6, 0x0

    .line 1694
    if-ne p0, p1, :cond_0

    return v8

    .line 1695
    :cond_0
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 1696
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1697
    return v6

    .line 1698
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 1699
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 1700
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1701
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 1702
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1703
    .local v0, "c":C
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1704
    .local v1, "d":C
    if-eq v0, v7, :cond_4

    .line 1705
    if-eq v0, v1, :cond_3

    .line 1706
    return v6

    .line 1707
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1708
    goto :goto_0

    .line 1710
    :cond_4
    if-eq v1, v7, :cond_5

    .line 1711
    return v6

    .line 1712
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1713
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 1714
    return v6

    .line 1715
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 1716
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toLower(C)I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1717
    return v6

    .line 1718
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1720
    .end local v0    # "c":C
    .end local v1    # "d":C
    :cond_8
    return v8

    .line 1722
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_9
    return v6
.end method

.method private static equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1727
    if-ne p0, p1, :cond_0

    return v5

    .line 1728
    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1729
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1730
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 1731
    return v4

    .line 1732
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1733
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/net/URI;->toLower(C)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/net/URI;->toLower(C)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1734
    return v4

    .line 1732
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1736
    :cond_3
    return v5

    .line 1738
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    return v4
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 2
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1742
    if-nez p1, :cond_0

    return p0

    .line 1743
    :cond_0
    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    .line 1744
    :cond_1
    invoke-static {p0, p1}, Ljava/net/URI;->normalizedHash(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static hashIgnoringCase(ILjava/lang/String;)I
    .locals 5
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1767
    if-nez p1, :cond_0

    return p0

    .line 1768
    :cond_0
    move v0, p0

    .line 1769
    .local v0, "h":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1770
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1771
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/net/URI;->toLower(C)I

    move-result v4

    add-int v0, v3, v4

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    :cond_1
    return v0
.end method

.method private static highMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x7f

    const/16 v6, 0x40

    .line 2529
    const-wide/16 v4, 0x0

    .line 2530
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v3, -0x40

    .line 2531
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v3, -0x40

    .line 2532
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 2533
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2534
    :cond_0
    return-wide v4
.end method

.method private static highMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2505
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2506
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2507
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 2508
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2509
    .local v0, "c":C
    const/16 v5, 0x40

    if-lt v0, v5, :cond_0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_0

    .line 2510
    add-int/lit8 v5, v0, -0x40

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    or-long/2addr v2, v6

    .line 2507
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2512
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static join([C[I)I
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v9, 0x2f

    const/4 v8, 0x0

    .line 2301
    array-length v2, p1

    .line 2302
    .local v2, "ns":I
    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    .line 2303
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2305
    .local v3, "p":I
    aget-char v7, p0, v3

    if-nez v7, :cond_0

    .line 2307
    const/4 v3, 0x1

    aput-char v9, p0, v8

    .line 2310
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 2311
    aget v5, p1, v1

    .line 2312
    .local v5, "q":I
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2310
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2316
    :cond_1
    if-ne v3, v5, :cond_3

    move v4, v3

    .line 2318
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_2

    aget-char v7, p0, v4

    if-eqz v7, :cond_2

    .line 2319
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2320
    :cond_2
    if-gt v4, v0, :cond_8

    .line 2322
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    goto :goto_1

    .line 2324
    :cond_3
    if-ge v3, v5, :cond_5

    :goto_3
    move v6, v5

    .end local v5    # "q":I
    .local v6, "q":I
    move v4, v3

    .line 2326
    .end local v3    # "p":I
    .restart local v4    # "p":I
    if-gt v6, v0, :cond_4

    aget-char v7, p0, v6

    if-eqz v7, :cond_4

    .line 2327
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "q":I
    .restart local v5    # "q":I
    aget-char v7, p0, v6

    aput-char v7, p0, v4

    goto :goto_3

    .line 2328
    .end local v3    # "p":I
    .end local v5    # "q":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_4
    if-gt v6, v0, :cond_7

    .line 2330
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v9, p0, v4

    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    goto :goto_1

    .line 2333
    :cond_5
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7

    .line 2336
    .end local v5    # "q":I
    :cond_6
    return v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    .restart local v6    # "q":I
    :cond_7
    move v5, v6

    .end local v6    # "q":I
    .restart local v5    # "q":I
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .end local v3    # "p":I
    .restart local v4    # "p":I
    :cond_8
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static lowMask(CC)J
    .locals 8
    .param p0, "first"    # C
    .param p1, "last"    # C

    .prologue
    const/16 v7, 0x3f

    const/4 v6, 0x0

    .line 2518
    const-wide/16 v4, 0x0

    .line 2519
    .local v4, "m":J
    invoke-static {p0, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2520
    .local v0, "f":I
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2521
    .local v2, "l":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, v2, :cond_0

    .line 2522
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 2521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2523
    :cond_0
    return-wide v4
.end method

.method private static lowMask(Ljava/lang/String;)J
    .locals 8
    .param p0, "chars"    # Ljava/lang/String;

    .prologue
    .line 2493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 2494
    .local v4, "n":I
    const-wide/16 v2, 0x0

    .line 2495
    .local v2, "m":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 2496
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2497
    .local v0, "c":C
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    .line 2498
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    .line 2495
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2500
    .end local v0    # "c":C
    :cond_1
    return-wide v2
.end method

.method private static match(CJJ)Z
    .locals 9
    .param p0, "c"    # C
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2539
    if-nez p0, :cond_0

    .line 2540
    return v1

    .line 2541
    :cond_0
    const/16 v2, 0x40

    if-ge p0, v2, :cond_2

    .line 2542
    shl-long v2, v6, p0

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2543
    :cond_2
    const/16 v2, 0x80

    if-ge p0, v2, :cond_4

    .line 2544
    add-int/lit8 v2, p0, -0x40

    shl-long v2, v6, v2

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 2545
    :cond_4
    return v1
.end method

.method private static maybeAddLeadingDot([C[I)V
    .locals 6
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/4 v5, 0x0

    .line 2406
    aget-char v3, p0, v5

    if-nez v3, :cond_0

    .line 2408
    return-void

    .line 2410
    :cond_0
    array-length v1, p1

    .line 2411
    .local v1, "ns":I
    const/4 v0, 0x0

    .line 2412
    .local v0, "f":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2413
    aget v3, p1, v0

    if-ltz v3, :cond_3

    .line 2417
    :cond_1
    if-ge v0, v1, :cond_2

    if-nez v0, :cond_4

    .line 2420
    :cond_2
    return-void

    .line 2415
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2422
    :cond_4
    aget v2, p1, v0

    .line 2423
    .local v2, "p":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-char v3, p0, v2

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_5

    aget-char v3, p0, v2

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2424
    :cond_5
    array-length v3, p0

    if-ge v2, v3, :cond_6

    aget-char v3, p0, v2

    if-nez v3, :cond_7

    .line 2426
    :cond_6
    return-void

    .line 2430
    :cond_7
    const/16 v3, 0x2e

    aput-char v3, p0, v5

    .line 2431
    const/4 v3, 0x1

    aput-char v5, p0, v3

    .line 2432
    aput v5, p1, v5

    .line 2433
    return-void
.end method

.method private static needsNormalization(Ljava/lang/String;)I
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0x2f

    .line 2195
    const/4 v1, 0x1

    .line 2196
    .local v1, "normal":Z
    const/4 v2, 0x0

    .line 2197
    .local v2, "ns":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2198
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2201
    .local v3, "p":I
    :goto_0
    if-gt v3, v0, :cond_0

    .line 2202
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_4

    .line 2205
    :cond_0
    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    const/4 v1, 0x0

    .line 2208
    :cond_1
    :goto_1
    if-gt v3, v0, :cond_7

    .line 2211
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 2212
    if-eq v3, v0, :cond_2

    .line 2213
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_2

    .line 2214
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 2215
    add-int/lit8 v5, v3, 0x1

    if-eq v5, v0, :cond_2

    .line 2216
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_3

    .line 2217
    :cond_2
    const/4 v1, 0x0

    .line 2219
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .line 2222
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_2
    if-gt v4, v0, :cond_9

    .line 2223
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_6

    move v4, v3

    .line 2224
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2203
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2229
    :cond_5
    const/4 v1, 0x0

    .line 2230
    add-int/lit8 v3, v3, 0x1

    .line 2227
    :cond_6
    if-gt v3, v0, :cond_1

    .line 2228
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_5

    goto :goto_1

    .line 2237
    :cond_7
    if-eqz v1, :cond_8

    const/4 v2, -0x1

    .end local v2    # "ns":I
    :cond_8
    return v2

    .end local v3    # "p":I
    .restart local v2    # "ns":I
    .restart local v4    # "p":I
    :cond_9
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ps"    # Ljava/lang/String;

    .prologue
    .line 2443
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "ps"    # Ljava/lang/String;
    .param p1, "removeLeading"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2449
    invoke-static {p0}, Ljava/net/URI;->needsNormalization(Ljava/lang/String;)I

    move-result v0

    .line 2450
    .local v0, "ns":I
    if-gez v0, :cond_0

    .line 2452
    return-object p0

    .line 2454
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2457
    .local v1, "path":[C
    new-array v3, v0, [I

    .line 2458
    .local v3, "segs":[I
    invoke-static {v1, v3}, Ljava/net/URI;->split([C[I)V

    .line 2461
    invoke-static {v1, v3, p1}, Ljava/net/URI;->removeDots([C[IZ)V

    .line 2464
    invoke-static {v1, v3}, Ljava/net/URI;->maybeAddLeadingDot([C[I)V

    .line 2467
    new-instance v2, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/net/URI;->join([C[I)I

    move-result v4

    invoke-direct {v2, v1, v5, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2468
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2470
    return-object p0

    .line 2472
    :cond_1
    return-object v2
.end method

.method private static normalize(Ljava/net/URI;)Ljava/net/URI;
    .locals 3
    .param p0, "u"    # Ljava/net/URI;

    .prologue
    .line 2112
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 2113
    :cond_0
    return-object p0

    .line 2112
    :cond_1
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2115
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2116
    .local v0, "np":Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-ne v0, v2, :cond_2

    .line 2117
    return-object p0

    .line 2119
    :cond_2
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 2120
    .local v1, "v":Ljava/net/URI;
    iget-object v2, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2121
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2122
    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2123
    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2124
    iget-object v2, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2125
    iget v2, p0, Ljava/net/URI;->port:I

    iput v2, v1, Ljava/net/URI;->port:I

    .line 2126
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2127
    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v2, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2128
    return-object v1
.end method

.method private static normalizedHash(ILjava/lang/String;)I
    .locals 6
    .param p0, "hash"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1749
    const/4 v1, 0x0

    .line 1750
    .local v1, "h":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1751
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1752
    .local v0, "ch":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 1753
    const/16 v4, 0x25

    if-ne v0, v4, :cond_1

    .line 1757
    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v4, v3, 0x3

    if-ge v2, v4, :cond_0

    .line 1758
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/net/URI;->toUpper(C)I

    move-result v5

    add-int v1, v4, v5

    .line 1757
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1759
    :cond_0
    add-int/lit8 v3, v3, 0x2

    .line 1750
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1762
    .end local v0    # "ch":C
    :cond_2
    mul-int/lit8 v4, p0, 0x7f

    add-int/2addr v4, v1

    return v4
.end method

.method private static quote(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "lowMask"    # J
    .param p3, "highMask"    # J

    .prologue
    const/4 v10, 0x0

    .line 2703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2704
    .local v3, "n":I
    const/4 v4, 0x0

    .line 2705
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x1

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 2706
    .local v0, "allowNonASCII":Z
    :goto_0
    const/4 v2, 0x0

    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 2707
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2708
    .local v1, "c":C
    const/16 v5, 0x80

    if-ge v1, v5, :cond_4

    .line 2709
    invoke-static {v1, p1, p2, p3, p4}, Ljava/net/URI;->match(CJJ)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2710
    if-nez v4, :cond_0

    .line 2711
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2712
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2714
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    int-to-byte v5, v1

    invoke-static {v4, v5}, Ljava/net/URI;->appendEscape(Ljava/lang/StringBuffer;B)V

    .line 2706
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2705
    .end local v0    # "allowNonASCII":Z
    .end local v1    # "c":C
    .end local v2    # "i":I
    .local v4, "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "allowNonASCII":Z
    goto :goto_0

    .line 2716
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    :cond_3
    if-eqz v4, :cond_1

    .line 2717
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2719
    :cond_4
    if-eqz v0, :cond_7

    .line 2720
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2721
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    .line 2719
    if-eqz v5, :cond_7

    .line 2722
    :cond_5
    if-nez v4, :cond_6

    .line 2723
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2724
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2726
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    invoke-static {v4, v1}, Ljava/net/URI;->appendEncoded(Ljava/lang/StringBuffer;C)V

    goto :goto_2

    .line 2728
    :cond_7
    if-eqz v4, :cond_1

    .line 2729
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2732
    .end local v1    # "c":C
    :cond_8
    if-nez v4, :cond_9

    .end local p0    # "s":Ljava/lang/String;
    :goto_3
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    const/4 v2, -0x1

    iput v2, p0, Ljava/net/URI;->port:I

    .line 1656
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1658
    :try_start_0
    new-instance v2, Ljava/net/URI$Parser;

    iget-object v3, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URI$Parser;->parse(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1664
    return-void

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "x":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string/jumbo v2, "Invalid URI"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v1, "y":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1662
    throw v1
.end method

.method private static relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/16 v5, 0x2f

    .line 2139
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2140
    :cond_0
    return-object p1

    .line 2141
    :cond_1
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2142
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 2141
    if-eqz v3, :cond_3

    .line 2143
    :cond_2
    return-object p1

    .line 2145
    :cond_3
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2146
    .local v0, "bp":Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2147
    .local v1, "cp":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2154
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 2155
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2158
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2159
    return-object p1

    .line 2162
    :cond_5
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2}, Ljava/net/URI;-><init>()V

    .line 2163
    .local v2, "v":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2164
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2165
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2166
    return-object v2
.end method

.method private static removeDots([C[IZ)V
    .locals 10
    .param p0, "path"    # [C
    .param p1, "segs"    # [I
    .param p2, "removeLeading"    # Z

    .prologue
    const/16 v9, 0x2e

    const/4 v8, -0x1

    .line 2344
    array-length v4, p1

    .line 2345
    .local v4, "ns":I
    array-length v7, p0

    add-int/lit8 v1, v7, -0x1

    .line 2347
    .local v1, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 2348
    const/4 v0, 0x0

    .line 2352
    .local v0, "dots":I
    :goto_1
    aget v5, p1, v2

    .line 2353
    .local v5, "p":I
    aget-char v7, p0, v5

    if-ne v7, v9, :cond_5

    .line 2354
    if-ne v5, v1, :cond_2

    .line 2355
    const/4 v0, 0x1

    .line 2369
    :cond_0
    :goto_2
    if-gt v2, v4, :cond_1

    if-nez v0, :cond_6

    .line 2398
    .end local v0    # "dots":I
    .end local v5    # "p":I
    :cond_1
    return-void

    .line 2357
    .restart local v0    # "dots":I
    .restart local v5    # "p":I
    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-nez v7, :cond_3

    .line 2358
    const/4 v0, 0x1

    .line 2359
    goto :goto_2

    .line 2360
    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-char v7, p0, v7

    if-ne v7, v9, :cond_5

    .line 2361
    add-int/lit8 v7, v5, 0x1

    if-eq v7, v1, :cond_4

    .line 2362
    add-int/lit8 v7, v5, 0x2

    aget-char v7, p0, v7

    if-nez v7, :cond_5

    .line 2363
    :cond_4
    const/4 v0, 0x2

    .line 2364
    goto :goto_2

    .line 2367
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 2368
    if-ge v2, v4, :cond_0

    goto :goto_1

    .line 2372
    :cond_6
    const/4 v7, 0x1

    if-ne v0, v7, :cond_8

    .line 2374
    aput v8, p1, v2

    .line 2347
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2379
    :cond_8
    add-int/lit8 v3, v2, -0x1

    .local v3, "j":I
    :goto_4
    if-ltz v3, :cond_9

    .line 2380
    aget v7, p1, v3

    if-eq v7, v8, :cond_b

    .line 2382
    :cond_9
    if-ltz v3, :cond_d

    .line 2383
    aget v6, p1, v3

    .line 2384
    .local v6, "q":I
    aget-char v7, p0, v6

    if-ne v7, v9, :cond_a

    .line 2385
    add-int/lit8 v7, v6, 0x1

    aget-char v7, p0, v7

    if-eq v7, v9, :cond_c

    .line 2387
    :cond_a
    :goto_5
    aput v8, p1, v2

    .line 2388
    aput v8, p1, v3

    goto :goto_3

    .line 2379
    .end local v6    # "q":I
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 2386
    .restart local v6    # "q":I
    :cond_c
    add-int/lit8 v7, v6, 0x2

    aget-char v7, p0, v7

    if-eqz v7, :cond_7

    goto :goto_5

    .line 2390
    .end local v6    # "q":I
    :cond_d
    if-eqz p2, :cond_7

    .line 2394
    aput v8, p1, v2

    goto :goto_3
.end method

.method private static resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    .locals 4
    .param p0, "base"    # Ljava/net/URI;
    .param p1, "child"    # Ljava/net/URI;

    .prologue
    const/4 v3, 0x0

    .line 2036
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    :cond_0
    return-object p1

    .line 2040
    :cond_1
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2041
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2040
    if-eqz v1, :cond_3

    .line 2041
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2042
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 2043
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2044
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2043
    if-eqz v1, :cond_2

    .line 2045
    return-object p0

    .line 2047
    :cond_2
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2048
    .local v0, "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2049
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2050
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2051
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2052
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2053
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2054
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2055
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2056
    return-object v0

    .line 2060
    .end local v0    # "ru":Ljava/net/URI;
    :cond_3
    iget-object v1, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2061
    return-object p1

    .line 2063
    :cond_4
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 2064
    .restart local v0    # "ru":Ljava/net/URI;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 2065
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2066
    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 2069
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 2070
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2071
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2072
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2073
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2075
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2082
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 2083
    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p1, Ljava/net/URI;->query:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 2105
    :goto_1
    return-object v0

    .line 2083
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    goto :goto_0

    .line 2084
    :cond_7
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_8

    .line 2090
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    .line 2093
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/net/URI;->resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1

    .line 2096
    :cond_9
    iget-object v1, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 2097
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2098
    iget-object v1, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 2099
    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 2100
    iget v1, p1, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 2101
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    goto :goto_1
.end method

.method private static resolvePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "child"    # Ljava/lang/String;
    .param p2, "absolute"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2005
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2006
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2007
    .local v0, "cn":I
    const-string/jumbo v3, ""

    .line 2009
    .local v3, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2011
    if-ltz v1, :cond_0

    .line 2012
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2024
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 2029
    .local v2, "np":Ljava/lang/String;
    return-object v2

    .line 2014
    .end local v2    # "np":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2016
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-ltz v1, :cond_2

    .line 2017
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2019
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2020
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static split([C[I)V
    .locals 8
    .param p0, "path"    # [C
    .param p1, "segs"    # [I

    .prologue
    const/16 v7, 0x2f

    const/4 v6, 0x0

    .line 2252
    array-length v5, p0

    add-int/lit8 v0, v5, -0x1

    .line 2253
    .local v0, "end":I
    const/4 v3, 0x0

    .line 2254
    .local v3, "p":I
    const/4 v1, 0x0

    .line 2257
    .local v1, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 2258
    aget-char v5, p0, v3

    if-eq v5, v7, :cond_0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v4, v3

    .line 2263
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_1
    if-gt v4, v0, :cond_5

    .line 2266
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput v4, p1, v2

    move v4, v3

    .line 2269
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_2
    if-gt v4, v0, :cond_7

    .line 2270
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_1

    move v4, v3

    .line 2271
    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_2

    .line 2259
    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_0
    aput-char v6, p0, v3

    .line 2260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2272
    :cond_1
    add-int/lit8 v5, v3, -0x1

    aput-char v6, p0, v5

    move v4, v3

    .line 2275
    .end local v3    # "p":I
    .restart local v4    # "p":I
    :goto_3
    if-gt v4, v0, :cond_2

    .line 2276
    aget-char v5, p0, v4

    if-eq v5, v7, :cond_4

    :cond_2
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    :cond_3
    :goto_4
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 2277
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aput-char v6, p0, v4

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_3

    .line 2283
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    array-length v5, p1

    if-eq v2, v5, :cond_6

    .line 2284
    new-instance v5, Ljava/lang/InternalError;

    invoke-direct {v5}, Ljava/lang/InternalError;-><init>()V

    throw v5

    .line 2285
    :cond_6
    return-void

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
    goto :goto_4
.end method

.method private static toLower(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1681
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 1682
    add-int/lit8 v0, p0, 0x20

    return v0

    .line 1683
    :cond_0
    return p0
.end method

.method private toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "opaquePart"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "userInfo"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "fragment"    # Ljava/lang/String;

    .prologue
    .line 1932
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1933
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 1934
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1935
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1937
    invoke-direct/range {v1 .. v9}, Ljava/net/URI;->appendSchemeSpecificPart(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1940
    move-object/from16 v0, p9

    invoke-direct {p0, v2, v0}, Ljava/net/URI;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toUpper(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1688
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 1689
    add-int/lit8 v0, p0, -0x20

    return v0

    .line 1690
    :cond_0
    return p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1639
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1640
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1473
    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .locals 3
    .param p1, "that"    # Ljava/net/URI;

    .prologue
    .line 1544
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 1545
    return v0

    .line 1547
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1548
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1550
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1551
    iget-object v2, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1550
    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1552
    return v0

    .line 1553
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1555
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1556
    :cond_3
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1557
    const/4 v1, -0x1

    return v1

    .line 1561
    :cond_4
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1563
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1564
    return v0

    .line 1565
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compareIgnoringCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 1566
    return v0

    .line 1567
    :cond_6
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    if-eqz v0, :cond_8

    .line 1568
    return v0

    .line 1576
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    .line 1579
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    .line 1580
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    .line 1581
    :cond_a
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1410
    if-ne p1, p0, :cond_0

    .line 1411
    return v4

    .line 1412
    :cond_0
    instance-of v1, p1, Ljava/net/URI;

    if-nez v1, :cond_1

    .line 1413
    return v3

    :cond_1
    move-object v0, p1

    .line 1414
    check-cast v0, Ljava/net/URI;

    .line 1415
    .local v0, "that":Ljava/net/URI;
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    invoke-virtual {v0}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    .line 1416
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1417
    :cond_3
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 1420
    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1421
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1424
    :cond_5
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 1425
    :cond_6
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 1428
    :cond_7
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-ne v1, v2, :cond_8

    return v4

    .line 1429
    :cond_8
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1431
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 1432
    :cond_9
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equalIgnoringCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 1433
    :cond_a
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, v0, Ljava/net/URI;->port:I

    if-eq v1, v2, :cond_d

    return v3

    .line 1434
    :cond_b
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 1436
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URI;->equal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 1437
    :cond_c
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eq v1, v2, :cond_d

    .line 1438
    return v3

    .line 1441
    :cond_d
    return v4
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1193
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    .line 1194
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    .line 1366
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    .line 1308
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1277
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    .line 1337
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    invoke-direct {p0}, Ljava/net/URI;->defineSchemeSpecificPart()V

    .line 1144
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1160
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    .line 1161
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedSchemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    .line 1224
    :cond_0
    iget-object v0, p0, Ljava/net/URI;->decodedUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1452
    iget v1, p0, Ljava/net/URI;->hash:I

    if-eqz v1, :cond_0

    .line 1453
    iget v1, p0, Ljava/net/URI;->hash:I

    return v1

    .line 1454
    :cond_0
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1455
    .local v0, "h":I
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1456
    invoke-virtual {p0}, Ljava/net/URI;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1457
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1469
    :goto_0
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1470
    return v0

    .line 1459
    :cond_1
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1460
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1461
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1462
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1463
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hashIgnoringCase(ILjava/lang/String;)I

    move-result v0

    .line 1464
    iget v1, p0, Ljava/net/URI;->port:I

    mul-int/lit16 v1, v1, 0x79d

    add-int/2addr v0, v1

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/net/URI;->hash(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()Ljava/net/URI;
    .locals 1

    .prologue
    .line 953
    invoke-static {p0}, Ljava/net/URI;->normalize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 909
    :cond_0
    return-object p0

    .line 910
    :cond_1
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 911
    new-instance v0, Ljava/net/URI$Parser;

    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/net/URI$Parser;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URI$Parser;->parse(Z)V

    .line 912
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1062
    invoke-static {p0, p1}, Ljava/net/URI;->relativize(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1032
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 1011
    invoke-static {p0, p1}, Ljava/net/URI;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toASCIIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1617
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1618
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    invoke-direct {p0}, Ljava/net/URI;->defineString()V

    .line 1600
    iget-object v0, p0, Ljava/net/URI;->string:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1083
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI is not absolute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
