.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_161341(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$1;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
