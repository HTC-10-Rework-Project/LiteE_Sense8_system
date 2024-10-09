.class Lsun/nio/fs/MimeTypesFileTypeDetector;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "MimeTypesFileTypeDetector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    return-void
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string/jumbo v1, ""

    .line 62
    .local v1, "ext":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 63
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 64
    .local v0, "dot":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 65
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .end local v0    # "dot":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    .line 41
    .local v1, "fn":Ljava/nio/file/Path;
    if-nez v1, :cond_0

    .line 42
    return-object v4

    .line 44
    :cond_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/nio/fs/MimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "ext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    return-object v4

    .line 51
    :cond_1
    invoke-static {v0}, Llibcore/net/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "mimeType":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 53
    invoke-static {v0}, Lsun/nio/fs/MimeTypesFileTypeDetector;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 56
    :cond_3
    return-object v2
.end method
