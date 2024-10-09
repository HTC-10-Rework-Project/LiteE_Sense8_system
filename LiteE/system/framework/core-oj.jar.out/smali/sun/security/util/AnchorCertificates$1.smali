.class final Lsun/security/util/AnchorCertificates$1;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/AnchorCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lsun/security/util/AnchorCertificates$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 53
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    const-string/jumbo v9, "lib/security/cacerts"

    .line 53
    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v4, "f":Ljava/io/File;
    :try_start_0
    const-string/jumbo v8, "JKS"

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 58
    .local v1, "cacerts":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v1, v6, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 60
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-static {v8}, Lsun/security/util/AnchorCertificates;->-set0(Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 61
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v7

    .line 63
    .local v7, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 64
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "alias":Ljava/lang/String;
    const-string/jumbo v8, " [jdk"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 69
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get0()Ljava/util/HashSet;

    move-result-object v8

    const-string/jumbo v9, "SHA-256"

    invoke-static {v9, v2}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 72
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_2
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_3
    if-eqz v9, :cond_7

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    .end local v1    # "cacerts":Ljava/security/KeyStore;
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get1()Lsun/security/util/Debug;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 75
    invoke-static {}, Lsun/security/util/AnchorCertificates;->-get1()Lsun/security/util/Debug;

    move-result-object v8

    const-string/jumbo v9, "Error parsing cacerts"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v10

    .line 72
    .restart local v1    # "cacerts":Ljava/security/KeyStore;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_5

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    move-object v8, v10

    :goto_4
    if-eqz v8, :cond_3

    :try_start_7
    throw v8

    :catch_2
    move-exception v8

    goto :goto_4

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_3
    move-exception v11

    if-nez v9, :cond_6

    move-object v9, v11

    goto :goto_3

    :cond_6
    if-eq v9, v11, :cond_1

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v9, v10

    goto :goto_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    goto :goto_2

    .local v5, "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    goto :goto_1
.end method
