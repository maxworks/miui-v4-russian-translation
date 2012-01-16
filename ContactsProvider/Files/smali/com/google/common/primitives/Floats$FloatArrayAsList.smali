.class Lcom/google/common/primitives/Floats$FloatArrayAsList;
.super Ljava/util/AbstractList;
.source "Floats.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[F

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([FII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    .line 390
    iput p2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    .line 391
    iput p3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    .line 392
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->d(II)I

    .line 437
    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    .line 438
    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 439
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public al(I)Ljava/lang/Float;
    .locals 2
    .parameter

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->d(II)I

    .line 404
    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 409
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats;->c([FFII)I

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

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    if-ne p1, p0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 456
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v2, :cond_4

    .line 457
    check-cast p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    .line 458
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v3

    .line 459
    invoke-virtual {p1}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 460
    goto :goto_0

    :cond_2
    move v2, v1

    .line 462
    :goto_1
    if-ge v2, v3, :cond_0

    .line 463
    iget-object v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v5, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v6, p1, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    move v0, v1

    .line 464
    goto :goto_0

    .line 462
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->al(I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 473
    const/4 v1, 0x1

    .line 474
    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 475
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Floats;->a(F)I

    move-result v2

    add-int/2addr v1, v2

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 415
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats;->c([FFII)I

    move-result v0

    .line 417
    if-ltz v0, :cond_0

    .line 418
    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter

    .prologue
    .line 426
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats;->d([FFII)I

    move-result v0

    .line 428
    if-ltz v0, :cond_0

    .line 429
    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->a(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 395
    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    .line 445
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->a(III)V

    .line 446
    if-ne p1, p2, :cond_0

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([FII)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    iget v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    iget v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 484
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;->array:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
