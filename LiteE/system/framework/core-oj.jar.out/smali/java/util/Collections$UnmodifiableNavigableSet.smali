.class Ljava/util/Collections$UnmodifiableNavigableSet;
.super Ljava/util/Collections$UnmodifiableSortedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSortedSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x53a5cc34698b7d79L


# instance fields
.field private final ns:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/NavigableSet;
    .locals 1

    sget-object v0, Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1276
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;

    invoke-direct {v0}, Ljava/util/Collections$UnmodifiableNavigableSet$EmptyNavigableSet;-><init>()V

    .line 1275
    sput-object v0, Ljava/util/Collections$UnmodifiableNavigableSet;->EMPTY_NAVIGABLE_SET:Ljava/util/NavigableSet;

    .line 1251
    return-void
.end method

.method constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1283
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    iput-object p1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1294
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableNavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1292
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1286
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1302
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    .line 1303
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    .line 1302
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1288
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1285
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1289
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1290
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    .line 1298
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    .line 1297
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1307
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableSet;, "Ljava/util/Collections$UnmodifiableNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/Collections$UnmodifiableNavigableSet;

    .line 1308
    iget-object v1, p0, Ljava/util/Collections$UnmodifiableNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v1

    .line 1307
    invoke-direct {v0, v1}, Ljava/util/Collections$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method
