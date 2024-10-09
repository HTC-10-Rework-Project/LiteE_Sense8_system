.class Ljava/io/DeleteOnExitHook;
.super Ljava/lang/Object;
.source "DeleteOnExitHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/DeleteOnExitHook$1;
    }
.end annotation


# static fields
.field private static files:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/io/DeleteOnExitHook$1;

    invoke-direct {v1}, Ljava/io/DeleteOnExitHook$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized add(Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const-class v1, Ljava/io/DeleteOnExitHook;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Shutdown in progress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_0
    :try_start_1
    sget-object v0, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 55
    return-void
.end method

.method static runHooks()V
    .locals 6

    .prologue
    .line 60
    const-class v5, Ljava/io/DeleteOnExitHook;

    monitor-enter v5

    .line 61
    :try_start_0
    sget-object v2, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;

    .line 62
    .local v2, "theFiles":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    sput-object v4, Ljava/io/DeleteOnExitHook;->files:Ljava/util/LinkedHashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v3, "toBeDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 70
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "filename$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 60
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "filename$iterator":Ljava/util/Iterator;
    .end local v3    # "toBeDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 73
    .restart local v1    # "filename$iterator":Ljava/util/Iterator;
    .restart local v3    # "toBeDeleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
