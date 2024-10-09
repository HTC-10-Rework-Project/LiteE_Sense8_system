.class Lsun/nio/fs/UnixFileModeAttribute;
.super Ljava/lang/Object;
.source "UnixFileModeAttribute.java"


# static fields
.field private static final synthetic -java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

.field static final ALL_PERMISSIONS:I

.field static final ALL_READWRITE:I

.field static final TEMPFILE_PERMISSIONS:I


# direct methods
.method private static synthetic -getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lsun/nio/fs/UnixFileModeAttribute;->-java-nio-file-attribute-PosixFilePermissionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 34
    sget v1, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 33
    or-int/2addr v0, v1

    .line 35
    sget v1, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    .line 33
    or-int/2addr v0, v1

    .line 32
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_PERMISSIONS:I

    .line 38
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    .line 39
    sget v1, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 38
    or-int/2addr v0, v1

    .line 39
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 38
    or-int/2addr v0, v1

    .line 40
    sget v1, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 38
    or-int/2addr v0, v1

    .line 40
    sget v1, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 38
    or-int/2addr v0, v1

    .line 37
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 43
    sget v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    .line 42
    sput v0, Lsun/nio/fs/UnixFileModeAttribute;->TEMPFILE_PERMISSIONS:I

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static varargs toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I
    .locals 6
    .param p0, "defaultMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    move v1, p0

    .line 71
    .local v1, "mode":I
    const/4 v3, 0x0

    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p1, v4

    .line 72
    .local v0, "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "posix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "unix:permissions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    const-string/jumbo v5, "\' not supported as initial attribute"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/FileAttribute;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v1

    .line 71
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 79
    .end local v0    # "attr":Ljava/nio/file/attribute/FileAttribute;, "Ljava/nio/file/attribute/FileAttribute<*>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method static toUnixMode(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v0, 0x0

    .line 50
    .local v0, "mode":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "perm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;

    .line 51
    .local v1, "perm":Ljava/nio/file/attribute/PosixFilePermission;
    if-nez v1, :cond_0

    .line 52
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 53
    :cond_0
    invoke-static {}, Lsun/nio/fs/UnixFileModeAttribute;->-getjava-nio-file-attribute-PosixFilePermissionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 54
    :pswitch_1
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 55
    :pswitch_2
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 56
    :pswitch_3
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 57
    :pswitch_4
    sget v3, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 58
    :pswitch_5
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 60
    :pswitch_6
    sget v3, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 61
    :pswitch_7
    sget v3, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 62
    :pswitch_8
    sget v3, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    or-int/2addr v0, v3

    goto :goto_0

    .line 65
    .end local v1    # "perm":Ljava/nio/file/attribute/PosixFilePermission;
    :cond_1
    return v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
