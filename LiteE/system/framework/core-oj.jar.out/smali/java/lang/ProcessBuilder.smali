.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$NullInputStream;,
        Ljava/lang/ProcessBuilder$NullOutputStream;,
        Ljava/lang/ProcessBuilder$Redirect;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z

.field private redirects:[Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/lang/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 202
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 217
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 218
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getExecCallerInfo([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 1062
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1063
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_0

    .line 1064
    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1068
    .local v0, "callStacks":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    .line 1069
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1072
    :cond_1
    const/4 v3, 0x4

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 1073
    aget-object v1, v0, v3

    .line 1074
    .local v1, "caller":Ljava/lang/StackTraceElement;
    if-nez v1, :cond_3

    .line 1072
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1076
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v5, "java.lang"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "@ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1083
    .end local v1    # "caller":Ljava/lang/StackTraceElement;
    .end local v2    # "className":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private redirects()[Ljava/lang/ProcessBuilder$Redirect;
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect;

    .line 672
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 671
    iput-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    .line 674
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    return-object v0
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 237
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 238
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    .prologue
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 254
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 255
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public command()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 410
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    .line 411
    return-object p0
.end method

.method environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 9
    .param p1, "envp"    # [Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 354
    sget-boolean v2, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 355
    :cond_0
    if-eqz p1, :cond_4

    .line 356
    array-length v2, p1

    invoke-static {v2}, Ljava/lang/ProcessEnvironment;->emptyEnvironment(I)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 357
    sget-boolean v2, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 359
    :cond_1
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, p1, v2

    .line 366
    .local v0, "envstring":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 367
    const-string/jumbo v5, "\u0000.*"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_2
    const/16 v5, 0x3d

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 372
    .local v1, "eqlsign":I
    if-eq v1, v8, :cond_3

    .line 373
    iget-object v5, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 374
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "envstring":Ljava/lang/String;
    .end local v1    # "eqlsign":I
    :cond_4
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 341
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 344
    :cond_0
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 345
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environment()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 347
    :cond_1
    sget-boolean v1, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 349
    :cond_2
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    return-object v1
.end method

.method public inheritIO()Ljava/lang/ProcessBuilder;
    .locals 2

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 890
    return-object p0
.end method

.method public redirectError()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 821
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    .line 767
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 770
    return-object p0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "redirectErrorStream"    # Z

    .prologue
    .line 926
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 927
    return-object p0
.end method

.method public redirectErrorStream()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return v0
.end method

.method public redirectInput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectInput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 787
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "source"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 701
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_0

    .line 702
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_1

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for reading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 706
    return-object p0
.end method

.method public redirectOutput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 804
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .prologue
    .line 732
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-ne v0, v1, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 736
    return-object p0
.end method

.method public start()Ljava/lang/Process;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1007
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    iget-object v12, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1008
    .local v2, "cmdarray":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cmdarray":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 1010
    .restart local v2    # "cmdarray":[Ljava/lang/String;
    array-length v12, v2

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v0, v2, v10

    .line 1011
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1012
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 1010
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1014
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    aget-object v7, v2, v11

    .line 1016
    .local v7, "prog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 1017
    .local v9, "security":Ljava/lang/SecurityManager;
    if-eqz v9, :cond_2

    .line 1018
    invoke-virtual {v9, v7}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 1021
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "exec("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v2}, Ljava/lang/ProcessBuilder;->getExecCallerInfo([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    .line 1024
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    if-nez v10, :cond_3

    const/4 v3, 0x0

    .line 1026
    :goto_1
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    array-length v10, v2

    if-ge v6, v10, :cond_5

    .line 1027
    aget-object v10, v2, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_4

    .line 1028
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "invalid null character in command"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1024
    .end local v6    # "i":I
    :cond_3
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "dir":Ljava/lang/String;
    goto :goto_1

    .line 1026
    .end local v3    # "dir":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1034
    :cond_5
    :try_start_0
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 1036
    iget-object v11, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    .line 1037
    iget-boolean v12, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 1033
    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/ProcessImpl;->start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 1038
    :catch_0
    move-exception v4

    .line 1039
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1040
    .local v5, "exceptionInfo":Ljava/lang/String;
    move-object v1, v4

    .line 1041
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v10, v4, Ljava/io/IOException;

    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 1044
    :try_start_1
    invoke-virtual {v9, v7}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1052
    :cond_6
    :goto_3
    new-instance v11, Ljava/io/IOException;

    .line 1053
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot run program \""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1054
    if-nez v3, :cond_7

    const-string/jumbo v10, ""

    .line 1053
    :goto_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1052
    invoke-direct {v11, v10, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1045
    :catch_1
    move-exception v8

    .line 1046
    .local v8, "se":Ljava/lang/SecurityException;
    const-string/jumbo v5, ""

    .line 1047
    move-object v1, v8

    goto :goto_3

    .line 1054
    .end local v8    # "se":Ljava/lang/SecurityException;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " (in directory \""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, "\")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4
.end method
