.class public Lsun/util/calendar/LocalGregorianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/LocalGregorianCalendar$Date;
    }
.end annotation


# instance fields
.field private eras:[Lsun/util/calendar/Era;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eras"    # [Lsun/util/calendar/Era;

    .prologue
    .line 182
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 183
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    .line 185
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 186
    return-void
.end method

.method private adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 10
    .param p1, "ldate"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "millis"    # J
    .param p4, "zoneOffset"    # I

    .prologue
    const/4 v8, 0x0

    .line 211
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 212
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v0, v5, v1

    .line 213
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {v0, v8}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v2

    .line 214
    .local v2, "since":J
    invoke-virtual {v0}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    int-to-long v6, p4

    sub-long/2addr v2, v6

    .line 217
    :cond_0
    cmp-long v5, p2, v2

    if-ltz v5, :cond_3

    .line 218
    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 219
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 220
    .local v4, "y":I
    invoke-virtual {p1, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 224
    .end local v0    # "era":Lsun/util/calendar/Era;
    .end local v2    # "since":J
    .end local v4    # "y":I
    :cond_1
    if-gez v1, :cond_2

    .line 225
    invoke-virtual {p1, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 226
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 228
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 229
    return-object p1

    .line 211
    .restart local v0    # "era":Lsun/util/calendar/Era;
    .restart local v2    # "since":J
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .locals 25
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    :try_start_0
    invoke-static {}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarProperties()Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 130
    .local v4, "calendarProps":Ljava/util/Properties;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "calendar."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".eras"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 131
    .local v20, "props":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 132
    const/16 v22, 0x0

    return-object v22

    .line 125
    .end local v4    # "calendarProps":Ljava/util/Properties;
    .end local v20    # "props":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 126
    .local v11, "e":Ljava/io/IOException;
    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 134
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v4    # "calendarProps":Ljava/util/Properties;
    .restart local v20    # "props":Ljava/lang/String;
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v14, "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v22, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v13, "eraTokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 137
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 138
    .local v18, "items":Ljava/lang/String;
    new-instance v17, Ljava/util/StringTokenizer;

    const-string/jumbo v22, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v17, "itemTokens":Ljava/util/StringTokenizer;
    const/4 v6, 0x0

    .line 140
    .local v6, "eraName":Ljava/lang/String;
    const/4 v10, 0x1

    .line 141
    .local v10, "localTime":Z
    const-wide/16 v8, 0x0

    .line 142
    .local v8, "since":J
    const/4 v7, 0x0

    .line 144
    .end local v6    # "eraName":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 145
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "item":Ljava/lang/String;
    const/16 v22, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 148
    .local v15, "index":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_1

    .line 149
    const/16 v22, 0x0

    return-object v22

    .line 151
    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "key":Ljava/lang/String;
    add-int/lit8 v22, v15, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 153
    .local v21, "value":Ljava/lang/String;
    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 154
    move-object/from16 v6, v21

    .local v6, "eraName":Ljava/lang/String;
    goto :goto_1

    .line 155
    .end local v6    # "eraName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v22, "since"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 156
    const-string/jumbo v22, "u"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 157
    const/4 v10, 0x0

    .line 158
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 160
    :cond_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 162
    :cond_4
    const-string/jumbo v22, "abbr"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 163
    move-object/from16 v7, v21

    .local v7, "abbr":Ljava/lang/String;
    goto/16 :goto_1

    .line 165
    .end local v7    # "abbr":Ljava/lang/String;
    :cond_5
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown key word: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 168
    .end local v15    # "index":I
    .end local v16    # "item":Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_6
    new-instance v5, Lsun/util/calendar/Era;

    invoke-direct/range {v5 .. v10}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 169
    .local v5, "era":Lsun/util/calendar/Era;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 173
    .end local v5    # "era":Lsun/util/calendar/Era;
    .end local v8    # "since":J
    .end local v10    # "localTime":Z
    .end local v17    # "itemTokens":Ljava/util/StringTokenizer;
    .end local v18    # "items":Ljava/lang/String;
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 174
    new-instance v22, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "No eras for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 176
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [Lsun/util/calendar/Era;

    .line 177
    .local v12, "eraArray":[Lsun/util/calendar/Era;
    invoke-interface {v14, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 179
    new-instance v22, Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    return-object v22
.end method

.method private validateEra(Lsun/util/calendar/Era;)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 266
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 267
    const/4 v1, 0x1

    return v1

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 197
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 201
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 205
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 206
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getZoneOffset()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    return-object v1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .prologue
    move-object v0, p1

    .line 380
    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 381
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {p0, v0, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 382
    const-wide/32 v2, 0xaf93b

    sub-long v2, p2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 383
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isLeapYear(I)Z
    .locals 1
    .param p1, "gregorianYear"    # I

    .prologue
    .line 368
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isLeapYear(Lsun/util/calendar/Era;I)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;
    .param p2, "year"    # I

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 373
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1

    .line 375
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 376
    .local v0, "gyear":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 237
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 24
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 274
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 275
    const/16 v22, 0x1

    return v22

    .line 278
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    move-object/from16 v6, p1

    .line 279
    check-cast v6, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 282
    .local v6, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move-object/from16 v0, p0

    invoke-super {v0, v6}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 284
    const/4 v4, 0x0

    .line 285
    .local v4, "hasMillis":Z
    const-wide/16 v8, 0x0

    .line 286
    .local v8, "millis":J
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v21

    .line 288
    .local v21, "year":I
    const/4 v3, 0x0

    .line 289
    .local v3, "era":Lsun/util/calendar/Era;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v5, v22, -0x1

    .end local v3    # "era":Lsun/util/calendar/Era;
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    aget-object v3, v22, v5

    .line 291
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 292
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v12

    .line 293
    .local v12, "sinceDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v15

    .line 294
    .local v15, "sinceYear":I
    move/from16 v0, v21

    if-le v0, v15, :cond_2

    .line 332
    .end local v3    # "era":Lsun/util/calendar/Era;
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v15    # "sinceYear":I
    :cond_1
    :goto_1
    if-ltz v5, :cond_6

    .line 333
    invoke-virtual {v6, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 334
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v22

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v20, v22, 0x1

    .line 335
    .local v20, "y":I
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 342
    .end local v20    # "y":I
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 343
    const/16 v22, 0x1

    return v22

    .line 297
    .restart local v3    # "era":Lsun/util/calendar/Era;
    .restart local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .restart local v15    # "sinceYear":I
    :cond_2
    move/from16 v0, v21

    if-ne v0, v15, :cond_5

    .line 298
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    .line 299
    .local v7, "month":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v14

    .line 300
    .local v14, "sinceMonth":I
    if-gt v7, v14, :cond_1

    .line 303
    if-ne v7, v14, :cond_5

    .line 304
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v2

    .line 305
    .local v2, "day":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v13

    .line 306
    .local v13, "sinceDay":I
    if-gt v2, v13, :cond_1

    .line 309
    if-ne v2, v13, :cond_5

    .line 310
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v18

    .line 311
    .local v18, "timeOfDay":J
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v16

    .line 312
    .local v16, "sinceTimeOfDay":J
    cmp-long v22, v18, v16

    if-gez v22, :cond_1

    .line 315
    add-int/lit8 v5, v5, -0x1

    .line 316
    goto :goto_1

    .line 321
    .end local v2    # "day":I
    .end local v7    # "month":I
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v13    # "sinceDay":I
    .end local v14    # "sinceMonth":I
    .end local v15    # "sinceYear":I
    .end local v16    # "sinceTimeOfDay":J
    .end local v18    # "timeOfDay":J
    :cond_3
    if-nez v4, :cond_4

    .line 322
    invoke-super/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 323
    const/4 v4, 0x1

    .line 326
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v10

    .line 327
    .local v10, "since":J
    cmp-long v22, v8, v10

    if-gez v22, :cond_1

    .line 289
    .end local v10    # "since":J
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 338
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 339
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 340
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_2
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .locals 0
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    .line 348
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 349
    return-void
.end method

.method normalizeYear(Lsun/util/calendar/CalendarDate;)V
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v1, p1

    .line 352
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 355
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 356
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 357
    :cond_0
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_0
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const/4 v7, 0x0

    move-object v1, p1

    .line 241
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 242
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 243
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    return v7

    .line 247
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 248
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    .line 249
    .local v2, "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v2, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v5

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 250
    invoke-virtual {p0, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 251
    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v3

    if-eq v3, v0, :cond_3

    .line 252
    return v7

    .line 255
    .end local v2    # "tmp":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v3

    iget-object v4, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 256
    return v7

    .line 258
    :cond_2
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 260
    :cond_3
    invoke-super {p0, v1}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v3

    return v3
.end method
