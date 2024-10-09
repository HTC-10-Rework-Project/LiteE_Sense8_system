.class public Lsun/security/x509/AlgorithmId;
.super Ljava/lang/Object;
.source "AlgorithmId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final AES_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DH_PKIX_data:[I

.field public static final DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DH_data:[I

.field public static final DH_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_OIW_data:[I

.field public static final DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final DSA_PKIX_data:[I

.field public static final DSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final ECDH_oid:Lsun/security/util/ObjectIdentifier;

.field public static final EC_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final MD5_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSAEncryption_data:[I

.field public static final RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final RSA_data:[I

.field public static final RSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA224_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA256_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA384_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA512_oid:Lsun/security/util/ObjectIdentifier;

.field public static final SHA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final dsaWithSHA1_PKIX_data:[I

.field private static initOidTableVersion:I = 0x0

.field private static final md2WithRSAEncryption_data:[I

.field public static final md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final md5WithRSAEncryption_data:[I

.field public static final md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final nameTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public static final pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field public static final pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

.field public static pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier; = null

.field public static final pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

.field private static final serialVersionUID:J = 0x640067c6d62263e5L

.field private static final sha1WithDSA_OIW_data:[I

.field public static final sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_OIW_data:[I

.field public static final sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha1WithRSAEncryption_data:[I

.field public static final sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha224WithRSAEncryption_data:[I

.field public static final sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha256WithRSAEncryption_data:[I

.field public static final sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha384WithRSAEncryption_data:[I

.field public static final sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field public static final sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

.field private static final sha512WithRSAEncryption_data:[I

.field public static final sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

.field private static final shaWithDSA_OIW_data:[I

.field public static final shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

.field public static final specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private algParams:Ljava/security/AlgorithmParameters;

.field private algid:Lsun/security/util/ObjectIdentifier;

.field private constructedFromDer:Z

.field protected params:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0x9

    const/4 v4, 0x6

    const/4 v3, 0x7

    .line 653
    const/4 v0, -0x1

    sput v0, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 654
    sput-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    .line 657
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 656
    sput-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    .line 670
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 669
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    .line 677
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 676
    sput-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    .line 686
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 685
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    .line 689
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 688
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    .line 692
    new-array v0, v5, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 691
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    .line 695
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 694
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    .line 698
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 697
    sput-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    .line 703
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    .line 704
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    .line 705
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    .line 706
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    .line 707
    const/4 v0, 0x2

    const/4 v1, 0x5

    filled-new-array {v0, v1, v7, v6, v6}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    .line 709
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    .line 708
    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    .line 715
    new-array v0, v4, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    .line 716
    const/4 v0, 0x3

    const/16 v1, 0x84

    const/16 v2, 0xc

    filled-new-array {v6, v0, v1, v6, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    .line 724
    new-array v0, v7, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 723
    sput-object v0, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    .line 730
    new-array v0, v3, [I

    fill-array-data v0, :array_e

    .line 729
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    .line 732
    new-array v0, v3, [I

    fill-array-data v0, :array_f

    .line 731
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    .line 734
    new-array v0, v3, [I

    fill-array-data v0, :array_10

    .line 733
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    .line 736
    new-array v0, v4, [I

    fill-array-data v0, :array_11

    .line 735
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    .line 738
    new-array v0, v3, [I

    fill-array-data v0, :array_12

    .line 737
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    .line 740
    new-array v0, v3, [I

    fill-array-data v0, :array_13

    .line 739
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    .line 742
    new-array v0, v3, [I

    fill-array-data v0, :array_14

    .line 741
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    .line 744
    new-array v0, v3, [I

    fill-array-data v0, :array_15

    .line 743
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    .line 746
    new-array v0, v4, [I

    fill-array-data v0, :array_16

    .line 745
    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    .line 748
    new-array v0, v4, [I

    fill-array-data v0, :array_17

    .line 747
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    .line 750
    new-array v0, v4, [I

    fill-array-data v0, :array_18

    .line 749
    sput-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    .line 764
    new-array v0, v5, [I

    fill-array-data v0, :array_19

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 763
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 766
    new-array v0, v5, [I

    fill-array-data v0, :array_1a

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 765
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 769
    new-array v0, v4, [I

    fill-array-data v0, :array_1b

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 768
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 771
    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 770
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 773
    new-array v0, v3, [I

    fill-array-data v0, :array_1d

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 772
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 775
    new-array v0, v3, [I

    fill-array-data v0, :array_1e

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 774
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 777
    new-array v0, v3, [I

    fill-array-data v0, :array_1f

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 776
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 779
    new-array v0, v4, [I

    fill-array-data v0, :array_20

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->oid([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 778
    sput-object v0, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 786
    new-array v0, v3, [I

    fill-array-data v0, :array_21

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 785
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 788
    new-array v0, v3, [I

    fill-array-data v0, :array_22

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 787
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 790
    new-array v0, v3, [I

    fill-array-data v0, :array_23

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 789
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    .line 792
    new-array v0, v3, [I

    fill-array-data v0, :array_24

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 791
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    .line 794
    new-array v0, v7, [I

    fill-array-data v0, :array_25

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 793
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    .line 796
    new-array v0, v7, [I

    fill-array-data v0, :array_26

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 795
    sput-object v0, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    .line 812
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    .line 819
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    .line 829
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 838
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 846
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSA_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 853
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 862
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 861
    sput-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 870
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 869
    sput-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 878
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 877
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 886
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 885
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 894
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 893
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 902
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 901
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 910
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 909
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 918
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 917
    sput-object v0, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    .line 926
    sget-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 933
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    .line 940
    sget-object v0, Lsun/security/x509/AlgorithmId;->dsaWithSHA1_PKIX_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    .line 942
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->RSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DH_PKIX_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "Diffie-Hellman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->DSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "ECDH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "AES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA224withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withECDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD5withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "MD2withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->shaWithDSA_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA224withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withDSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_OIW_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA1withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha224WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA224withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA256withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha384WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA384withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->sha512WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "SHA512withRSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithMD5AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithMD5AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDES_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndDESede_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndDESede"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/AlgorithmId;->pbeWithSHA1AndRC2_40_oid:Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "PBEWithSHA1AndRC2_40"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void

    .line 670
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x2
    .end array-data

    .line 677
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x2
        0x5
    .end array-data

    .line 686
    :array_2
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1a
    .end array-data

    .line 689
    :array_3
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x4
    .end array-data

    .line 692
    :array_4
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x1
    .end array-data

    .line 695
    :array_5
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x2
    .end array-data

    .line 698
    :array_6
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x2
        0x3
    .end array-data

    .line 703
    :array_7
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x3
        0x1
    .end array-data

    .line 704
    :array_8
    .array-data 4
        0x1
        0x2
        0x348
        0x273e
        0x2
        0x1
    .end array-data

    .line 705
    :array_9
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xc
    .end array-data

    .line 706
    :array_a
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x1
    .end array-data

    .line 709
    :array_b
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x1
    .end array-data

    .line 715
    :array_c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x2
        0x1
    .end array-data

    .line 724
    :array_d
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x1
    .end array-data

    .line 730
    :array_e
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x2
    .end array-data

    .line 732
    :array_f
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x4
    .end array-data

    .line 734
    :array_10
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0x5
    .end array-data

    .line 736
    :array_11
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1d
    .end array-data

    .line 738
    :array_12
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xe
    .end array-data

    .line 740
    :array_13
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xb
    .end array-data

    .line 742
    :array_14
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xc
    .end array-data

    .line 744
    :array_15
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x1
        0xd
    .end array-data

    .line 746
    :array_16
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0xd
    .end array-data

    .line 748
    :array_17
    .array-data 4
        0x1
        0x3
        0xe
        0x3
        0x2
        0x1b
    .end array-data

    .line 750
    :array_18
    .array-data 4
        0x1
        0x2
        0x348
        0x2738
        0x4
        0x3
    .end array-data

    .line 764
    :array_19
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x1
    .end array-data

    .line 766
    :array_1a
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x65
        0x3
        0x4
        0x3
        0x2
    .end array-data

    .line 769
    :array_1b
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x1
    .end array-data

    .line 771
    :array_1c
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x1
    .end array-data

    .line 773
    :array_1d
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x2
    .end array-data

    .line 775
    :array_1e
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x3
    .end array-data

    .line 777
    :array_1f
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
        0x4
    .end array-data

    .line 779
    :array_20
    .array-data 4
        0x1
        0x2
        0x348
        0x273d
        0x4
        0x3
    .end array-data

    .line 786
    :array_21
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x3
    .end array-data

    .line 788
    :array_22
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0x6
    .end array-data

    .line 790
    :array_23
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xa
    .end array-data

    .line 792
    :array_24
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x5
        0xb
    .end array-data

    .line 794
    :array_25
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x3
    .end array-data

    .line 796
    :array_26
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0xc
        0x1
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 87
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 95
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 96
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "algparams"    # Ljava/security/AlgorithmParameters;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 105
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 106
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 108
    return-void
.end method

.method private constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "params"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    .line 112
    iput-object p1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    .line 113
    iput-object p2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 114
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->decodeParams()V

    .line 117
    :cond_0
    return-void
.end method

.method private static algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 464
    const-string/jumbo v0, "OID."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v1, "OID."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 472
    :cond_1
    const-string/jumbo v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD5_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 475
    :cond_2
    const-string/jumbo v0, "MD2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    sget-object v0, Lsun/security/x509/AlgorithmId;->MD2_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 478
    :cond_3
    const-string/jumbo v0, "SHA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "SHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 479
    const-string/jumbo v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 478
    if-eqz v0, :cond_5

    .line 480
    :cond_4
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 482
    :cond_5
    const-string/jumbo v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 483
    const-string/jumbo v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 482
    if-eqz v0, :cond_7

    .line 484
    :cond_6
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA256_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 486
    :cond_7
    const-string/jumbo v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 487
    const-string/jumbo v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 486
    if-eqz v0, :cond_9

    .line 488
    :cond_8
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA384_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 490
    :cond_9
    const-string/jumbo v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 491
    const-string/jumbo v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 490
    if-eqz v0, :cond_b

    .line 492
    :cond_a
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA512_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 494
    :cond_b
    const-string/jumbo v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 495
    const-string/jumbo v0, "SHA224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 494
    if-eqz v0, :cond_d

    .line 496
    :cond_c
    sget-object v0, Lsun/security/x509/AlgorithmId;->SHA224_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 500
    :cond_d
    const-string/jumbo v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 501
    sget-object v0, Lsun/security/x509/AlgorithmId;->RSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 503
    :cond_e
    const-string/jumbo v0, "Diffie-Hellman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 504
    const-string/jumbo v0, "DH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 503
    if-eqz v0, :cond_10

    .line 505
    :cond_f
    sget-object v0, Lsun/security/x509/AlgorithmId;->DH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 507
    :cond_10
    const-string/jumbo v0, "DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 508
    sget-object v0, Lsun/security/x509/AlgorithmId;->DSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 510
    :cond_11
    const-string/jumbo v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 511
    sget-object v0, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 513
    :cond_12
    const-string/jumbo v0, "ECDH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 514
    sget-object v0, Lsun/security/x509/AlgorithmId;->ECDH_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 518
    :cond_13
    const-string/jumbo v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 519
    sget-object v0, Lsun/security/x509/AlgorithmId;->AES_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 523
    :cond_14
    const-string/jumbo v0, "MD5withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 524
    const-string/jumbo v0, "MD5/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 523
    if-eqz v0, :cond_16

    .line 525
    :cond_15
    sget-object v0, Lsun/security/x509/AlgorithmId;->md5WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 527
    :cond_16
    const-string/jumbo v0, "MD2withRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 528
    const-string/jumbo v0, "MD2/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 527
    if-eqz v0, :cond_18

    .line 529
    :cond_17
    sget-object v0, Lsun/security/x509/AlgorithmId;->md2WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 531
    :cond_18
    const-string/jumbo v0, "SHAwithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 532
    const-string/jumbo v0, "SHA1withDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_19

    .line 533
    const-string/jumbo v0, "SHA/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_19

    .line 534
    const-string/jumbo v0, "SHA1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_19

    .line 535
    const-string/jumbo v0, "DSAWithSHA1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_19

    .line 536
    const-string/jumbo v0, "DSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_19

    .line 537
    const-string/jumbo v0, "SHA-1/DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 531
    if-eqz v0, :cond_1a

    .line 538
    :cond_19
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 540
    :cond_1a
    const-string/jumbo v0, "SHA224WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 541
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 543
    :cond_1b
    const-string/jumbo v0, "SHA256WithDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 544
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 546
    :cond_1c
    const-string/jumbo v0, "SHA1WithRSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 547
    const-string/jumbo v0, "SHA1/RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 546
    if-eqz v0, :cond_1e

    .line 548
    :cond_1d
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 550
    :cond_1e
    const-string/jumbo v0, "SHA1withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 551
    const-string/jumbo v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 550
    if-eqz v0, :cond_20

    .line 552
    :cond_1f
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha1WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 554
    :cond_20
    const-string/jumbo v0, "SHA224withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 555
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha224WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 557
    :cond_21
    const-string/jumbo v0, "SHA256withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 558
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha256WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 560
    :cond_22
    const-string/jumbo v0, "SHA384withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 561
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha384WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 563
    :cond_23
    const-string/jumbo v0, "SHA512withECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 564
    sget-object v0, Lsun/security/x509/AlgorithmId;->sha512WithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    return-object v0

    .line 569
    :cond_24
    sget-object v1, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v1

    .line 570
    :try_start_0
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 571
    sget-object v0, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v1, :cond_0

    .line 419
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unrecognized algorithm name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v0

    .line 414
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ObjectIdentifier "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v2, Lsun/security/x509/AlgorithmId;

    invoke-direct {v2, v1}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    return-object v2
.end method

.method public static get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;
    .locals 6
    .param p0, "algparams"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "algname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->algOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 442
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v2, :cond_0

    .line 443
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized algorithm name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v1

    .line 439
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    .line 440
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ObjectIdentifier "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v2, p0}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    return-object v3
.end method

.method public static getAlgorithmId(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;
    .locals 1
    .param p0, "algname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    invoke-static {p0}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    return-object v0
.end method

.method public static getDigAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1024
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1025
    const-string/jumbo v1, "WITH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1026
    .local v0, "with":I
    if-lez v0, :cond_0

    .line 1027
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1029
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncAlgFromSigAlg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 1002
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1003
    const-string/jumbo v3, "WITH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1004
    .local v2, "with":I
    const/4 v1, 0x0

    .line 1005
    .local v1, "keyAlgorithm":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 1006
    const-string/jumbo v3, "AND"

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1007
    .local v0, "and":I
    if-lez v0, :cond_1

    .line 1008
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "ECDSA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    const-string/jumbo v1, "EC"

    .line 1016
    .end local v0    # "and":I
    .end local v1    # "keyAlgorithm":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 1010
    .restart local v0    # "and":I
    .local v1, "keyAlgorithm":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "keyAlgorithm":Ljava/lang/String;
    goto :goto_0
.end method

.method public static makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "digAlg"    # Ljava/lang/String;
    .param p1, "encAlg"    # Ljava/lang/String;

    .prologue
    .line 991
    const-string/jumbo v0, "-"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 992
    const-string/jumbo v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "ECDSA"

    .line 994
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "with"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs oid([I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 650
    invoke-static {p0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;
    .locals 5
    .param p0, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 358
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "algid parse error, not a sequence"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v1

    .line 368
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 369
    .local v0, "algid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    .line 370
    const/4 v2, 0x0

    .line 384
    :cond_1
    new-instance v3, Lsun/security/x509/AlgorithmId;

    invoke-direct {v3, v0, v2}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    return-object v3

    .line 372
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 373
    .local v2, "params":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 374
    invoke-virtual {v2}, Lsun/security/util/DerValue;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_3
    const/4 v2, 0x0

    .line 379
    .end local v2    # "params":Lsun/security/util/DerValue;
    :cond_4
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid AlgorithmIdentifier: extra data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static reinitializeMappingTableLocked()V
    .locals 16

    .prologue
    .line 578
    invoke-static {}, Ljava/security/Security;->getVersion()I

    move-result v1

    .line 579
    .local v1, "currentVersion":I
    sget v14, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    if-eq v14, v1, :cond_7

    .line 580
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v9

    .line 581
    .local v9, "provs":[Ljava/security/Provider;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v14, v9

    if-ge v4, v14, :cond_6

    .line 582
    aget-object v14, v9, v4

    invoke-virtual {v14}, Ljava/security/Provider;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 583
    .local v3, "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    .line 582
    if-eqz v14, :cond_1

    .line 584
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    .local v0, "alias":Ljava/lang/String;
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    .line 587
    .local v13, "upperCaseAlias":Ljava/lang/String;
    const-string/jumbo v14, "ALG.ALIAS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 588
    const-string/jumbo v14, "OID."

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .local v5, "index":I
    const/4 v14, -0x1

    if-eq v5, v14, :cond_4

    .line 589
    const-string/jumbo v14, "OID."

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v5, v14

    .line 590
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v5, v14, :cond_2

    .line 581
    .end local v0    # "alias":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 594
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 595
    .local v8, "oidString":Ljava/lang/String;
    aget-object v14, v9, v4

    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 596
    .local v11, "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 597
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 599
    const/4 v6, 0x0

    .line 601
    .local v6, "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_0
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, v8}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .local v7, "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    .line 606
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_2
    if-eqz v6, :cond_0

    .line 607
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 608
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_3
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 611
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 618
    .end local v8    # "oidString":Ljava/lang/String;
    .end local v11    # "stdAlgName":Ljava/lang/String;
    :cond_4
    const/16 v14, 0x2e

    const-string/jumbo v15, "ALG.ALIAS."

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 619
    .local v10, "sep":I
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 621
    .local v12, "suffix":Ljava/lang/String;
    const/4 v6, 0x0

    .line 623
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :try_start_1
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, v12}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    move-object v6, v7

    .line 628
    .end local v7    # "oid":Lsun/security/util/ObjectIdentifier;
    :goto_3
    if-eqz v6, :cond_0

    .line 629
    aget-object v14, v9, v4

    invoke-virtual {v14, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 630
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 631
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 632
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 633
    sget-object v14, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_5
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 636
    sget-object v14, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    invoke-interface {v14, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 645
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .end local v5    # "index":I
    .end local v10    # "sep":I
    .end local v11    # "stdAlgName":Ljava/lang/String;
    .end local v12    # "suffix":Ljava/lang/String;
    .end local v13    # "upperCaseAlias":Ljava/lang/String;
    :cond_6
    sput v1, Lsun/security/x509/AlgorithmId;->initOidTableVersion:I

    .line 647
    .end local v4    # "i":I
    .end local v9    # "provs":[Ljava/security/Provider;
    :cond_7
    return-void

    .line 624
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "enum_":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    .restart local v9    # "provs":[Ljava/security/Provider;
    .restart local v10    # "sep":I
    .restart local v12    # "suffix":Ljava/lang/String;
    .restart local v13    # "upperCaseAlias":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_3

    .line 602
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "sep":I
    .end local v12    # "suffix":Ljava/lang/String;
    .restart local v8    # "oidString":Ljava/lang/String;
    .restart local v11    # "stdAlgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method protected decodeParams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "algidString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 138
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    .line 133
    return-void
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 158
    .local v0, "bytes":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 160
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 162
    iget-boolean v2, p0, Lsun/security/x509/AlgorithmId;->constructedFromDer:Z

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v2, :cond_1

    .line 164
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v3}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    iput-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    .line 169
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->putNull()V

    .line 200
    :goto_1
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 201
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 202
    return-void

    .line 166
    :cond_1
    iput-object v3, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    goto :goto_0

    .line 198
    :cond_2
    iget-object v2, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    goto :goto_1
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 145
    return-void
.end method

.method public final encode()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 210
    .local v0, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/x509/AlgorithmId;->derEncode(Ljava/io/OutputStream;)V

    .line 211
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 290
    if-ne p0, p1, :cond_0

    .line 291
    const/4 v0, 0x1

    return v0

    .line 293
    :cond_0
    instance-of v0, p1, Lsun/security/x509/AlgorithmId;

    if-eqz v0, :cond_1

    .line 294
    check-cast p1, Lsun/security/x509/AlgorithmId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v0

    return v0

    .line 295
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 296
    check-cast p1, Lsun/security/util/ObjectIdentifier;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v0

    return v0

    .line 298
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Lsun/security/util/ObjectIdentifier;)Z
    .locals 1
    .param p1, "id"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 307
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Lsun/security/x509/AlgorithmId;)Z
    .locals 3
    .param p1, "other"    # Lsun/security/x509/AlgorithmId;

    .prologue
    .line 278
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_1

    iget-object v1, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 279
    :goto_0
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    .local v0, "paramsEqual":Z
    goto :goto_0

    .end local v0    # "paramsEqual":Z
    :cond_1
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    iget-object v2, p1, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result v0

    .local v0, "paramsEqual":Z
    goto :goto_0

    .line 279
    .end local v0    # "paramsEqual":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEncodedParams()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 234
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v5, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 236
    return-object v0

    .line 238
    :cond_0
    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    sget-object v5, Lsun/security/x509/AlgorithmId;->specifiedWithECDSA_oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    :try_start_0
    new-instance v4, Lsun/security/util/DerValue;

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    .line 242
    .local v2, "paramsId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "paramsName":Ljava/lang/String;
    const-string/jumbo v4, "EC"

    invoke-static {v3, v4}, Lsun/security/x509/AlgorithmId;->makeSigAlg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    .end local v2    # "paramsId":Lsun/security/x509/AlgorithmId;
    .end local v3    # "paramsName":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v5, Lsun/security/x509/AlgorithmId;->oidTable:Ljava/util/Map;

    monitor-enter v5

    .line 251
    :try_start_1
    invoke-static {}, Lsun/security/x509/AlgorithmId;->reinitializeMappingTableLocked()V

    .line 252
    sget-object v4, Lsun/security/x509/AlgorithmId;->nameTable:Ljava/util/Map;

    iget-object v6, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "algName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "algName":Ljava/lang/String;
    monitor-exit v5

    .line 255
    if-nez v0, :cond_2

    iget-object v4, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "algName":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 250
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 244
    .restart local v0    # "algName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final getOID()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/x509/AlgorithmId;->algid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method protected paramsToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->params:Lsun/security/util/DerValue;

    if-nez v0, :cond_0

    .line 328
    const-string/jumbo v0, ""

    return-object v0

    .line 329
    :cond_0
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lsun/security/x509/AlgorithmId;->algParams:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_1
    const-string/jumbo v0, ", params unparsed"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/x509/AlgorithmId;->paramsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
