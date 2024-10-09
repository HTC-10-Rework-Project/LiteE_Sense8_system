.class public Lsun/reflect/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .locals 3
    .param p0, "currentClass"    # Ljava/lang/Class;
    .param p1, "memberClass"    # Ljava/lang/Class;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 44
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 48
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string/jumbo v2, " can not access a member of class "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, " with modifiers \""

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "\""

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    return-void
.end method

.method private static isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "c1"    # Ljava/lang/Class;
    .param p1, "c2"    # Ljava/lang/Class;

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v0, v1, v2, v3}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSameClassPackage(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)Z
    .locals 11
    .param p0, "loader1"    # Ljava/lang/ClassLoader;
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "loader2"    # Ljava/lang/ClassLoader;
    .param p3, "name2"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x2e

    const/4 v0, -0x1

    const/16 v3, 0x5b

    const/4 v1, 0x0

    .line 148
    if-eq p0, p2, :cond_0

    .line 149
    return v1

    .line 151
    :cond_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 152
    .local v6, "lastDot1":I
    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 153
    .local v7, "lastDot2":I
    if-eq v6, v0, :cond_1

    if-ne v7, v0, :cond_3

    .line 156
    :cond_1
    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 158
    :cond_3
    const/4 v2, 0x0

    .line 159
    .local v2, "idx1":I
    const/4 v4, 0x0

    .line 162
    .local v4, "idx2":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    .line 164
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_4

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_5

    .line 168
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal class name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_5
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7

    .line 173
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 174
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_6

    .line 175
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_7

    .line 177
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal class name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_7
    sub-int v5, v6, v2

    .line 183
    .local v5, "length1":I
    sub-int v8, v7, v4

    .line 185
    .local v8, "length2":I
    if-eq v5, v8, :cond_8

    .line 186
    return v1

    :cond_8
    move-object v0, p1

    move-object v3, p3

    .line 188
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "queryClass"    # Ljava/lang/Class;
    .param p1, "ofClass"    # Ljava/lang/Class;

    .prologue
    .line 196
    :goto_0
    if-eqz p0, :cond_1

    .line 197
    if-ne p0, p1, :cond_0

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static verifyMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)Z
    .locals 7
    .param p0, "currentClass"    # Ljava/lang/Class;
    .param p1, "memberClass"    # Ljava/lang/Class;
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "modifiers"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "gotIsSameClassPackage":Z
    const/4 v1, 0x0

    .line 73
    .local v1, "isSameClassPackage":Z
    if-ne p0, p1, :cond_0

    .line 75
    return v6

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 82
    .local v1, "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 83
    if-nez v1, :cond_1

    .line 84
    return v5

    .line 90
    .end local v1    # "isSameClassPackage":Z
    :cond_1
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    return v6

    .line 94
    :cond_2
    const/4 v2, 0x0

    .line 96
    .local v2, "successSoFar":Z
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    const/4 v2, 0x1

    .line 103
    :cond_3
    if-nez v2, :cond_5

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 104
    if-nez v0, :cond_4

    .line 105
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 107
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 110
    .end local v1    # "isSameClassPackage":Z
    :cond_4
    if-eqz v1, :cond_5

    .line 111
    const/4 v2, 0x1

    .line 115
    :cond_5
    if-nez v2, :cond_6

    .line 116
    return v5

    .line 119
    :cond_6
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 121
    if-nez p2, :cond_8

    move-object v3, p1

    .line 122
    .local v3, "targetClass":Ljava/lang/Class;
    :goto_0
    if-eq v3, p0, :cond_9

    .line 123
    if-nez v0, :cond_7

    .line 124
    invoke-static {p0, p1}, Lsun/reflect/Reflection;->isSameClassPackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    .line 125
    .restart local v1    # "isSameClassPackage":Z
    const/4 v0, 0x1

    .line 127
    .end local v1    # "isSameClassPackage":Z
    :cond_7
    if-nez v1, :cond_9

    .line 128
    invoke-static {v3, p0}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 129
    return v5

    .line 121
    .end local v3    # "targetClass":Ljava/lang/Class;
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .restart local v3    # "targetClass":Ljava/lang/Class;
    goto :goto_0

    .line 135
    .end local v3    # "targetClass":Ljava/lang/Class;
    :cond_9
    return v6
.end method
