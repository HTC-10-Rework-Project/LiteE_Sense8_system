.class Ljava/net/URI$Parser;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field private input:Ljava/lang/String;

.field private ipv6byteCount:I

.field private requireServerAuthority:Z

.field final synthetic this$0:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Ljava/net/URI;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2864
    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2862
    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3479
    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 2865
    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    .line 2866
    invoke-static {p1, p2}, Ljava/net/URI;->-set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 2867
    return-void
.end method

.method private at(IIC)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 2910
    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private at(IILjava/lang/String;)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2917
    move v1, p1

    .line 2918
    .local v1, "p":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 2919
    .local v3, "sn":I
    sub-int v5, p2, p1

    if-le v3, v5, :cond_0

    .line 2920
    return v4

    .line 2921
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .line 2922
    .end local v1    # "p":I
    .local v2, "p":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 2923
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    .line 2928
    :goto_1
    if-ne v0, v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 2926
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_0

    :cond_3
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1
.end method

.method private charAt(I)C
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 2904
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private checkChar(IJJLjava/lang/String;)V
    .locals 10
    .param p1, "p"    # I
    .param p2, "lowMask"    # J
    .param p4, "highMask"    # J
    .param p6, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3059
    add-int/lit8 v3, p1, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3060
    return-void
.end method

