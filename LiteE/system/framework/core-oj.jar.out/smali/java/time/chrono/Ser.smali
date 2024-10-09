.class final Ljava/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCAL_DATE_TIME_TYPE:B = 0x2t

.field static final CHRONO_PERIOD_TYPE:B = 0x9t

.field static final CHRONO_TYPE:B = 0x1t

.field static final CHRONO_ZONE_DATE_TIME_TYPE:B = 0x3t

.field static final HIJRAH_DATE_TYPE:B = 0x6t

.field static final JAPANESE_DATE_TYPE:B = 0x4t

.field static final JAPANESE_ERA_TYPE:B = 0x5t

.field static final MINGUO_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x8t

.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte p1, p0, Ljava/time/chrono/Ser;->type:B

    .line 128
    iput-object p2, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 229
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 2
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 233
    packed-switch p0, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_0
    invoke-static {p1}, Ljava/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_1
    invoke-static {p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0

    .line 236
    :pswitch_2
    invoke-static {p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    .line 237
    :pswitch_3
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_4
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0

    .line 239
    :pswitch_5
    invoke-static {p1}, Ljava/time/chrono/HijrahDate;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0

    .line 240
    :pswitch_6
    invoke-static {p1}, Ljava/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0

    .line 241
    :pswitch_7
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0

    .line 242
    :pswitch_8
    invoke-static {p1}, Ljava/time/chrono/ChronoPeriodImpl;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    return-object v0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 2
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/io/InvalidClassException;

    const-string/jumbo v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    check-cast p1, Ljava/time/chrono/AbstractChronology;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    .line 193
    :goto_0
    return-void

    .line 167
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 170
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 173
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_3
    check-cast p1, Ljava/time/chrono/JapaneseDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 176
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_4
    check-cast p1, Ljava/time/chrono/JapaneseEra;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 179
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_5
    check-cast p1, Ljava/time/chrono/HijrahDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/HijrahDate;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 182
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_6
    check-cast p1, Ljava/time/chrono/MinguoDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 185
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_7
    check-cast p1, Ljava/time/chrono/ThaiBuddhistDate;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 188
    .restart local p1    # "object":Ljava/lang/Object;
    :pswitch_8
    check-cast p1, Ljava/time/chrono/ChronoPeriodImpl;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/time/chrono/ChronoPeriodImpl;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    .line 224
    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    iget-object v1, p0, Ljava/time/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljava/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 158
    return-void
.end method
