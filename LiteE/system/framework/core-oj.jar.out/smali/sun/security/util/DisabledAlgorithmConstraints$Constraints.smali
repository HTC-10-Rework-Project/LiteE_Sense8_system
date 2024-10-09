.class Lsun/security/util/DisabledAlgorithmConstraints$Constraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraints"
.end annotation


# static fields
.field private static final keySizePattern:Ljava/util/regex/Pattern;


# instance fields
.field private constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    .line 238
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    .line 236
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 18
    .param p1, "constraintArray"    # [Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 242
    const/4 v10, 0x0

    move-object/from16 v0, p1

    array-length v13, v0

    move v12, v10

    :goto_0
    if-ge v12, v13, :cond_c

    aget-object v3, p1, v12

    .line 243
    .local v3, "constraintEntry":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 242
    :cond_0
    :goto_1
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 249
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Constraints: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 256
    :cond_2
    const/16 v10, 0x20

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 257
    .local v9, "space":I
    if-lez v9, :cond_7

    .line 259
    const/4 v10, 0x0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 260
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 259
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 258
    invoke-static {v10}, Lsun/security/util/AlgorithmDecomposer;->hashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "algorithm":Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "policy":Ljava/lang/String;
    const/4 v2, 0x0

    .line 271
    .local v2, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v6, 0x0

    .line 273
    .local v6, "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v5, 0x0

    .line 275
    .local v5, "jdkCALimit":Z
    const-string/jumbo v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x0

    array-length v15, v14

    move v11, v10

    .end local v2    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v6    # "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :goto_2
    if-ge v11, v15, :cond_0

    aget-object v4, v14, v11

    .line 276
    .local v4, "entry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 278
    sget-object v10, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->keySizePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 279
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 280
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 281
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Constraints set to keySize: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 284
    :cond_3
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    .line 285
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;

    move-result-object v10

    .line 286
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 284
    move/from16 v0, v16

    invoke-direct {v2, v1, v10, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V

    .line 302
    :cond_4
    :goto_3
    if-nez v6, :cond_b

    .line 303
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 305
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 304
    move-object/from16 v0, v16

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_5
    if-eqz v2, :cond_6

    .line 308
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_6
    :goto_4
    move-object v6, v2

    .line 275
    .local v6, "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto/16 :goto_2

    .line 263
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "jdkCALimit":Z
    .end local v6    # "lastConstraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "policy":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    .line 264
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 265
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 263
    invoke-interface {v10, v11, v14}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 288
    .restart local v1    # "algorithm":Ljava/lang/String;
    .restart local v4    # "entry":Ljava/lang/String;
    .restart local v5    # "jdkCALimit":Z
    .restart local v7    # "matcher":Ljava/util/regex/Matcher;
    .restart local v8    # "policy":Ljava/lang/String;
    :cond_8
    const-string/jumbo v10, "jdkCA"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 289
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 290
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v10

    const-string/jumbo v16, "Constraints set to jdkCA."

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 292
    :cond_9
    if-eqz v5, :cond_a

    .line 293
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Only one jdkCA entry allowed in property. Constraint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 297
    :cond_a
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;

    invoke-direct {v2, v1}, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    const/4 v5, 0x1

    goto :goto_3

    .line 311
    .end local v2    # "c":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_b
    iput-object v2, v6, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    goto :goto_4

    .line 316
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v3    # "constraintEntry":Ljava/lang/String;
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "jdkCALimit":Z
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    .end local v8    # "policy":Ljava/lang/String;
    .end local v9    # "space":I
    :cond_c
    return-void
.end method

.method private getConstraints(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$Constraint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->constraintsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public permits(Lsun/security/util/CertConstraintParameters;)V
    .locals 10
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 346
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 347
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Constraints.permits(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/security/util/AlgorithmDecomposer;->decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 353
    .local v2, "algorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 354
    :cond_1
    return-void

    .line 358
    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "algorithm":Ljava/lang/String;
    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 363
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    if-eqz v6, :cond_3

    .line 366
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "constraint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 367
    .local v4, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v4, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    goto :goto_0

    .line 370
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v4    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    .end local v5    # "constraint$iterator":Ljava/util/Iterator;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    :cond_4
    return-void
.end method

.method public permits(Ljava/security/Key;)Z
    .locals 6
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    const/4 v4, 0x1

    .line 325
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/security/util/DisabledAlgorithmConstraints$Constraints;->getConstraints(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 326
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$Constraint;>;"
    if-nez v2, :cond_0

    .line 327
    return v4

    .line 329
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "constraint$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    .line 330
    .local v0, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 332
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-get0()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "keySizeConstraint: failed key constraint check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v5

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 335
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 338
    .end local v0    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
    :cond_3
    return v4
.end method
