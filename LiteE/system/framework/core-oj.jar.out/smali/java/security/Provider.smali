.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$EngineDescription;,
        Ljava/security/Provider$Service;,
        Ljava/security/Provider$ServiceKey;,
        Ljava/security/Provider$UString;
    }
.end annotation


# static fields
.field private static final ALIAS_LENGTH:I

.field private static final ALIAS_PREFIX:Ljava/lang/String; = "Alg.Alias."

.field private static final ALIAS_PREFIX_LOWER:Ljava/lang/String; = "alg.alias."

.field private static final debug:Lsun/security/util/Debug;

.field private static final knownEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$EngineDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile previousKey:Ljava/security/Provider$ServiceKey; = null

.field static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient entrySetCallCount:I

.field private info:Ljava/lang/String;

.field private transient initialized:Z

.field private transient legacyChanged:Z

.field private transient legacyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient legacyStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private volatile registered:Z

.field private transient serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient serviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient servicesChanged:Z

.field private version:D


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    const-string/jumbo v0, "provider"

    const-string/jumbo v1, "Provider"

    .line 101
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 100
    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    .line 968
    const-string/jumbo v0, "Alg.Alias."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljava/security/Provider;->ALIAS_LENGTH:I

    .line 1082
    new-instance v0, Ljava/security/Provider$ServiceKey;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1081
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    .line 1335
    const-string/jumbo v0, "AlgorithmParameterGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1336
    const-string/jumbo v0, "AlgorithmParameters"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1337
    const-string/jumbo v0, "KeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1338
    const-string/jumbo v0, "KeyPairGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1339
    const-string/jumbo v0, "KeyStore"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1340
    const-string/jumbo v0, "MessageDigest"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1341
    const-string/jumbo v0, "SecureRandom"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1342
    const-string/jumbo v0, "Signature"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1343
    const-string/jumbo v0, "CertificateFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1344
    const-string/jumbo v0, "CertPathBuilder"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1345
    const-string/jumbo v0, "CertPathValidator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1346
    const-string/jumbo v0, "CertStore"

    .line 1347
    const-string/jumbo v1, "java.security.cert.CertStoreParameters"

    .line 1346
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1349
    const-string/jumbo v0, "Cipher"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1350
    const-string/jumbo v0, "ExemptionMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1351
    const-string/jumbo v0, "Mac"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1352
    const-string/jumbo v0, "KeyAgreement"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1353
    const-string/jumbo v0, "KeyGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1354
    const-string/jumbo v0, "SecretKeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1356
    const-string/jumbo v0, "KeyManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1357
    const-string/jumbo v0, "SSLContext"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1358
    const-string/jumbo v0, "TrustManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1360
    const-string/jumbo v0, "GssApiMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1362
    const-string/jumbo v0, "SaslClientFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1363
    const-string/jumbo v0, "SaslServerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1365
    const-string/jumbo v0, "Policy"

    .line 1366
    const-string/jumbo v1, "java.security.Policy$Parameters"

    .line 1365
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1368
    const-string/jumbo v0, "Configuration"

    .line 1369
    const-string/jumbo v1, "javax.security.auth.login.Configuration$Parameters"

    .line 1368
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1371
    const-string/jumbo v0, "XMLSignatureFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1372
    const-string/jumbo v0, "KeyInfoFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1373
    const-string/jumbo v0, "TransformService"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1375
    const-string/jumbo v0, "TerminalFactory"

    .line 1376
    const-string/jumbo v1, "java.lang.Object"

    .line 1375
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 93
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 98
    iput-boolean v1, p0, Ljava/security/Provider;->registered:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 127
    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    .line 142
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 143
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 144
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    .line 147
    return-void
.end method

.method private static addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sp"    # Z
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 1326
    new-instance v0, Ljava/security/Provider$EngineDescription;

    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1328
    .local v0, "ed":Ljava/security/Provider$EngineDescription;
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 663
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 664
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 667
    :cond_0
    return-void
.end method

.method private checkInitialized()V
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 659
    :cond_0
    return-void
.end method

