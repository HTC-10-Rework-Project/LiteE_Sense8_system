.class public Ljava/lang/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# static fields
.field private static currentRuntime:Ljava/lang/Runtime;

.field private static finalizeOnExit:Z


# instance fields
.field private volatile mLibPaths:[Ljava/lang/String;

.field private shutdownHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private shuttingDown:Z

.field private tracingMethods:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Runtime;

    invoke-direct {v0}, Ljava/lang/Runtime;-><init>()V

    sput-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    .line 1043
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method private checkTargetSdkVersionForLoad(Ljava/lang/String;)V
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 896
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 897
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 898
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :cond_0
    return-void
.end method

.method private doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1090
    const/4 v1, 0x0

    .line 1091
    .local v1, "librarySearchPath":Ljava/lang/String;
    if-eqz p2, :cond_0

    instance-of v2, p2, Ldalvik/system/BaseDexClassLoader;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1092
    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    .line 1093
    .local v0, "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    move-result-object v1

    .line 1098
    .end local v0    # "dexClassLoader":Ldalvik/system/BaseDexClassLoader;
    .end local v1    # "librarySearchPath":Ljava/lang/String;
    :cond_0
    monitor-enter p0

    .line 1099
    :try_start_0
    invoke-static {p1, p2, v1}, Ljava/lang/Runtime;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 1098
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getLibPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1047
    monitor-enter p0

    .line 1048
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1049
    invoke-static {}, Ljava/lang/Runtime;->initLibPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1053
    :cond_1
    iget-object v0, p0, Ljava/lang/Runtime;->mLibPaths:[Ljava/lang/String;

    return-object v0

    .line 1047
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getRuntime()Ljava/lang/Runtime;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Ljava/lang/Runtime;->currentRuntime:Ljava/lang/Runtime;

    return-object v0
.end method

.method private static initLibPaths()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1057
    const-string/jumbo v3, "java.library.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "javaLibraryPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1059
    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v3

    .line 1061
    :cond_0
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1063
    .local v2, "paths":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1064
    aget-object v3, v2, v0

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1063
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    :cond_2
    return-object v2
.end method

.method private static native nativeExit(I)V
.end method

.method private static native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native runFinalization0()V
.end method

.method public static runFinalizersOnExit(Z)V
    .locals 0
    .param p0, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    sput-boolean p0, Ljava/lang/Runtime;->finalizeOnExit:Z

    .line 390
    return-void
.end method


# virtual methods
.method public addShutdownHook(Ljava/lang/Thread;)V
    .locals 3
    .param p1, "hook"    # Ljava/lang/Thread;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "hook == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    iget-boolean v0, p1, Ljava/lang/Thread;->started:Z

    if-eqz v0, :cond_2

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Hook has already been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Hook already registered."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 290
    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 292
    return-void
.end method

.method public availableProcessors()I
    .locals 2

    .prologue
    .line 711
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-interface {v0, v1}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 519
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Empty command"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 522
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 523
    .local v0, "cmdarray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v3

    return-object v3
.end method

.method public exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, p1, v0, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 1
    .param p1, "cmdarray"    # [Ljava/lang/String;
    .param p2, "envp"    # [Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/ProcessBuilder;->environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public exit(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x0

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-nez v4, :cond_3

    .line 143
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/lang/Runtime;->shuttingDown:Z

    .line 146
    iget-object v4, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/Thread;

    .line 149
    .local v2, "hooks":[Ljava/lang/Thread;
    iget-object v5, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 153
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 154
    .local v1, "hook":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "hook":Ljava/lang/Thread;
    .end local v2    # "hooks":[Ljava/lang/Thread;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 158
    .restart local v2    # "hooks":[Ljava/lang/Thread;
    :cond_0
    :try_start_3
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .restart local v1    # "hook":Ljava/lang/Thread;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 161
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 167
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .end local v1    # "hook":Ljava/lang/Thread;
    :cond_1
    :try_start_5
    sget-boolean v3, Ljava/lang/Runtime;->finalizeOnExit:Z

    if-eqz v3, :cond_2

    .line 168
    invoke-virtual {p0}, Ljava/lang/Runtime;->runFinalization()V

    .line 172
    :cond_2
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v2    # "hooks":[Ljava/lang/Thread;
    :cond_3
    monitor-exit p0

    .line 175
    return-void
.end method

.method public native freeMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native gc()V
.end method

.method public getLocalizedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1130
    return-object p1
.end method

.method public getLocalizedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1158
    return-object p1
.end method

.method public halt(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 358
    invoke-static {p1}, Ljava/lang/Runtime;->nativeExit(I)V

    .line 359
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 891
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->load0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "absolutePath"    # Ljava/lang/String;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 905
    const-string/jumbo v1, "java.lang.Runtime#load(String, ClassLoader)"

    invoke-direct {p0, v1}, Ljava/lang/Runtime;->checkTargetSdkVersionForLoad(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v1, "java.lang.Runtime#load(String, ClassLoader) is private and will be removed in a future Android release"

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "absolutePath == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 914
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 916
    :cond_1
    return-void
.end method

.method declared-synchronized load0(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 919
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 920
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expecting an absolute path of the library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 923
    :cond_0
    if-nez p2, :cond_1

    .line 924
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "filename == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 928
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 930
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 978
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public loadLibrary(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "libname"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 992
    const-string/jumbo v0, "java.lang.Runtime#loadLibrary(String, ClassLoader)"

    invoke-direct {p0, v0}, Ljava/lang/Runtime;->checkTargetSdkVersionForLoad(Ljava/lang/String;)V

    .line 993
    const-string/jumbo v0, "java.lang.Runtime#loadLibrary(String, ClassLoader) is private and will be removed in a future Android release"

    invoke-static {v0}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, p2, p1}, Ljava/lang/Runtime;->loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method declared-synchronized loadLibrary0(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 11
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "libname"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 999
    :try_start_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1000
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    .line 1001
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Directory separator should not appear in library name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1000
    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1003
    :cond_0
    move-object v6, p2

    .line 1004
    .local v6, "libraryName":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 1005
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1006
    .local v4, "filename":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1011
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " couldn\'t find \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1012
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1011
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1012
    const-string/jumbo v9, "\""

    .line 1011
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1014
    :cond_1
    invoke-direct {p0, v4, p1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    .local v3, "error":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1016
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v7, v3}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 1018
    return-void

    .line 1021
    .end local v3    # "error":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1022
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1024
    .local v5, "lastError":Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Runtime;->getLibPaths()[Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    array-length v9, v8

    .end local v5    # "lastError":Ljava/lang/String;
    :goto_0
    if-ge v7, v9, :cond_6

    aget-object v2, v8, v7

    .line 1025
    .local v2, "directory":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "candidate":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-static {v0}, Llibcore/io/IoUtils;->canOpenReadOnly(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1029
    invoke-direct {p0, v0, p1}, Ljava/lang/Runtime;->doLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 1030
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_4

    monitor-exit p0

    .line 1031
    return-void

    .line 1033
    :cond_4
    move-object v5, v3

    .line 1024
    .end local v3    # "error":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1037
    .end local v0    # "candidate":Ljava/lang/String;
    .end local v2    # "directory":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1038
    :try_start_3
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v7, v5}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1040
    :cond_7
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Library "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found; tried "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public native maxMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public removeShutdownHook(Ljava/lang/Thread;)Z
    .locals 2
    .param p1, "hook"    # Ljava/lang/Thread;

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "hook == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iget-boolean v0, p0, Ljava/lang/Runtime;->shuttingDown:Z

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "VM already shutting down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_1
    iget-object v1, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Ljava/lang/Runtime;->shutdownHooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public runFinalization()V
    .locals 2

    .prologue
    .line 792
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ldalvik/system/VMRuntime;->runFinalization(J)V

    .line 793
    return-void
.end method

.method public native totalMemory()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public traceInstructions(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 814
    return-void
.end method

.method public traceMethodCalls(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 837
    iget-boolean v0, p0, Ljava/lang/Runtime;->tracingMethods:Z

    if-eq p1, v0, :cond_0

    .line 838
    if-eqz p1, :cond_1

    .line 839
    invoke-static {}, Ldalvik/system/VMDebug;->startMethodTracing()V

    .line 843
    :goto_0
    iput-boolean p1, p0, Ljava/lang/Runtime;->tracingMethods:Z

    .line 845
    :cond_0
    return-void

    .line 841
    :cond_1
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    goto :goto_0
.end method
