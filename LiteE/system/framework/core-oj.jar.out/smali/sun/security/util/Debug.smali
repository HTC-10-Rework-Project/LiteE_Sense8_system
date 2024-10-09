.class public Lsun/security/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static final args:Ljava/lang/String;

.field private static final hexDigits:[C


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lsun/security/util/Debug;->hexDigits:[C

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lsun/security/util/Debug;
    .locals 1
    .param p0, "option"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0, p0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;
    .locals 2
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v0, Lsun/security/util/Debug;

    invoke-direct {v0, p1}, Lsun/security/util/Debug;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "d":Lsun/security/util/Debug;
    return-object v0

    .line 123
    .end local v0    # "d":Lsun/security/util/Debug;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "option"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 133
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 137
    return v0

    .line 139
    :cond_1
    sget-object v2, Lsun/security/util/Debug;->args:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static marshal(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "args"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 203
    if-eqz p0, :cond_2

    .line 204
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .local v8, "target":Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 211
    .local v7, "source":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "[Pp][Ee][Rr][Mm][Ii][Ss][Ss][Ii][Oo][Nn]="

    .line 212
    .local v0, "keyReg":Ljava/lang/String;
    const-string/jumbo v1, "permission="

    .line 213
    .local v1, "keyStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 214
    const-string/jumbo v10, "[a-zA-Z_$][a-zA-Z0-9_$]*([.][a-zA-Z_$][a-zA-Z0-9_$]*)*"

    .line 213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "reg":Ljava/lang/String;
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 216
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 217
    .local v4, "matcher":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v2, "left":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 219
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "matched":Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string/jumbo v9, ""

    invoke-virtual {v4, v2, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 226
    .end local v3    # "matched":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 227
    move-object v7, v2

    .line 236
    const-string/jumbo v0, "[Cc][Oo][Dd][Ee][Bb][Aa][Ss][Ee]="

    .line 237
    const-string/jumbo v1, "codebase="

    .line 238
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "[^, ;]*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 240
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 241
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2    # "left":Ljava/lang/StringBuffer;
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .restart local v2    # "left":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 243
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "matched":Ljava/lang/String;
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string/jumbo v9, ""

    invoke-virtual {v4, v2, v9}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 250
    .end local v3    # "matched":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 251
    move-object v7, v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 259
    .end local v0    # "keyReg":Ljava/lang/String;
    .end local v1    # "keyStr":Ljava/lang/String;
    .end local v2    # "left":Ljava/lang/StringBuffer;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "reg":Ljava/lang/String;
    .end local v7    # "source":Ljava/lang/StringBuffer;
    .end local v8    # "target":Ljava/lang/StringBuffer;
    :cond_2
    return-object v9
.end method

.method public static toHexString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 170
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "hexValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 173
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    const-string/jumbo v3, "   -"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_0
    const/4 v2, 0x0

    .line 184
    .local v2, "i":I
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 186
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    add-int/lit8 v2, v2, 0x2

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 189
    rem-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_3

    .line 190
    const-string/jumbo v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 177
    .end local v2    # "i":I
    :cond_2
    const-string/jumbo v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 191
    .restart local v2    # "i":I
    :cond_3
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1

    .line 192
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 266
    const-string/jumbo v3, "(null)"

    return-object v3

    .line 268
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 269
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 270
    aget-byte v3, p0, v0

    and-int/lit16 v1, v3, 0xff

    .line 271
    .local v1, "k":I
    if-eqz v0, :cond_1

    .line 272
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    sget-object v3, Lsun/security/util/Debug;->hexDigits:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "k":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public println()V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 150
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/util/Debug;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    return-void
.end method
