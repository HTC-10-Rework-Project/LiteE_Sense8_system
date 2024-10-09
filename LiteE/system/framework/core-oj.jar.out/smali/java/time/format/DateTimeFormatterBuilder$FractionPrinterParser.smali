.class final Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FractionPrinterParser"
.end annotation


# instance fields
.field private final decimalPoint:Z

.field private final field:Ljava/time/temporal/TemporalField;

.field private final maxWidth:I

.field private final minWidth:I


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalField;IIZ)V
    .locals 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .prologue
    const/16 v1, 0x9

    .line 2918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    const-string/jumbo v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2920
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Field must have a fixed set of values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2923
    :cond_0
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 2924
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2926
    :cond_2
    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    if-le p3, v1, :cond_4

    .line 2927
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2929
    :cond_4
    if-ge p3, p2, :cond_5

    .line 2930
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2931
    const-string/jumbo v2, " < "

    .line 2930
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2933
    :cond_5
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    .line 2934
    iput p2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2935
    iput p3, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2936
    iput-boolean p4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    .line 2937
    return-void
.end method

.method private convertFromFraction(Ljava/math/BigDecimal;)J
    .locals 7
    .param p1, "fraction"    # Ljava/math/BigDecimal;

    .prologue
    .line 3053
    iget-object v4, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v4}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    .line 3054
    .local v1, "range":Ljava/time/temporal/ValueRange;
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3055
    .local v0, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 3056
    .local v2, "rangeBD":Ljava/math/BigDecimal;
    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3057
    .local v3, "valueBD":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v4

    return-wide v4
.end method

.method private convertToFraction(J)Ljava/math/BigDecimal;
    .locals 9
    .param p1, "value"    # J

    .prologue
    .line 3026
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-interface {v5}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    .line 3027
    .local v2, "range":Ljava/time/temporal/ValueRange;
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v2, p1, p2, v5}, Ljava/time/temporal/ValueRange;->checkValidValue(JLjava/time/temporal/TemporalField;)J

    .line 3028
    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 3029
    .local v1, "minBD":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 3030
    .local v3, "rangeBD":Ljava/math/BigDecimal;
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 3031
    .local v4, "valueBD":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v6, 0x9

    invoke-virtual {v4, v3, v6, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3033
    .local v0, "fraction":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 2941
    iget-object v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v5

    .line 2942
    .local v5, "value":Ljava/lang/Long;
    if-nez v5, :cond_0

    .line 2943
    return v7

    .line 2945
    :cond_0
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v0

    .line 2946
    .local v0, "decimalStyle":Ljava/time/format/DecimalStyle;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertToFraction(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2947
    .local v1, "fraction":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    if-nez v6, :cond_2

    .line 2948
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-lez v6, :cond_4

    .line 2949
    iget-boolean v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v6, :cond_1

    .line 2950
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2952
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    if-ge v2, v6, :cond_4

    .line 2953
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2952
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2957
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2958
    .local v3, "outputScale":I
    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1, v3, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2959
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2960
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2961
    iget-boolean v6, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v6, :cond_3

    .line 2962
    invoke-virtual {v0}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2964
    :cond_3
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    .end local v3    # "outputScale":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 18
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2971
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    .line 2972
    .local v11, "effectiveMin":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    .line 2973
    .local v10, "effectiveMax":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 2974
    .local v13, "length":I
    move/from16 v0, p3

    if-ne v0, v13, :cond_3

    .line 2976
    if-lez v11, :cond_0

    move/from16 v0, p3

    not-int v0, v0

    move/from16 p3, v0

    .end local p3    # "position":I
    :cond_0
    return p3

    .line 2971
    .end local v10    # "effectiveMax":I
    .end local v11    # "effectiveMin":I
    .end local v13    # "length":I
    .restart local p3    # "position":I
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "effectiveMin":I
    goto :goto_0

    .line 2972
    :cond_2
    const/16 v10, 0x9

    .restart local v10    # "effectiveMax":I
    goto :goto_1

    .line 2978
    .restart local v13    # "length":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v2, :cond_6

    .line 2979
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/format/DecimalStyle;->getDecimalSeparator()C

    move-result v3

    if-eq v2, v3, :cond_5

    .line 2981
    if-lez v11, :cond_4

    move/from16 v0, p3

    not-int v0, v0

    move/from16 p3, v0

    .end local p3    # "position":I
    :cond_4
    return p3

    .line 2983
    .restart local p3    # "position":I
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 2985
    :cond_6
    add-int v15, p3, v11

    .line 2986
    .local v15, "minEndPos":I
    if-le v15, v13, :cond_7

    .line 2987
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2989
    :cond_7
    add-int v2, p3, v10

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2990
    .local v14, "maxEndPos":I
    const/16 v17, 0x0

    .line 2991
    .local v17, "total":I
    move/from16 v7, p3

    .local v7, "pos":I
    move/from16 v16, v7

    .line 2992
    .end local v7    # "pos":I
    .local v16, "pos":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v14, :cond_a

    .line 2993
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "pos":I
    .restart local v7    # "pos":I
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 2994
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getDecimalStyle()Ljava/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v9

    .line 2995
    .local v9, "digit":I
    if-gez v9, :cond_9

    .line 2996
    if-ge v7, v15, :cond_8

    .line 2997
    move/from16 v0, p3

    not-int v2, v0

    return v2

    .line 2999
    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 3004
    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :goto_3
    new-instance v2, Ljava/math/BigDecimal;

    move/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int v3, v7, p3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object v12

    .line 3005
    .local v12, "fraction":Ljava/math/BigDecimal;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->convertFromFraction(Ljava/math/BigDecimal;)J

    move-result-wide v4

    .line 3006
    .local v4, "value":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    move-object/from16 v2, p1

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    .line 3002
    .end local v4    # "value":J
    .end local v12    # "fraction":Ljava/math/BigDecimal;
    .restart local v8    # "ch":C
    .restart local v9    # "digit":I
    :cond_9
    mul-int/lit8 v2, v17, 0xa

    add-int v17, v2, v9

    move/from16 v16, v7

    .end local v7    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_2

    .end local v8    # "ch":C
    .end local v9    # "digit":I
    :cond_a
    move/from16 v7, v16

    .end local v16    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3062
    iget-boolean v1, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->decimalPoint:Z

    if-eqz v1, :cond_0

    const-string/jumbo v0, ",DecimalPoint"

    .line 3063
    .local v0, "decimal":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fraction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3062
    .end local v0    # "decimal":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .restart local v0    # "decimal":Ljava/lang/String;
    goto :goto_0
.end method
