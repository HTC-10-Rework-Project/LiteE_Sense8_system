.class final Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
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
    name = "CharLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "literal"    # C

    .prologue
    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2385
    iput-char p1, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    .line 2386
    return-void
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2390
    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2391
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    .line 2396
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2397
    .local v1, "length":I
    if-ne p3, v1, :cond_0

    .line 2398
    not-int v2, p3

    return v2

    .line 2400
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2401
    .local v0, "ch":C
    iget-char v2, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    if-eq v0, v2, :cond_2

    .line 2402
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2403
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2404
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    iget-char v3, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 2405
    :cond_1
    not-int v2, p3

    return v2

    .line 2408
    :cond_2
    add-int/lit8 v2, p3, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2413
    iget-char v0, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 2414
    const-string/jumbo v0, "\'\'"

    return-object v0

    .line 2416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
