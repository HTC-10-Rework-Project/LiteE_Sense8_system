.class final Ljava/time/ZoneRegion;
.super Ljava/time/ZoneId;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Ljava/time/zone/ZoneRules;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/time/zone/ZoneRules;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rules"    # Ljava/time/zone/ZoneRules;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/time/ZoneId;-><init>()V

    .line 163
    iput-object p1, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Ljava/time/ZoneRegion;->rules:Ljava/time/zone/ZoneRules;

    .line 165
    return-void
.end method

.method private static checkName(Ljava/lang/String;)V
    .locals 6
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 137
    .local v2, "n":I
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 138
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_b

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, "c":C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    .line 144
    :cond_3
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    if-nez v1, :cond_1

    .line 145
    :cond_4
    const/16 v3, 0x30

    if-lt v0, v3, :cond_5

    const/16 v3, 0x39

    if-gt v0, v3, :cond_5

    if-nez v1, :cond_1

    .line 146
    :cond_5
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_6

    if-nez v1, :cond_1

    .line 147
    :cond_6
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_7

    if-nez v1, :cond_1

    .line 148
    :cond_7
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_8

    if-nez v1, :cond_1

    .line 149
    :cond_8
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_9

    if-nez v1, :cond_1

    .line 150
    :cond_9
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_a

    if-nez v1, :cond_1

    .line 151
    :cond_a
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid ID for region-based ZoneId, invalid format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 153
    .end local v0    # "c":C
    :cond_b
    return-void
.end method

.method static ofId(Ljava/lang/String;Z)Ljava/time/ZoneRegion;
    .locals 3
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "checkAvailable"    # Z

    .prologue
    .line 115
    const-string/jumbo v2, "zoneId"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Ljava/time/ZoneRegion;->checkName(Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x0

    .line 120
    .local v1, "rules":Ljava/time/zone/ZoneRules;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Ljava/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    :try_end_0
    .catch Ljava/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    .end local v1    # "rules":Ljava/time/zone/ZoneRules;
    :cond_0
    new-instance v2, Ljava/time/ZoneRegion;

    invoke-direct {v2, p0, v1}, Ljava/time/ZoneRegion;-><init>(Ljava/lang/String;Ljava/time/zone/ZoneRules;)V

    return-object v2

    .line 121
    .restart local v1    # "rules":Ljava/time/zone/ZoneRules;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/time/zone/ZoneRulesException;
    if-eqz p1, :cond_0

    .line 123
    throw v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZoneId;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;Z)Ljava/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljava/time/zone/ZoneRules;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Ljava/time/ZoneRegion;->rules:Ljava/time/zone/ZoneRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/time/ZoneRegion;->rules:Ljava/time/zone/ZoneRules;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v0

    goto :goto_0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 209
    invoke-virtual {p0, p1}, Ljava/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 210
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljava/time/ZoneRegion;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 214
    return-void
.end method
