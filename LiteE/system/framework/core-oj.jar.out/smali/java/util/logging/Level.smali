.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/logging/Level$KnownLevel;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/util/logging/Level;

.field public static final CONFIG:Ljava/util/logging/Level;

.field public static final FINE:Ljava/util/logging/Level;

.field public static final FINER:Ljava/util/logging/Level;

.field public static final FINEST:Ljava/util/logging/Level;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final SEVERE:Ljava/util/logging/Level;

.field public static final WARNING:Ljava/util/logging/Level;

.field private static final defaultBundle:Ljava/lang/String; = "sun.util.logging.resources.logging"

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private transient cachedLocale:Ljava/util/Locale;

.field private transient localizedLevelName:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static synthetic -get0(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Ljava/util/logging/Level;

    .prologue
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/logging/Level;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Ljava/util/logging/Level;

    .prologue
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Ljava/util/logging/Level;)I
    .locals 1
    .param p0, "-this"    # Ljava/util/logging/Level;

    .prologue
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 92
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "OFF"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    .line 103
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "SEVERE"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 113
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "WARNING"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x384

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 124
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x320

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 136
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "CONFIG"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x2bc

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 157
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINE"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 165
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINER"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x190

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 171
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "FINEST"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 177
    new-instance v0, Ljava/util/logging/Level;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v2, "sun.util.logging.resources.logging"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 208
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    .line 217
    iput p2, p0, Ljava/util/logging/Level;->value:I

    .line 218
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 219
    if-nez p3, :cond_2

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    .line 221
    if-eqz p4, :cond_1

    .line 222
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->add(Ljava/util/logging/Level;)V

    .line 224
    :cond_1
    return-void

    .restart local p1    # "name":Ljava/lang/String;
    :cond_2
    move-object p1, v0

    .line 219
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/util/logging/Level;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;
    .param p4, "visible"    # Z
    .param p5, "-this4"    # Ljava/util/logging/Level;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method private computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "newLocale"    # Ljava/util/Locale;

    .prologue
    .line 267
    iget-object v5, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    .line 268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 267
    invoke-static {v5, p1, v6}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3

    .line 269
    .local v3, "rb":Ljava/util/ResourceBundle;
    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "localizedName":Ljava/lang/String;
    const-string/jumbo v5, "sun.util.logging.resources.logging"

    iget-object v6, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 272
    .local v0, "isDefaultBundle":Z
    if-nez v0, :cond_0

    return-object v2

    .line 277
    :cond_0
    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 279
    .local v4, "rbLocale":Ljava/util/Locale;
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 279
    if-eqz v5, :cond_2

    .line 281
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 287
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    :goto_1
    return-object v5

    .line 281
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_2
    move-object v1, v4

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method static findLevel(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 347
    if-nez p0, :cond_0

    .line 348
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 354
    :cond_0
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 355
    .local v1, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_1

    .line 356
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    .line 363
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 364
    .local v3, "x":I
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 365
    if-nez v1, :cond_2

    .line 367
    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 368
    .local v2, "levelObject":Ljava/util/logging/Level;
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 370
    .end local v2    # "levelObject":Ljava/util/logging/Level;
    :cond_2
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 371
    .end local v3    # "x":I
    :catch_0
    move-exception v0

    .line 376
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_3

    .line 378
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    return-object v4

    .line 381
    :cond_3
    return-object v4
.end method

.method public static declared-synchronized parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-class v5, Ljava/util/logging/Level;

    monitor-enter v5

    .line 449
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 454
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 455
    .local v1, "level":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_0

    .line 456
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 463
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 464
    .local v3, "x":I
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 465
    if-nez v1, :cond_1

    .line 467
    new-instance v2, Ljava/util/logging/Level;

    invoke-direct {v2, p0, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    .line 468
    .local v2, "levelObject":Ljava/util/logging/Level;
    invoke-static {v3}, Ljava/util/logging/Level$KnownLevel;->findByValue(I)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 470
    .end local v2    # "levelObject":Ljava/util/logging/Level;
    :cond_1
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4

    .line 471
    .end local v3    # "x":I
    :catch_0
    move-exception v0

    .line 479
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_2

    .line 481
    iget-object v4, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 485
    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad level \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "level":Ljava/util/logging/Level$KnownLevel;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 409
    invoke-static {p0}, Ljava/util/logging/Level$KnownLevel;->matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;

    move-result-object v1

    .line 410
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    if-eqz v1, :cond_0

    .line 411
    iget-object v2, v1, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    return-object v2

    .line 416
    :cond_0
    new-instance v0, Ljava/util/logging/Level;

    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iget v3, p0, Ljava/util/logging/Level;->value:I

    iget-object v4, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    .local v0, "level":Ljava/util/logging/Level;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "ox"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 495
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/logging/Level;

    move-object v2, v0

    .line 496
    .local v2, "lx":Ljava/util/logging/Level;
    iget v4, v2, Ljava/util/logging/Level;->value:I

    iget v5, p0, Ljava/util/logging/Level;->value:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 497
    .end local v2    # "lx":Ljava/util/logging/Level;
    :catch_0
    move-exception v1

    .line 498
    .local v1, "ex":Ljava/lang/Exception;
    return v3
.end method

.method final getCachedLocalizedLevelName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;

    return-object v0

    .line 304
    :cond_0
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0

    .line 312
    :cond_1
    return-object v2
.end method

.method final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method final declared-synchronized getLocalizedLevelName()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Ljava/util/logging/Level;->getCachedLocalizedLevelName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 319
    .local v0, "cachedLocalizedName":Ljava/lang/String;
    if-eqz v0, :cond_0

    monitor-exit p0

    .line 320
    return-object v0

    .line 325
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 327
    .local v2, "newLocale":Ljava/util/Locale;
    :try_start_2
    invoke-direct {p0, v2}, Ljava/util/logging/Level;->computeLocalizedLevelName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :goto_0
    :try_start_3
    iput-object v2, p0, Ljava/util/logging/Level;->cachedLocale:Ljava/util/Locale;

    .line 332
    iget-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    iput-object v3, p0, Ljava/util/logging/Level;->localizedLevelName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "cachedLocalizedName":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "newLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Ljava/util/logging/Level;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    return-object v0
.end method
