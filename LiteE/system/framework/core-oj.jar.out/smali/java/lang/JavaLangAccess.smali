.class public final Ljava/lang/JavaLangAccess;
.super Ljava/lang/Object;
.source "JavaLangAccess.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method
