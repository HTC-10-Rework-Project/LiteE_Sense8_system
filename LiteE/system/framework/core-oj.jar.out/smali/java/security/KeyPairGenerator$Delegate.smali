.class final Ljava/security/KeyPairGenerator$Delegate;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Delegate"
.end annotation


# static fields
.field private static final I_NONE:I = 0x1

.field private static final I_PARAMS:I = 0x3

.field private static final I_SIZE:I = 0x2


# instance fields
.field private initKeySize:I

.field private initParams:Ljava/security/spec/AlgorithmParameterSpec;

.field private initRandom:Ljava/security/SecureRandom;

.field private initType:I

.field private final lock:Ljava/lang/Object;

.field private serviceIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private volatile spi:Ljava/security/KeyPairGeneratorSpi;


# direct methods
.method constructor <init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V
    .locals 1
    .param p1, "spi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 589
    invoke-direct {p0, p2}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 590
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 591
    return-void
.end method

.method constructor <init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Lsun/security/jca/GetInstance$Instance;
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/jca/GetInstance$Instance;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/security/Provider$Service;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, "serviceIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Provider$Service;>;"
    invoke-direct {p0, p3}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 574
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    .line 596
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 597
    iget-object v0, p1, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v0, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 598
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 599
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 608
    return-void
.end method

.method private nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;
    .locals 10
    .param p1, "oldSpi"    # Ljava/security/KeyPairGeneratorSpi;
    .param p2, "reinit"    # Z

    .prologue
    const/4 v9, 0x0

    .line 618
    iget-object v6, p0, Ljava/security/KeyPairGenerator$Delegate;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 621
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    if-eq p1, v5, :cond_0

    .line 622
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v5

    .line 624
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    monitor-exit v6

    .line 625
    return-object v9

    .line 627
    :cond_1
    :goto_0
    :try_start_2
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 628
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    .local v3, "s":Ljava/security/Provider$Service;
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 632
    .local v2, "inst":Ljava/lang/Object;
    instance-of v5, v2, Ljava/security/KeyPairGeneratorSpi;

    if-eqz v5, :cond_1

    .line 635
    instance-of v5, v2, Ljava/security/KeyPairGenerator;

    if-nez v5, :cond_1

    .line 638
    move-object v0, v2

    check-cast v0, Ljava/security/KeyPairGeneratorSpi;

    move-object v4, v0

    .line 639
    .local v4, "spi":Ljava/security/KeyPairGeneratorSpi;
    if-eqz p2, :cond_2

    .line 640
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    .line 641
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 649
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    iput-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->provider:Ljava/security/Provider;

    .line 650
    iput-object v4, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 651
    return-object v4

    .line 642
    :cond_3
    :try_start_4
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_4

    .line 643
    iget-object v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v7, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4, v5, v7}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_1

    .line 652
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 644
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "inst":Ljava/lang/Object;
    .restart local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :cond_4
    iget v5, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    .line 645
    new-instance v5, Ljava/lang/AssertionError;

    .line 646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "KeyPairGenerator initType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 645
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 618
    .end local v2    # "inst":Ljava/lang/Object;
    .end local v3    # "s":Ljava/security/Provider$Service;
    .end local v4    # "spi":Ljava/security/KeyPairGeneratorSpi;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 656
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator$Delegate;->disableFailover()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    .line 657
    return-object v9
.end method


# virtual methods
.method disableFailover()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 664
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 665
    iput-object v1, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;

    .line 666
    return-void
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 727
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 728
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    return-object v3

    .line 730
    :cond_0
    const/4 v1, 0x0

    .line 731
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 734
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/security/KeyPairGeneratorSpi;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 737
    move-object v1, v0

    .line 739
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 741
    if-nez v2, :cond_1

    .line 742
    throw v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 670
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 671
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 672
    return-void

    .line 674
    :cond_0
    const/4 v1, 0x0

    .line 675
    .local v1, "failure":Ljava/lang/RuntimeException;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 678
    .end local v1    # "failure":Ljava/lang/RuntimeException;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(ILjava/security/SecureRandom;)V

    .line 679
    const/4 v3, 0x2

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 680
    iput p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 681
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 682
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/RuntimeException;
    if-nez v1, :cond_2

    .line 686
    move-object v1, v0

    .line 688
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 690
    if-nez v2, :cond_1

    .line 691
    throw v1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 697
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->serviceIterator:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 698
    iget-object v3, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 699
    return-void

    .line 701
    :cond_0
    const/4 v1, 0x0

    .line 702
    .local v1, "failure":Ljava/lang/Exception;
    iget-object v2, p0, Ljava/security/KeyPairGenerator$Delegate;->spi:Ljava/security/KeyPairGeneratorSpi;

    .line 705
    .end local v1    # "failure":Ljava/lang/Exception;
    .local v2, "mySpi":Ljava/security/KeyPairGeneratorSpi;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1, p2}, Ljava/security/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 706
    const/4 v3, 0x3

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initType:I

    .line 707
    const/4 v3, 0x0

    iput v3, p0, Ljava/security/KeyPairGenerator$Delegate;->initKeySize:I

    .line 708
    iput-object p1, p0, Ljava/security/KeyPairGenerator$Delegate;->initParams:Ljava/security/spec/AlgorithmParameterSpec;

    .line 709
    iput-object p2, p0, Ljava/security/KeyPairGenerator$Delegate;->initRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 713
    move-object v1, v0

    .line 715
    :cond_2
    invoke-direct {p0, v2, v4}, Ljava/security/KeyPairGenerator$Delegate;->nextSpi(Ljava/security/KeyPairGeneratorSpi;Z)Ljava/security/KeyPairGeneratorSpi;

    move-result-object v2

    .line 717
    if-nez v2, :cond_1

    .line 718
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 719
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 722
    :cond_3
    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1
.end method
