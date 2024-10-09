.class public final Ljava/net/HttpCookie;
.super Ljava/lang/Object;
.source "HttpCookie.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/HttpCookie$10;,
        Ljava/net/HttpCookie$11;,
        Ljava/net/HttpCookie$1;,
        Ljava/net/HttpCookie$2;,
        Ljava/net/HttpCookie$3;,
        Ljava/net/HttpCookie$4;,
        Ljava/net/HttpCookie$5;,
        Ljava/net/HttpCookie$6;,
        Ljava/net/HttpCookie$7;,
        Ljava/net/HttpCookie$8;,
        Ljava/net/HttpCookie$9;,
        Ljava/net/HttpCookie$CookieAttributeAssignor;
    }
.end annotation


# static fields
.field static final GMT:Ljava/util/TimeZone;

.field private static final MAX_AGE_UNSPECIFIED:J = -0x1L

.field private static final RESERVED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_COOKIE:Ljava/lang/String; = "set-cookie:"

.field private static final SET_COOKIE2:Ljava/lang/String; = "set-cookie2:"

.field static final assignors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/HttpCookie$CookieAttributeAssignor;",
            ">;"
        }
    .end annotation
.end field

.field private static final tspecials:Ljava/lang/String; = ",;= \t"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentURL:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field public final header:Ljava/lang/String;

.field private httpOnly:Z

.field private maxAge:J

.field private final name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private portlist:Ljava/lang/String;

.field private secure:Z

.field private toDiscard:Z

.field private value:Ljava/lang/String;

.field private version:I

.field private final whenCreated:J


