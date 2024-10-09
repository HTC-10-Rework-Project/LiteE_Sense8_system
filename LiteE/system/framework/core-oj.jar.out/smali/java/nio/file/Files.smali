.class public final Ljava/nio/file/Files;
.super Ljava/lang/Object;
.source "Files.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/Files$AcceptAllFilter;,
        Ljava/nio/file/Files$FileTypeDetectors;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-nio-file-FileTreeWalker$EventTypeSwitchesValues:[I = null

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7


# direct methods
.method private static synthetic -getjava-nio-file-FileTreeWalker$EventTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/nio/file/Files;->-java-nio-file-FileTreeWalker$EventTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/file/Files;->-java-nio-file-FileTreeWalker$EventTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/FileTreeWalker$EventType;->values()[Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Ljava/nio/file/Files;->-java-nio-file-FileTreeWalker$EventTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -java_nio_file_Files-mthref-0(Ljava/nio/file/FileTreeIterator;)V
    .locals 0

    .prologue
    .line 3577
    invoke-virtual {p0}, Ljava/nio/file/FileTreeIterator;->close()V

    return-void
.end method

.method static synthetic -java_nio_file_Files-mthref-1(Ljava/nio/file/FileTreeIterator;)V
    .locals 0

    .prologue
    .line 3690
    invoke-virtual {p0}, Ljava/nio/file/FileTreeIterator;->close()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/nio/file/Files;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/Files;->-assertionsDisabled:Z

    .line 90
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 105
    new-instance v0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;

    invoke-direct {v0, p0}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "sink"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2905
    const-wide/16 v2, 0x0

    .line 2906
    .local v2, "nread":J
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 2908
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    if-lez v1, :cond_0

    .line 2909
    invoke-virtual {p1, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2910
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 2912
    :cond_0
    return-wide v2
.end method

.method public static varargs copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .locals 12
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2984
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    const/4 v3, 0x0

    .line 2988
    .local v3, "replaceExisting":Z
    array-length v9, p2

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v0, p2, v7

    .line 2989
    .local v0, "opt":Ljava/nio/file/CopyOption;
    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v0, v10, :cond_0

    .line 2990
    const/4 v3, 0x1

    .line 2988
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2992
    :cond_0
    if-nez v0, :cond_1

    .line 2993
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "options contains \'null\'"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2995
    :cond_1
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3001
    .end local v0    # "opt":Ljava/nio/file/CopyOption;
    :cond_2
    const/4 v4, 0x0

    .line 3002
    .local v4, "se":Ljava/lang/SecurityException;
    if-eqz v3, :cond_3

    .line 3004
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3016
    .end local v4    # "se":Ljava/lang/SecurityException;
    :cond_3
    :goto_1
    const/4 v7, 0x2

    :try_start_1
    new-array v7, v7, [Ljava/nio/file/OpenOption;

    sget-object v9, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 3017
    sget-object v9, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    .line 3016
    invoke-static {p1, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 3026
    .local v1, "ostream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/OutputStream;
    move-object v2, v1

    .line 3027
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {p0, v1}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    .line 3028
    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    if-eqz v8, :cond_6

    throw v8

    .line 3005
    .end local v1    # "ostream":Ljava/io/OutputStream;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v4    # "se":Ljava/lang/SecurityException;
    :catch_0
    move-exception v5

    .line 3006
    .local v5, "x":Ljava/lang/SecurityException;
    move-object v4, v5

    .local v4, "se":Ljava/lang/SecurityException;
    goto :goto_1

    .line 3018
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v5    # "x":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 3019
    .local v6, "x":Ljava/nio/file/FileAlreadyExistsException;
    if-eqz v4, :cond_5

    .line 3020
    throw v4

    .line 3022
    :cond_5
    throw v6

    .line 3028
    .end local v6    # "x":Ljava/nio/file/FileAlreadyExistsException;
    .restart local v1    # "ostream":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 3027
    :cond_6
    return-wide v10

    .line 3028
    :catch_3
    move-exception v8

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v7

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_7
    :goto_3
    if-eqz v8, :cond_9

    throw v8

    :catch_4
    move-exception v9

    if-nez v8, :cond_8

    move-object v8, v9

    goto :goto_3

    :cond_8
    if-eq v8, v9, :cond_7

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v7
.end method

.method public static copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J
    .locals 7
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3066
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 3069
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0, p1}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 3070
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0

    .line 3069
    :cond_1
    return-wide v4

    .line 3070
    .end local v0    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v2, :cond_4

    throw v2

    :catch_2
    move-exception v3

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public static varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1272
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 1274
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 1279
    :goto_0
    return-object p1

    .line 1277
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    goto :goto_0
.end method

.method private static varargs createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 4
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "x":Ljava/nio/file/FileAlreadyExistsException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 784
    throw v0
.end method

.method public static varargs createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 13
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v12, 0x0

    .line 727
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    return-object p0

    .line 732
    :catch_0
    move-exception v5

    .line 735
    .local v5, "x":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 737
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_1
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p0

    .line 743
    .end local v4    # "se":Ljava/lang/SecurityException;
    :goto_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    .line 744
    .local v3, "parent":Ljava/nio/file/Path;
    :goto_1
    if-eqz v3, :cond_0

    .line 746
    :try_start_2
    invoke-static {v3}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/nio/file/AccessMode;

    invoke-virtual {v9, v3, v10}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_3

    .line 753
    :cond_0
    if-nez v3, :cond_2

    .line 755
    if-nez v4, :cond_1

    .line 756
    new-instance v9, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 757
    const-string/jumbo v11, "Unable to determine if root directory exists"

    .line 756
    invoke-direct {v9, v10, v12, v11}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    .line 729
    .end local v3    # "parent":Ljava/nio/file/Path;
    .end local v5    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 731
    .local v7, "x":Ljava/nio/file/FileAlreadyExistsException;
    throw v7

    .line 738
    .end local v7    # "x":Ljava/nio/file/FileAlreadyExistsException;
    .restart local v4    # "se":Ljava/lang/SecurityException;
    .restart local v5    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 740
    .local v6, "x":Ljava/lang/SecurityException;
    move-object v4, v6

    .local v4, "se":Ljava/lang/SecurityException;
    goto :goto_0

    .line 748
    .end local v4    # "se":Ljava/lang/SecurityException;
    .end local v6    # "x":Ljava/lang/SecurityException;
    .restart local v3    # "parent":Ljava/nio/file/Path;
    :catch_3
    move-exception v8

    .line 751
    .local v8, "x":Ljava/nio/file/NoSuchFileException;
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    goto :goto_1

    .line 759
    .end local v8    # "x":Ljava/nio/file/NoSuchFileException;
    :cond_1
    throw v4

    .line 764
    :cond_2
    move-object v0, v3

    .line 765
    .local v0, "child":Ljava/nio/file/Path;
    invoke-interface {v3, p0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "name$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    .line 766
    .local v1, "name":Ljava/nio/file/Path;
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 767
    invoke-static {v0, p1}, Ljava/nio/file/Files;->createAndCheckIsDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    goto :goto_2

    .line 769
    .end local v1    # "name":Ljava/nio/file/Path;
    :cond_3
    return-object p0
.end method

.method public static varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 675
    return-object p0
.end method

.method public static varargs createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 632
    .local v0, "options":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/nio/file/StandardOpenOption;>;"
    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 633
    return-object p0
.end method

.method public static createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "link"    # Ljava/nio/file/Path;
    .param p1, "existing"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 1087
    return-object p0
.end method

.method public static varargs createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "link"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 1044
    return-object p0
.end method

.method public static varargs createTempDirectory(Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/nio/file/TempFileHelper;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2}, Ljava/nio/file/TempFileHelper;->createTempDirectory(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Ljava/nio/file/TempFileHelper;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Ljava/nio/file/TempFileHelper;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->delete(Ljava/nio/file/Path;)V

    .line 1127
    return-void
.end method

.method public static deleteIfExists(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static varargs exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2384
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2385
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/AccessMode;

    invoke-virtual {v1, p0, v2}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 2392
    :goto_0
    return v6

    .line 2388
    :cond_0
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    .line 2389
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2388
    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2393
    :catch_0
    move-exception v0

    .line 2395
    .local v0, "x":Ljava/io/IOException;
    return v5
.end method

.method public static varargs find(Ljava/nio/file/Path;ILjava/util/function/BiPredicate;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 4
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p3, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I",
            "Ljava/util/function/BiPredicate",
            "<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">;[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3687
    .local p2, "matcher":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;>;"
    new-instance v1, Ljava/nio/file/FileTreeIterator;

    invoke-direct {v1, p0, p1, p3}, Ljava/nio/file/FileTreeIterator;-><init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V

    .line 3689
    .local v1, "iterator":Ljava/nio/file/FileTreeIterator;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3690
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;

    invoke-direct {v3, v1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;-><init>(Ljava/lang/Object;)V

    .line 3689
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    .line 3691
    new-instance v3, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$5;

    invoke-direct {v3, p2}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$5;-><init>(Ljava/lang/Object;)V

    .line 3689
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3692
    new-instance v3, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;

    invoke-direct {v3}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;-><init>()V

    .line 3689
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3693
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/nio/file/FileTreeIterator;->close()V

    .line 3695
    throw v0
.end method

.method private static varargs followLinks([Ljava/nio/file/LinkOption;)Z
    .locals 5
    .param p0, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    .line 2341
    const/4 v0, 0x1

    .line 2342
    .local v0, "followLinks":Z
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 2343
    .local v1, "opt":Ljava/nio/file/LinkOption;
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v1, v4, :cond_0

    .line 2344
    const/4 v0, 0x0

    .line 2342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2347
    :cond_0
    if-nez v1, :cond_1

    .line 2348
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 2349
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not get here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2351
    .end local v1    # "opt":Ljava/nio/file/LinkOption;
    :cond_2
    return v0
.end method

.method public static varargs getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1867
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 1868
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1869
    :cond_1
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    .line 1870
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v3, Ljava/nio/file/Files;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1872
    :cond_2
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1873
    .local v2, "pos":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1874
    move-object v1, p1

    .line 1878
    .local v1, "name":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1876
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string/jumbo v1, ""

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1675
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public static getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1461
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2266
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2076
    const-class v1, Ljava/nio/file/attribute/FileOwnerAttributeView;

    invoke-static {p0, v1, p1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 2077
    .local v0, "view":Ljava/nio/file/attribute/FileOwnerAttributeView;
    if-nez v0, :cond_0

    .line 2078
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2079
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2004
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static varargs isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "modes"    # [Ljava/nio/file/AccessMode;

    .prologue
    .line 2455
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    const/4 v1, 0x1

    return v1

    .line 2457
    :catch_0
    move-exception v0

    .line 2458
    .local v0, "x":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static varargs isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    .line 2192
    :try_start_0
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v1, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isExecutable(Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;

    .prologue
    .line 2556
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    sget-object v1, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static isHidden(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1531
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isReadable(Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;

    .prologue
    .line 2490
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static varargs isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    .line 2229
    :try_start_0
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v1, p1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2230
    :catch_0
    move-exception v0

    .line 2231
    .local v0, "ioe":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1504
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isSymbolicLink(Ljava/nio/file/Path;)Z
    .locals 6
    .param p0, "path"    # Ljava/nio/file/Path;

    .prologue
    const/4 v5, 0x0

    .line 2154
    :try_start_0
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 2153
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    .line 2155
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2153
    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "ioe":Ljava/io/IOException;
    return v5
.end method

.method public static isWritable(Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;

    .prologue
    .line 2521
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/AccessMode;

    sget-object v1, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isAccessible(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-java_nio_file_Files_161341(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .prologue
    .line 3578
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_nio_file_Files_166663(Ljava/util/function/BiPredicate;Ljava/nio/file/FileTreeWalker$Event;)Z
    .locals 2
    .param p1, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .prologue
    .line 3691
    .local p0, "matcher":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;>;"
    invoke-virtual {p1}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-java_nio_file_Files_166757(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "entry"    # Ljava/nio/file/FileTreeWalker$Event;

    .prologue
    .line 3692
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_nio_file_Files_3831(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 107
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3785
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static lines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/stream/Stream;
    .locals 6
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3744
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    .line 3746
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {v0}, Ljava/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 3747
    :catch_0
    move-exception v1

    .line 3749
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3755
    :goto_0
    throw v1

    .line 3750
    :catch_1
    move-exception v2

    .line 3752
    .local v2, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3753
    :catch_2
    move-exception v3

    .local v3, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .locals 8
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3451
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1

    .line 3453
    .local v1, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3456
    .local v0, "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    new-instance v5, Ljava/nio/file/Files$2;

    invoke-direct {v5, v0}, Ljava/nio/file/Files$2;-><init>(Ljava/util/Iterator;)V

    .line 3475
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v6

    .line 3476
    invoke-static {v1}, Ljava/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v7

    .line 3475
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v6

    check-cast v6, Ljava/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 3477
    .end local v0    # "delegate":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :catch_0
    move-exception v2

    .line 3479
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3485
    :goto_0
    throw v2

    .line 3480
    :catch_1
    move-exception v3

    .line 3482
    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3483
    :catch_2
    move-exception v4

    .local v4, "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "source"    # Ljava/nio/file/Path;
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 1393
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-static {p1}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 1395
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 1400
    :goto_0
    return-object p1

    .line 1398
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/nio/file/CopyMoveHelper;->moveToForeignTarget(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    goto :goto_0
.end method

.method public static newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2816
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 2784
    .local v0, "decoder":Ljava/nio/charset/CharsetDecoder;
    new-instance v1, Ljava/io/InputStreamReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    .line 2785
    .local v1, "reader":Ljava/io/Reader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2859
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2860
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    .line 2861
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2896
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 406
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/OpenOption;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 407
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .locals 2
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sget-object v1, Ljava/nio/file/Files$AcceptAllFilter;->FILTER:Ljava/nio/file/Files$AcceptAllFilter;

    invoke-virtual {v0, p0, v1}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
    .locals 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "glob"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ")",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const-string/jumbo v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    return-object v3

    .line 517
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    .line 518
    .local v1, "fs":Ljava/nio/file/FileSystem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "glob:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v2

    .line 519
    .local v2, "matcher":Ljava/nio/file/PathMatcher;
    new-instance v0, Ljava/nio/file/Files$1;

    invoke-direct {v0, v2}, Ljava/nio/file/Files$1;-><init>(Ljava/nio/file/PathMatcher;)V

    .line 525
    .local v0, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<Ljava/nio/file/Path;>;"
    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    return-object v3
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/file/spi/FileSystemProvider;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 8
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2433
    :try_start_0
    invoke-static {p1}, Ljava/nio/file/Files;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2434
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/AccessMode;

    invoke-virtual {v2, p0, v3}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 2441
    :goto_0
    return v6

    .line 2437
    :cond_0
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    .line 2438
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2437
    invoke-static {p0, v2, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2442
    :catch_0
    move-exception v1

    .line 2444
    .local v1, "x":Ljava/nio/file/NoSuchFileException;
    return v7

    .line 2445
    .end local v1    # "x":Ljava/nio/file/NoSuchFileException;
    :catch_1
    move-exception v0

    .line 2446
    .local v0, "x":Ljava/io/IOException;
    return v6
.end method

.method public static probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1617
    sget-object v3, Ljava/nio/file/Files$FileTypeDetectors;->installeDetectors:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "detector$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileTypeDetector;

    .line 1618
    .local v0, "detector":Ljava/nio/file/spi/FileTypeDetector;
    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileTypeDetector;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1620
    return-object v2

    .line 1624
    .end local v0    # "detector":Ljava/nio/file/spi/FileTypeDetector;
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljava/nio/file/spi/FileTypeDetector;

    invoke-virtual {v3, p0}, Ljava/nio/file/spi/FileTypeDetector;->probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .prologue
    .line 97
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method private static read(Ljava/io/InputStream;I)[B
    .locals 8
    .param p0, "source"    # Ljava/io/InputStream;
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v7, 0x7ffffff7

    .line 3098
    move v1, p1

    .line 3099
    .local v1, "capacity":I
    new-array v0, p1, [B

    .line 3100
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 3105
    .local v3, "nread":I
    :goto_0
    sub-int v5, v1, v3

    invoke-virtual {p0, v0, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "n":I
    if-lez v2, :cond_0

    .line 3106
    add-int/2addr v3, v2

    goto :goto_0

    .line 3110
    :cond_0
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_2

    .line 3124
    :cond_1
    if-ne v1, v3, :cond_5

    .end local v0    # "buf":[B
    :goto_1
    return-object v0

    .line 3114
    .restart local v0    # "buf":[B
    :cond_2
    sub-int v5, v7, v1

    if-gt v1, v5, :cond_3

    .line 3115
    shl-int/lit8 v5, v1, 0x1

    const/16 v6, 0x2000

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3121
    :goto_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 3122
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "nread":I
    .local v4, "nread":I
    int-to-byte v5, v2

    aput-byte v5, v0, v3

    move v3, v4

    .end local v4    # "nread":I
    .restart local v3    # "nread":I
    goto :goto_0

    .line 3117
    :cond_3
    if-ne v1, v7, :cond_4

    .line 3118
    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v6, "Required array size too large"

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3119
    :cond_4
    const v1, 0x7ffffff7

    goto :goto_2

    .line 3124
    :cond_5
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1
.end method

.method public static readAllBytes(Ljava/nio/file/Path;)[B
    .locals 9
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3152
    const/4 v1, 0x0

    .local v1, "sbc":Ljava/nio/channels/SeekableByteChannel;
    const/4 v0, 0x0

    .local v0, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 3153
    .local v1, "sbc":Ljava/nio/channels/SeekableByteChannel;
    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    .line 3154
    .local v0, "in":Ljava/io/InputStream;
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    .line 3155
    .local v2, "size":J
    const-wide/32 v6, 0x7ffffff7

    cmp-long v4, v2, v6

    if-lez v4, :cond_4

    .line 3156
    new-instance v4, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v6, "Required array size too large"

    invoke-direct {v4, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3159
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local v2    # "size":J
    :catch_0
    move-exception v4

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    move-object v6, v5

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    move-object v5, v6

    :cond_3
    :goto_2
    if-eqz v5, :cond_9

    throw v5

    .line 3158
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .restart local v2    # "size":J
    :cond_4
    long-to-int v4, v2

    :try_start_4
    invoke-static {v0, v4}, Ljava/nio/file/Files;->read(Ljava/io/InputStream;I)[B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 3159
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    move-object v4, v5

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    throw v4

    :catch_1
    move-exception v5

    goto :goto_3

    :catch_2
    move-exception v4

    if-eqz v5, :cond_7

    if-eq v5, v4, :cond_6

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_4

    .line 3158
    :cond_8
    return-object v6

    .line 3159
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local v2    # "size":J
    :catch_3
    move-exception v6

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v6, v5

    goto :goto_1

    :catch_4
    move-exception v5

    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_2

    :cond_9
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_0
.end method

.method public static readAllLines(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3242
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 7
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3202
    const/4 v1, 0x0

    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v1

    .line 3203
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 3206
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3211
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    if-eqz v4, :cond_3

    throw v4

    .line 3208
    :cond_1
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 3211
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v4, :cond_5

    throw v4

    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    goto :goto_1

    .line 3210
    :cond_3
    return-object v2

    .line 3211
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    :cond_4
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    throw v3

    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1737
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attributes"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1964
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "link"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    invoke-static {p0}, Ljava/nio/file/Files;->provider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V

    .line 1806
    return-object p0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2305
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v0, p1, v2, v2}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 2307
    return-object p0
.end method

.method public static setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2124
    const-class v1, Ljava/nio/file/attribute/FileOwnerAttributeView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 2125
    .local v0, "view":Ljava/nio/file/attribute/FileOwnerAttributeView;
    if-nez v0, :cond_0

    .line 2126
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2127
    :cond_0
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 2128
    return-object p0
.end method

.method public static setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2042
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 2043
    .local v0, "view":Ljava/nio/file/attribute/PosixFileAttributeView;
    if-nez v0, :cond_0

    .line 2044
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 2045
    :cond_0
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    .line 2046
    return-object p0
.end method

.method public static size(Ljava/nio/file/Path;)J
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2332
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 4
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p2, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "I[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3574
    new-instance v1, Ljava/nio/file/FileTreeIterator;

    invoke-direct {v1, p0, p1, p2}, Ljava/nio/file/FileTreeIterator;-><init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V

    .line 3576
    .local v1, "iterator":Ljava/nio/file/FileTreeIterator;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v2

    .line 3577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$4;

    invoke-direct {v3, v1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$4;-><init>(Ljava/lang/Object;)V

    .line 3576
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    .line 3578
    new-instance v3, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;

    invoke-direct {v3}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;-><init>()V

    .line 3576
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3579
    :catch_0
    move-exception v0

    .line 3580
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/nio/file/FileTreeIterator;->close()V

    .line 3581
    throw v0
.end method

.method public static varargs walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3625
    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "start"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/FileVisitor",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2743
    .local p1, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 2744
    const v1, 0x7fffffff

    .line 2742
    invoke-static {p0, v0, v1, p1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    .locals 9
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I",
            "Ljava/nio/file/FileVisitor",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    .local p3, "visitor":Ljava/nio/file/FileVisitor;, "Ljava/nio/file/FileVisitor<-Ljava/nio/file/Path;>;"
    const/4 v6, 0x0

    .line 2661
    const/4 v3, 0x0

    .local v3, "walker":Ljava/nio/file/FileTreeWalker;
    :try_start_0
    new-instance v4, Ljava/nio/file/FileTreeWalker;

    invoke-direct {v4, p1, p2}, Ljava/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2662
    .end local v3    # "walker":Ljava/nio/file/FileTreeWalker;
    .local v4, "walker":Ljava/nio/file/FileTreeWalker;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/nio/file/FileTreeWalker;->walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 2665
    .local v0, "ev":Ljava/nio/file/FileTreeWalker$Event;
    :goto_0
    invoke-static {}, Ljava/nio/file/Files;->-getjava-nio-file-FileTreeWalker$EventTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 2696
    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Should not get here"

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2708
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :catch_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    :goto_1
    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/nio/file/FileTreeWalker;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    if-eqz v6, :cond_a

    throw v6

    .line 2667
    .restart local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .restart local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    :pswitch_0
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    .line 2668
    .local v1, "ioe":Ljava/io/IOException;
    if-nez v1, :cond_5

    .line 2669
    sget-boolean v5, Ljava/nio/file/Files;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2708
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    .local v3, "walker":Ljava/nio/file/FileTreeWalker;
    goto :goto_2

    .line 2670
    .end local v3    # "walker":Ljava/nio/file/FileTreeWalker;
    .restart local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .restart local v1    # "ioe":Ljava/io/IOException;
    .restart local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    :cond_1
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v7

    invoke-interface {p3, v5, v7}, Ljava/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .line 2699
    .end local v1    # "ioe":Ljava/io/IOException;
    .local v2, "result":Ljava/nio/file/FileVisitResult;
    :cond_2
    :goto_4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-eq v5, v7, :cond_8

    .line 2700
    sget-object v5, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v2, v5, :cond_7

    .line 2708
    :cond_3
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/nio/file/FileTreeWalker;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_5
    if-eqz v6, :cond_b

    throw v6

    .line 2672
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    .restart local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {p3, v5, v1}, Ljava/nio/file/FileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .restart local v2    # "result":Ljava/nio/file/FileVisitResult;
    goto :goto_4

    .line 2677
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    :pswitch_1
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->attributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v7

    invoke-interface {p3, v5, v7}, Ljava/nio/file/FileVisitor;->preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .line 2682
    .restart local v2    # "result":Ljava/nio/file/FileVisitResult;
    sget-object v5, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    if-eq v2, v5, :cond_6

    .line 2683
    sget-object v5, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v5, :cond_2

    .line 2684
    :cond_6
    invoke-virtual {v4}, Ljava/nio/file/FileTreeWalker;->pop()V

    goto :goto_4

    .line 2688
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    :pswitch_2
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->file()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v7

    invoke-interface {p3, v5, v7}, Ljava/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v2

    .line 2691
    .restart local v2    # "result":Ljava/nio/file/FileVisitResult;
    sget-object v5, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v5, :cond_2

    .line 2692
    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_4

    .line 2702
    :cond_7
    sget-object v5, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    if-ne v2, v5, :cond_8

    .line 2703
    invoke-virtual {v4}, Ljava/nio/file/FileTreeWalker;->skipRemainingSiblings()V

    .line 2706
    :cond_8
    invoke-virtual {v4}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 2707
    if-eqz v0, :cond_3

    goto/16 :goto_0

    .line 2708
    :catch_1
    move-exception v6

    goto :goto_5

    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    .end local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    :catch_2
    move-exception v7

    if-nez v6, :cond_9

    move-object v6, v7

    goto/16 :goto_3

    :cond_9
    if-eq v6, v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_a
    throw v5

    .line 2710
    .restart local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .restart local v2    # "result":Ljava/nio/file/FileVisitResult;
    .restart local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    :cond_b
    return-object p0

    .line 2708
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .end local v2    # "result":Ljava/nio/file/FileVisitResult;
    .end local v4    # "walker":Ljava/nio/file/FileTreeWalker;
    .local v3, "walker":Ljava/nio/file/FileTreeWalker;
    :catchall_2
    move-exception v5

    goto/16 :goto_2

    :catch_3
    move-exception v5

    goto/16 :goto_1

    .line 2665
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 10
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "cs"    # Ljava/nio/charset/Charset;
    .param p3, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/nio/charset/Charset;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    const/4 v7, 0x0

    .line 3349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 3351
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-static {p0, p3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    .line 3352
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .local v4, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3353
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v5, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "line$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 3354
    .local v1, "line":Ljava/lang/CharSequence;
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 3355
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 3357
    .end local v1    # "line":Ljava/lang/CharSequence;
    .end local v2    # "line$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_3
    if-eqz v7, :cond_4

    throw v7

    .restart local v2    # "line$iterator":Ljava/util/Iterator;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    if-eqz v5, :cond_2

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    if-eqz v7, :cond_5

    throw v7

    :catch_1
    move-exception v7

    goto :goto_4

    .end local v2    # "line$iterator":Ljava/util/Iterator;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v8

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    if-eq v7, v8, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v6

    .line 3358
    .restart local v2    # "line$iterator":Ljava/util/Iterator;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_5
    return-object p0

    .line 3357
    .end local v2    # "line$iterator":Ljava/util/Iterator;
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .local v4, "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .local v4, "writer":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method public static varargs write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3397
    .local p1, "lines":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0, p2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 8
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "bytes"    # [B
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3290
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    const/4 v2, 0x0

    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    .line 3293
    .local v2, "out":Ljava/io/OutputStream;
    array-length v0, p1

    .line 3294
    .local v0, "len":I
    move v3, v0

    .line 3295
    .local v3, "rem":I
    :goto_0
    if-lez v3, :cond_0

    .line 3296
    const/16 v4, 0x2000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3297
    .local v1, "n":I
    sub-int v4, v0, v3

    invoke-virtual {v2, p1, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3298
    sub-int/2addr v3, v1

    goto :goto_0

    .line 3300
    .end local v1    # "n":I
    :cond_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-eqz v5, :cond_5

    throw v5

    :catch_0
    move-exception v5

    goto :goto_1

    .end local v0    # "len":I
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "rem":I
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_2
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    if-eqz v5, :cond_4

    throw v5

    :catch_2
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v4

    .line 3301
    .restart local v0    # "len":I
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "rem":I
    :cond_5
    return-object p0

    .line 3300
    .end local v0    # "len":I
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "rem":I
    :catchall_1
    move-exception v4

    goto :goto_2
.end method
