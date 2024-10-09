.class public abstract Ljavax/net/ssl/HttpsURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 294
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    return-void
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 337
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 336
    sput-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 339
    :cond_0
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 3
    .param p0, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 228
    if-nez p0, :cond_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 230
    const-string/jumbo v2, "no default HostnameVerifier specified"

    .line 229
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 234
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 235
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string/jumbo v2, "setHostnameVerifier"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 237
    :cond_1
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 238
    return-void
.end method

.method public static setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3
    .param p0, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 312
    if-nez p0, :cond_0

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 314
    const-string/jumbo v2, "no default SSLSocketFactory specified"

    .line 313
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 318
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 321
    :cond_1
    sput-object p0, Ljavax/net/ssl/HttpsURLConnection;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 322
    return-void
.end method


# virtual methods
.method public abstract getCipherSuite()Ljava/lang/String;
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 285
    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public abstract getLocalCertificates()[Ljava/security/cert/Certificate;
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 174
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1

    .line 177
    :cond_0
    return-object v1
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 147
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    return-object v1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public abstract getServerCertificates()[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2
    .param p1, "v"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 268
    const-string/jumbo v1, "no HostnameVerifier specified"

    .line 267
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 272
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 3
    .param p1, "sf"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 360
    const-string/jumbo v2, "no SSLSocketFactory specified"

    .line 359
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 364
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 367
    :cond_1
    iput-object p1, p0, Ljavax/net/ssl/HttpsURLConnection;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 368
    return-void
.end method
