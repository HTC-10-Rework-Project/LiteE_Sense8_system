.class Lsun/misc/URLClassPath$Loader$1;
.super Lsun/misc/Resource;
.source "URLClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$Loader;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsun/misc/URLClassPath$Loader;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$uc:Ljava/net/URLConnection;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lsun/misc/URLClassPath$Loader;Ljava/lang/String;Ljava/net/URL;Ljava/net/URLConnection;)V
    .locals 0
    .param p1, "this$1"    # Lsun/misc/URLClassPath$Loader;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/misc/URLClassPath$Loader$1;->this$1:Lsun/misc/URLClassPath$Loader;

    iput-object p2, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    .line 549
    invoke-direct {p0}, Lsun/misc/Resource;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getCodeSourceURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->this$1:Lsun/misc/URLClassPath$Loader;

    invoke-static {v0}, Lsun/misc/URLClassPath$Loader;->-get0(Lsun/misc/URLClassPath$Loader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$uc:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lsun/misc/URLClassPath$Loader$1;->val$url:Ljava/net/URL;

    return-object v0
.end method
