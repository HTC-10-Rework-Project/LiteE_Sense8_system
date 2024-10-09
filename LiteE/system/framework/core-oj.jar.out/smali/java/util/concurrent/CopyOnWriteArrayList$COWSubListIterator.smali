.class Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COWSubListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final offset:I

.field private final size:I


# direct methods
.method constructor <init>(Ljava/util/List;III)V
    .locals 1
    .param p2, "index"    # I
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;III)V"
        }
    .end annotation

    .prologue
    .line 1488
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    .line 1490
    iput p4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->size:I

    .line 1491
    add-int v0, p2, p3

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    .line 1492
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1539
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 1541
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 1543
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 1495
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    const/4 v0, 0x0

    .line 1506
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1499
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1502
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 1517
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1510
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 1521
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1525
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
