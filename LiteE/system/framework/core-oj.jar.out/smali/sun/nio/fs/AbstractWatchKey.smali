.class abstract Lsun/nio/fs/AbstractWatchKey;
.super Ljava/lang/Object;
.source "AbstractWatchKey.java"

# interfaces
.implements Ljava/nio/file/WatchKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/AbstractWatchKey$Event;,
        Lsun/nio/fs/AbstractWatchKey$State;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final MAX_EVENT_LIST_SIZE:I = 0x200

.field static final OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/nio/fs/AbstractWatchKey$Event",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dir:Ljava/nio/file/Path;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lastModifyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation
.end field

.field private state:Lsun/nio/fs/AbstractWatchKey$State;

.field private final watcher:Lsun/nio/fs/AbstractWatchService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lsun/nio/fs/AbstractWatchKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    .line 46
    new-instance v0, Lsun/nio/fs/AbstractWatchKey$Event;

    sget-object v1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 45
    sput-object v0, Lsun/nio/fs/AbstractWatchKey;->OVERFLOW_EVENT:Lsun/nio/fs/AbstractWatchKey$Event;

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/nio/file/Path;Lsun/nio/fs/AbstractWatchService;)V
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "watcher"    # Lsun/nio/fs/AbstractWatchService;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    .line 71
    iput-object p1, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    .line 72
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public final pollEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/file/WatchEvent",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 166
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    .line 167
    iget-object v1, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 168
    return-object v0

    .line 164
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/WatchEvent<*>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final reset()Z
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 183
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 180
    :cond_1
    :try_start_1
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signal()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    sget-object v1, Lsun/nio/fs/AbstractWatchKey$State;->READY:Lsun/nio/fs/AbstractWatchKey$State;

    if-ne v0, v1, :cond_0

    .line 95
    sget-object v0, Lsun/nio/fs/AbstractWatchKey$State;->SIGNALLED:Lsun/nio/fs/AbstractWatchKey$State;

    iput-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->state:Lsun/nio/fs/AbstractWatchKey$State;

    .line 96
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    invoke-virtual {v0, p0}, Lsun/nio/fs/AbstractWatchService;->enqueueKey(Ljava/nio/file/WatchKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 99
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final signalEvent(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V
    .locals 7
    .param p2, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "kind":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_1

    const/4 v2, 0x1

    .line 107
    .local v2, "isModify":Z
    :goto_0
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 109
    .local v4, "size":I
    if-lez v4, :cond_6

    .line 112
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/WatchEvent;

    .line 113
    .local v3, "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_0

    .line 114
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    if-ne p1, v5, :cond_2

    .line 115
    invoke-interface {v3}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 117
    :cond_0
    check-cast v3, Lsun/nio/fs/AbstractWatchKey$Event;

    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-virtual {v3}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 118
    return-void

    .line 106
    .end local v2    # "isModify":Z
    .end local v4    # "size":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isModify":Z
    goto :goto_0

    .line 123
    .restart local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v4    # "size":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 124
    if-eqz v2, :cond_4

    .line 125
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/WatchEvent;

    .line 126
    .local v0, "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    if-eqz v0, :cond_5

    .line 127
    sget-boolean v5, Lsun/nio/fs/AbstractWatchKey;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v5

    sget-object v6, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local v4    # "size":I
    .end local p2    # "context":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 128
    .restart local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .restart local v4    # "size":I
    .restart local p2    # "context":Ljava/lang/Object;
    :cond_3
    :try_start_2
    check-cast v0, Lsun/nio/fs/AbstractWatchKey$Event;

    .end local v0    # "ev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    invoke-virtual {v0}, Lsun/nio/fs/AbstractWatchKey$Event;->increment()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 129
    return-void

    .line 134
    :cond_4
    :try_start_3
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_5
    const/16 v5, 0x200

    if-lt v4, v5, :cond_6

    .line 141
    sget-object p1, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    .line 142
    const/4 v2, 0x0

    .line 143
    const/4 p2, 0x0

    .line 149
    .end local v3    # "prev":Ljava/nio/file/WatchEvent;, "Ljava/nio/file/WatchEvent<*>;"
    .end local p2    # "context":Ljava/lang/Object;
    :cond_6
    new-instance v1, Lsun/nio/fs/AbstractWatchKey$Event;

    invoke-direct {v1, p1, p2}, Lsun/nio/fs/AbstractWatchKey$Event;-><init>(Ljava/nio/file/WatchEvent$Kind;Ljava/lang/Object;)V

    .line 150
    .local v1, "ev":Lsun/nio/fs/AbstractWatchKey$Event;, "Lsun/nio/fs/AbstractWatchKey$Event<Ljava/lang/Object;>;"
    if-eqz v2, :cond_8

    .line 151
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_7
    :goto_1
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->signal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 160
    return-void

    .line 152
    :cond_8
    :try_start_4
    sget-object v5, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-ne p1, v5, :cond_7

    .line 154
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 155
    iget-object v5, p0, Lsun/nio/fs/AbstractWatchKey;->lastModifyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public watchable()Ljava/nio/file/Path;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method public bridge synthetic watchable()Ljava/nio/file/Watchable;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lsun/nio/fs/AbstractWatchKey;->watchable()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method final watcher()Lsun/nio/fs/AbstractWatchService;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lsun/nio/fs/AbstractWatchKey;->watcher:Lsun/nio/fs/AbstractWatchService;

    return-object v0
.end method
