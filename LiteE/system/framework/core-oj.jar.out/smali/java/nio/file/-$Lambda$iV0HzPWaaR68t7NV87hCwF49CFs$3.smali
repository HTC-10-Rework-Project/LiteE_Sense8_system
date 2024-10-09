.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/nio/file/FileTreeIterator;

    invoke-static {v0}, Ljava/nio/file/Files;->-java_nio_file_Files-mthref-1(Ljava/nio/file/FileTreeIterator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$3;->$m$0()V

    return-void
.end method