# direct methods
.method static synthetic -get0(Ljava/net/HttpCookie;)J
    .locals 2
    .param p0, "-this"    # Ljava/net/HttpCookie;

    .prologue
    iget-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    .line 70
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "commenturl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "discard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "domain"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "expires"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "httponly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "max-age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "secure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    const-string/jumbo v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 912
    sput-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    .line 915
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "comment"

    new-instance v2, Ljava/net/HttpCookie$1;

    invoke-direct {v2}, Ljava/net/HttpCookie$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "commenturl"

    new-instance v2, Ljava/net/HttpCookie$2;

    invoke-direct {v2}, Ljava/net/HttpCookie$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "discard"

    new-instance v2, Ljava/net/HttpCookie$3;

    invoke-direct {v2}, Ljava/net/HttpCookie$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "domain"

    new-instance v2, Ljava/net/HttpCookie$4;

    invoke-direct {v2}, Ljava/net/HttpCookie$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "max-age"

    new-instance v2, Ljava/net/HttpCookie$5;

    invoke-direct {v2}, Ljava/net/HttpCookie$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "path"

    new-instance v2, Ljava/net/HttpCookie$6;

    invoke-direct {v2}, Ljava/net/HttpCookie$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "port"

    new-instance v2, Ljava/net/HttpCookie$7;

    invoke-direct {v2}, Ljava/net/HttpCookie$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "secure"

    new-instance v2, Ljava/net/HttpCookie$8;

    invoke-direct {v2}, Ljava/net/HttpCookie$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "httponly"

    new-instance v2, Ljava/net/HttpCookie$9;

    invoke-direct {v2}, Ljava/net/HttpCookie$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "version"

    new-instance v2, Ljava/net/HttpCookie$10;

    invoke-direct {v2}, Ljava/net/HttpCookie$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    const-string/jumbo v1, "expires"

    new-instance v2, Ljava/net/HttpCookie$11;

    invoke-direct {v2}, Ljava/net/HttpCookie$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljava/net/HttpCookie;->GMT:Ljava/util/TimeZone;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Ljava/net/HttpCookie;->version:I

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/net/HttpCookie;->isToken(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal cookie name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iput-object p1, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 181
    iput-boolean v2, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 182
    iput-boolean v2, p0, Ljava/net/HttpCookie;->secure:Z

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/HttpCookie;->whenCreated:J

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private static assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "cookie"    # Ljava/net/HttpCookie;
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "attrValue"    # Ljava/lang/String;

    .prologue
    .line 1031
    invoke-static {p2}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1033
    sget-object v1, Ljava/net/HttpCookie;->assignors:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie$CookieAttributeAssignor;

    .line 1034
    .local v0, "assignor":Ljava/net/HttpCookie$CookieAttributeAssignor;
    if-eqz v0, :cond_0

    .line 1035
    invoke-interface {v0, p0, p1, p2}, Ljava/net/HttpCookie$CookieAttributeAssignor;->assign(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public static domainMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/16 v11, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 670
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 671
    :cond_0
    return v8

    .line 674
    :cond_1
    const-string/jumbo v9, ".local"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 675
    .local v5, "isLocalDomain":Z
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 676
    .local v3, "embeddedDotInDomain":I
    if-nez v3, :cond_2

    .line 677
    invoke-virtual {p0, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 678
    :cond_2
    if-nez v5, :cond_4

    .line 679
    if-eq v3, v12, :cond_3

    .line 680
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_4

    .line 681
    :cond_3
    return v8

    .line 685
    :cond_4
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 686
    .local v4, "firstDotInHost":I
    if-ne v4, v12, :cond_6

    .line 687
    if-nez v5, :cond_5

    .line 688
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".local"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 686
    if-eqz v9, :cond_6

    .line 689
    :cond_5
    return v7

    .line 692
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 693
    .local v2, "domainLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v6, v9, v2

    .line 694
    .local v6, "lengthDiff":I
    if-nez v6, :cond_7

    .line 696
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    return v7

    .line 698
    :cond_7
    if-lez v6, :cond_b

    .line 700
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "H":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "D":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v8, "."

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {p0, v7}, Ljava/net/HttpCookie;->isFullyQualifiedDomainName(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_9

    .end local v5    # "isLocalDomain":Z
    :cond_8
    :goto_0
    return v5

    .restart local v5    # "isLocalDomain":Z
    :cond_9
    move v5, v7

    goto :goto_0

    :cond_a
    move v5, v8

    goto :goto_0

    .line 709
    .end local v0    # "D":Ljava/lang/String;
    .end local v1    # "H":Ljava/lang/String;
    :cond_b
    if-ne v6, v12, :cond_d

    .line 711
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_c

    .line 712
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 711
    :cond_c
    return v8

    .line 715
    :cond_d
    return v8
.end method

.method private static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 1153
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1154
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1155
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1157
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static guessCookieVersion(Ljava/lang/String;)I
    .locals 3
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1120
    const/4 v0, 0x0

    .line 1122
    .local v0, "version":I
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1123
    const-string/jumbo v1, "expires="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1125
    const/4 v0, 0x0

    .line 1137
    :cond_0
    :goto_0
    return v0

    .line 1126
    :cond_1
    const-string/jumbo v1, "version="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1128
    const/4 v0, 0x1

    goto :goto_0

    .line 1129
    :cond_2
    const-string/jumbo v1, "max-age"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1131
    const/4 v0, 0x1

    goto :goto_0

    .line 1132
    :cond_3
    const-string/jumbo v1, "set-cookie2:"

    invoke-static {p0, v1}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private header()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    return-object v0
.end method

.method private static isFullyQualifiedDomainName(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "firstCharacter"    # I

    .prologue
    const/4 v1, 0x0

    .line 720
    const/16 v2, 0x2e

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 721
    .local v0, "dotPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isToken(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 825
    sget-object v3, Ljava/net/HttpCookie;->RESERVED_NAMES:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    return v5

    .line 830
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 832
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 833
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 835
    .local v0, "c":C
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_2

    .line 836
    :cond_1
    return v5

    .line 835
    :cond_2
    const-string/jumbo v3, ",;= \t"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 832
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 220
    invoke-static {p0}, Ljava/net/HttpCookie;->guessCookieVersion(Ljava/lang/String;)I

    move-result v5

    .line 223
    .local v5, "version":I
    const-string/jumbo v6, "set-cookie2:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    const-string/jumbo v6, "set-cookie2:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 229
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v4, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    if-nez v5, :cond_3

    .line 235
    invoke-static {p0, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    .line 236
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0, v7}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 237
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    :cond_1
    return-object v4

    .line 225
    .end local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_2
    const-string/jumbo v6, "set-cookie:"

    invoke-static {p0, v6}, Ljava/net/HttpCookie;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    const-string/jumbo v6, "set-cookie:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 242
    .restart local v4    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :cond_3
    invoke-static {p0}, Ljava/net/HttpCookie;->splitMultiCookies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 243
    .local v3, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cookieStr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "cookieStr":Ljava/lang/String;
    invoke-static {v1, p1}, Ljava/net/HttpCookie;->parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;

    move-result-object v0

    .line 245
    .restart local v0    # "cookie":Ljava/net/HttpCookie;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 246
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static parseInternal(Ljava/lang/String;Z)Ljava/net/HttpCookie;
    .locals 11
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "retainHeader"    # Z

    .prologue
    const/16 v10, 0x3d

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "cookie":Ljava/net/HttpCookie;
    const/4 v4, 0x0

    .line 858
    .local v4, "namevaluePair":Ljava/lang/String;
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v7, ";"

    invoke-direct {v5, p0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :try_start_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "namevaluePair":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 865
    .local v2, "index":I
    if-eq v2, v8, :cond_1

    .line 866
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "value":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 869
    new-instance v0, Ljava/net/HttpCookie;

    .line 870
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 869
    invoke-direct {v0, v3, v7, p0}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 885
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 886
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 888
    if-eq v2, v8, :cond_2

    .line 889
    invoke-virtual {v4, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 890
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 897
    :goto_1
    invoke-static {v0, v3, v6}, Ljava/net/HttpCookie;->assignAttribute(Ljava/net/HttpCookie;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 873
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/HttpCookie;

    .line 874
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    invoke-static {v6}, Ljava/net/HttpCookie;->stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 873
    invoke-direct {v0, v3, v7}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cookie":Ljava/net/HttpCookie;
    goto :goto_0

    .line 877
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .local v0, "cookie":Ljava/net/HttpCookie;
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Invalid cookie name-value pair"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 879
    .end local v0    # "cookie":Ljava/net/HttpCookie;
    .end local v2    # "index":I
    .end local v4    # "namevaluePair":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 880
    .local v1, "ignored":Ljava/util/NoSuchElementException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Empty cookie header string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 892
    .end local v1    # "ignored":Ljava/util/NoSuchElementException;
    .local v0, "cookie":Ljava/net/HttpCookie;
    .restart local v2    # "index":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namevaluePair":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 893
    const/4 v6, 0x0

    .local v6, "value":Ljava/lang/String;
    goto :goto_1

    .line 900
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private static splitMultiCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1187
    .local v4, "quoteCount":I
    const/4 v2, 0x0

    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "q":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1188
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1189
    .local v0, "c":C
    const/16 v5, 0x22

    if-ne v0, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1190
    :cond_0
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_1

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_1

    .line 1192
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    add-int/lit8 v3, v2, 0x1

    .line 1187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1197
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    return-object v1
.end method

.method private static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1161
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v2

    .line 1163
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 1164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1163
    if-eqz v0, :cond_2

    .line 1165
    const/4 v0, 0x1

    return v0

    .line 1168
    :cond_2
    return v2
.end method

.method private static stripOffSurroundingQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1141
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 1146
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    .line 1147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1149
    :cond_1
    return-object p0
.end method

.method private toNetscapeHeaderString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toRFC2965HeaderString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1066
    const-string/jumbo v1, ";$Path=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1067
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1068
    const-string/jumbo v1, ";$Domain=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1070
    const-string/jumbo v1, ";$Port=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1072
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 797
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 753
    if-ne p1, p0, :cond_0

    .line 754
    const/4 v1, 0x1

    return v1

    .line 755
    :cond_0
    instance-of v2, p1, Ljava/net/HttpCookie;

    if-nez v2, :cond_1

    .line 756
    return v1

    :cond_1
    move-object v0, p1

    .line 757
    check-cast v0, Ljava/net/HttpCookie;

    .line 763
    .local v0, "other":Ljava/net/HttpCookie;
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 764
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/HttpCookie;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 763
    if-eqz v2, :cond_2

    .line 765
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 763
    :cond_2
    return v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscard()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Ljava/net/HttpCookie;->toDiscard:Z

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()J
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Ljava/net/HttpCookie;->maxAge:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPortlist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Ljava/net/HttpCookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Ljava/net/HttpCookie;->version:I

    return v0
.end method

.method public hasExpired()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v7

    .line 267
    :cond_0
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v6

    .line 269
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljava/net/HttpCookie;->whenCreated:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 270
    .local v0, "deltaSecond":J
    iget-wide v2, p0, Ljava/net/HttpCookie;->maxAge:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 271
    return v7

    .line 273
    :cond_2
    return v6
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 782
    iget-object v3, p0, Ljava/net/HttpCookie;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 783
    .local v0, "h1":I
    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 784
    .local v1, "h2":I
    :goto_0
    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 786
    .local v2, "h3":I
    :goto_1
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3

    .line 783
    .end local v1    # "h2":I
    .end local v2    # "h3":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "h2":I
    goto :goto_0

    .line 784
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "h3":I
    goto :goto_1
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Ljava/net/HttpCookie;->httpOnly:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Ljava/net/HttpCookie;->comment:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Ljava/net/HttpCookie;->commentURL:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setDiscard(Z)V
    .locals 0
    .param p1, "discard"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Ljava/net/HttpCookie;->toDiscard:Z

    .line 341
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 396
    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iput-object p1, p0, Ljava/net/HttpCookie;->domain:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "httpOnly"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Ljava/net/HttpCookie;->httpOnly:Z

    .line 617
    return-void
.end method

.method public setMaxAge(J)V
    .locals 1
    .param p1, "expiry"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Ljava/net/HttpCookie;->maxAge:J

    .line 435
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 468
    iput-object p1, p0, Ljava/net/HttpCookie;->path:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setPortlist(Ljava/lang/String;)V
    .locals 0
    .param p1, "ports"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Ljava/net/HttpCookie;->portlist:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Ljava/net/HttpCookie;->secure:Z

    .line 499
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 540
    iput-object p1, p0, Ljava/net/HttpCookie;->value:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 584
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cookie version should be 0 or 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_0
    iput p1, p0, Ljava/net/HttpCookie;->version:I

    .line 589
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    invoke-virtual {p0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_0

    .line 735
    invoke-direct {p0}, Ljava/net/HttpCookie;->toRFC2965HeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_0
    invoke-direct {p0}, Ljava/net/HttpCookie;->toNetscapeHeaderString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
