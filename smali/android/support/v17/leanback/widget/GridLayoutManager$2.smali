.class Landroid/support/v17/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 1453
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 16
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "rowIndex"    # I
    .param p5, "edge"    # I

    .prologue
    move-object/from16 v4, p1

    .line 1523
    check-cast v4, Landroid/view/View;

    .line 1525
    .local v4, "v":Landroid/view/View;
    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const v2, 0x7fffffff

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 1526
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result p5

    .line 1530
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v14, 0x0

    .line 1531
    .local v14, "edgeIsMin":Z
    :goto_1
    if-eqz v14, :cond_8

    .line 1532
    move/from16 v5, p5

    .line 1533
    .local v5, "start":I
    add-int v6, p5, p3

    .line 1538
    .local v6, "end":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    .line 1539
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1548
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    .line 1553
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    .line 1560
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v2, :cond_4

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    .line 1563
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    if-eqz v2, :cond_5

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 1565
    .local v15, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v8, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v9, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 1566
    if-nez v15, :cond_b

    const-wide/16 v12, -0x1

    :goto_5
    move-object v10, v4

    move/from16 v11, p2

    .line 1565
    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1522
    .end local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    return-void

    .line 1527
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v14    # "edgeIsMin":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingHigh()I

    move-result v3

    .line 1527
    sub-int p5, v2, v3

    goto/16 :goto_0

    .line 1530
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1535
    .restart local v14    # "edgeIsMin":Z
    :cond_8
    sub-int v5, p5, p3

    .line 1536
    .restart local v5    # "start":I
    move/from16 v6, p5

    .restart local v6    # "end":I
    goto/16 :goto_2

    .line 1550
    .restart local v7    # "startSecondary":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMax()V

    goto/16 :goto_3

    .line 1557
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollMin()V

    goto :goto_4

    .line 1566
    .restart local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_b
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_5
.end method

.method public createItem(IZ[Ljava/lang/Object;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "append"    # Z
    .param p3, "item"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1464
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1466
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1467
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1468
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    .line 1470
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1472
    if-eqz p2, :cond_4

    .line 1473
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 1478
    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1479
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1482
    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    .line 1483
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    .line 1485
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 1486
    .local v1, "subindex":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v4, :cond_5

    .line 1493
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_2

    .line 1494
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v4, :cond_2

    .line 1495
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 1514
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1516
    .end local v1    # "subindex":I
    :cond_3
    aput-object v2, p3, v6

    .line 1517
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_2
    return v4

    .line 1475
    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1497
    .restart local v1    # "subindex":I
    :cond_5
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v4, :cond_2

    .line 1503
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_6

    .line 1504
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_6

    .line 1505
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1506
    :cond_6
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt p1, v4, :cond_2

    .line 1507
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    .line 1506
    if-eqz v4, :cond_2

    .line 1508
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput p1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1509
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1510
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 1511
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1518
    .end local v1    # "subindex":I
    :cond_7
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getEdge(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1584
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v0

    return v0

    .line 1587
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getSize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1593
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1573
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1574
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v1, :cond_0

    .line 1575
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1571
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method
