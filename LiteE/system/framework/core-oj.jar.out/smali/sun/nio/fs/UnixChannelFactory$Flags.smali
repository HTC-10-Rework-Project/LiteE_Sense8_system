.class public Lsun/nio/fs/UnixChannelFactory$Flags;
.super Ljava/lang/Object;
.source "UnixChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Flags"
.end annotation


# static fields
.field private static final synthetic -java-nio-file-StandardOpenOptionSwitchesValues:[I


# instance fields
.field append:Z

.field create:Z

.field createNew:Z

.field deleteOnClose:Z

.field dsync:Z

.field noFollowLinks:Z

.field read:Z

.field sync:Z

.field truncateExisting:Z

.field write:Z


# direct methods
.method private static synthetic -getjava-nio-file-StandardOpenOptionSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/nio/file/StandardOpenOption;->values()[Ljava/nio/file/StandardOpenOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lsun/nio/fs/UnixChannelFactory$Flags;->-java-nio-file-StandardOpenOptionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Lsun/nio/fs/UnixChannelFactory$Flags;"
        }
    .end annotation

    .prologue
    .local p0, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    const/4 v5, 0x1

    .line 69
    new-instance v0, Lsun/nio/fs/UnixChannelFactory$Flags;

    invoke-direct {v0}, Lsun/nio/fs/UnixChannelFactory$Flags;-><init>()V

    .line 70
    .local v0, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "option$iterator":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/OpenOption;

    .line 71
    .local v1, "option":Ljava/nio/file/OpenOption;
    instance-of v3, v1, Ljava/nio/file/StandardOpenOption;

    if-eqz v3, :cond_0

    .line 72
    invoke-static {}, Lsun/nio/fs/UnixChannelFactory$Flags;->-getjava-nio-file-StandardOpenOptionSwitchesValues()[I

    move-result-object v3

    check-cast v1, Ljava/nio/file/StandardOpenOption;

    .end local v1    # "option":Ljava/nio/file/OpenOption;
    invoke-virtual {v1}, Ljava/nio/file/StandardOpenOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 83
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 73
    :pswitch_1
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    goto :goto_0

    .line 74
    :pswitch_2
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    goto :goto_0

    .line 75
    :pswitch_3
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    goto :goto_0

    .line 76
    :pswitch_4
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    goto :goto_0

    .line 77
    :pswitch_5
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    goto :goto_0

    .line 78
    :pswitch_6
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    goto :goto_0

    .line 79
    :pswitch_7
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    goto :goto_0

    .line 81
    :pswitch_8
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    goto :goto_0

    .line 82
    :pswitch_9
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    goto :goto_0

    .line 87
    .restart local v1    # "option":Ljava/nio/file/OpenOption;
    :cond_0
    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v1, v3, :cond_1

    sget v3, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-eqz v3, :cond_1

    .line 88
    iput-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    goto :goto_0

    .line 91
    :cond_1
    if-nez v1, :cond_2

    .line 92
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 93
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v1    # "option":Ljava/nio/file/OpenOption;
    :cond_3
    return-object v0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
