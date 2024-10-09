.class public final Ljava/util/Locale;
.super Ljava/lang/Object;
.source "Locale.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Locale$Builder;,
        Ljava/util/Locale$Cache;,
        Ljava/util/Locale$Category;,
        Ljava/util/Locale$FilteringMode;,
        Ljava/util/Locale$LanguageRange;,
        Ljava/util/Locale$LocaleKey;,
        Ljava/util/Locale$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-util-Locale$CategorySwitchesValues:[I = null

.field public static final CANADA:Ljava/util/Locale;

.field public static final CANADA_FRENCH:Ljava/util/Locale;

.field public static final CHINA:Ljava/util/Locale;

.field public static final CHINESE:Ljava/util/Locale;

.field private static final DISPLAY_COUNTRY:I = 0x1

.field private static final DISPLAY_LANGUAGE:I = 0x0

.field private static final DISPLAY_SCRIPT:I = 0x3

.field private static final DISPLAY_VARIANT:I = 0x2

.field public static final ENGLISH:Ljava/util/Locale;

.field public static final FRANCE:Ljava/util/Locale;

.field public static final FRENCH:Ljava/util/Locale;

.field public static final GERMAN:Ljava/util/Locale;

.field public static final GERMANY:Ljava/util/Locale;

.field public static final ITALIAN:Ljava/util/Locale;

.field public static final ITALY:Ljava/util/Locale;

.field public static final JAPAN:Ljava/util/Locale;

.field public static final JAPANESE:Ljava/util/Locale;

.field public static final KOREA:Ljava/util/Locale;

.field public static final KOREAN:Ljava/util/Locale;

.field private static final LOCALECACHE:Ljava/util/Locale$Cache;

.field public static final PRC:Ljava/util/Locale;

.field public static final PRIVATE_USE_EXTENSION:C = 'x'

.field public static final ROOT:Ljava/util/Locale;

.field public static final SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field public static final TAIWAN:Ljava/util/Locale;

.field public static final TRADITIONAL_CHINESE:Ljava/util/Locale;

.field public static final UK:Ljava/util/Locale;

.field private static final UNDETERMINED_LANGUAGE:Ljava/lang/String; = "und"

.field public static final UNICODE_LOCALE_EXTENSION:C = 'u'

.field public static final US:Ljava/util/Locale;

.field private static final ZawgyiWhiteList:[Ljava/lang/String;

.field private static volatile defaultDisplayLocale:Ljava/util/Locale; = null

.field private static volatile defaultFormatLocale:Ljava/util/Locale; = null

.field private static volatile isoCountries:[Ljava/lang/String; = null

.field private static volatile isoLanguages:[Ljava/lang/String; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x7ef811609c30f9ecL


# instance fields
.field private transient baseLocale:Lsun/util/locale/BaseLocale;

.field private volatile transient hashCodeValue:I

.field private volatile transient languageTag:Ljava/lang/String;

.field private transient localeExtensions:Lsun/util/locale/LocaleExtensions;


# direct methods
.method static synthetic -get0(Ljava/util/Locale;)Lsun/util/locale/BaseLocale;
    .locals 1
    .param p0, "-this"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale;)Lsun/util/locale/LocaleExtensions;
    .locals 1
    .param p0, "-this"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method private static synthetic -getjava-util-Locale$CategorySwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale$Category;->values()[Ljava/util/Locale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-virtual {v1}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Ljava/util/Locale;->-java-util-Locale$CategorySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    .line 564
    new-instance v0, Ljava/util/Locale$Cache;

    invoke-direct {v0, v4}, Ljava/util/Locale$Cache;-><init>(Ljava/util/Locale$Cache;)V

    sput-object v0, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    .line 568
    const-string/jumbo v0, "en"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 572
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    .line 576
    const-string/jumbo v0, "de"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    .line 580
    const-string/jumbo v0, "it"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    .line 584
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 588
    const-string/jumbo v0, "ko"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    .line 592
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 596
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "CN"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 600
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "TW"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 604
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, "FR"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    .line 608
    const-string/jumbo v0, "de"

    const-string/jumbo v1, "DE"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 612
    const-string/jumbo v0, "it"

    const-string/jumbo v1, "IT"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    .line 616
    const-string/jumbo v0, "ja"

    const-string/jumbo v1, "JP"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    .line 620
    const-string/jumbo v0, "ko"

    const-string/jumbo v1, "KR"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    .line 624
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 628
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    .line 632
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    sput-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 636
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "GB"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 640
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "US"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 644
    const-string/jumbo v0, "en"

    const-string/jumbo v1, "CA"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    .line 648
    const-string/jumbo v0, "fr"

    const-string/jumbo v1, "CA"

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    .line 661
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Ljava/util/Locale;->createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2214
    sput-object v4, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    .line 2215
    sput-object v4, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    .line 2311
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 2312
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "language"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    .line 2313
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "country"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    .line 2314
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "variant"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2315
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "hashcode"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2316
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "script"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2317
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "extensions"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2311
    sput-object v0, Ljava/util/Locale;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 2387
    sput-object v4, Ljava/util/Locale;->isoLanguages:[Ljava/lang/String;

    .line 2389
    sput-object v4, Ljava/util/Locale;->isoCountries:[Ljava/lang/String;

    .line 3448
    new-array v0, v6, [Ljava/lang/String;

    .line 3449
    const-string/jumbo v1, "org.chromium.base"

    aput-object v1, v0, v5

    .line 3448
    sput-object v0, Ljava/util/Locale;->ZawgyiWhiteList:[Ljava/lang/String;

    .line 562
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 728
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 729
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 728
    :cond_1
    if-eqz p3, :cond_0

    .line 731
    invoke-static {p1}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 732
    const-string/jumbo v0, ""

    invoke-static {p1, v0, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 733
    return-void
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 1
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2208
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 697
    iput-object p1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 698
    iput-object p2, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 699
    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V
    .locals 0
    .param p1, "baseLocale"    # Lsun/util/locale/BaseLocale;
    .param p2, "extensions"    # Lsun/util/locale/LocaleExtensions;
    .param p3, "-this2"    # Ljava/util/Locale;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method

.method public static adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 2432
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, "adjusted":Ljava/lang/String;
    const-string/jumbo v1, "he"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2436
    const-string/jumbo v0, "iw"

    .line 2443
    :cond_0
    :goto_0
    return-object v0

    .line 2437
    :cond_1
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2438
    const-string/jumbo v0, "in"

    goto :goto_0

    .line 2439
    :cond_2
    const-string/jumbo v1, "yi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    const-string/jumbo v0, "ji"

    goto :goto_0
.end method

.method private checkPackageName()Z
    .locals 6

    .prologue
    .line 3453
    const/4 v0, 0x4

    .line 3455
    .local v0, "StackLevelBeforegetLanguage":I
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 3456
    .local v3, "traces":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Ljava/util/Locale;->ZawgyiWhiteList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 3457
    const/4 v4, 0x4

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ZawgyiWhiteList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3458
    const/4 v4, 0x1

    return v4

    .line 3456
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3460
    .end local v2    # "i":I
    .end local v3    # "traces":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 3462
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private static composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "format"    # Ljava/text/MessageFormat;
    .param p1, "list"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2270
    array-length v3, p1

    const/4 v4, 0x3

    if-gt v3, v4, :cond_0

    return-object p1

    .line 2273
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    aget-object v3, p1, v5

    aput-object v3, v0, v5

    aget-object v3, p1, v6

    aput-object v3, v0, v6

    .line 2274
    .local v0, "listItems":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2277
    .local v1, "newItem":Ljava/lang/String;
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2278
    .local v2, "newList":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2279
    aput-object v1, v2, v5

    .line 2282
    invoke-static {p0, v2}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 2394
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 2395
    const-string/jumbo v0, "he"

    if-ne p0, v0, :cond_0

    .line 2396
    const-string/jumbo v0, "iw"

    return-object v0

    .line 2397
    :cond_0
    const-string/jumbo v0, "yi"

    if-ne p0, v0, :cond_1

    .line 2398
    const-string/jumbo v0, "ji"

    return-object v0

    .line 2399
    :cond_1
    const-string/jumbo v0, "id"

    if-ne p0, v0, :cond_2

    .line 2400
    const-string/jumbo v0, "in"

    return-object v0

    .line 2402
    :cond_2
    return-object p0
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "lang"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 790
    invoke-static {p0, p1}, Lsun/util/locale/BaseLocale;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 791
    .local v0, "base":Lsun/util/locale/BaseLocale;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static filter(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3359
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .locals 1
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3337
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filter(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterTags(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3406
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    invoke-static {p0, p1, v0}, Ljava/util/Locale;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;
    .locals 1
    .param p2, "mode"    # Ljava/util/Locale$FilteringMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Locale$FilteringMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3384
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2}, Lsun/util/locale/LocaleMatcher;->filterTags(Ljava/util/List;Ljava/util/Collection;Ljava/util/Locale$FilteringMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1653
    invoke-static {p0, v4}, Lsun/util/locale/LanguageTag;->parse(Ljava/lang/String;Lsun/util/locale/ParseStatus;)Lsun/util/locale/LanguageTag;

    move-result-object v3

    .line 1654
    .local v3, "tag":Lsun/util/locale/LanguageTag;
    new-instance v1, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 1655
    .local v1, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v1, v3}, Lsun/util/locale/InternalLocaleBuilder;->setLanguageTag(Lsun/util/locale/LanguageTag;)Lsun/util/locale/InternalLocaleBuilder;

    .line 1656
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getBaseLocale()Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 1657
    .local v0, "base":Lsun/util/locale/BaseLocale;
    invoke-virtual {v1}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1658
    .local v2, "exts":Lsun/util/locale/LocaleExtensions;
    if-nez v2, :cond_0

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1659
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v5

    .line 1660
    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1659
    invoke-static {v4, v5, v6, v7}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    .line 1662
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v4

    return-object v4
.end method

.method private static formatList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stringList"    # [Ljava/lang/String;
    .param p1, "listPattern"    # Ljava/lang/String;
    .param p2, "listCompositionPattern"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2233
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 2234
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2235
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 2236
    if-lez v2, :cond_1

    .line 2237
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2239
    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2241
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2245
    .end local v2    # "i":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_3
    array-length v4, p0

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 2246
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2247
    .local v1, "format":Ljava/text/MessageFormat;
    invoke-static {v1, p0}, Ljava/util/Locale;->composeList(Ljava/text/MessageFormat;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2251
    .end local v1    # "format":Ljava/text/MessageFormat;
    :cond_4
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 2252
    .local v0, "args":[Ljava/lang/Object;
    array-length v4, p0

    const/4 v5, 0x1

    invoke-static {p0, v6, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    new-instance v4, Ljava/lang/Integer;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v0, v6

    .line 2256
    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 2257
    .restart local v1    # "format":Ljava/text/MessageFormat;
    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1092
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 2410
    const/4 v0, 0x0

    .line 2412
    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    const-string/jumbo v1, "ja"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2413
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2414
    const-string/jumbo v1, "jp"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2412
    if-eqz v1, :cond_1

    .line 2415
    const-string/jumbo v1, "JP"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2412
    if-eqz v1, :cond_1

    .line 2417
    sget-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    .line 2425
    .end local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_0
    :goto_0
    return-object v0

    .line 2418
    .restart local v0    # "extensions":Lsun/util/locale/LocaleExtensions;
    :cond_1
    const-string/jumbo v1, "th"

    invoke-static {p0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2420
    const-string/jumbo v1, "th"

    invoke-static {p2, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2418
    if-eqz v1, :cond_0

    .line 2421
    const-string/jumbo v1, "TH"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2418
    if-eqz v1, :cond_0

    .line 2423
    sget-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .local v0, "extensions":Lsun/util/locale/LocaleExtensions;
    goto :goto_0
.end method

.method public static getDefault()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 898
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 2
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 919
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 939
    sget-boolean v0, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Unknown Category"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 921
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 922
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 923
    :try_start_0
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 924
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 928
    :cond_1
    sget-object v0, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;

    return-object v0

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 930
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_3

    .line 931
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 932
    :try_start_1
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    if-nez v0, :cond_2

    .line 933
    invoke-static {p0}, Ljava/util/Locale;->initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v1

    .line 937
    :cond_3
    sget-object v0, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;

    return-object v0

    .line 931
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 941
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getISOCountries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Llibcore/icu/ICU;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getISOLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    invoke-static {}, Llibcore/icu/ICU;->getISOLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 809
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .param p4, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 814
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 815
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 814
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 818
    if-nez p4, :cond_2

    .line 819
    invoke-static {p0, p1, p2, p3}, Ljava/util/Locale;->getCompatibilityExtensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/LocaleExtensions;

    move-result-object p4

    .line 822
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    .line 823
    .local v0, "baseloc":Lsun/util/locale/BaseLocale;
    invoke-static {v0, p4}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method static getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;
    .locals 2
    .param p0, "baseloc"    # Lsun/util/locale/BaseLocale;
    .param p1, "extensions"    # Lsun/util/locale/LocaleExtensions;

    .prologue
    .line 827
    new-instance v0, Ljava/util/Locale$LocaleKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V

    .line 828
    .local v0, "key":Ljava/util/Locale$LocaleKey;
    sget-object v1, Ljava/util/Locale;->LOCALECACHE:Ljava/util/Locale$Cache;

    invoke-virtual {v1, v0}, Ljava/util/Locale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    return-object v1
.end method

.method public static initDefault()Ljava/util/Locale;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 953
    const-string/jumbo v7, "user.locale"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "languageTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 955
    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 960
    :cond_0
    const-string/jumbo v7, "user.language"

    const-string/jumbo v8, "en"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v7, "user.region"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, "region":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 965
    const/16 v7, 0x5f

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 966
    .local v1, "i":I
    if-ltz v1, :cond_1

    .line 967
    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 968
    .local v0, "country":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "variant":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, ""

    .line 980
    .end local v1    # "i":I
    .local v5, "script":Ljava/lang/String;
    :goto_1
    invoke-static {v2, v5, v0, v6, v10}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v7

    return-object v7

    .line 970
    .end local v0    # "country":Ljava/lang/String;
    .end local v5    # "script":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    move-object v0, v4

    .line 971
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v6, ""

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_0

    .line 975
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v6    # "variant":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "user.script"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 976
    .restart local v5    # "script":Ljava/lang/String;
    const-string/jumbo v7, "user.country"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    .restart local v0    # "country":Ljava/lang/String;
    const-string/jumbo v7, "user.variant"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "variant":Ljava/lang/String;
    goto :goto_1
.end method

.method private static initDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;
    .locals 6
    .param p0, "category"    # Ljava/util/Locale$Category;

    .prologue
    .line 985
    sget-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 987
    .local v0, "defaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Ljava/util/Locale$Category;->languageKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    iget-object v2, p0, Ljava/util/Locale$Category;->scriptKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 989
    iget-object v3, p0, Ljava/util/Locale$Category;->countryKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 990
    iget-object v4, p0, Ljava/util/Locale$Category;->variantKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 991
    const/4 v5, 0x0

    .line 986
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method private static isAsciiAlphaNum(Ljava/lang/String;)Z
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 1813
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1814
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1815
    .local v0, "character":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-le v0, v2, :cond_3

    .line 1816
    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    .line 1817
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    .line 1818
    :cond_2
    const/4 v2, 0x0

    return v2

    .line 1813
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1822
    .end local v0    # "character":C
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnM49AreaCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1954
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1955
    return v3

    .line 1958
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1959
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1960
    .local v0, "character":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_1

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    .line 1961
    :cond_1
    return v3

    .line 1958
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    .end local v0    # "character":C
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private static isUnicodeExtensionKey(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidBcp47Alpha(Ljava/lang/String;II)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    const/4 v4, 0x0

    .line 1934
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1935
    .local v2, "length":I
    if-lt v2, p1, :cond_0

    if-le v2, p2, :cond_1

    .line 1936
    :cond_0
    return v4

    .line 1939
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 1940
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1941
    .local v0, "character":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    .line 1942
    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    .line 1943
    :cond_3
    return v4

    .line 1939
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1947
    .end local v0    # "character":C
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidVariantSubtag(Ljava/lang/String;)Z
    .locals 5
    .param p0, "subTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2041
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 2042
    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2043
    return v4

    .line 2045
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2046
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2047
    .local v0, "firstChar":C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    invoke-static {p0}, Ljava/util/Locale;->isAsciiAlphaNum(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2048
    return v4

    .line 2052
    .end local v0    # "firstChar":C
    :cond_1
    return v3
.end method

.method public static lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .prologue
    .line 3425
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "locales":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Locale;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale$LanguageRange;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3444
    .local p0, "priorityList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lsun/util/locale/LocaleMatcher;->lookupTag(Ljava/util/List;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    .line 1793
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1794
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1797
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "lowercaseLanguage":Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1799
    if-eqz p1, :cond_2

    .line 1800
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1802
    :cond_2
    const-string/jumbo v1, "und"

    return-object v1

    .line 1806
    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "region"    # Ljava/lang/String;
    .param p1, "strict"    # Z

    .prologue
    const/4 v2, 0x2

    .line 1916
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1917
    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1920
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1921
    .local v0, "uppercaseRegion":Ljava/lang/String;
    invoke-static {v0, v2, v2}, Ljava/util/Locale;->isValidBcp47Alpha(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1922
    invoke-static {v0}, Ljava/util/Locale;->isUnM49AreaCode(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1921
    if-eqz v1, :cond_3

    .line 1923
    if-eqz p1, :cond_2

    .line 1924
    new-instance v1, Ljava/util/IllformedLocaleException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1926
    :cond_2
    const-string/jumbo v1, ""

    return-object v1

    .line 1930
    :cond_3
    return-object v0
.end method

.method private static normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "variant"    # Ljava/lang/String;

    .prologue
    .line 2019
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2020
    :cond_0
    const-string/jumbo v3, ""

    return-object v3

    .line 2025
    :cond_1
    const/16 v3, 0x2d

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2026
    .local v0, "normalizedVariant":Ljava/lang/String;
    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2028
    .local v2, "subTags":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 2029
    .local v1, "subTag":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Locale;->isValidVariantSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2030
    new-instance v3, Ljava/util/IllformedLocaleException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid variant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2028
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2034
    .end local v1    # "subTag":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v4

    .line 2347
    .local v4, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v8, "language"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2348
    .local v5, "language":Ljava/lang/String;
    const-string/jumbo v8, "script"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2349
    .local v6, "script":Ljava/lang/String;
    const-string/jumbo v8, "country"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2350
    .local v1, "country":Ljava/lang/String;
    const-string/jumbo v8, "variant"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2351
    .local v7, "variant":Ljava/lang/String;
    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2352
    .local v3, "extStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Locale;->convertOldISOCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6, v1, v7}, Lsun/util/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2355
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 2357
    :try_start_0
    new-instance v0, Lsun/util/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lsun/util/locale/InternalLocaleBuilder;-><init>()V

    .line 2358
    .local v0, "bldr":Lsun/util/locale/InternalLocaleBuilder;
    invoke-virtual {v0, v3}, Lsun/util/locale/InternalLocaleBuilder;->setExtensions(Ljava/lang/String;)Lsun/util/locale/InternalLocaleBuilder;

    .line 2359
    invoke-virtual {v0}, Lsun/util/locale/InternalLocaleBuilder;->getLocaleExtensions()Lsun/util/locale/LocaleExtensions;

    move-result-object v8

    iput-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;
    :try_end_0
    .catch Lsun/util/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    .end local v0    # "bldr":Lsun/util/locale/InternalLocaleBuilder;
    :goto_0
    return-void

    .line 2360
    :catch_0
    move-exception v2

    .line 2361
    .local v2, "e":Lsun/util/locale/LocaleSyntaxException;
    new-instance v8, Ljava/util/IllformedLocaleException;

    invoke-virtual {v2}, Lsun/util/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2364
    .end local v2    # "e":Lsun/util/locale/LocaleSyntaxException;
    :cond_0
    iput-object v10, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 2383
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2384
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    .line 2383
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Locale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V
    .locals 5
    .param p0, "category"    # Ljava/util/Locale$Category;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v2, Ljava/util/Locale;

    monitor-enter v2

    .line 1063
    if-nez p0, :cond_0

    .line 1064
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Category cannot be NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1065
    :cond_0
    if-nez p1, :cond_1

    .line 1066
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Can\'t set default locale to NULL"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1068
    :cond_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1069
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/PropertyPermission;

    .line 1070
    const-string/jumbo v3, "user.language"

    const-string/jumbo v4, "write"

    .line 1069
    invoke-direct {v1, v3, v4}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1071
    :cond_2
    invoke-static {}, Ljava/util/Locale;->-getjava-util-Locale$CategorySwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale$Category;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 1079
    sget-boolean v1, Ljava/util/Locale;->-assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Unknown Category"

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1073
    :pswitch_0
    sput-object p1, Ljava/util/Locale;->defaultDisplayLocale:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v2

    .line 1081
    return-void

    .line 1076
    :pswitch_1
    :try_start_2
    sput-object p1, Ljava/util/Locale;->defaultFormatLocale:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized setDefault(Ljava/util/Locale;)V
    .locals 2
    .param p0, "newLocale"    # Ljava/util/Locale;

    .prologue
    const-class v1, Ljava/util/Locale;

    monitor-enter v1

    .line 1024
    :try_start_0
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1025
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0, p0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale$Category;Ljava/util/Locale;)V

    .line 1028
    sput-object p0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 1030
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/ICU;->setDefaultLocale(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1031
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2327
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 2328
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "language"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2329
    const-string/jumbo v1, "script"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2330
    const-string/jumbo v1, "country"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2331
    const-string/jumbo v1, "variant"

    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2332
    const-string/jumbo v2, "extensions"

    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2333
    const-string/jumbo v1, "hashcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 2334
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 2335
    return-void

    .line 2332
    :cond_0
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2150
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    .local v1, "that":Ljava/util/Locale;
    return-object v1

    .line 2152
    .end local v1    # "that":Ljava/util/Locale;
    :catch_0
    move-exception v0

    .line 2153
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2186
    if-ne p0, p1, :cond_0

    .line 2187
    return v2

    .line 2188
    :cond_0
    instance-of v1, p1, Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 2189
    return v3

    :cond_1
    move-object v1, p1

    .line 2190
    check-cast v1, Ljava/util/Locale;

    iget-object v0, v1, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    .line 2191
    .local v0, "otherBase":Lsun/util/locale/BaseLocale;
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2192
    return v3

    .line 2194
    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_4

    .line 2195
    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    return v1

    :cond_3
    move v1, v3

    goto :goto_0

    .line 2197
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    check-cast p1, Ljava/util/Locale;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getBaseLocale()Lsun/util/locale/BaseLocale;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1887
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1897
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 1898
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1899
    const-string/jumbo v3, ""

    return-object v3

    .line 1903
    :cond_0
    const/4 v3, 0x0

    .line 1902
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, "normalizedRegion":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1905
    return-object v0

    .line 1908
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1909
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1910
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayCountry(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1912
    :cond_2
    return-object v2
.end method

.method public final getDisplayLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1755
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1765
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, "languageCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1767
    const-string/jumbo v3, ""

    return-object v3

    .line 1778
    :cond_0
    const/4 v3, 0x0

    .line 1777
    invoke-static {v0, v3}, Ljava/util/Locale;->normalizeAndValidateLanguage(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "normalizedLanguage":Ljava/lang/String;
    const-string/jumbo v3, "und"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1780
    return-object v0

    .line 1785
    :cond_1
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1786
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1787
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayLanguage(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1789
    :cond_2
    return-object v2
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2076
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 13
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 2097
    const/4 v1, 0x0

    .line 2098
    .local v1, "count":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2099
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 2100
    .local v7, "languageCode":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2101
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2102
    .local v4, "displayLanguage":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .end local v7    # "languageCode":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const/4 v1, 0x1

    .line 2105
    .end local v4    # "displayLanguage":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v8

    .line 2106
    .local v8, "scriptCode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 2107
    if-ne v1, v11, :cond_1

    .line 2108
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2111
    .local v5, "displayScript":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .end local v8    # "scriptCode":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    add-int/lit8 v1, v1, 0x1

    .line 2114
    .end local v5    # "displayScript":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 2115
    .local v2, "countryCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2116
    if-ne v1, v11, :cond_a

    .line 2117
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2121
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2122
    .local v3, "displayCountry":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .end local v2    # "countryCode":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    add-int/lit8 v1, v1, 0x1

    .line 2125
    .end local v3    # "displayCountry":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v10}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v9

    .line 2126
    .local v9, "variantCode":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 2127
    if-ne v1, v11, :cond_c

    .line 2128
    const-string/jumbo v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 2133
    .local v6, "displayVariant":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    .end local v9    # "variantCode":Ljava/lang/String;
    :goto_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    add-int/lit8 v1, v1, 0x1

    .line 2136
    .end local v6    # "displayVariant":Ljava/lang/String;
    :cond_6
    if-le v1, v11, :cond_7

    .line 2137
    const-string/jumbo v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .restart local v4    # "displayLanguage":Ljava/lang/String;
    .restart local v7    # "languageCode":Ljava/lang/String;
    :cond_8
    move-object v7, v4

    .line 2102
    goto :goto_0

    .end local v4    # "displayLanguage":Ljava/lang/String;
    .end local v7    # "languageCode":Ljava/lang/String;
    .restart local v5    # "displayScript":Ljava/lang/String;
    .restart local v8    # "scriptCode":Ljava/lang/String;
    :cond_9
    move-object v8, v5

    .line 2111
    goto :goto_1

    .line 2118
    .end local v5    # "displayScript":Ljava/lang/String;
    .end local v8    # "scriptCode":Ljava/lang/String;
    .restart local v2    # "countryCode":Ljava/lang/String;
    :cond_a
    if-ne v1, v12, :cond_3

    .line 2119
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .restart local v3    # "displayCountry":Ljava/lang/String;
    :cond_b
    move-object v2, v3

    .line 2122
    goto :goto_3

    .line 2129
    .end local v2    # "countryCode":Ljava/lang/String;
    .end local v3    # "displayCountry":Ljava/lang/String;
    .restart local v9    # "variantCode":Ljava/lang/String;
    :cond_c
    if-eq v1, v12, :cond_d

    const/4 v10, 0x3

    if-ne v1, v10, :cond_5

    .line 2130
    :cond_d
    const-string/jumbo v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .restart local v6    # "displayVariant":Ljava/lang/String;
    :cond_e
    move-object v9, v6

    .line 2133
    goto :goto_5
.end method

.method public getDisplayScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 1854
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1855
    .local v1, "scriptCode":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1856
    const-string/jumbo v2, ""

    return-object v2

    .line 1859
    :cond_0
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1860
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1861
    sget-object v2, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p0, v2}, Llibcore/icu/ICU;->getDisplayScript(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1864
    :cond_1
    return-object v0
.end method

.method public final getDisplayVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1978
    sget-object v0, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayVariant(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "inLocale"    # Ljava/util/Locale;

    .prologue
    .line 1992
    iget-object v3, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 1993
    .local v2, "variantCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    const-string/jumbo v3, ""

    return-object v3

    .line 1998
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/util/Locale;->normalizeAndValidateVariant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllformedLocaleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    invoke-static {p0, p1}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2004
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2005
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p0, v3}, Llibcore/icu/ICU;->getDisplayVariant(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2012
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2013
    return-object v2

    .line 1999
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2000
    .local v0, "ilfe":Ljava/util/IllformedLocaleException;
    return-object v2

    .line 2015
    .end local v0    # "ilfe":Ljava/util/IllformedLocaleException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public getExtension(C)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # C

    .prologue
    .line 1240
    invoke-static {p1}, Lsun/util/locale/LocaleExtensions;->isValidKey(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed extension key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/locale/LocaleExtensions;->getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1259
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getISO3Country()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1721
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1722
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1723
    const-string/jumbo v2, ""

    return-object v2

    .line 1727
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "en-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/ICU;->getISO3Country(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "country3":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1729
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter country code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1730
    iget-object v4, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v4}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 1729
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1730
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortCountry"

    .line 1729
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1733
    :cond_2
    return-object v0
.end method

.method public getISO3Language()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .line 1680
    iget-object v2, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v2}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "lang":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1682
    return-object v0

    .line 1686
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1687
    const-string/jumbo v2, ""

    return-object v2

    .line 1694
    :cond_1
    invoke-static {v0}, Llibcore/icu/ICU;->getISO3Language(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1695
    .local v1, "language3":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1697
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t find 3-letter language code for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FormatData_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ShortLanguage"

    .line 1697
    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1700
    :cond_2
    return-object v1
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1154
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "languageCode":Ljava/lang/String;
    const-string/jumbo v1, "zy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/util/Locale;->checkPackageName()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1156
    const-string/jumbo v1, "my"

    return-object v1

    .line 1157
    :cond_0
    const-string/jumbo v1, "zye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "enz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1158
    :cond_1
    const-string/jumbo v1, "en"

    return-object v1

    .line 1161
    :cond_2
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getLocaleExtensions()Lsun/util/locale/LocaleExtensions;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1271
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1274
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1307
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_0

    .line 1308
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1310
    :cond_0
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1292
    invoke-static {p1}, Ljava/util/Locale;->isUnicodeExtensionKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed Unicode locale key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v0, p1}, Lsun/util/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2164
    iget v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2165
    .local v0, "hc":I
    if-nez v0, :cond_1

    .line 2166
    iget-object v1, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    .line 2167
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_0

    .line 2168
    iget-object v1, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 2170
    :cond_0
    iput v0, p0, Ljava/util/Locale;->hashCodeValue:I

    .line 2172
    :cond_1
    return v0
.end method

.method public isZawgyi()Z
    .locals 2

    .prologue
    .line 3468
    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v0}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "enz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stripExtensions()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 1221
    invoke-virtual {p0}, Ljava/util/Locale;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Locale;->getInstance(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Ljava/util/Locale;

    move-result-object p0

    .end local p0    # "this":Ljava/util/Locale;
    :cond_0
    return-object p0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1476
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1477
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v7

    .line 1480
    :cond_0
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    iget-object v8, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-static {v7, v8}, Lsun/util/locale/LanguageTag;->parseLocale(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)Lsun/util/locale/LanguageTag;

    move-result-object v6

    .line 1481
    .local v6, "tag":Lsun/util/locale/LanguageTag;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1483
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1484
    .local v4, "subtag":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 1485
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_1
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 1489
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1490
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    :cond_2
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v4

    .line 1495
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1496
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    invoke-static {v4}, Lsun/util/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_3
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v5

    .line 1501
    .local v5, "subtags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1502
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1507
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v5

    .line 1508
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1509
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-static {v2}, Lsun/util/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1513
    .end local v2    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lsun/util/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v4

    .line 1514
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 1515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1516
    const-string/jumbo v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    :cond_6
    const-string/jumbo v7, "x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "langTag":Ljava/lang/String;
    monitor-enter p0

    .line 1525
    :try_start_0
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 1526
    iput-object v1, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    .line 1529
    iget-object v7, p0, Ljava/util/Locale;->languageTag:Ljava/lang/String;

    return-object v7

    .line 1524
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x5f

    .line 1376
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v1, 0x1

    .line 1377
    .local v1, "l":Z
    :goto_0
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    const/4 v4, 0x1

    .line 1378
    .local v4, "s":Z
    :goto_1
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    const/4 v2, 0x1

    .line 1379
    .local v2, "r":Z
    :goto_2
    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_c

    const/4 v5, 0x1

    .line 1380
    .local v5, "v":Z
    :goto_3
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    if-eqz v6, :cond_d

    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    const/4 v0, 0x1

    .line 1382
    .local v0, "e":Z
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v6}, Lsun/util/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1383
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v0, :cond_1

    .line 1384
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1385
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v7

    .line 1384
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    :cond_1
    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1388
    :cond_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1389
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 1388
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_3
    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 1393
    :cond_4
    const-string/jumbo v6, "_#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1394
    iget-object v7, p0, Ljava/util/Locale;->baseLocale:Lsun/util/locale/BaseLocale;

    invoke-virtual {v7}, Lsun/util/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1393
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    :cond_5
    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    .line 1398
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1399
    if-nez v4, :cond_7

    .line 1400
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1402
    :cond_7
    iget-object v6, p0, Ljava/util/Locale;->localeExtensions:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v6}, Lsun/util/locale/LocaleExtensions;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1376
    .end local v0    # "e":Z
    .end local v1    # "l":Z
    .end local v2    # "r":Z
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "s":Z
    .end local v5    # "v":Z
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "l":Z
    goto/16 :goto_0

    .line 1377
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "s":Z
    goto/16 :goto_1

    .line 1378
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "r":Z
    goto/16 :goto_2

    .line 1379
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "v":Z
    goto/16 :goto_3

    .line 1380
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "e":Z
    goto :goto_4
.end method
