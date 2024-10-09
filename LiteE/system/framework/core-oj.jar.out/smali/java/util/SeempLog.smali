.class public final Ljava/util/SeempLog;
.super Ljava/lang/Object;
.source "SeempLog.java"


# static fields
.field private static seemp_record_method:Ljava/lang/reflect/Method;

.field private static seemp_record_method_looked_up:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Ljava/util/SeempLog;->seemp_record_method_looked_up:Z

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static record_str(ILjava/lang/String;)I
    .locals 12
    .param p0, "api"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 60
    sget-object v5, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1

    .line 61
    sget-boolean v5, Ljava/util/SeempLog;->seemp_record_method_looked_up:Z

    if-nez v5, :cond_0

    .line 64
    :try_start_0
    const-string/jumbo v5, "android.util.SeempLog"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v5, "record_str"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "c":Ljava/lang/Class;
    :cond_0
    :goto_0
    sput-boolean v11, Ljava/util/SeempLog;->seemp_record_method_looked_up:Z

    .line 78
    :cond_1
    sget-object v5, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    .line 80
    :try_start_1
    sget-object v5, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    return v5

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    sput-object v9, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 68
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sput-object v9, Ljava/util/SeempLog;->seemp_record_method:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 83
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 84
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    return v10

    .line 81
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    return v10

    .line 88
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :cond_2
    return v10
.end method