.method private checkChars(IIJJLjava/lang/String;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .param p7, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3047
    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3048
    .local v0, "p":I
    if-ge v0, p2, :cond_0

    .line 3049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3050
    :cond_0
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2872
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private fail(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2876
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private failExpecting(Ljava/lang/String;I)V
    .locals 2
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2883
    return-void
.end method

.method private failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "prior"    # Ljava/lang/String;
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " following "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2889
    return-void
.end method

.method private parseAuthority(II)I
    .locals 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3157
    move v8, p1

    .line 3158
    .local v8, "p":I
    move v9, p1

    .line 3159
    .local v9, "q":I
    const/4 v0, 0x0

    .line 3164
    .local v0, "ex":Ljava/net/URISyntaxException;
    const-string/jumbo v1, ""

    const-string/jumbo v2, "]"

    invoke-direct {p0, p1, p2, v1, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-le v1, p1, :cond_1

    .line 3166
    invoke-static {}, Ljava/net/URI;->-get22()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get9()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v11, 0x1

    .line 3170
    .local v11, "serverChars":Z
    :goto_0
    invoke-static {}, Ljava/net/URI;->-get19()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get6()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_3

    const/4 v10, 0x1

    .line 3172
    .local v10, "regChars":Z
    :goto_1
    if-eqz v10, :cond_4

    xor-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_4

    .line 3174
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3175
    return p2

    .line 3166
    .end local v10    # "regChars":Z
    .end local v11    # "serverChars":Z
    :cond_0
    const/4 v11, 0x0

    .restart local v11    # "serverChars":Z
    goto :goto_0

    .line 3168
    .end local v11    # "serverChars":Z
    :cond_1
    invoke-static {}, Ljava/net/URI;->-get21()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get8()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v11, 0x1

    .restart local v11    # "serverChars":Z
    goto :goto_0

    .end local v11    # "serverChars":Z
    :cond_2
    const/4 v11, 0x0

    .restart local v11    # "serverChars":Z
    goto :goto_0

    .line 3170
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "regChars":Z
    goto :goto_1

    .line 3178
    :cond_4
    if-eqz v11, :cond_6

    .line 3183
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->parseServer(II)I

    move-result v9

    .line 3184
    if-ge v9, p2, :cond_5

    .line 3185
    const-string/jumbo v1, "end of authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3186
    :cond_5
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3205
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    :cond_6
    :goto_2
    if-ge v9, p2, :cond_7

    .line 3206
    if-eqz v10, :cond_9

    .line 3208
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3218
    :cond_7
    :goto_3
    return p2

    .line 3187
    .restart local v0    # "ex":Ljava/net/URISyntaxException;
    :catch_0
    move-exception v12

    .line 3189
    .local v12, "x":Ljava/net/URISyntaxException;
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3190
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3191
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I

    .line 3192
    iget-boolean v1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    if-eqz v1, :cond_8

    .line 3195
    throw v12

    .line 3199
    :cond_8
    move-object v0, v12

    .line 3200
    .local v0, "ex":Ljava/net/URISyntaxException;
    move v9, p1

    goto :goto_2

    .line 3209
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v12    # "x":Ljava/net/URISyntaxException;
    :cond_9
    if-eqz v0, :cond_a

    .line 3212
    throw v0

    .line 3214
    :cond_a
    const-string/jumbo v1, "Illegal character in authority"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private parseHierarchical(II)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 3120
    move v2, p1

    .line 3121
    .local v2, "p":I
    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3122
    add-int/lit8 v2, p1, 0x2

    .line 3123
    const-string/jumbo v0, ""

    const-string/jumbo v1, "/?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3124
    .local v3, "q":I
    if-le v3, v2, :cond_2

    .line 3125
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->parseAuthority(II)I

    move-result v2

    .line 3132
    .end local v3    # "q":I
    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "?#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3133
    .restart local v3    # "q":I
    invoke-static {}, Ljava/net/URI;->-get18()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get5()J

    move-result-wide v6

    const-string/jumbo v8, "path"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3134
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3135
    move v2, v3

    .line 3136
    const/16 v0, 0x3f

    invoke-direct {p0, v3, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3137
    add-int/lit8 v2, v3, 0x1

    .line 3138
    const-string/jumbo v0, ""

    const-string/jumbo v1, "#"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3139
    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v6

    const-string/jumbo v8, "query"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3140
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URI;->-set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3141
    move v2, v3

    .line 3143
    :cond_1
    return v2

    .line 3126
    :cond_2
    if-lt v3, p2, :cond_0

    .line 3130
    const-string/jumbo v0, "authority"

    invoke-direct {p0, v0, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private parseHostname(II)I
    .locals 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3389
    move v2, p1

    .line 3391
    .local v2, "p":I
    const/4 v0, -0x1

    .line 3402
    .local v0, "l":I
    :goto_0
    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    .line 3403
    .local v4, "q":I
    if-gt v4, v2, :cond_4

    .line 3421
    :cond_0
    if-ge v2, p2, :cond_1

    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 3422
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3424
    :cond_1
    if-gez v0, :cond_2

    .line 3425
    const-string/jumbo v1, "hostname"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3429
    :cond_2
    if-le v0, p1, :cond_3

    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 3430
    const-string/jumbo v1, "Illegal character in hostname"

    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3433
    :cond_3
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3434
    return v2

    .line 3405
    :cond_4
    move v0, v2

    .line 3406
    if-le v4, v2, :cond_6

    .line 3407
    move v2, v4

    .line 3408
    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get14()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get23()J

    move-result-wide v8

    or-long/2addr v6, v8

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v8

    invoke-static {}, Ljava/net/URI;->-get2()J

    move-result-wide v10

    or-long/2addr v8, v10

    invoke-static {}, Ljava/net/URI;->-get10()J

    move-result-wide v10

    or-long/2addr v8, v10

    move-object v3, p0

    move v5, p2

    invoke-direct/range {v3 .. v9}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v4

    .line 3409
    if-le v4, v2, :cond_6

    .line 3410
    add-int/lit8 v1, v4, -0x1

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_5

    .line 3411
    const-string/jumbo v1, "Illegal character in hostname"

    add-int/lit8 v3, v4, -0x1

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3412
    :cond_5
    move v2, v4

    .line 3415
    :cond_6
    const/16 v1, 0x2e

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    .line 3416
    if-le v4, v2, :cond_0

    .line 3418
    move v2, v4

    .line 3419
    if-ge v4, p2, :cond_0

    goto/16 :goto_0
.end method

.method private parseIPv4Address(II)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "n"    # I

    .prologue
    const/4 v4, -0x1

    .line 3360
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3367
    .local v1, "p":I
    if-le v1, p1, :cond_0

    if-ge v1, p2, :cond_0

    .line 3371
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 3372
    const/4 v1, -0x1

    .line 3376
    :cond_0
    if-le v1, p1, :cond_1

    .line 3377
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3379
    :cond_1
    return v1

    .line 3363
    .end local v1    # "p":I
    :catch_0
    move-exception v0

    .line 3364
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v4

    .line 3361
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 3362
    .local v2, "x":Ljava/net/URISyntaxException;
    return v4
.end method

.method private parseIPv6Reference(II)I
    .locals 6
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 3484
    move v1, p1

    .line 3486
    .local v1, "p":I
    const/4 v0, 0x0

    .line 3488
    .local v0, "compressedZeros":Z
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v2

    .line 3490
    .local v2, "q":I
    if-le v2, p1, :cond_6

    .line 3491
    move v1, v2

    .line 3492
    const-string/jumbo v3, "::"

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3493
    const/4 v0, 0x1

    .line 3494
    add-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    .line 3503
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    .line 3504
    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3505
    :cond_1
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-le v3, v5, :cond_2

    .line 3506
    const-string/jumbo v3, "IPv6 address too long"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3507
    :cond_2
    if-nez v0, :cond_3

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ge v3, v5, :cond_3

    .line 3508
    const-string/jumbo v3, "IPv6 address too short"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3509
    :cond_3
    if-eqz v0, :cond_4

    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ne v3, v5, :cond_4

    .line 3510
    const-string/jumbo v3, "Malformed IPv6 address"

    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3512
    :cond_4
    return v1

    .line 3495
    :cond_5
    const/16 v3, 0x3a

    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3496
    add-int/lit8 v3, v2, 0x1

    const-string/jumbo v4, "IPv4 address"

    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v1

    .line 3497
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_0

    .line 3499
    :cond_6
    const-string/jumbo v3, "::"

    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3500
    const/4 v0, 0x1

    .line 3501
    add-int/lit8 v3, p1, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v1

    goto :goto_0
.end method

.method private parseServer(II)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3227
    move v2, p1

    .line 3231
    .local v2, "p":I
    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "@"

    invoke-direct {p0, p1, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3232
    .local v3, "q":I
    if-lt v3, p1, :cond_0

    const/16 v1, 0x40

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3233
    invoke-static {}, Ljava/net/URI;->-get25()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get12()J

    move-result-wide v6

    const-string/jumbo v8, "user info"

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3234
    .end local v2    # "p":I
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3235
    add-int/lit8 v2, v3, 0x1

    .line 3239
    .restart local v2    # "p":I
    :cond_0
    const/16 v1, 0x5b

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3241
    add-int/lit8 v0, v2, 0x1

    .line 3242
    .end local v2    # "p":I
    .local v0, "p":I
    const-string/jumbo v1, "/?#"

    const-string/jumbo v4, "]"

    invoke-direct {p0, v0, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3243
    if-le v3, v0, :cond_5

    const/16 v1, 0x5d

    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3245
    const-string/jumbo v1, ""

    const-string/jumbo v4, "%"

    invoke-direct {p0, v0, v3, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3246
    .local v9, "r":I
    if-le v9, v0, :cond_4

    .line 3247
    invoke-direct {p0, v0, v9}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3248
    add-int/lit8 v1, v9, 0x1

    if-ne v1, v3, :cond_1

    .line 3249
    const-string/jumbo v1, "scope id expected"

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    .line 3251
    :cond_1
    add-int/lit8 v2, v9, 0x1

    invoke-static {}, Ljava/net/URI;->-get13()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get1()J

    move-result-wide v6

    .line 3252
    const-string/jumbo v8, "scope id"

    move-object v1, p0

    .line 3251
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3256
    :goto_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3257
    add-int/lit8 v2, v3, 0x1

    .line 3269
    .end local v0    # "p":I
    .end local v9    # "r":I
    .restart local v2    # "p":I
    :goto_1
    const/16 v1, 0x3a

    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3270
    add-int/lit8 v2, v2, 0x1

    .line 3271
    const-string/jumbo v1, ""

    const-string/jumbo v4, "/"

    invoke-direct {p0, v2, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3272
    if-le v3, v2, :cond_2

    .line 3273
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-string/jumbo v8, "port number"

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3275
    :try_start_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3279
    :goto_2
    move v2, v3

    .line 3282
    :cond_2
    if-ge v2, p2, :cond_3

    .line 3283
    const-string/jumbo v1, "port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3285
    :cond_3
    return v2

    .line 3254
    .end local v2    # "p":I
    .restart local v0    # "p":I
    .restart local v9    # "r":I
    :cond_4
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    goto :goto_0

    .line 3259
    .end local v9    # "r":I
    :cond_5
    const-string/jumbo v1, "closing bracket for IPv6 address"

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    move v2, v0

    .end local v0    # "p":I
    .restart local v2    # "p":I
    goto :goto_1

    .line 3262
    :cond_6
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    move-result v3

    .line 3263
    if-gt v3, v2, :cond_7

    .line 3264
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseHostname(II)I

    move-result v3

    .line 3265
    :cond_7
    move v2, v3

    goto :goto_1

    .line 3276
    :catch_0
    move-exception v10

    .line 3277
    .local v10, "x":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "Malformed port number"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private scan(IIC)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .prologue
    .line 2963
    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    .line 2964
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 2965
    :cond_0
    return p1
.end method

.method private scan(IIJJ)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3021
    move v1, p1

    .line 3022
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 3023
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    .line 3024
    .local v0, "c":C
    invoke-static {v0, p3, p4, p5, p6}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3025
    add-int/lit8 v1, v1, 0x1

    .line 3026
    goto :goto_0

    .line 3028
    :cond_0
    const-wide/16 v4, 0x1

    and-long/2addr v4, p3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 3029
    invoke-direct {p0, v1, p2, v0}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    move-result v2

    .line 3030
    .local v2, "q":I
    if-le v2, v1, :cond_1

    .line 3031
    move v1, v2

    .line 3032
    goto :goto_0

    .line 3037
    .end local v0    # "c":C
    .end local v2    # "q":I
    :cond_1
    return v1
.end method

.method private scan(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "err"    # Ljava/lang/String;
    .param p4, "stop"    # Ljava/lang/String;

    .prologue
    .line 2976
    move v1, p1

    .line 2977
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 2978
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    .line 2979
    .local v0, "c":C
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 2980
    const/4 v2, -0x1

    return v2

    .line 2981
    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2985
    .end local v0    # "c":C
    :cond_1
    return v1

    .line 2983
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private scanByte(II)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3293
    move v0, p1

    .line 3294
    .local v0, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v8

    .line 3295
    .local v8, "q":I
    if-gt v8, p1, :cond_0

    return v8

    .line 3296
    :cond_0
    invoke-direct {p0, p1, v8}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    return p1

    .line 3297
    :cond_1
    return v8
.end method

.method private scanEscape(IIC)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "first"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 2997
    move v1, p1

    .line 2998
    .local v1, "p":I
    move v0, p3

    .line 2999
    .local v0, "c":C
    const/16 v2, 0x25

    if-ne p3, v2, :cond_2

    .line 3001
    add-int/lit8 v2, p1, 0x3

    if-gt v2, p2, :cond_0

    .line 3002
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    .line 3001
    if-eqz v2, :cond_0

    .line 3003
    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    move-result v2

    .line 3001
    if-eqz v2, :cond_0

    .line 3004
    add-int/lit8 v2, p1, 0x3

    return v2

    .line 3006
    :cond_0
    const-string/jumbo v2, "Malformed escape pair"

    invoke-direct {p0, v2, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3013
    :cond_1
    return p1

    .line 3007
    :cond_2
    const/16 v2, 0x80

    if-le p3, v2, :cond_1

    .line 3008
    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3007
    if-eqz v2, :cond_1

    .line 3009
    invoke-static {p3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3007
    if-eqz v2, :cond_1

    .line 3011
    add-int/lit8 v2, p1, 0x1

    return v2
.end method

.method private scanHexPost(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3518
    move v0, p1

    .line 3521
    .local v0, "p":I
    if-ne p1, p2, :cond_0

    .line 3522
    return p1

    .line 3524
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v1

    .line 3525
    .local v1, "q":I
    if-le v1, p1, :cond_2

    .line 3526
    move v0, v1

    .line 3527
    const/16 v2, 0x3a

    invoke-direct {p0, v1, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3528
    add-int/lit8 v0, v1, 0x1

    .line 3529
    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3530
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3536
    :cond_1
    :goto_0
    return v0

    .line 3533
    :cond_2
    const-string/jumbo v2, "hex digits or IPv4 address"

    invoke-direct {p0, p1, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3534
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_0
.end method

.method private scanHexSeq(II)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0x2e

    const/4 v8, -0x1

    .line 3544
    move v2, p1

    .line 3547
    .local v2, "p":I
    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    .end local v2    # "p":I
    move-result v0

    .line 3548
    .local v0, "q":I
    if-gt v0, p1, :cond_0

    .line 3549
    return v8

    .line 3550
    :cond_0
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3551
    return v8

    .line 3552
    :cond_1
    add-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_2

    .line 3553
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3554
    :cond_2
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3555
    move v2, v0

    .line 3556
    .restart local v2    # "p":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 3557
    invoke-direct {p0, v2, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3575
    :cond_3
    :goto_1
    return v2

    .line 3559
    :cond_4
    add-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v1, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3561
    add-int/lit8 v2, v2, 0x1

    .line 3562
    invoke-static {}, Ljava/net/URI;->-get17()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-get4()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3563
    if-gt v0, v2, :cond_5

    .line 3564
    const-string/jumbo v1, "digits for an IPv6 address"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3565
    :cond_5
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3566
    add-int/lit8 v2, v2, -0x1

    .line 3567
    goto :goto_1

    .line 3569
    :cond_6
    add-int/lit8 v1, v2, 0x4

    if-le v0, v1, :cond_7

    .line 3570
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3571
    :cond_7
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3572
    move v2, v0

    goto :goto_0
.end method

.method private scanIPv4Address(IIZ)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3318
    move v8, p1

    .line 3320
    .local v8, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-get16()J

    move-result-wide v4

    or-long/2addr v4, v2

    invoke-static {}, Ljava/net/URI;->-get3()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    or-long/2addr v6, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3321
    .local v0, "m":I
    if-le v0, p1, :cond_0

    if-eqz p3, :cond_1

    if-eq v0, p2, :cond_1

    .line 3322
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 3326
    :cond_1
    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .local v9, "q":I
    if-gt v9, p1, :cond_3

    .line 3336
    :cond_2
    :goto_0
    const-string/jumbo v1, "Malformed IPv4 address"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3337
    const/4 v1, -0x1

    return v1

    .line 3326
    :cond_3
    move v8, v9

    .line 3327
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .local v10, "q":I
    if-gt v10, v9, :cond_4

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_4
    move v8, v10

    .line 3328
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    move v8, v9

    .line 3329
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_5

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_5
    move v8, v10

    .line 3330
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    move v8, v9

    .line 3331
    const/16 v1, 0x2e

    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v10

    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_6

    move v9, v10

    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_6
    move v8, v10

    .line 3332
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v9

    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    move v8, v9

    .line 3333
    if-lt v9, v0, :cond_2

    .line 3334
    return v9
.end method

.method private substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2897
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private takeIPv4Address(IILjava/lang/String;)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3346
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0

    .line 3347
    .local v0, "p":I
    if-gt v0, p1, :cond_0

    .line 3348
    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3349
    :cond_0
    return v0
.end method


# virtual methods
.method parse(Z)V
    .locals 18
    .param p1, "rsa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 3068
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3070
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    .line 3071
    .local v15, "n":I
    const-string/jumbo v2, "/?#"

    const-string/jumbo v3, ":"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 3072
    .local v16, "p":I
    if-ltz v16, :cond_5

    const/16 v2, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3073
    if-nez v16, :cond_0

    .line 3074
    const-string/jumbo v2, "scheme name"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3075
    :cond_0
    invoke-static {}, Ljava/net/URI;->-get0()J

    move-result-wide v6

    const-string/jumbo v8, "scheme name"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    .line 3076
    invoke-static {}, Ljava/net/URI;->-get20()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get7()J

    move-result-wide v8

    const-string/jumbo v10, "scheme name"

    const/4 v4, 0x1

    move-object/from16 v3, p0

    move/from16 v5, v16

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3077
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3078
    add-int/lit8 v4, v16, 0x1

    .line 3079
    .end local v16    # "p":I
    .local v4, "p":I
    move/from16 v17, v4

    .line 3080
    .local v17, "ssp":I
    const/16 v2, 0x2f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3081
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    .line 3093
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3094
    const/16 v2, 0x23

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3095
    add-int/lit8 v8, v4, 0x1

    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v10

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v12

    const-string/jumbo v14, "fragment"

    move-object/from16 v7, p0

    move v9, v15

    invoke-direct/range {v7 .. v14}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3096
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URI;->-set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 3097
    move v4, v15

    .line 3099
    :cond_1
    if-ge v4, v15, :cond_2

    .line 3100
    const-string/jumbo v2, "end of URI"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3101
    :cond_2
    return-void

    .line 3083
    :cond_3
    const-string/jumbo v2, ""

    const-string/jumbo v3, "#"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 3084
    .local v5, "q":I
    if-gt v5, v4, :cond_4

    .line 3085
    const-string/jumbo v2, "scheme-specific part"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3086
    :cond_4
    invoke-static {}, Ljava/net/URI;->-get24()J

    move-result-wide v6

    invoke-static {}, Ljava/net/URI;->-get11()J

    move-result-wide v8

    const-string/jumbo v10, "opaque part"

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3087
    move v4, v5

    goto :goto_0

    .line 3090
    .end local v4    # "p":I
    .end local v5    # "q":I
    .end local v17    # "ssp":I
    .restart local v16    # "p":I
    :cond_5
    const/16 v17, 0x0

    .line 3091
    .restart local v17    # "ssp":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v4

    .end local v16    # "p":I
    .restart local v4    # "p":I
    goto :goto_0
.end method
