.class final Ljava/lang/ProcessBuilder$Redirect$3;
.super Ljava/lang/ProcessBuilder$Redirect;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/ProcessBuilder$Redirect;-><init>(Ljava/lang/ProcessBuilder$Redirect;)V

    .line 1
    return-void
.end method


# virtual methods
.method public file()Ljava/io/File;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "redirect to read from file \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/ProcessBuilder$Redirect$3;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/ProcessBuilder$Redirect$Type;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    return-object v0
.end method
