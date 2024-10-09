.class public Lsun/nio/fs/Globs;
.super Ljava/lang/Object;
.source "Globs.java"


# static fields
.field private static EOL:C = '\u0000'

.field private static final globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-char v0, Lsun/nio/fs/Globs;->EOL:C

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGlobMeta(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 41
    const-string/jumbo v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRegexMeta(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 37
    const-string/jumbo v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static next(Ljava/lang/String;I)C
    .locals 1
    .param p0, "glob"    # Ljava/lang/String;
    .param p1, "i"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 49
    :cond_0
    sget-char v0, Lsun/nio/fs/Globs;->EOL:C

    return v0
.end method

.method private static toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "globPattern"    # Ljava/lang/String;
    .param p1, "isDos"    # Z

    .prologue
    .line 58
    const/4 v4, 0x0

    .line 59
    .local v4, "inGroup":Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "^"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, "regex":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_19

    .line 63
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 64
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 196
    invoke-static {v0}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 197
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 67
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 68
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "No character to escape"

    .line 69
    add-int/lit8 v10, v3, -0x1

    .line 68
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 71
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 72
    .local v6, "next":C
    invoke-static {v6}, Lsun/nio/fs/Globs;->isGlobMeta(C)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v6}, Lsun/nio/fs/Globs;->isRegexMeta(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    :cond_2
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    .end local v6    # "next":C
    .restart local v3    # "i":I
    :sswitch_1
    if-eqz p1, :cond_4

    .line 79
    const-string/jumbo v8, "\\\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v3

    .line 83
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 81
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :sswitch_2
    if-eqz p1, :cond_7

    .line 87
    const-string/jumbo v8, "[[^\\\\]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_2
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x5e

    if-ne v8, v9, :cond_8

    .line 93
    const-string/jumbo v8, "\\^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v2, v3, 0x1

    .line 107
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 108
    .local v1, "hasRangeStart":Z
    const/4 v5, 0x0

    .line 109
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 110
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 111
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_9

    move v2, v3

    .line 145
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v8, 0x5d

    if-eq v0, v8, :cond_12

    .line 146
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \']"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 89
    .end local v1    # "hasRangeStart":Z
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_7
    const-string/jumbo v8, "[[^/]&&["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :cond_8
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_1b

    .line 98
    const/16 v8, 0x5e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v2, v3, 0x1

    .line 102
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :goto_5
    invoke-static {p0, v2}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    .line 103
    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 114
    .end local v2    # "i":I
    .restart local v1    # "hasRangeStart":Z
    .restart local v3    # "i":I
    :cond_9
    const/16 v8, 0x2f

    if-eq v0, v8, :cond_a

    if-eqz p1, :cond_b

    const/16 v8, 0x5c

    if-ne v0, v8, :cond_b

    .line 115
    :cond_a
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Explicit \'name separator\' in class"

    .line 116
    add-int/lit8 v10, v3, -0x1

    .line 115
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 119
    :cond_b
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_c

    const/16 v8, 0x5b

    if-ne v0, v8, :cond_e

    .line 122
    :cond_c
    :goto_6
    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_11

    .line 127
    if-nez v1, :cond_f

    .line 128
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    .line 129
    add-int/lit8 v10, v3, -0x1

    .line 128
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 120
    :cond_e
    const/16 v8, 0x26

    if-ne v0, v8, :cond_d

    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x26

    if-ne v8, v9, :cond_d

    goto :goto_6

    .line 131
    :cond_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v0

    sget-char v8, Lsun/nio/fs/Globs;->EOL:C

    if-eq v0, v8, :cond_6

    const/16 v8, 0x5d

    if-eq v0, v8, :cond_6

    .line 134
    if-ge v0, v5, :cond_10

    .line 135
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Invalid range"

    .line 136
    add-int/lit8 v10, v2, -0x3

    .line 135
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 138
    :cond_10
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 141
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_11
    const/4 v1, 0x1

    .line 142
    move v5, v0

    .local v5, "last":C
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_4

    .line 148
    .end local v5    # "last":C
    :cond_12
    const-string/jumbo v8, "]]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 151
    .end local v1    # "hasRangeStart":Z
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_3
    if-eqz v4, :cond_13

    .line 152
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Cannot nest groups"

    .line 153
    add-int/lit8 v10, v3, -0x1

    .line 152
    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 155
    :cond_13
    const-string/jumbo v8, "(?:(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v4, 0x1

    move v2, v3

    .line 157
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 159
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_4
    if-eqz v4, :cond_14

    .line 160
    const-string/jumbo v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/4 v4, 0x0

    :goto_7
    move v2, v3

    .line 165
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 163
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_14
    const/16 v8, 0x7d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 167
    :sswitch_5
    if-eqz v4, :cond_15

    .line 168
    const-string/jumbo v8, ")|(?:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v2, v3

    .line 172
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 170
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_15
    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 174
    :sswitch_6
    invoke-static {p0, v3}, Lsun/nio/fs/Globs;->next(Ljava/lang/String;I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_16

    .line 176
    const-string/jumbo v8, ".*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 180
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_16
    if-eqz p1, :cond_17

    .line 181
    const-string/jumbo v8, "[^\\\\]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 183
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_17
    const-string/jumbo v8, "[^/]*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 188
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :sswitch_7
    if-eqz p1, :cond_18

    .line 189
    const-string/jumbo v8, "[^\\\\]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    move v2, v3

    .line 193
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    .line 191
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_18
    const-string/jumbo v8, "[^/]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 203
    .end local v0    # "c":C
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_19
    if-eqz v4, :cond_1a

    .line 204
    new-instance v8, Ljava/util/regex/PatternSyntaxException;

    const-string/jumbo v9, "Missing \'}"

    add-int/lit8 v10, v2, -0x1

    invoke-direct {v8, v9, p0, v10}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 207
    :cond_1a
    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2    # "i":I
    .restart local v0    # "c":C
    .restart local v3    # "i":I
    :cond_1b
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_5

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_6
        0x2c -> :sswitch_5
        0x2f -> :sswitch_1
        0x3f -> :sswitch_7
        0x5b -> :sswitch_2
        0x5c -> :sswitch_0
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method static toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "globPattern"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "globPattern"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lsun/nio/fs/Globs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
