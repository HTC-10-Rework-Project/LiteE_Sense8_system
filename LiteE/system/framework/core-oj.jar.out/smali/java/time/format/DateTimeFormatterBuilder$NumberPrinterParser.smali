.class Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberPrinterParser"
.end annotation


# static fields
.field private static final synthetic -java-time-format-SignStyleSwitchesValues:[I

.field static final EXCEED_POINTS:[J


# instance fields
.field final field:Ljava/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field private final signStyle:Ljava/time/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static synthetic -get0(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;
    .locals 1
    .param p0, "-this"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .prologue
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    return-object v0
.end method

.method private static synthetic -getjava-time-format-SignStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-java-time-format-SignStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-java-time-format-SignStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/time/format/SignStyle;->values()[Ljava/time/format/SignStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    invoke-virtual {v1}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {v1}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Ljava/time/format/SignStyle;->NEVER:Ljava/time/format/SignStyle;

    invoke-virtual {v1}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {v1}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-virtual {v1}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-java-time-format-SignStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2465
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    .line 2460
    return-void

    .line 2465
    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V
    .locals 1
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .prologue
    .line 2493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2495
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2496
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2497
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2498
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2499
    const/4 v0, 0x0

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2500
    return-void
.end method

.method protected constructor <init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V
    .locals 0
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;
    .param p5, "subsequentWidth"    # I

    .prologue
    .line 2512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2514
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2515
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2516
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2517
    iput-object p4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    .line 2518
    iput p5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    .line 2519
    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 9
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2545
    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    .line 2546
    .local v3, "valueLong":Ljava/lang/Long;
    if-nez v3, :cond_0

    .line 2547
    const/4 v6, 0x0

    return v6

    .line 2549
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Ljava/time/format/DateTimePrintContext;J)J

    move-result-wide v4

    .line 2550
    .local v4, "value":J
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    .line 2551
    .local v0, "decimalStyle":Ljava/time/format/DecimalStyle;
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const-string/jumbo v2, "9223372036854775808"

    .line 2552
    .local v2, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-le v6, v7, :cond_2

    .line 2553
    new-instance v6, Ljava/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2554
    const-string/jumbo v8, " cannot be printed as the value "

    .line 2553
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2555
    const-string/jumbo v8, " exceeds the maximum print width of "

    .line 2553
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2555
    iget v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    .line 2553
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2551
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 2557
    :cond_2
    invoke-virtual {v0, v2}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2559
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    .line 2560
    invoke-static {}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-getjava-time-format-SignStyleSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v7}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2583
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_5

    .line 2584
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2583
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2562
    .end local v1    # "i":I
    :pswitch_0
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v7, 0x13

    if-ge v6, v7, :cond_3

    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget-wide v6, v6, v7

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    .line 2563
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2567
    :pswitch_1
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2571
    :cond_4
    invoke-static {}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-getjava-time-format-SignStyleSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v7}, Ljava/time/format/SignStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 2575
    :pswitch_2
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2578
    :pswitch_3
    new-instance v6, Ljava/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2579
    const-string/jumbo v8, " cannot be printed as the value "

    .line 2578
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2580
    const-string/jumbo v8, " cannot be negative according to the SignStyle"

    .line 2578
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2586
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    const/4 v6, 0x1

    return v6

    .line 2560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2571
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getValue(Ljava/time/format/DateTimePrintContext;J)J
    .locals 0
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "value"    # J

    .prologue
    .line 2598
    return-wide p2
.end method

.method isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z
    .locals 4
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2609
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2610
    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_1

    .line 2609
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2610
    goto :goto_0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 24
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2615
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2616
    .local v12, "length":I
    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 2617
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2619
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    .line 2620
    .local v20, "sign":C
    const/4 v15, 0x0

    .line 2621
    .local v15, "negative":Z
    const/16 v19, 0x0

    .line 2622
    .local v19, "positive":Z
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DecimalStyle;->getPositiveSign()C

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    .line 2623
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v6, v2}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2624
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2623
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2626
    :cond_2
    const/16 v19, 0x1

    .line 2627
    add-int/lit8 p3, p3, 0x1

    .line 2639
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    .line 2640
    .local v11, "effMinWidth":I
    :goto_2
    add-int v14, p3, v11

    .line 2641
    .local v14, "minEndPos":I
    if-le v14, v12, :cond_a

    .line 2642
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2628
    .end local v11    # "effMinWidth":I
    .end local v14    # "minEndPos":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/format/DecimalStyle;->getNegativeSign()C

    move-result v2

    move/from16 v0, v20

    if-ne v0, v2, :cond_8

    .line 2629
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v2, v0, :cond_6

    const/4 v2, 0x1

    :goto_3
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v6, v2}, Ljava/time/format/SignStyle;->parse(ZZZ)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2630
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2629
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 2632
    :cond_7
    const/4 v15, 0x1

    .line 2633
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2635
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->ALWAYS:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2636
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2639
    :cond_9
    const/4 v11, 0x1

    .restart local v11    # "effMinWidth":I
    goto :goto_2

    .line 2644
    .restart local v14    # "minEndPos":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {p0 .. p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljava/time/format/DateTimeParseContext;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v10, v2, v3

    .line 2645
    .local v10, "effMaxWidth":I
    const-wide/16 v4, 0x0

    .line 2646
    .local v4, "total":J
    const/16 v21, 0x0

    .line 2647
    .local v21, "totalBig":Ljava/math/BigInteger;
    move/from16 v7, p3

    .line 2648
    .local v7, "pos":I
    const/16 v17, 0x0

    .local v17, "pass":I
    :goto_5
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ge v0, v2, :cond_12

    .line 2649
    add-int v2, v7, v10

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    .local v13, "maxEndPos":I
    move/from16 v18, v7

    .line 2650
    .end local v7    # "pos":I
    .end local v21    # "totalBig":Ljava/math/BigInteger;
    .local v18, "pos":I
    :goto_6
    move/from16 v0, v18

    if-ge v0, v13, :cond_10

    .line 2651
    add-int/lit8 v7, v18, 0x1

    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2652
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v9

    .line 2653
    .local v9, "digit":I
    if-gez v9, :cond_d

    .line 2654
    add-int/lit8 v7, v7, -0x1

    .line 2655
    if-ge v7, v14, :cond_11

    .line 2656
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2644
    .end local v4    # "total":J
    .end local v7    # "pos":I
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    .end local v10    # "effMaxWidth":I
    .end local v13    # "maxEndPos":I
    .end local v17    # "pass":I
    :cond_c
    const/16 v2, 0x9

    goto :goto_4

    .line 2660
    .restart local v4    # "total":J
    .restart local v7    # "pos":I
    .restart local v8    # "ch":C
    .restart local v9    # "digit":I
    .restart local v10    # "effMaxWidth":I
    .restart local v13    # "maxEndPos":I
    .restart local v17    # "pass":I
    :cond_d
    sub-int v2, v7, p3

    const/16 v3, 0x12

    if-le v2, v3, :cond_f

    .line 2661
    if-nez v21, :cond_e

    .line 2662
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    .line 2664
    :cond_e
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v0, v9

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    :goto_7
    move/from16 v18, v7

    .end local v7    # "pos":I
    .restart local v18    # "pos":I
    goto :goto_6

    .line 2666
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_f
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v4

    int-to-long v0, v9

    move-wide/from16 v22, v0

    add-long v4, v2, v22

    goto :goto_7

    .end local v7    # "pos":I
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    .restart local v18    # "pos":I
    :cond_10
    move/from16 v7, v18

    .line 2669
    .end local v18    # "pos":I
    .restart local v7    # "pos":I
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_12

    if-nez v17, :cond_12

    .line 2671
    sub-int v16, v7, p3

    .line 2672
    .local v16, "parseLen":I
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v2, v16, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2673
    move/from16 v7, p3

    .line 2674
    const-wide/16 v4, 0x0

    .line 2675
    const/16 v21, 0x0

    .line 2648
    .restart local v21    # "totalBig":Ljava/math/BigInteger;
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 2680
    .end local v13    # "maxEndPos":I
    .end local v16    # "parseLen":I
    .end local v21    # "totalBig":Ljava/math/BigInteger;
    :cond_12
    if-eqz v15, :cond_18

    .line 2681
    if-eqz v21, :cond_16

    .line 2682
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2683
    add-int/lit8 v2, p3, -0x1

    not-int v2, v2

    return v2

    .line 2685
    :cond_13
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v21

    .line 2704
    :cond_14
    :goto_8
    if-eqz v21, :cond_1a

    .line 2705
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x3f

    if-le v2, v3, :cond_15

    .line 2707
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 2708
    .local v21, "totalBig":Ljava/math/BigInteger;
    add-int/lit8 v7, v7, -0x1

    .line 2710
    .end local v21    # "totalBig":Ljava/math/BigInteger;
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .end local v4    # "total":J
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v2

    return v2

    .line 2687
    .restart local v4    # "total":J
    :cond_16
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2688
    add-int/lit8 v2, p3, -0x1

    not-int v2, v2

    return v2

    .line 2690
    :cond_17
    neg-long v4, v4

    goto :goto_8

    .line 2692
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v3, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2693
    sub-int v16, v7, p3

    .line 2694
    .restart local v16    # "parseLen":I
    if-eqz v19, :cond_19

    .line 2695
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v0, v16

    if-gt v0, v2, :cond_14

    .line 2696
    add-int/lit8 v2, p3, -0x1

    not-int v2, v2

    return v2

    .line 2699
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    move/from16 v0, v16

    if-le v0, v2, :cond_14

    .line 2700
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .end local v16    # "parseLen":I
    :cond_1a
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    .line 2712
    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljava/time/format/DateTimeParseContext;JII)I

    move-result v2

    return v2
.end method

.method setValue(Ljava/time/format/DateTimeParseContext;JII)I
    .locals 6
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "value"    # J
    .param p4, "errorPos"    # I
    .param p5, "successPos"    # I

    .prologue
    .line 2725
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2730
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_0

    .line 2731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2733
    :cond_0
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v0, v1, :cond_1

    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2736
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2527
    iget v0, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-ne v0, v5, :cond_0

    .line 2528
    return-object p0

    .line 2530
    :cond_0
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0
.end method

.method withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .locals 6
    .param p1, "subsequentWidth"    # I

    .prologue
    .line 2540
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljava/time/temporal/TemporalField;

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljava/time/format/SignStyle;

    iget v5, p0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;I)V

    return-object v0
.end method
