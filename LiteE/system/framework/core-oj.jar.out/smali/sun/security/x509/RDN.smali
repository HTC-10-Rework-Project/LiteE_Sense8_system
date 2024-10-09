.class public Lsun/security/x509/RDN;
.super Ljava/lang/Object;
.source "RDN.java"


# instance fields
.field final assertion:[Lsun/security/x509/AVA;

.field private volatile avaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private volatile canonicalString:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lsun/security/x509/AVA;

    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x2b

    const/4 v8, 0x3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string/jumbo v6, "RFC2253"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 182
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_0
    const/4 v5, 0x0

    .line 185
    .local v5, "searchOffset":I
    const/4 v1, 0x0

    .line 186
    .local v1, "avaOffset":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v3, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 188
    .local v4, "nextPlus":I
    :goto_0
    if-ltz v4, :cond_3

    .line 196
    if-lez v4, :cond_2

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_2

    .line 200
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 202
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "empty AVA in RDN \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_1
    new-instance v0, Lsun/security/x509/AVA;

    .line 207
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-direct {v0, v6, v8, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 208
    .local v0, "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v1, v4, 0x1

    .line 213
    .end local v0    # "ava":Lsun/security/x509/AVA;
    .end local v2    # "avaString":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 214
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .restart local v2    # "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 220
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "empty AVA in RDN \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 222
    :cond_4
    new-instance v0, Lsun/security/x509/AVA;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v8, p3}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 223
    .restart local v0    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lsun/security/x509/AVA;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/AVA;

    iput-object v6, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x2b

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v5, 0x0

    .line 104
    .local v5, "quoteCount":I
    const/4 v6, 0x0

    .line 105
    .local v6, "searchOffset":I
    const/4 v1, 0x0

    .line 106
    .local v1, "avaOffset":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .local v3, "avaVec":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 108
    .local v4, "nextPlus":I
    :goto_0
    if-ltz v4, :cond_2

    .line 109
    invoke-static {p1, v6, v4}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v5, v7

    .line 117
    if-lez v4, :cond_1

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_1

    .line 118
    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    .line 122
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 124
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "empty AVA in RDN \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 128
    :cond_0
    new-instance v0, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    .line 129
    .local v0, "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v4, 0x1

    .line 135
    const/4 v5, 0x0

    .line 137
    .end local v0    # "ava":Lsun/security/x509/AVA;
    .end local v2    # "avaString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 138
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "avaString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 144
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "empty AVA in RDN \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 146
    :cond_3
    new-instance v0, Lsun/security/x509/AVA;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;Ljava/util/Map;)V

    .line 147
    .restart local v0    # "ava":Lsun/security/x509/AVA;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lsun/security/x509/AVA;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lsun/security/x509/AVA;

    iput-object v7, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 150
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .param p1, "rdn"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x31

    if-eq v3, v4, :cond_0

    .line 237
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "X500 RDN"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_0
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 240
    .local v1, "dis":Lsun/security/util/DerInputStream;
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 242
    .local v0, "avaset":[Lsun/security/util/DerValue;
    array-length v3, v0

    new-array v3, v3, [Lsun/security/x509/AVA;

    iput-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 244
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v4, Lsun/security/x509/AVA;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    aput-object v4, v3, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/AVA;)V
    .locals 2
    .param p1, "ava"    # Lsun/security/x509/AVA;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lsun/security/x509/AVA;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 261
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/AVA;)V
    .locals 2
    .param p1, "avas"    # [Lsun/security/x509/AVA;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/x509/AVA;

    iput-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method private toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "canonical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v6, 0x2b

    const/4 v5, 0x0

    .line 441
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 442
    if-eqz p1, :cond_0

    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    .line 443
    :cond_0
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v3, v3, v5

    invoke-virtual {v3, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 446
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "relname":Ljava/lang/StringBuilder;
    if-nez p1, :cond_3

    .line 448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 449
    if-lez v1, :cond_2

    .line 450
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    :cond_2
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 457
    .end local v1    # "i":I
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    .local v0, "avaList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 459
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 461
    :cond_4
    invoke-static {}, Lsun/security/x509/AVAComparator;->getInstance()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 463
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 464
    if-lez v1, :cond_5

    .line 465
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/AVA;

    invoke-virtual {v3}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 470
    .end local v0    # "avaList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public avas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    .line 277
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 279
    iput-object v0, p0, Lsun/security/x509/RDN;->avaList:Ljava/util/List;

    .line 281
    :cond_0
    return-object v0
.end method

.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    const/16 v1, 0x31

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 340
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    if-ne p0, p1, :cond_0

    .line 293
    return v5

    .line 295
    :cond_0
    instance-of v3, p1, Lsun/security/x509/RDN;

    if-nez v3, :cond_1

    .line 296
    return v6

    :cond_1
    move-object v0, p1

    .line 298
    check-cast v0, Lsun/security/x509/RDN;

    .line 299
    .local v0, "other":Lsun/security/x509/RDN;
    iget-object v3, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v3, v3

    iget-object v4, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    .line 300
    return v6

    .line 302
    :cond_2
    invoke-virtual {p0, v5}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "thisCanon":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "otherCanon":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 325
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v0, v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 376
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 377
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 382
    if-eqz v0, :cond_1

    .line 383
    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0, v1, v0}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Z)Ljava/lang/String;
    .locals 3
    .param p1, "canonical"    # Z

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 417
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 416
    invoke-direct {p0, v2, v1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 419
    :cond_0
    iget-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    .line 420
    .local v0, "c":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 422
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    .line 421
    invoke-direct {p0, v2, v1}, Lsun/security/x509/RDN;->toRFC2253StringInternal(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 423
    iput-object v0, p0, Lsun/security/x509/RDN;->canonicalString:Ljava/lang/String;

    .line 425
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 348
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 349
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 352
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 354
    if-eqz v0, :cond_1

    .line 355
    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    iget-object v2, p0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/AVA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
