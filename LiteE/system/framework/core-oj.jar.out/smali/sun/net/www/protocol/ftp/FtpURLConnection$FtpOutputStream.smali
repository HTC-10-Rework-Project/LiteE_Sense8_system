.class public Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FtpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/ftp/FtpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FtpOutputStream"
.end annotation


# instance fields
.field ftp:Lsun/net/ftp/FtpClient;

.field final synthetic this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/ftp/FtpURLConnection;Lsun/net/ftp/FtpClient;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/www/protocol/ftp/FtpURLConnection;
    .param p2, "cl"    # Lsun/net/ftp/FtpClient;
    .param p3, "fd"    # Ljava/io/OutputStream;

    .prologue
    .line 147
    iput-object p1, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->this$0:Lsun/net/www/protocol/ftp/FtpURLConnection;

    .line 148
    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    iput-object p2, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    .line 150
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 155
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lsun/net/www/protocol/ftp/FtpURLConnection$FtpOutputStream;->ftp:Lsun/net/ftp/FtpClient;

    invoke-virtual {v0}, Lsun/net/ftp/FtpClient;->close()V

    .line 158
    :cond_0
    return-void
.end method
