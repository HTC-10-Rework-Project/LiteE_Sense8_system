.class Ljava/security/Provider$EngineDescription;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineDescription"
.end annotation


# instance fields
.field private volatile constructorParameterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final constructorParameterClassName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field final supportsParameter:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sp"    # Z
    .param p3, "paramName"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    iput-object p1, p0, Ljava/security/Provider$EngineDescription;->name:Ljava/lang/String;

    .line 1309
    iput-boolean p2, p0, Ljava/security/Provider$EngineDescription;->supportsParameter:Z

    .line 1310
    iput-object p3, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    .line 1311
    return-void
.end method


# virtual methods
.method getConstructorParameterClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1313
    iget-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    .line 1314
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1315
    iget-object v1, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1316
    iput-object v0, p0, Ljava/security/Provider$EngineDescription;->constructorParameterClass:Ljava/lang/Class;

    .line 1318
    :cond_0
    return-object v0
.end method
