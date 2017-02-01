.class abstract Landroid/support/v17/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Grid$Location;,
        Landroid/support/v17/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mMargin:I

.field protected mNumRows:I

.field protected mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mStartIndex:I

.field protected mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 113
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 118
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    .line 34
    return-void
.end method

.method public static createGrid(I)Landroid/support/v17/leanback/widget/Grid;
    .locals 2
    .param p0, "rows"    # I

    .prologue
    .line 125
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 126
    new-instance v0, Landroid/support/v17/leanback/widget/SingleRow;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/SingleRow;-><init>()V

    .line 132
    .local v0, "grid":Landroid/support/v17/leanback/widget/Grid;
    :goto_0
    return-object v0

    .line 129
    .end local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;-><init>()V

    .line 130
    .restart local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/Grid;->setNumRows(I)V

    goto :goto_0
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 419
    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public final appendVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    .line 370
    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_0

    .line 293
    return v1

    .line 295
    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mMargin:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mMargin:I

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_0

    .line 304
    return v1

    .line 306
    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mMargin:I

    sub-int v3, p1, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mMargin:I

    add-int/2addr v3, p1

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I

    .prologue
    .line 278
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I

    .prologue
    .line 263
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    return v0
.end method

.method public invalidateItemsAfter(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 230
    if-gez p1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    .line 234
    return-void

    .line 236
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_2

    .line 237
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 238
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 241
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 242
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 229
    :cond_3
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final prependVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    .line 344
    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 5
    .param p1, "aboveIndex"    # I
    .param p2, "toLimit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-le v3, p1, :cond_3

    .line 388
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    if-lt v3, p2, :cond_0

    move v0, v1

    .line 390
    .local v0, "offEnd":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 391
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 392
    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .end local v0    # "offEnd":Z
    :cond_0
    move v0, v2

    .line 388
    goto :goto_1

    .line 389
    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    if-gt v3, p2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    .line 397
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 386
    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 6
    .param p1, "belowIndex"    # I
    .param p2, "toLimit"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    :goto_0
    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v3, p1, :cond_3

    .line 405
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    .line 406
    iget-object v4, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    .line 405
    add-int/2addr v3, v4

    if-gt v3, p2, :cond_0

    move v0, v1

    .line 409
    .local v0, "offFront":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 410
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 411
    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    .end local v0    # "offFront":Z
    :cond_0
    move v0, v2

    .line 405
    goto :goto_1

    .line 407
    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v4, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v3, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    .line 408
    iget-object v4, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    .line 407
    sub-int/2addr v3, v4

    if-lt v3, p2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    .line 416
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 403
    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 222
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 221
    return-void
.end method

.method public final setMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mMargin:I

    .line 138
    return-void
.end method

.method setNumRows(I)V
    .locals 3
    .param p1, "numRows"    # I

    .prologue
    .line 189
    if-gtz p1, :cond_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 192
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ne v1, p1, :cond_1

    .line 193
    return-void

    .line 195
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    .line 196
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    new-array v1, v1, [Landroid/support/v4/util/CircularIntArray;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_2

    .line 198
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    new-instance v2, Landroid/support/v4/util/CircularIntArray;

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;-><init>()V

    aput-object v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    return-void
.end method

.method public setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/support/v17/leanback/widget/Grid$Provider;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 161
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    .line 145
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 171
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    .line 170
    return-void
.end method
