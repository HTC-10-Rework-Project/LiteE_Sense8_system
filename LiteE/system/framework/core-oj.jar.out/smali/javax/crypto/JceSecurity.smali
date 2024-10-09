.class final Ljavax/crypto/JceSecurity;
.super Ljava/lang/Object;
.source "JceSecurity.java"


# static fields
.field private static final NULL_URL:Ljava/net/URL;

.field private static final PROVIDER_VERIFIED:Ljava/lang/Object;

.field static final RANDOM:Ljava/security/SecureRandom;

.field private static final codeBaseCacheRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPolicy:Ljavax/crypto/CryptoPermissions;

.field private static exemptPolicy:Ljavax/crypto/CryptoPermissions;

.field private static isRestricted:Z

.field private static final verificationResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final verifyingProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/net/URL;
    .locals 1

    sget-object v0, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    sput-object v1, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    .line 54
    sput-object v2, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    .line 55
    sput-object v2, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    .line 61
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 60
    sput-object v1, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    .line 65
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 64
    sput-object v1, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    .line 68
    const/4 v1, 0x1

    sput-boolean v1, Ljavax/crypto/JceSecurity;->isRestricted:Z

    .line 167
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    .line 215
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string/jumbo v2, "http://null.sun.com/"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 222
    sput-object v1, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    .line 48
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static canUseProvider(Ljava/security/Provider;)Z
    .locals 1
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method static getCodeBase(Ljava/lang/Class;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 229
    sget-object v2, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    monitor-enter v2

    .line 230
    :try_start_0
    sget-object v3, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 231
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 232
    new-instance v3, Ljavax/crypto/JceSecurity$1;

    invoke-direct {v3, p0}, Ljavax/crypto/JceSecurity$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "url":Ljava/net/URL;
    check-cast v0, Ljava/net/URL;

    .line 244
    .restart local v0    # "url":Ljava/net/URL;
    sget-object v3, Ljavax/crypto/JceSecurity;->codeBaseCacheRef:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    sget-object v3, Ljavax/crypto/JceSecurity;->NULL_URL:Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_1

    move-object v0, v1

    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    monitor-exit v2

    return-object v0

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getDefaultPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getExemptPolicy()Ljavax/crypto/CryptoPermissions;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 126
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    .line 127
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .local v4, "s$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider$Service;

    .line 128
    .local v3, "s":Ljava/security/Provider$Service;
    invoke-virtual {v3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/JceSecurity;->canUseProvider(Ljava/security/Provider;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    :try_start_0
    invoke-static {v3, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    .local v2, "instance":Lsun/security/jca/GetInstance$Instance;
    return-object v2

    .line 135
    .end local v2    # "instance":Lsun/security/jca/GetInstance$Instance;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "s":Ljava/security/Provider$Service;
    :cond_1
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 140
    const-string/jumbo v8, " not available"

    .line 139
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 102
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    .line 103
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/security/NoSuchProviderException;

    invoke-direct {v3, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/NoSuchProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 105
    check-cast v3, Ljava/security/NoSuchProviderException;

    throw v3

    .line 108
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/security/Provider;",
            ")",
            "Lsun/security/jca/GetInstance$Instance;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 114
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {p3}, Ljavax/crypto/JceSecurity;->getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;

    move-result-object v2

    .line 115
    .local v2, "ve":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JCE cannot authenticate the provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    invoke-virtual {p3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 120
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v1, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v3

    return-object v3
.end method

.method static declared-synchronized getVerificationResult(Ljava/security/Provider;)Ljava/lang/Exception;
    .locals 7
    .param p0, "p"    # Ljava/security/Provider;

    .prologue
    const/4 v6, 0x0

    const-class v4, Ljavax/crypto/JceSecurity;

    monitor-enter v4

    .line 176
    :try_start_0
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 177
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v1, v3, :cond_0

    monitor-exit v4

    .line 178
    return-object v6

    .line 179
    :cond_0
    if-eqz v1, :cond_1

    .line 180
    :try_start_1
    check-cast v1, Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "o":Ljava/lang/Object;
    monitor-exit v4

    return-object v1

    .line 182
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_2
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 185
    new-instance v3, Ljava/security/NoSuchProviderException;

    const-string/jumbo v5, "Recursion during verification"

    invoke-direct {v3, v5}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    return-object v3

    .line 188
    :cond_2
    :try_start_3
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/JceSecurity;->getCodeBase(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v2

    .line 190
    .local v2, "providerURL":Ljava/net/URL;
    invoke-static {v2}, Ljavax/crypto/JceSecurity;->verifyProviderJar(Ljava/net/URL;)V

    .line 192
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    sget-object v5, Ljavax/crypto/JceSecurity;->PROVIDER_VERIFIED:Ljava/lang/Object;

    invoke-interface {v3, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :try_start_4
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 193
    return-object v6

    .line 194
    .end local v2    # "providerURL":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v3, Ljavax/crypto/JceSecurity;->verificationResults:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    :try_start_6
    sget-object v3, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    .line 196
    return-object v0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 198
    :try_start_7
    sget-object v5, Ljavax/crypto/JceSecurity;->verifyingProviders:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v1    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static isRestricted()Z
    .locals 1

    .prologue
    .line 341
    sget-boolean v0, Ljavax/crypto/JceSecurity;->isRestricted:Z

    return v0
.end method

.method private static loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V
    .locals 6
    .param p0, "jarPathName"    # Ljava/io/File;
    .param p1, "defaultPolicy"    # Ljavax/crypto/CryptoPermissions;
    .param p2, "exemptPolicy"    # Ljavax/crypto/CryptoPermissions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 302
    .local v3, "jf":Ljava/util/jar/JarFile;
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 303
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 305
    .local v2, "je":Ljava/util/jar/JarEntry;
    const/4 v1, 0x0

    .line 307
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "default_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 309
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :goto_1
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 325
    :cond_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/JarVerifier;->verifyPolicySigned([Ljava/security/cert/Certificate;)V

    goto :goto_0

    .line 310
    .local v1, "is":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "exempt_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-virtual {v3, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 312
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p2, v1}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 316
    .end local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 317
    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 316
    :cond_3
    throw v4

    .line 328
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    :cond_4
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, "jf":Ljava/util/jar/JarFile;
    return-void
.end method

.method private static setupJurisdictionPolicies()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 251
    const-string/jumbo v11, "java.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "javaHomeDir":Ljava/lang/String;
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 253
    .local v9, "sep":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "lib"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 254
    const-string/jumbo v12, "security"

    .line 253
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "pathToPolicyJar":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v11, "US_export_policy.jar"

    invoke-direct {v4, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v4, "exportJar":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v11, "local_policy.jar"

    invoke-direct {v5, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v5, "importJar":Ljava/io/File;
    const-string/jumbo v11, "javax/crypto/Cipher.class"

    .line 258
    invoke-static {v11}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 261
    .local v7, "jceCipherURL":Ljava/net/URL;
    if-eqz v7, :cond_0

    .line 262
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 261
    if-nez v11, :cond_0

    .line 262
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 261
    if-eqz v11, :cond_1

    .line 263
    :cond_0
    new-instance v10, Ljava/lang/SecurityException;

    .line 264
    const-string/jumbo v11, "Cannot locate policy or framework files!"

    .line 263
    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 268
    :cond_1
    new-instance v0, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v0}, Ljavax/crypto/CryptoPermissions;-><init>()V

    .line 269
    .local v0, "defaultExport":Ljavax/crypto/CryptoPermissions;
    new-instance v2, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v2}, Ljavax/crypto/CryptoPermissions;-><init>()V

    .line 270
    .local v2, "exemptExport":Ljavax/crypto/CryptoPermissions;
    invoke-static {v4, v0, v2}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    .line 272
    new-instance v1, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v1}, Ljavax/crypto/CryptoPermissions;-><init>()V

    .line 273
    .local v1, "defaultImport":Ljavax/crypto/CryptoPermissions;
    new-instance v3, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v3}, Ljavax/crypto/CryptoPermissions;-><init>()V

    .line 274
    .local v3, "exemptImport":Ljavax/crypto/CryptoPermissions;
    invoke-static {v5, v1, v3}, Ljavax/crypto/JceSecurity;->loadPolicies(Ljava/io/File;Ljavax/crypto/CryptoPermissions;Ljavax/crypto/CryptoPermissions;)V

    .line 277
    invoke-virtual {v0}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 278
    :cond_2
    new-instance v10, Ljava/lang/SecurityException;

    const-string/jumbo v11, "Missing mandatory jurisdiction policy files"

    invoke-direct {v10, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 281
    :cond_3
    invoke-virtual {v0, v1}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    move-result-object v11

    sput-object v11, Ljavax/crypto/JceSecurity;->defaultPolicy:Ljavax/crypto/CryptoPermissions;

    .line 284
    invoke-virtual {v2}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 285
    invoke-virtual {v3}, Ljavax/crypto/CryptoPermissions;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v3, v10

    .end local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_4
    sput-object v3, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    .line 289
    :goto_0
    return-void

    .line 287
    .restart local v3    # "exemptImport":Ljavax/crypto/CryptoPermissions;
    :cond_5
    invoke-virtual {v2, v3}, Ljavax/crypto/CryptoPermissions;->getMinimum(Ljavax/crypto/CryptoPermissions;)Ljavax/crypto/CryptoPermissions;

    move-result-object v10

    sput-object v10, Ljavax/crypto/JceSecurity;->exemptPolicy:Ljavax/crypto/CryptoPermissions;

    goto :goto_0
.end method

.method static verifyExemptJar(Ljava/net/URL;)Ljavax/crypto/CryptoPermissions;
    .locals 2
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 151
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 152
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->getPermissions()Ljavax/crypto/CryptoPermissions;

    move-result-object v1

    return-object v1
.end method

.method static verifyProviderJar(Ljava/net/URL;)V
    .locals 2
    .param p0, "codeBase"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljavax/crypto/JarVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/crypto/JarVerifier;-><init>(Ljava/net/URL;Z)V

    .line 164
    .local v0, "jv":Ljavax/crypto/JarVerifier;
    invoke-virtual {v0}, Ljavax/crypto/JarVerifier;->verify()V

    .line 165
    return-void
.end method
