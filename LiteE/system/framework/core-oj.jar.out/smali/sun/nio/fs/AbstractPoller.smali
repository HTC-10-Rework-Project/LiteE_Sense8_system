.class abstract Lsun/nio/fs/AbstractPoller;
.super Ljava/lang/Object;
.source "AbstractPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractPoller$Request;,
        Lsun/nio/fs/AbstractPoller$RequestType;
    }
.end annotation


# static fields
.field private static final synthetic -sun-nio-fs-AbstractPoller$RequestTypeSwitchesValues:[I


# instance fields
.field private final requestList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lsun/nio/fs/AbstractPoller$Request;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z


# direct methods
.method private static synthetic -getsun-nio-fs-AbstractPoller$RequestTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/nio/fs/AbstractPoller;->-sun-nio-fs-AbstractPoller$RequestTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/fs/AbstractPoller;->-sun-nio-fs-AbstractPoller$RequestTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/nio/fs/AbstractPoller$RequestType;->values()[Lsun/nio/fs/AbstractPoller$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPoller$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPoller$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;

    invoke-virtual {v1}, Lsun/nio/fs/AbstractPoller$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lsun/nio/fs/AbstractPoller;->-sun-nio-fs-AbstractPoller$RequestTypeSwitchesValues:[I

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

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    .line 52
    return-void
.end method

.method private varargs invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Lsun/nio/fs/AbstractPoller$RequestType;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lsun/nio/fs/AbstractPoller$Request;

    invoke-direct {v0, p1, p2}, Lsun/nio/fs/AbstractPoller$Request;-><init>(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)V

    .line 214
    .local v0, "req":Lsun/nio/fs/AbstractPoller$Request;
    iget-object v3, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 215
    :try_start_0
    iget-boolean v2, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    if-eqz v2, :cond_0

    .line 216
    new-instance v2, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v2}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 218
    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 222
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller;->wakeup()V

    .line 225
    invoke-virtual {v0}, Lsun/nio/fs/AbstractPoller$Request;->awaitResult()Ljava/lang/Object;

    move-result-object v1

    .line 227
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 228
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "result":Ljava/lang/Object;
    throw v1

    .line 229
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 230
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "result":Ljava/lang/Object;
    throw v1

    .line 231
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method


# virtual methods
.method final cancel(Ljava/nio/file/WatchKey;)V
    .locals 4
    .param p1, "key"    # Ljava/nio/file/WatchKey;

    .prologue
    .line 133
    :try_start_0
    sget-object v1, Lsun/nio/fs/AbstractPoller$RequestType;->CANCEL:Lsun/nio/fs/AbstractPoller$RequestType;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lsun/nio/fs/AbstractPoller$RequestType;->CLOSE:Lsun/nio/fs/AbstractPoller$RequestType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method abstract implCancelKey(Ljava/nio/file/WatchKey;)V
.end method

.method abstract implCloseAll()V
.end method

.method varargs abstract implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method processRequests()Z
    .locals 9

    .prologue
    .line 241
    iget-object v7, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    monitor-enter v7

    .line 243
    :goto_0
    :try_start_0
    iget-object v6, p0, Lsun/nio/fs/AbstractPoller;->requestList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/nio/fs/AbstractPoller$Request;

    .local v5, "req":Lsun/nio/fs/AbstractPoller$Request;
    if-eqz v5, :cond_1

    .line 245
    iget-boolean v6, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    if-eqz v6, :cond_0

    .line 246
    new-instance v6, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v6}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    invoke-virtual {v5, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 249
    :cond_0
    invoke-static {}, Lsun/nio/fs/AbstractPoller;->-getsun-nio-fs-AbstractPoller$RequestTypeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v5}, Lsun/nio/fs/AbstractPoller$Request;->type()Lsun/nio/fs/AbstractPoller$RequestType;

    move-result-object v8

    invoke-virtual {v8}, Lsun/nio/fs/AbstractPoller$RequestType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    .line 284
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v8, "request not recognized"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    .end local v5    # "req":Lsun/nio/fs/AbstractPoller$Request;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 254
    .restart local v5    # "req":Lsun/nio/fs/AbstractPoller$Request;
    :pswitch_0
    :try_start_1
    invoke-virtual {v5}, Lsun/nio/fs/AbstractPoller$Request;->parameters()[Ljava/lang/Object;

    move-result-object v3

    .line 255
    .local v3, "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v4, v3, v6

    check-cast v4, Ljava/nio/file/Path;

    .line 257
    .local v4, "path":Ljava/nio/file/Path;
    const/4 v6, 0x1

    aget-object v0, v3, v6

    check-cast v0, Ljava/util/Set;

    .line 259
    .local v0, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    const/4 v6, 0x2

    aget-object v2, v3, v6

    check-cast v2, [Ljava/nio/file/WatchEvent$Modifier;

    .line 260
    .local v2, "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    invoke-virtual {p0, v4, v0, v2}, Lsun/nio/fs/AbstractPoller;->implRegister(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 267
    .end local v0    # "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    .end local v2    # "modifiers":[Ljava/nio/file/WatchEvent$Modifier;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "path":Ljava/nio/file/Path;
    :pswitch_1
    invoke-virtual {v5}, Lsun/nio/fs/AbstractPoller$Request;->parameters()[Ljava/lang/Object;

    move-result-object v3

    .line 268
    .restart local v3    # "params":[Ljava/lang/Object;
    const/4 v6, 0x0

    aget-object v1, v3, v6

    check-cast v1, Ljava/nio/file/WatchKey;

    .line 269
    .local v1, "key":Ljava/nio/file/WatchKey;
    invoke-virtual {p0, v1}, Lsun/nio/fs/AbstractPoller;->implCancelKey(Ljava/nio/file/WatchKey;)V

    .line 270
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    .end local v1    # "key":Ljava/nio/file/WatchKey;
    .end local v3    # "params":[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lsun/nio/fs/AbstractPoller;->implCloseAll()V

    .line 278
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lsun/nio/fs/AbstractPoller$Request;->release(Ljava/lang/Object;)V

    .line 279
    const/4 v6, 0x1

    iput-boolean v6, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v7

    .line 288
    iget-boolean v6, p0, Lsun/nio/fs/AbstractPoller;->shutdown:Z

    return v6

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method final varargs register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 6
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v3, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 103
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 104
    .local v1, "eventSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/WatchEvent$Kind<*>;>;"
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v0, p2, v2

    .line 106
    .local v0, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v0, v5, :cond_1

    .line 107
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v0, v5, :cond_3

    .line 110
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_3
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v0, v5, :cond_1

    .line 115
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v0, v5, :cond_2

    .line 119
    if-nez v0, :cond_4

    .line 120
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "An element in event set is \'null\'"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_4
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No events to register"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_6
    sget-object v2, Lsun/nio/fs/AbstractPoller$RequestType;->REGISTER:Lsun/nio/fs/AbstractPoller$RequestType;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    invoke-direct {p0, v2, v4}, Lsun/nio/fs/AbstractPoller;->invoke(Lsun/nio/fs/AbstractPoller$RequestType;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/WatchKey;

    return-object v2
.end method

.method public start()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .line 59
    .local v0, "thisRunnable":Ljava/lang/Runnable;
    new-instance v1, Lsun/nio/fs/AbstractPoller$1;

    invoke-direct {v1, p0, p0}, Lsun/nio/fs/AbstractPoller$1;-><init>(Lsun/nio/fs/AbstractPoller;Ljava/lang/Runnable;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method abstract wakeup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