.method private checkLegacy(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 715
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    if-eqz v1, :cond_0

    .line 716
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_0
    move-object v0, p1

    .line 718
    check-cast v0, Ljava/lang/String;

    .line 719
    .local v0, "keyString":Ljava/lang/String;
    const-string/jumbo v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    const/4 v1, 0x0

    return v1

    .line 723
    :cond_1
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 724
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 725
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 727
    :cond_2
    return v2
.end method

.method private ensureLegacyParsed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 922
    iget-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 923
    :cond_0
    return-void

    .line 925
    :cond_1
    iput-object v3, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 926
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 927
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    .line 931
    :goto_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 929
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 934
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    .line 935
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 936
    return-void
.end method

.method private static getEngineName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1383
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1384
    .local v0, "e":Ljava/security/Provider$EngineDescription;
    if-nez v0, :cond_0

    .line 1385
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Ljava/security/Provider$EngineDescription;
    check-cast v0, Ljava/security/Provider$EngineDescription;

    .line 1387
    .restart local v0    # "e":Ljava/security/Provider$EngineDescription;
    :cond_0
    if-nez v0, :cond_1

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    iget-object p0, v0, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 953
    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 954
    .local v1, "i":I
    if-ge v1, v5, :cond_1

    .line 955
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    .line 956
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring invalid entry in provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 957
    iget-object v5, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 957
    const-string/jumbo v5, ":"

    .line 956
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 959
    :cond_0
    return-object v6

    .line 961
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 962
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "alg":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    return-object v3
.end method

.method private implClear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 868
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 871
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 874
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 875
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 877
    :cond_2
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 878
    iput-boolean v2, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 879
    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 880
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 881
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 882
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_3

    .line 883
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 885
    :cond_3
    return-void
.end method

.method private implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 809
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 810
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x0

    return-object v0

    .line 817
    :cond_0
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 822
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 826
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 827
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const/4 v0, 0x0

    return-object v0

    .line 830
    :cond_0
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 833
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 838
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    const/4 v0, 0x0

    return-object v0

    .line 841
    :cond_0
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 844
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 798
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 799
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x0

    return-object v0

    .line 802
    :cond_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 805
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 848
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 849
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const/4 v0, 0x0

    return-object v0

    .line 852
    :cond_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implPutAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 739
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_1

    .line 740
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 742
    :cond_1
    return-void
.end method

.method private implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 858
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 859
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    const/4 v0, 0x0

    return-object v0

    .line 862
    :cond_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 745
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 746
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x0

    return-object v0

    .line 749
    :cond_0
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_1
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 755
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 756
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    return v0

    .line 759
    :cond_0
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 761
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private implRemoveService(Ljava/security/Provider$Service;)V
    .locals 10
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1252
    if-eqz p1, :cond_0

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 1253
    :cond_0
    return-void

    .line 1255
    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    .line 1256
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    invoke-direct {v3, v5, v0, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1258
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 1259
    .local v4, "oldService":Ljava/security/Provider$Service;
    if-eq p1, v4, :cond_2

    .line 1260
    return-void

    .line 1262
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1263
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1265
    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v5, v1, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1267
    .end local v1    # "alias":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    .line 1268
    return-void
.end method

.method private implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 777
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 778
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const/4 v0, 0x0

    return-object v0

    .line 781
    :cond_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 765
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 766
    instance-of v0, p3, Ljava/lang/String;

    .line 765
    if-eqz v0, :cond_1

    .line 767
    invoke-direct {p0, p1}, Ljava/security/Provider;->checkLegacy(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    const/4 v0, 0x0

    return v0

    .line 770
    :cond_0
    iget-object v3, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    move-object v2, p3

    .line 771
    check-cast v2, Ljava/lang/String;

    .line 770
    invoke-interface {v3, v0, v1, v2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 773
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/Properties;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private implReplaceAll(Ljava/util/function/BiFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 788
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 793
    :goto_0
    invoke-super {p0, p1}, Ljava/util/Properties;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 794
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    goto :goto_0
.end method

.method private parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 971
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "alg.alias."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 974
    move-object/from16 v10, p2

    .line 975
    .local v10, "stdAlg":Ljava/lang/String;
    sget v13, Ljava/security/Provider;->ALIAS_LENGTH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "aliasKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 977
    .local v12, "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_0

    .line 978
    return-void

    .line 980
    :cond_0
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 981
    .local v11, "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "aliasAlg":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-direct {v8, v11, v0, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 983
    .local v8, "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 984
    .local v9, "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_1

    .line 985
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 986
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    new-instance v14, Ljava/security/Provider$ServiceKey;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v11, v1, v15, v0}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    invoke-static {v9, v1}, Ljava/security/Provider$Service;->-wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 1035
    .end local v1    # "aliasAlg":Ljava/lang/String;
    .end local v2    # "aliasKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 993
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "typeAndAlg":[Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 994
    .restart local v12    # "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_3

    .line 995
    return-void

    .line 997
    :cond_3
    const/4 v13, 0x1

    aget-object v13, v12, v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 998
    .local v7, "i":I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_5

    .line 1000
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1001
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .restart local v10    # "stdAlg":Ljava/lang/String;
    move-object/from16 v6, p2

    .line 1003
    .local v6, "className":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1004
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 1005
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_4

    .line 1006
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 1007
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1008
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1009
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1014
    .end local v6    # "className":Ljava/lang/String;
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, p2

    .line 1015
    .local v5, "attributeValue":Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Ljava/security/Provider;->getEngineName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1016
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v4, v12, v13

    .line 1017
    .local v4, "attributeString":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 1018
    .restart local v10    # "stdAlg":Ljava/lang/String;
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "attributeName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1021
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1023
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1024
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1025
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 1026
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_7

    .line 1027
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 1028
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 1030
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private putId()V
    .locals 4

    .prologue
    .line 694
    const-string/jumbo v0, "Provider.id name"

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v0, "Provider.id version"

    iget-wide v2, p0, Ljava/security/Provider;->version:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v0, "Provider.id info"

    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string/jumbo v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method private putPropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 1175
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-super {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1180
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alg.Alias."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1182
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1183
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1184
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-super {p0, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1186
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    .line 1187
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1189
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 702
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/security/Provider;->registered:Z

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 704
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 705
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 707
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    .line 708
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 709
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    .line 710
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/Provider;->initialized:Z

    .line 711
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    .line 712
    return-void
.end method

.method private removeInvalidServices(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 943
    if-eqz v2, :cond_1

    .line 945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider$Service;

    .line 946
    .local v0, "s":Ljava/security/Provider$Service;
    invoke-static {v0}, Ljava/security/Provider$Service;->-wrap0(Ljava/security/Provider$Service;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 950
    .end local v0    # "s":Ljava/security/Provider$Service;
    :cond_1
    return-void
.end method

.method private removePropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 1196
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1197
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1201
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alg.Alias."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1203
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1204
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1205
    .local v5, "key":Ljava/lang/String;
    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1207
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    .line 1208
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 1210
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 212
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearProviderProperties."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 213
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 511
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 514
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 515
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Compute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 517
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implCompute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function",
            "<-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 541
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 544
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ComputeIfAbsent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 570
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 573
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 574
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ComputeIfPresent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 577
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implComputeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 646
    invoke-super {p0}, Ljava/util/Properties;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 263
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 264
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 265
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    if-nez v0, :cond_1

    .line 266
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 276
    :cond_0
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 277
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 268
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 279
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 631
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 632
    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 633
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 615
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 622
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 623
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 652
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1058
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1060
    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1061
    .local v0, "key":Ljava/security/Provider$ServiceKey;
    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1062
    new-instance v0, Ljava/security/Provider$ServiceKey;

    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1063
    .restart local v0    # "key":Ljava/security/Provider$ServiceKey;
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 1065
    :cond_0
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 1066
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    .local v1, "service":Ljava/security/Provider$Service;
    if-eqz v1, :cond_1

    monitor-exit p0

    .line 1068
    return-object v1

    .line 1071
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1072
    iget-object v3, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1094
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1095
    iget-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    if-eqz v1, :cond_1

    .line 1096
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1098
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    if-nez v1, :cond_4

    .line 1099
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1100
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1101
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1102
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1104
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 1105
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1107
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 1108
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1110
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_4
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 1893
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 291
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 639
    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 229
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putProviderProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 230
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " provider properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 233
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 234
    .local v0, "tempProperties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 235
    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 236
    return-void

    .end local v0    # "tempProperties":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 602
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 605
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Merge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 608
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implMerge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 324
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 325
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    const-string/jumbo v2, "/"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    const-string/jumbo v2, "]"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 248
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Put all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 252
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 351
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 352
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string/jumbo v2, "/"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
    const-string/jumbo v2, "]"

    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    monitor-enter p0

    .line 1143
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putProviderProperty."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1144
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_0

    .line 1145
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".putService(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1147
    :cond_0
    if-nez p1, :cond_1

    .line 1148
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1150
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 1151
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1152
    const-string/jumbo v6, "service.getProvider() must match this Provider object"

    .line 1151
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1154
    :cond_2
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 1155
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    .line 1157
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 1158
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 1162
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    .line 1163
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1165
    .local v1, "alias":Ljava/lang/String;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v6, Ljava/security/Provider$ServiceKey;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v4, v1, v7, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1167
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1168
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 377
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 378
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 402
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 403
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 406
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 3
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    monitor-enter p0

    .line 1241
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 1242
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 1243
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".removeService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1245
    :cond_0
    if-nez p1, :cond_1

    .line 1246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1248
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1249
    return-void
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 454
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 456
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 459
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 428
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 430
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Replace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 433
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/security/Provider;->implReplace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
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

.method public declared-synchronized replaceAll(Ljava/util/function/BiFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-Ljava/lang/Object;-Ljava/lang/Object;+Ljava/lang/Object;>;"
    monitor-enter p0

    .line 482
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 484
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReplaceAll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implReplaceAll(Ljava/util/function/BiFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 488
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRegistered()V
    .locals 1

    .prologue
    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1880
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1887
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 303
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized warmUpServiceProvision()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1905
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1908
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1911
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1912
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
