.class public Ljava/util/concurrent/locks/LockSupport;
.super Ljava/lang/Object;
.source "LockSupport.java"


# static fields
.field private static final PARKBLOCKER:J

.field private static final SECONDARY:J

.field private static final U:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 409
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    .line 414
    :try_start_0
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    .line 415
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "parkBlocker"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 414
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    .line 416
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    .line 417
    const-class v2, Ljava/lang/Thread;

    const-string/jumbo v3, "threadLocalRandomSecondarySeed"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 416
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlocker(Ljava/lang/Thread;)Ljava/lang/Object;
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 290
    :cond_0
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static final nextSecondarySeed()I
    .locals 6

    .prologue
    .line 396
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 397
    .local v1, "t":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .local v0, "r":I
    if-eqz v0, :cond_1

    .line 398
    shl-int/lit8 v2, v0, 0xd

    xor-int/2addr v0, v2

    .line 399
    ushr-int/lit8 v2, v0, 0x11

    xor-int/2addr v0, v2

    .line 400
    shl-int/lit8 v2, v0, 0x5

    xor-int/2addr v0, v2

    .line 404
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/locks/LockSupport;->SECONDARY:J

    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 405
    return v0

    .line 402
    :cond_1
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static park()V
    .locals 4

    .prologue
    .line 319
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 320
    return-void
.end method

.method public static park(Ljava/lang/Object;)V
    .locals 6
    .param p0, "blocker"    # Ljava/lang/Object;

    .prologue
    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 189
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 190
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 191
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public static parkNanos(J)V
    .locals 2
    .param p0, "nanos"    # J

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 353
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 354
    :cond_0
    return-void
.end method

.method public static parkNanos(Ljava/lang/Object;J)V
    .locals 5
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "nanos"    # J

    .prologue
    .line 227
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 229
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 230
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 231
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 233
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public static parkUntil(J)V
    .locals 2
    .param p0, "deadline"    # J

    .prologue
    .line 387
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 388
    return-void
.end method

.method public static parkUntil(Ljava/lang/Object;J)V
    .locals 3
    .param p0, "blocker"    # Ljava/lang/Object;
    .param p1, "deadline"    # J

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 270
    .local v0, "t":Ljava/lang/Thread;
    invoke-static {v0, p0}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 271
    sget-object v1, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 272
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method private static setBlocker(Ljava/lang/Thread;Ljava/lang/Object;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 140
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/LockSupport;->PARKBLOCKER:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static unpark(Ljava/lang/Thread;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 156
    sget-object v0, Ljava/util/concurrent/locks/LockSupport;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method
