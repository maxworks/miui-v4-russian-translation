.class final enum Lcom/google/common/primitives/Shorts$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Shorts.java"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final enum bU:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

.field private static final synthetic bV:[Lcom/google/common/primitives/Shorts$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    new-instance v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Shorts$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->bU:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    .line 379
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    sget-object v1, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->bU:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->bV:[Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Shorts$LexicographicalComparator;
    .locals 1
    .parameter

    .prologue
    .line 379
    const-class v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Shorts$LexicographicalComparator;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->bV:[Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    invoke-virtual {v0}, [Lcom/google/common/primitives/Shorts$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public a([S[S)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 383
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 384
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 385
    aget-short v0, p1, v1

    aget-short v3, p2, v1

    invoke-static {v0, v3}, Lcom/google/common/primitives/Shorts;->a(SS)I

    move-result v0

    .line 386
    if-eqz v0, :cond_0

    .line 390
    :goto_1
    return v0

    .line 384
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 390
    :cond_1
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 379
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->a([S[S)I

    move-result v0

    return v0
.end method
