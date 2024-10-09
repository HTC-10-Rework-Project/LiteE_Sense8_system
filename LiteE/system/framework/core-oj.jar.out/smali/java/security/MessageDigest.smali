.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$Delegate;
    }
.end annotation


# static fields
.field private static final INITIAL:I = 0x0

.field private static final IN_PROGRESS:I = 0x1


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private state:I


# direct methods
.method static synthetic -get0(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .locals 1
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic -get2(Ljava/security/MessageDigest;)I
    .locals 1
    .param p0, "-this"    # Ljava/security/MessageDigest;

    .prologue
    iget v0, p0, Ljava/security/MessageDigest;->state:I

    return v0
.end method

.method static synthetic -set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0
    .param p0, "-this"    # Ljava/security/MessageDigest;
    .param p1, "-value"    # Ljava/security/Provider;

    .prologue
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/MessageDigest;I)I
    .locals 0
    .param p0, "-this"    # Ljava/security/MessageDigest;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/security/MessageDigest;->state:I

    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 165
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    const-string/jumbo v4, "MessageDigest"

    .line 200
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    .line 199
    invoke-static {p0, v4, v3}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 201
    .local v2, "objs":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Ljava/security/MessageDigest;

    .line 206
    .local v1, "md":Ljava/security/MessageDigest;
    :goto_0
    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 216
    return-object v1

    .line 204
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_0
    new-instance v1, Ljava/security/MessageDigest$Delegate;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v1, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 218
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 261
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 262
    :cond_1
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_2

    .line 264
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 265
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 266
    return-object v1

    .line 269
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 270
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 271
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_0
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v2

    .line 311
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    .line 312
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 313
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 314
    return-object v1

    .line 317
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 318
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 319
    return-object v0
.end method

.method public static isEqual([B[B)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 552
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 553
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No output buffer given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_1

    .line 424
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 425
    const-string/jumbo v2, "Output buffer too small for specified offset and length"

    .line 424
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    .line 428
    .local v0, "numBytes":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 429
    return v0
.end method

.method public digest()[B
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    .line 401
    .local v0, "result":[B
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 402
    return-object v0
.end method

.method public digest([B)[B
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 446
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    .prologue
    .line 530
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v1

    .line 531
    .local v1, "digestLen":I
    if-nez v1, :cond_0

    .line 533
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 534
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 535
    .local v0, "digest":[B
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 536
    .end local v0    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    return v1

    .line 540
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return v1
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 503
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string/jumbo v1, " Message Digest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    packed-switch v1, :pswitch_data_0

    .line 468
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 461
    :pswitch_0
    const-string/jumbo v1, "<initialized>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 464
    :pswitch_1
    const-string/jumbo v1, "<in progress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 340
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 389
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 390
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 370
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 372
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No input buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 362
    return-void
.end method
