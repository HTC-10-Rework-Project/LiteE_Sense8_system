.class public Lsun/security/jca/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# static fields
.field private static final BACKUP_PROVIDER_CLASSNAME:Ljava/lang/String; = "sun.security.provider.VerificationProvider"

.field private static final jarVerificationProviders:[Ljava/lang/String;

.field private static volatile providerList:Lsun/security/jca/ProviderList;

.field private static final threadLists:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/security/jca/ProviderList;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile threadListsUsed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v1, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v1}, Ljava/lang/InheritableThreadLocal;-><init>()V

    .line 40
    sput-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    .line 54
    sget-object v1, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 55
    invoke-static {}, Lsun/security/jca/ProviderList;->fromSecurityProperties()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 60
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v0

    .line 61
    .local v0, "numConfiguredProviders":I
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    sput-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 62
    sget-object v1, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    invoke-virtual {v1}, Lsun/security/jca/ProviderList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Unable to configure default providers"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 93
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 102
    const-string/jumbo v2, "com.android.org.conscrypt.OpenSSLProvider"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 103
    const-string/jumbo v2, "com.android.org.bouncycastle.jce.provider.BouncyCastleProvider"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 104
    const-string/jumbo v2, "com.android.org.conscrypt.JSSEProvider"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 106
    const-string/jumbo v2, "sun.security.provider.VerificationProvider"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 93
    sput-object v1, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;
    .locals 5
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    const-class v2, Lsun/security/jca/Providers;

    monitor-enter v2

    .line 239
    :try_start_0
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 240
    sget-object v1, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ThreadLocal providers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    :cond_0
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    .line 243
    .local v0, "oldList":Lsun/security/jca/ProviderList;
    sget v1, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsun/security/jca/Providers;->threadListsUsed:I

    .line 244
    sget-object v1, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 245
    return-object v0

    .end local v0    # "oldList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    .locals 1
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 219
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method public static declared-synchronized endThreadProviderList(Lsun/security/jca/ProviderList;)V
    .locals 4
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    const-class v1, Lsun/security/jca/Providers;

    monitor-enter v1

    .line 249
    if-nez p0, :cond_1

    .line 250
    :try_start_0
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "Disabling ThreadLocal providers"

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 261
    :goto_0
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lsun/security/jca/Providers;->threadListsUsed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 262
    return-void

    .line 255
    :cond_1
    :try_start_1
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    .line 256
    sget-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restoring previous ThreadLocal providers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 259
    :cond_2
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getFullProviderList()Lsun/security/jca/ProviderList;
    .locals 4

    .prologue
    .line 178
    const-class v3, Lsun/security/jca/Providers;

    monitor-enter v3

    .line 179
    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 180
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 182
    .local v1, "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_0

    .line 183
    invoke-static {v1}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    move-object v0, v1

    :cond_0
    monitor-exit v3

    .line 186
    return-object v0

    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :cond_1
    monitor-exit v3

    .line 189
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lsun/security/jca/ProviderList;->removeInvalid()Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 191
    .restart local v1    # "newList":Lsun/security/jca/ProviderList;
    if-eq v1, v0, :cond_2

    .line 192
    invoke-static {v1}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 193
    move-object v0, v1

    .line 195
    :cond_2
    return-object v0

    .line 178
    .end local v1    # "newList":Lsun/security/jca/ProviderList;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 153
    .local v0, "list":Lsun/security/jca/ProviderList;
    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Lsun/security/jca/Providers;->getSystemProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public static getSunProvider()Ljava/security/Provider;
    .locals 5

    .prologue
    .line 114
    :try_start_0
    sget-object v3, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 116
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "sun.security.provider.VerificationProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 120
    :catch_1
    move-exception v2

    .line 121
    .local v2, "ee":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Sun provider not found"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getSystemProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static getThreadProviderList()Lsun/security/jca/ProviderList;
    .locals 1

    .prologue
    .line 209
    sget v0, Lsun/security/jca/Providers;->threadListsUsed:I

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lsun/security/jca/Providers;->threadLists:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method public static setProviderList(Lsun/security/jca/ProviderList;)V
    .locals 1
    .param p0, "newList"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 164
    invoke-static {}, Lsun/security/jca/Providers;->getThreadProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    invoke-static {p0}, Lsun/security/jca/Providers;->setSystemProviderList(Lsun/security/jca/ProviderList;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {p0}, Lsun/security/jca/Providers;->changeThreadProviderList(Lsun/security/jca/ProviderList;)V

    goto :goto_0
.end method

.method private static setSystemProviderList(Lsun/security/jca/ProviderList;)V
    .locals 0
    .param p0, "list"    # Lsun/security/jca/ProviderList;

    .prologue
    .line 203
    sput-object p0, Lsun/security/jca/Providers;->providerList:Lsun/security/jca/ProviderList;

    .line 204
    return-void
.end method

.method public static startJarVerification()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 133
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 134
    .local v0, "currentList":Lsun/security/jca/ProviderList;
    sget-object v2, Lsun/security/jca/Providers;->jarVerificationProviders:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsun/security/jca/ProviderList;->getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;

    move-result-object v1

    .line 136
    .local v1, "jarList":Lsun/security/jca/ProviderList;
    invoke-static {v1}, Lsun/security/jca/Providers;->beginThreadProviderList(Lsun/security/jca/ProviderList;)Lsun/security/jca/ProviderList;

    move-result-object v2

    return-object v2
.end method

.method public static stopJarVerification(Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p0, Lsun/security/jca/ProviderList;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lsun/security/jca/Providers;->endThreadProviderList(Lsun/security/jca/ProviderList;)V

    .line 145
    return-void
.end method
