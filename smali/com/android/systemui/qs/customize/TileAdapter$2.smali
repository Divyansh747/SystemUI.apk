.class Lcom/android/systemui/qs/customize/TileAdapter$2;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "current"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 549
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 554
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 555
    invoke-static {v3, v3}, Lcom/android/systemui/qs/customize/TileAdapter$2;->makeMovementFlags(II)I

    move-result v1

    return v1

    .line 557
    :cond_0
    const/16 v0, 0xf

    .line 559
    .local v0, "dragFlags":I
    invoke-static {v0, v3}, Lcom/android/systemui/qs/customize/TileAdapter$2;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 564
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 565
    .local v0, "from":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 566
    .local v1, "to":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap0(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    move-result v2

    return v2
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 521
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 522
    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    .line 523
    const/4 p1, 0x0

    .line 525
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    if-ne p1, v3, :cond_1

    return-void

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 527
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v1

    .line 528
    .local v1, "position":I
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get6(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 529
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->-get0(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    .line 530
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->-get3(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v4

    if-le v1, v4, :cond_2

    iget-boolean v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v4, :cond_5

    .line 529
    :cond_2
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    .line 532
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2, v5}, Lcom/android/systemui/qs/customize/TileAdapter;->-set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 534
    .end local v0    # "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .end local v1    # "position":I
    :cond_3
    if-eqz p1, :cond_4

    .line 535
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-static {v2, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-set0(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 536
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->startDrag()V

    .line 538
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$2;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->-get4(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/TileAdapter$2$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void

    .line 530
    .restart local v0    # "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .restart local v1    # "position":I
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 570
    return-void
.end method
