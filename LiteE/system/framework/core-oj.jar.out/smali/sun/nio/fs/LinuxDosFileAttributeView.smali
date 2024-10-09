.class Lsun/nio/fs/LinuxDosFileAttributeView;
.super Lsun/nio/fs/UnixFileAttributeViews$Basic;
.source "LinuxDosFileAttributeView.java"

# interfaces
.implements Ljava/nio/file/attribute/DosFileAttributeView;


# static fields
.field private static final ARCHIVE_NAME:Ljava/lang/String; = "archive"

.field private static final DOS_XATTR_ARCHIVE:I = 0x20

.field private static final DOS_XATTR_HIDDEN:I = 0x2

.field private static final DOS_XATTR_NAME:Ljava/lang/String; = "user.DOSATTRIB"

.field private static final DOS_XATTR_NAME_AS_BYTES:[B

.field private static final DOS_XATTR_READONLY:I = 0x1

.field private static final DOS_XATTR_SYSTEM:I = 0x4

.field private static final HIDDEN_NAME:Ljava/lang/String; = "hidden"

.field private static final READONLY_NAME:Ljava/lang/String; = "readonly"

.field private static final SYSTEM_NAME:Ljava/lang/String; = "system"

.field private static final dosAttributeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    .line 54
    const-string/jumbo v0, "user.DOSATTRIB"

    invoke-static {v0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    .line 63
    sget-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->basicAttributeNames:Ljava/util/Set;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "readonly"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "archive"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "system"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "hidden"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lsun/nio/fs/Util;->newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 62
    sput-object v0, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    .line 43
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;Z)V
    .locals 0
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;-><init>(Lsun/nio/fs/UnixPath;Z)V

    .line 67
    return-void
.end method

.method private getDosAttribute(I)I
    .locals 14
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v4, 0x18

    .line 214
    .local v4, "size":I
    const/16 v8, 0x18

    invoke-static {v8}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 217
    .local v1, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_0
    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    const/16 v9, 0x18

    .line 216
    invoke-static {p1, v8, v10, v11, v9}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr(I[BJI)I

    move-result v3

    .line 219
    .local v3, "len":I
    if-lez v3, :cond_2

    .line 221
    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    int-to-long v12, v3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v8

    if-nez v8, :cond_0

    .line 222
    add-int/lit8 v3, v3, -0x1

    .line 225
    :cond_0
    new-array v0, v3, [B

    .line 229
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 230
    sget-object v8, Lsun/nio/fs/LinuxDosFileAttributeView;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v8

    aput-byte v8, v0, v2

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    const-string/jumbo v8, "0x"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    const/4 v8, 0x2

    :try_start_1
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 250
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 237
    return v8

    .line 238
    :catch_0
    move-exception v6

    .line 243
    .end local v0    # "buf":[B
    .end local v2    # "i":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v8, Lsun/nio/fs/UnixException;

    const-string/jumbo v9, "Value of user.DOSATTRIB attribute is invalid"

    invoke-direct {v8, v9}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .end local v3    # "len":I
    :catch_1
    move-exception v7

    .line 246
    .local v7, "x":Lsun/nio/fs/UnixException;
    :try_start_3
    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v8

    sget v9, Lsun/nio/fs/UnixConstants;->ENODATA:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v8, v9, :cond_3

    .line 247
    const/4 v8, 0x0

    .line 250
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 247
    return v8

    .line 248
    :cond_3
    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 249
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v8

    .line 250
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 249
    throw v8
.end method

.method private updateDosAttribute(IZ)V
    .locals 10
    .param p1, "flag"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 260
    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v7, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v6, v7}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v1

    .line 262
    .local v1, "fd":I
    :try_start_0
    invoke-direct {p0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v3

    .line 263
    .local v3, "oldValue":I
    move v2, v3

    .line 264
    .local v2, "newValue":I
    if-eqz p2, :cond_1

    .line 265
    or-int v2, v3, p1

    .line 269
    :goto_0
    if-eq v2, v3, :cond_0

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 271
    .local v4, "value":[B
    invoke-static {v4}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 273
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_1
    sget-object v6, Lsun/nio/fs/LinuxDosFileAttributeView;->DOS_XATTR_NAME_AS_BYTES:[B

    .line 274
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v8

    array-length v7, v4

    add-int/lit8 v7, v7, 0x1

    .line 273
    invoke-static {v1, v6, v8, v9, v7}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr(I[BJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :try_start_2
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V
    :try_end_2
    .catch Lsun/nio/fs/UnixException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    .end local v0    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local v4    # "value":[B
    :cond_0
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 284
    .end local v2    # "newValue":I
    .end local v3    # "oldValue":I
    :goto_1
    return-void

    .line 267
    .restart local v2    # "newValue":I
    .restart local v3    # "oldValue":I
    :cond_1
    not-int v6, p1

    and-int v2, v3, v6

    goto :goto_0

    .line 275
    .restart local v0    # "buffer":Lsun/nio/fs/NativeBuffer;
    .restart local v4    # "value":[B
    :catchall_0
    move-exception v6

    .line 276
    :try_start_3
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 275
    throw v6
    :try_end_3
    .catch Lsun/nio/fs/UnixException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    .end local v0    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local v2    # "newValue":I
    .end local v3    # "oldValue":I
    .end local v4    # "value":[B
    :catch_0
    move-exception v5

    .line 280
    .local v5, "x":Lsun/nio/fs/UnixException;
    :try_start_4
    iget-object v6, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v5, v6}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_1

    .line 281
    .end local v5    # "x":Lsun/nio/fs/UnixException;
    :catchall_1
    move-exception v6

    .line 282
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 281
    throw v6
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "dos"

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes()Ljava/nio/file/attribute/DosFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 120
    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->followLinks:Z

    invoke-virtual {v4, v5}, Lsun/nio/fs/UnixPath;->openForAttributeAccess(Z)I

    move-result v2

    .line 122
    .local v2, "fd":I
    :try_start_0
    invoke-static {v2}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    .line 123
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-direct {p0, v2}, Lsun/nio/fs/LinuxDosFileAttributeView;->getDosAttribute(I)I

    move-result v1

    .line 125
    .local v1, "dosAttribute":I
    new-instance v4, Lsun/nio/fs/LinuxDosFileAttributeView$1;

    invoke-direct {v4, p0, v0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView$1;-><init>(Lsun/nio/fs/LinuxDosFileAttributeView;Lsun/nio/fs/UnixFileAttributes;I)V
    :try_end_0
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 125
    return-object v4

    .line 180
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v1    # "dosAttribute":I
    :catch_0
    move-exception v3

    .line 181
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_1
    iget-object v4, p0, Lsun/nio/fs/LinuxDosFileAttributeView;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    const/4 v4, 0x0

    .line 184
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 182
    return-object v4

    .line 183
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :catchall_0
    move-exception v4

    .line 184
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 183
    throw v4
.end method

.method public readAttributes([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "attributes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
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
    .line 102
    sget-object v2, Lsun/nio/fs/LinuxDosFileAttributeView;->dosAttributeNames:Ljava/util/Set;

    invoke-static {v2, p1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->create(Ljava/util/Set;[Ljava/lang/String;)Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;

    move-result-object v1

    .line 103
    .local v1, "builder":Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;
    invoke-virtual {p0}, Lsun/nio/fs/LinuxDosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v0

    .line 104
    .local v0, "attrs":Ljava/nio/file/attribute/DosFileAttributes;
    invoke-virtual {p0, v0, v1}, Lsun/nio/fs/LinuxDosFileAttributeView;->addRequestedBasicAttributes(Ljava/nio/file/attribute/BasicFileAttributes;Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;)V

    .line 105
    const-string/jumbo v2, "readonly"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const-string/jumbo v2, "readonly"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    :cond_0
    const-string/jumbo v2, "archive"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string/jumbo v2, "archive"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_1
    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string/jumbo v2, "system"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :cond_2
    const-string/jumbo v2, "hidden"

    invoke-virtual {v1, v2}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    const-string/jumbo v2, "hidden"

    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    :cond_3
    invoke-virtual {v1}, Lsun/nio/fs/AbstractBasicFileAttributeView$AttributesBuilder;->unmodifiableMap()Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public setArchive(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 201
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "attribute"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "readonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setReadOnly(Z)V

    .line 80
    return-void

    .line 82
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "archive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setArchive(Z)V

    .line 84
    return-void

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setSystem(Z)V

    .line 88
    return-void

    .line 90
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxDosFileAttributeView;->setHidden(Z)V

    .line 92
    return-void

    .line 94
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-super {p0, p1, p2}, Lsun/nio/fs/UnixFileAttributeViews$Basic;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 196
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 191
    return-void
.end method

.method public setSystem(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lsun/nio/fs/LinuxDosFileAttributeView;->updateDosAttribute(IZ)V

    .line 206
    return-void
.end method
