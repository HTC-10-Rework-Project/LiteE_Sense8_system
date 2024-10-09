.class Lsun/nio/fs/PollingWatchService$PollingWatchKey;
.super Lsun/nio/fs/AbstractWatchKey;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/PollingWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingWatchKey"
.end annotation


# instance fields
.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/file/Path;",
            "Lsun/nio/fs/PollingWatchService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final fileKey:Ljava/lang/Object;

.field private poller:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/nio/fs/PollingWatchService;

.field private tickCount:I

.field private volatile valid:Z


# direct methods
.method constructor <init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V
    .locals 14
    .param p1, "this$0"    # Lsun/nio/fs/PollingWatchService;
    .param p2, "dir"    # Ljava/nio/file/Path;
    .param p3, "watcher"    # Lsun/nio/fs/PollingWatchService;
    .param p4, "fileKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    .line 249
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/AbstractWatchKey;-><init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V

    .line 250
    move-object/from16 v0, p4

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    .line 251
    const/4 v8, 0x1

    iput-boolean v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 252
    const/4 v8, 0x0

    iput v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    .line 253
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    .line 256
    const/4 v9, 0x0

    const/4 v5, 0x0

    .local v5, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5

    .line 257
    .local v5, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 260
    .local v3, "entry":Ljava/nio/file/Path;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/nio/file/LinkOption;

    sget-object v10, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-static {v3, v8}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v6

    .line 261
    .local v6, "lastModified":J
    iget-object v8, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v10

    new-instance v11, Lsun/nio/fs/PollingWatchService$CacheEntry;

    iget v12, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-direct {v11, v6, v7, v12}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 265
    .end local v3    # "entry":Ljava/nio/file/Path;
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .end local v6    # "lastModified":J
    :catch_0
    move-exception v8

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_1
    if-eqz v5, :cond_0

    :try_start_2
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    if-eqz v9, :cond_4

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v2}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 265
    .end local v2    # "e":Ljava/nio/file/DirectoryIteratorException;
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    .restart local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_1
    if-eqz v5, :cond_2

    :try_start_4
    invoke-interface {v5}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    if-eqz v9, :cond_5

    :try_start_5
    throw v9

    :catch_2
    move-exception v9

    goto :goto_3

    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_3
    move-exception v10

    if-nez v9, :cond_3

    move-object v9, v10

    goto :goto_2

    :cond_3
    if-eq v9, v10, :cond_0

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v8
    :try_end_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_1

    .line 266
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    .restart local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_5
    return-void

    .line 265
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 305
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 308
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    .line 309
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method disable()V
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 300
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enable(Ljava/util/Set;J)V
    .locals 8
    .param p2, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;J)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    monitor-enter p0

    .line 285
    :try_start_0
    iput-object p1, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    .line 288
    new-instance v1, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;

    invoke-direct {v1, p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey$1;-><init>(Lsun/nio/fs/PollingWatchService$PollingWatchKey;)V

    .line 289
    .local v1, "thunk":Ljava/lang/Runnable;
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->this$0:Lsun/nio/fs/PollingWatchService;

    invoke-static {v0}, Lsun/nio/fs/PollingWatchService;->-get1(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 290
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-wide v4, p2

    .line 289
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->poller:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 292
    return-void

    .line 283
    .end local v1    # "thunk":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fileKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    .line 279
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z

    return v0
.end method

.method declared-synchronized poll()V
    .locals 18

    .prologue
    monitor-enter p0

    .line 316
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->valid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_0

    monitor-exit p0

    .line 317
    return-void

    .line 321
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    const/4 v12, 0x0

    .line 326
    .local v12, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 336
    .local v12, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;
    :try_end_3
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    .local v4, "entry":Ljava/nio/file/Path;
    const-wide/16 v8, 0x0

    .line 340
    .local v8, "lastModified":J
    const/4 v14, 0x1

    :try_start_4
    new-array v14, v14, [Ljava/nio/file/LinkOption;

    sget-object v15, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v4, v14}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/file/attribute/FileTime;->toMillis()J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v8

    .line 349
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/nio/fs/PollingWatchService$CacheEntry;

    .line 350
    .local v3, "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    if-nez v3, :cond_4

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    .line 353
    new-instance v16, Lsun/nio/fs/PollingWatchService$CacheEntry;

    move-object/from16 v0, p0

    iget v0, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v8, v9, v1}, Lsun/nio/fs/PollingWatchService$CacheEntry;-><init>(JI)V

    .line 352
    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 357
    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 382
    .end local v3    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v4    # "entry":Ljava/nio/file/Path;
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "lastModified":J
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/nio/file/DirectoryIteratorException;
    :try_start_6
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    .end local v2    # "e":Ljava/nio/file/DirectoryIteratorException;
    :goto_1
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->entries:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 397
    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 398
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 399
    .local v10, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/nio/fs/PollingWatchService$CacheEntry;

    .line 400
    .local v5, "entry":Lsun/nio/fs/PollingWatchService$CacheEntry;
    invoke-virtual {v5}, Lsun/nio/fs/PollingWatchService$CacheEntry;->lastTickCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    if-eq v14, v15, :cond_2

    .line 401
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/nio/file/Path;

    .line 403
    .local v11, "name":Ljava/nio/file/Path;
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 405
    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v5    # "entry":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;>;"
    .end local v10    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;"
    .end local v11    # "name":Ljava/nio/file/Path;
    .end local v12    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 327
    .local v12, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_1
    move-exception v13

    .line 329
    .local v13, "x":Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->cancel()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signal()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    .line 331
    return-void

    .line 364
    .end local v13    # "x":Ljava/io/IOException;
    .restart local v3    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .restart local v4    # "entry":Ljava/nio/file/Path;
    .restart local v6    # "entry$iterator":Ljava/util/Iterator;
    .restart local v8    # "lastModified":J
    .local v12, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 365
    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 385
    .end local v3    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v4    # "entry":Ljava/nio/file/Path;
    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "lastModified":J
    :catchall_1
    move-exception v14

    .line 389
    :try_start_a
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 385
    :goto_3
    :try_start_b
    throw v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 372
    .restart local v3    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .restart local v4    # "entry":Ljava/nio/file/Path;
    .restart local v6    # "entry$iterator":Ljava/util/Iterator;
    .restart local v8    # "lastModified":J
    :cond_4
    :try_start_c
    invoke-static {v3}, Lsun/nio/fs/PollingWatchService$CacheEntry;->-get0(Lsun/nio/fs/PollingWatchService$CacheEntry;)J

    move-result-wide v14

    cmp-long v14, v14, v8

    if-eqz v14, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->events:Ljava/util/Set;

    sget-object v15, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 374
    sget-object v14, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    .line 375
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v15

    .line 374
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 379
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->tickCount:I

    invoke-virtual {v3, v8, v9, v14}, Lsun/nio/fs/PollingWatchService$CacheEntry;->update(JI)V
    :try_end_c
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 389
    .end local v3    # "e":Lsun/nio/fs/PollingWatchService$CacheEntry;
    .end local v4    # "entry":Ljava/nio/file/Path;
    .end local v8    # "lastModified":J
    :cond_6
    :try_start_d
    invoke-interface {v12}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 390
    :catch_2
    move-exception v13

    .restart local v13    # "x":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v6    # "entry$iterator":Ljava/util/Iterator;
    .end local v13    # "x":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/nio/file/DirectoryIteratorException;
    :catch_3
    move-exception v13

    .restart local v13    # "x":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/nio/file/DirectoryIteratorException;
    .end local v13    # "x":Ljava/io/IOException;
    :catch_4
    move-exception v13

    .restart local v13    # "x":Ljava/io/IOException;
    goto :goto_3

    .end local v13    # "x":Ljava/io/IOException;
    .restart local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;>;"
    :cond_7
    monitor-exit p0

    .line 409
    return-void

    .line 341
    .end local v7    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService$CacheEntry;>;>;"
    .restart local v4    # "entry":Ljava/nio/file/Path;
    .restart local v6    # "entry$iterator":Ljava/util/Iterator;
    .restart local v8    # "lastModified":J
    :catch_5
    move-exception v13

    .restart local v13    # "x":Ljava/io/IOException;
    goto/16 :goto_0
.end method
