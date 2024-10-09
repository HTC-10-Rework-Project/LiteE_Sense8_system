.class public Ljava/util/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private changed:Z

.field private obs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observer;

    .prologue
    monitor-enter p0

    .line 82
    if-nez p1, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 87
    return-void
.end method

.method protected declared-synchronized clearChanged()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 192
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countObservers()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .param p1, "o"    # Ljava/util/Observer;

    .prologue
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 96
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 171
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasChanged()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 206
    :try_start_0
    iget-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 139
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Observable;->hasChanged()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p0

    .line 157
    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/util/Observable;->obs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "arrLocal":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Observable;->clearChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 162
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 163
    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Observer;

    invoke-interface {v2, p0, p1}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 139
    .end local v0    # "arrLocal":[Ljava/lang/Object;
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 164
    .restart local v0    # "arrLocal":[Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected declared-synchronized setChanged()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 178
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/util/Observable;->changed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 179
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
