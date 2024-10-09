.class Ljava/util/Locale$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static volatile defaultLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2212
    invoke-static {}, Ljava/util/Locale;->initDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ljava/util/Locale$NoImagePreloadHolder;->defaultLocale:Ljava/util/Locale;

    .line 2211
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
